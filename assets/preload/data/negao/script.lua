
local strumy = 50;
local plushit = 10;
local doit = 1;

local anglevents = false
local angleshit = 1;
local anglevar = 1;
--creds
--bbpanzu demoman stage

function onBeatHit()
	if anglevents == true then

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*9)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curStep == 164 then
			doTweenY('rrr', 'camHUD', 500, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 500, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 176 then
			anglevents=true
		end
	if curStep == 196 then
			anglevents=false
		end
	if curStep == 208 then
			anglevents=true
		end
	if curStep == 228 then
			anglevents=false
		end
	if curStep == 272 then
			anglevents=true
		end
	if curStep == 292 then
			doTweenY('rrr', 'camHUD', 100, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 100, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 304 then
			anglevents=true	
		end
	if curStep == 324 then
			doTweenY('rrr', 'camHUD', 1, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 1, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 336 then
			anglevents=true	
		end
	if curStep == 356 then
			anglevents=false	
		end
	if curStep == 912 then
			anglevents=false	
		end
	if curStep == 1200 then
			anglevents=true	
		end
	if curStep == 1220 then
			doTweenY('rrr', 'camHUD', 500, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 500, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 1232 then
			anglevents=true	
		end
	if curStep == 1252 then
			doTweenY('rrr', 'camHUD', 1, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 1, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 1264 then
			anglevents=true	
		end
	if curStep == 1284 then
			anglevents=true
		end
	if curStep == 1328 then
			anglevents=true	
		end
	if curStep == 1348 then
			doTweenY('rrr', 'camHUD', 100, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 100, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 1360 then
			anglevents=true	
		end
	if curStep == 1380 then
			doTweenY('rrr', 'camHUD', 1, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 1, stepCrochet*0.01, 'sineOut')
			anglevents=false	
		end
	if curStep == 1392 then
			anglevents=true	
		end
	if curStep == 1412 then
			anglevents=false	
		end
	if curStep >= 5 then
			triggerEvent('final','','')
		end
	if curStep == 196 then
			doTweenY('rrr', 'camHUD', 1, stepCrochet*0.01, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 1, stepCrochet*0.01, 'sineOut')
		end
	if curStep >= 144 and curStep <= 163 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
			anglevents=true
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
				end
			end
end

function onUpdate(elapsed)
				   songPos = getSongPosition()
				local currentBeat = (songPos/1000)
   if curStep == 228 then --228
        noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
   if curStep == 530 then --530
	noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + -300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	
	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -80+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 80+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -600+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 600+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
     end
   if curStep == 592 then --592
	noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 450+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + -320+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 200+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -190+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	
	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -80+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 200+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -320+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 570+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
    if curStep == 656 then --656
	noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
						anglevents=true	
	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
    if curStep == 1168 then --1168
	noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2) 
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
   if curStep == 1172 then --1172
	noteTweenX('playerx1', 4, defaultPlayerStrumX3 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2) 
	noteTweenX('playerx2', 5, defaultPlayerStrumX2 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX1 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX0 + -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX3 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX2 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX1 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX0 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
   if curStep == 1180 then --1180
	noteTweenX('playerx1', 4, defaultPlayerStrumX1 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2) 
	noteTweenX('playerx2', 5, defaultPlayerStrumX0 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX3 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX2 + -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX1 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX0 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX3 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX2 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
   if curStep == 1188 then --1188
	noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2) 
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
    if curStep == 1284 then --1284
        noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
					anglevents=false
	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 640+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end
    if curStep == 1412 then --1412
	noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 0+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
    end

	 if curStep == 356 then --356
        noteTweenX('playerx1', 4, defaultPlayerStrumX0 - 300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 + -300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 - 300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 + -300+math.sin((currentBeat+8*0.1)*math.pi), 0.2)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - -341+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 341+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - -341+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 341+math.sin((currentBeat+8*0.1)*math.pi), 0.2)
		end	
end	

function onCreate()
	precacheImage('NOTE_Alpha');
end

function onEvent(name, value1, value2)
	if name == 'Spin Arrows' then
		angle = tonumber(value1);
			end
		duration = tonumber(value2);
			for note=0,7 do
            noteTweenAngle('speen'..note, note, angle, duration, 'quintOut')
		end
		--debugPrint('Event triggered: ', name, angle, duration);
	end