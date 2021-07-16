# a single neuron w/ 3 inputs
# video ref: https://youtu.be/Wo5dMEP_BbI

import ../src/common

var
    inputs = vector(@[1.2, 5.1, 2.1])
    weights = vector(@[3.1, 2.1, 8.7])

    bias = 3.0

var output = inputs.dot(weights) + bias

echo output
# 35.7 #sentdex
# 35.7 #NimNet