

function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pixel-dead'); --Character json file for the death animation
	--setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel'); --put in mods/sounds/

	local suff = '-day';

	if (songName == 'Spine-Crusher') then
		suff = '';
	elseif (songName == 'Mas-fuerte-que-tu' or songName == 'Megalovania') then
		suff = '-night';
	end
	


	makeLuaSprite('sky', 'stage/sky'..suff, 400, 300);
	setProperty('sky.scale.x', 6);
	setProperty('sky.scale.y', 6);
	setProperty('sky.antialiasing', false);
	setScrollFactor('sky', 0.1, 0.1);

	makeLuaSprite('city', 'stage/mount'..suff, 400, 390);
	setProperty('city.scale.x', 6);
	setProperty('city.scale.y', 6);
	setProperty('city.antialiasing', false);
	setScrollFactor('city', 0.4, 0.4);

	makeLuaSprite('tree_b', 'stage/tree_b'..suff, 400, 480);
	setProperty('tree_b.scale.x', 6);
	setProperty('tree_b.scale.y', 6);
	setProperty('tree_b.antialiasing', false);
	setScrollFactor('tree_b', 0.6, 0.6);

	makeLuaSprite('tree_a', 'stage/tree_a'..suff, 400, 520);
	setProperty('tree_a.scale.x', 6);
	setProperty('tree_a.scale.y', 6);
	setProperty('tree_a.antialiasing', false);
	setScrollFactor('tree_a', 0.8, 0.8);

	makeLuaSprite('gr', 'stage/ground'..suff, 200, 498);
	setProperty('gr.scale.x', 6);
	setProperty('gr.scale.y', 6);
	setProperty('gr.antialiasing', false);

	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('tree_b', false);
	addLuaSprite('tree_a', false);
	addLuaSprite('gr', false);
	
	makeAnimatedLuaSprite('1','temcore/Mitakapantalla',-520,39)
	addAnimationByPrefix('1','background','Mitakapantalla dance',10,true)
	objectPlayAnimation('1','background',false)
	--setScrollFactor('1',-1, -1);
	
	addLuaSprite('1', true);
	scaleObject('1',1.3, 1);
	setProperty('1.visible', false)
	
	makeLuaSprite('2', 'temcore/fil_tem',-520,39)
	addLuaSprite('2', true);
	scaleObject('2',1, 1);
	setProperty('2.visible', false)

	--bullSpawn('boneV3', 0, 0, 0, 0, 0.01, 20);

	--[[
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
	]]
end

function onUpdate(elapsed)
	local dget = 'dad.animation.curAnim'
	if (getProperty(dget..'.name') == 'idle' and getProperty(dget..'.finished')) then
		setProperty(dget..'.curFrame', 0);
		setProperty(dget..'.finished', false);
	end
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then
		if value1 == '0' then
	setProperty('2.visible', false)
	setProperty('1.visible', true)
end
		if value1 == '1' then
			setProperty('2.visible', true)
end
end
end