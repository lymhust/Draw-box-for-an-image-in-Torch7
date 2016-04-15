draw = require 'draw'
require 'image'
require 'camera'
require 'sys'

image.display(draw.drawBox(image.lena(), 0.5, 0.5, 0.9, 0.9, 5, {0.3,1,0.7}))
image.display(draw.drawBox(image.rgb2y(image.lena()), 0.5, 0.5, 0.9, 0.9, 5, 0.8))

local cam = image.Camera{}
local fps = 0

while true do
  sys.tic()
  local frame = cam:forward()
  frame = draw.drawBox(frame, 0.5, 0.5, 0.9, 0.9, 5, {1,0.6,0.7})
  w = image.display{image=frame, win=w}
  print('FPS: '..1/sys.toc())
end