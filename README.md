Drawbox
====================

A drawbox module for torch7

Usage:

image = draw.drawBox(image, centerX, centerY, boxWidth, boxHeight, lineWidth, color)

Example:

draw = require 'draw'
require 'image'
image.display(draw.drawBox(image.lena(), 0.5, 0.5, 0.9, 0.9, 5, {0.3,1,0.7}))
image.display(draw.drawBox(image.rgb2y(image.lena()), 0.5, 0.5, 0.9, 0.9, 5, 0.8))

You can install the package by opening a terminal, changing directory into the folder and typing:

luarocks make
