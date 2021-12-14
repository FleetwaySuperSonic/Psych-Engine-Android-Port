function onCreate()
	-- background shit
	
	makeLuaSprite('EGGMAN', 'EGGMAN', -700, -350);
	setLuaSpriteScrollFactor('EGGMAN', 0.9, 0.9);
	scaleObject('EGGMAN', 0.8, 0.7);

	makeLuaSprite('FLOOR1', 'FLOOR1', -1000, -800);
	setLuaSpriteScrollFactor('FLOOR1', 0.9, 0.9);
	scaleObject('FLOOR1', 1.1, 1.1);

	makeLuaSprite('FLOOR2', 'FLOOR2', -1000, -1200);
	setLuaSpriteScrollFactor('FLOOR2', 0.9, 0.9);
	scaleObject('FLOOR2', 0.9, 1.1);
	
	makeLuaSprite('frontgass', 'frontgass', -1000, -1200);
	setLuaSpriteScrollFactor('frontgass', 0.9, 0.9);
	scaleObject('frontgass', 0.9, 1.1);
	
	makeLuaSprite('HILLS', 'HILLS', -1000, -1200);
	setLuaSpriteScrollFactor('HILLS', 0.9, 0.9);
	scaleObject('HILLS', 0.9, 1.1);
	
	makeLuaSprite('KNUCKLE', 'KNUCKLE', -1000, -1200);
	setLuaSpriteScrollFactor('KNUCKLE', 0.9, 0.9);
	scaleObject('KNUCKLE', 0.9, 1.1);
	
	makeLuaSprite('SKY', 'SKY', -1000, -1200);
	setLuaSpriteScrollFactor('SKY', 0.9, 0.9);
	scaleObject('SKY', 0.9, 1.1);
	
	makeLuaSprite('TAIL', 'TAIL', -1000, -1200);
	setLuaSpriteScrollFactor('TAIL', 0.9, 0.9);
	scaleObject('TAIL', 0.9, 1.1);
	
	makeLuaSprite('TailsSpikeAnimated', 'TailsSpikeAnimated', -1000, -1200);
	setLuaSpriteScrollFactor('TailsSpikeAnimated', 0.9, 0.9);
	scaleObject('TailsSpikeAnimated', 0.9, 1.1);

	addLuaSprite('EGGMAN', false);
	addLuaSprite('FLOOR1', false);
	addLuaSprite('FLOOR2', false);
	addLuaSprite('frontgass', false);
	addLuaSprite('HILLS', false);
	addLuaSprite('KNUCKLE', false);
	addLuaSprite('SKY', false);
	addLuaSprite('TAIL', false);
	addLuaSprite('TailsSpikeAnimated', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end