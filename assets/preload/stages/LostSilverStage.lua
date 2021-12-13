function onCreate()
	-- background shit
	
	makeLuaSprite('Silver', 'Silver', -700, -350);
	setLuaSpriteScrollFactor('Silver', 0.9, 0.9);
	scaleObject('Silver', 0.8, 0.7);

	makeLuaSprite('Silver', 'Silver', -1000, -800);
	setLuaSpriteScrollFactor('Silver', 0.9, 0.9);
	scaleObject('Silver', 1.1, 1.1);

	makeLuaSprite('Silver', 'Silver', -1000, -1200);
	setLuaSpriteScrollFactor('Silver', 0.9, 0.9);
	scaleObject('Silver', 0.9, 1.1);

	addLuaSprite('Silver', false);
	addLuaSprite('Silver', false);
	addLuaSprite('Silver', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end