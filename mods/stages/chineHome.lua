function onCreate()
	
	makeLuaSprite('1', 'chineseRydify/BfChine', -100, 100)
	makeLuaSprite('2', 'Platform', -100, 100)
	
	scaleObject('1',1, 1)
	scaleObject('2',1, 1)

	addLuaSprite('1', false)
	addLuaSprite('2', false)

	setProperty('2.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == '0' then

	setProperty('1.visible', true)
	setProperty('2.visible', false)
end
	if value1 == '1' then
	setProperty('1.visible', false)
	setProperty('2.visible', true)
end
end
end