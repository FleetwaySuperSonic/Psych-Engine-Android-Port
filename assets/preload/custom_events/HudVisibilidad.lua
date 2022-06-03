function onEvent(name,value1)
if name == 'HudVisibilidad' then
	if value1 == 'no' then
    doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
  end		
    if value1 == 'si' then
    doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
end
   end 
end