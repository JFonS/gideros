--[[ 

This example demonstrates a generic Button class

This code is MIT licensed, see http://www.opensource.org/licenses/mit-license.php
(C) 2010 - 2011 Gideros Mobile 

]]

-- create a label to show number of clicks
local label = TextField.new(nil, "Clicked 0 time(s)")
label:setPosition(application:getContentWidth()/2, application:getContentHeight()/2)
stage:addChild(label)

print(application:getContentWidth()/2)
print(application:getContentHeight()/2)

-- create the up and down sprites for the button
local up = Bitmap.new(Texture.new("button_up.png"))
local down = Bitmap.new(Texture.new("button_down.png"))

-- create the button
local button = Button.new(up, down)

-- register to "click" event
local click = 0
button:addEventListener("click", 
	function() 
		click = click + 1
		label:setText("Clicked " .. click .. " time(s)")
	end)

button:setPosition(0, 0)
stage:addChild(button)
