# modeling an "output layer neuron" w/ 4 inputs
# video ref: https://youtu.be/lGLto9Xd7bU

import ../src/common

var
    inputs = vector(@[1.0, 2.0, 3.0, 2.5])

    weights1 = vector(@[0.2, 0.8, -0.5, 1.0])
    weights2 = vector(@[0.5, -0.91, 0.26, -0.5])
    weights3 = vector(@[-0.26, -0.27, 0.17, 0.87])

    bias1 = 2.0
    bias2 = 3.0
    bias3 = 0.5

var outputNeuron = @[inputs.dot(weights1) + bias1,
                inputs.dot(weights2) + bias2,
                inputs.dot(weights3) + bias3]

echo outputNeuron
# [4.8, 1.21, 2.385] #sentdex
# [4.8, 1.21, 2.385] #NimNet