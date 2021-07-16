import common, math, sequtils
from stats import mean
from random import rand

# Notes
# Switch to OOP

type
    LayerDense* = ref object
        weights*: Matrix
        biases*: Vector
        output*: Matrix

    ActivationReLU* = ref object
        output*: Matrix

    ActivationSoftmax* = ref object
        output*: Matrix
    Loss* = ref object of RootObj
    LossCategoricalCrossentropy* = ref object of Loss

proc layerDense*(inputs, neurons: int, max: SomeFloat = 0.1): LayerDense =
    new result
    result.weights = randomMatrix(inputs, neurons, max)
    result.biases = zeros(neurons)
    for r,vec in result.weights:
        for c,val in vec:
            if rand(1) == 0:
                result.weights[r][c] = -result.weights[r][c]

proc activationReLU*(inputs, neurons: int): ActivationReLU =
    new result
    result.output = zeros(inputs, neurons)

proc activationSoftmax*(inputs, neurons: int): ActivationSoftmax =
    new result
    result.output = zeros(inputs, neurons)

func overflowPrevention*(vec: Vector, maxVal: float): Vector =
    for val in vec:
        result.add(val - maxVal)

proc forward*(activationObj: var ActivationSoftmax, layerOutput: Matrix) =
    var
        normValues: seq[seq[float64]]
        normVec: Vector
        expValues: Vector

    for row in layerOutput:
        expValues = overflowPrevention(row, max(row))
        normVec = exp(expValues) / sum(exp(expValues))
        normValues.add normVec

    activationObj.output = matrix(normValues)


proc forward*(layer: var LayerDense, inputs: Matrix) =
    layer.output = dot(inputs, layer.weights) + layer.biases

proc forward*(activationObj: var ActivationReLU, layerOutput: Matrix) =
    for r,vec in layerOutput:
        for c,val in vec:
            activationObj.output[r][c] = max(0,layerOutput[r][c])

# make this a general proc for clipping values within a Matrix or Vector
proc clipVals(m: Matrix): Matrix = # to prevent possible -ln(0)
    for vec in m:
        result.add vec.map(proc(x: float): float =
            x.clamp(1e-7, 1-1e-7)) # 1e-7 and the inverse (to remove any bias)

proc forward*[T: Matrix | Vector](lossObj: Loss_CategoricalCrossentropy,
                yPred: Matrix, yTrue: T): Vector =

    var yPredClipped = yPred.clipVals
    var correctConfidences: seq[float]

    when yTrue.type is Vector:
        for r in 0 .. yPred.high:
            correctConfidences.add yPredClipped[r][yTrue[r].toInt]
    elif yTrue.type is Matrix:
        correctConfidences = sum(yPredClipped * yTrue, axis=1)

    for val in correctConfidences:
        result.add(-ln(val)) # this is negative log likelihoods

proc calculate*[T: Matrix | Vector](loss: Loss_CategoricalCrossentropy,
                    output: Matrix, y: T): float =
    var sampleLosses = loss.forward(output, y)
    return mean(sampleLosses) # batch loss

proc accuracy*[T: Matrix | Vector](m: Matrix, y: T): float = #use to calculate the accuracy of the softmaxoutputs
    var predictions, accuracy: seq[float]
    for vec in m:
        predictions.add(maxIndex(vec).toFloat)

    when y is Vector:
        for i, prediction in predictions:
            if prediction == y[i]: accuracy.add 1.0
            else: accuracy.add 0.0
    elif y is Matrix:
        var mToVec: seq[float]
        for vec in y:
            mToVec.add(maxIndex(vec).toFloat)
        for i, prediction in predictions:
            if prediction == mToVec[i]: accuracy.add 1.0
            else: accuracy.add 0.0

    return mean(accuracy)