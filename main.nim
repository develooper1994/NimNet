import src/nimnet, nnfs/datasets/dataset1

var
    dense1 = layerDense(2,3)
    activation1 = activationReLU(X.len, dense1.biases.len)
    dense2 = layerDense(3,3)
    activation2 = activationSoftmax(activation1.output.len, dense2.biases.len)

# X is inputs via temp dataset
dense1.forward(X) # layer 1
activation1.forward(dense1.output) # ReLu activation
dense2.forward(activation1.output) # output layer
activation2.forward(dense2.output) # Softmax activation
echo activation2.output #softmax outputs

# calculate loss of softmax outputs for optimizer
var lossFunction = new LossCategoricalCrossentropy
var loss = lossFunction.calculate(activation2.output, y)
echo "\nLoss: " & $loss

# calculate accuracy of softmax outputs
var acc = activation2.output.accuracy(y)
echo "\nAccuracy: " & $acc