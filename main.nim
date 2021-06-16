import common

var
    inputs = matrix(@[
        @[1.0, 2.0, 3.0, 2.5],
        @[2.0, 5.0, -1.0, 2.0],
        @[-1.5, 2.7, 3.3, -0.8]])

    weights = matrix(@[
        @[0.2, 0.8, -0.5, 1.0],
        @[0.5, -0.91, 0.26, -0.5],
        @[-0.26, -0.27, 0.17, 0.87]])

    biases = vector([2.0, 3.0, 0.5])

    weights2 = matrix(@[
        @[0.1, -0.14, 0.5],
        @[-0.5, 0.12, -0.33],
        @[-0.44, 0.73, -0.13]])

    biases2 = vector([-1.0, 2.0, -0.5])




weights.transpose
var outputsLayer1: Matrix = inputs * weights + biases

var inputsTest = matrix(@[
        @[4.8,  1.21,  2.385],
        @[8.9,  -1.81,  0.2],
        @[1.41,  1.051,  0.02599999999999991]])


weights2.transpose
var test = outputsLayer1 * weights2 + biases2
echo test

#var outputsLayer2: Matrix = outputsLayer1 * weights2 + biases2

# THE OUTPUT BELOW IS CORRECT
#  outputsLayer2:
# [ [ 0.5030999999999999  -1.04185        -2.03875 ]
#   [ 0.2434000000000003  -2.7332 -5.763300000000001 ]
#   [ -0.99314    1.41254 -0.3565500000000003 ] ]