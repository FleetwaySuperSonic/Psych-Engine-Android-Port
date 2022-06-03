
local incs = true
function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Cross' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'ligma/Cr_Notes'); --Change texture

		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				--setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
		 		 getPropertyFromGroup('notes', i, 'tooLate');
				 getPropertyFromGroup('notes', i, 'wasGoodHit');

				end
			end
		end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Cancelhpdrain' then
		cancelTimer('hpdrain');
	end
	if tag == 'hpdrain' then
		setProperty('health', getProperty('health')-1); 
	end
end

function onUpdatePost(elapsed)
if curStep >= 1 then
	if incs then
		if keyJustPressed('space') then --change here
		setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
			characterPlayAnim('boyfriend', 'dodge', true);
			cancelTimer('hpdrain');
			end
		end	
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	 if noteType == 'Cross' then
		runTimer('hpdrain', 0.25, 0);
	 setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			addMisses(-1)
		playSound('GunDeath', 0.5)
		cameraShake('game', 0.05, 0.1)
		
		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'shoot';
		elseif noteData == 1 then
			animToPlay = 'shoot';
		elseif noteData == 2 then
			animToPlay = 'shoot';
		elseif noteData == 3 then
			animToPlay = 'shoot';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
	end
end

function onGameOver()
	-- You died! Called every single frame your health is lower (or equal to) zero
	-- return Function_Stop if you want to stop the player from going into the game over screen
	incs=false
	return Function_Continue;
end

ShootAnimation = {'shoot'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Cross' then

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'shoot';
		elseif noteData == 1 then
			animToPlay = 'shoot';
		elseif noteData == 2 then
			animToPlay = 'shoot';
		elseif noteData == 3 then
			animToPlay = 'shoot';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
	end
end

dodgeAnimation = {'dodge'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Cross' then
		characterPlayAnim('boyfriend', dodgeAnimation[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'dodge';
		elseif noteData == 1 then
			animToPlay = 'dodge';
		elseif noteData == 2 then
			animToPlay = 'dodge';
		elseif noteData == 3 then
			animToPlay = 'dodge';
		end
		characterPlayAnim('dad', animToPlay, true);
		setProperty('dad.specialAnim', true);
		end	
	end
end


