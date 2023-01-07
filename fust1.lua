local style = {}

function style: new(v, arg)
	local arg = {v}
	local jsonCurrent = arg[1]
	
	local function fromHex(hex)
		hex = hex:gsub("#","")
		return Color3.fromRGB(tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)))
	end
	
	local style = {}
	style.align = v.align or {0}
	style.animationBuilder = v.animationBuilder
	style.animationDelay = v.animationDelay
	style.animationDuration = v.animationDuration
	style.background = v.background or fromHex("#dadada")
	style.borderRadius = v.borderRadius or 10
	style.color = v.color or fromHex("#393939")
	style.fontSize = v.fontSize or 17
	style.fontWeight = v.fontWeight
	style.height = v.height or 55
	style.margin = v.margin
	style.opacity = v.opacity
	style.padding = v.padding
	style.paddingLeft = v.paddingLeft
	style.textAlign = v.textAlign
	style.width = v.width or 360
	style.x = v.x or 0
	style.y = v.y or 0
	style.zIndex = v.zIndex

	if style.align == "center" then		
		style.align = {0.5, 0.68}
	end
	
	return style
end

return style
