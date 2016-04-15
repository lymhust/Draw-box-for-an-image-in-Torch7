require 'image'
local draw = {}

function draw.drawBox(img, x, y, w, h, lineWidth, color)
  print('Drawing Box')
  local imsize = #img
  local imC, imW, imH = imsize[1], imsize[3], imsize[2]
  local topleft, bottomright = {}, {} 
  topleft.x = (x - h/2) * imH
  topleft.y = (y - w/2) * imW
  bottomright.x = (x + h/2) * imH
  bottomright.y = (y + w/2) * imW
  -- Line one
  img[1][{ {topleft.x, bottomright.x},{topleft.y, topleft.y+lineWidth} }] = color[1]
  img[2][{ {topleft.x, bottomright.x},{topleft.y, topleft.y+lineWidth} }] = color[2]
  img[3][{ {topleft.x, bottomright.x},{topleft.y, topleft.y+lineWidth} }] = color[3]
  -- Line two
  img[1][{ {topleft.x, bottomright.x},{bottomright.y-lineWidth, bottomright.y} }] = color[1]
  img[2][{ {topleft.x, bottomright.x},{bottomright.y-lineWidth, bottomright.y} }] = color[2]
  img[3][{ {topleft.x, bottomright.x},{bottomright.y-lineWidth, bottomright.y} }] = color[3]
  -- Line three
  img[1][{ {topleft.x, topleft.x+lineWidth},{topleft.y, bottomright.y} }] = color[1]
  img[2][{ {topleft.x, topleft.x+lineWidth},{topleft.y, bottomright.y} }] = color[2]
  img[3][{ {topleft.x, topleft.x+lineWidth},{topleft.y, bottomright.y} }] = color[3]
  -- Line four
  img[1][{ {bottomright.x-lineWidth, bottomright.x},{topleft.y, bottomright.y} }] = color[1]
  img[2][{ {bottomright.x-lineWidth, bottomright.x},{topleft.y, bottomright.y} }] = color[2]
  img[3][{ {bottomright.x-lineWidth, bottomright.x},{topleft.y, bottomright.y} }] = color[3]
  return img
end

return draw
   
