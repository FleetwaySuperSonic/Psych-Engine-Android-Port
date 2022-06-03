local texture = 'splash/SplashEdgy' --image path goes here

function onCreate()

end

function onStartCountdown()
    makeAnimatedLuaSprite('splashLefto', texture)
    makeAnimatedLuaSprite('splashDowno', texture)
    makeAnimatedLuaSprite('splashUpo', texture)
    makeAnimatedLuaSprite('splashRighto', texture)

    for i=1, 3 do
        addAnimationByPrefix('splashLefto', 'splash' ..i, 'note splash purple ' ..i, 24, false)
        addAnimationByPrefix('splashDowno', 'splash' ..i, 'note splash blue ' ..i, 24, false)
        addAnimationByPrefix('splashUpo', 'splash' ..i, 'note splash green ' ..i, 24, false)
        addAnimationByPrefix('splashRighto', 'splash' ..i, 'note splash red ' ..i, 24, false)
    end

    setProperty('splashLefto.alpha', 0.80)
    setProperty('splashDowno.alpha', 0.80)
    setProperty('splashUpo.alpha', 0.80)
    setProperty('splashRighto.alpha', 0.80)

    setObjectCamera('splashLefto', 'camHUD')
    setObjectCamera('splashDowno', 'camHUD')
    setObjectCamera('splashUpo', 'camHUD')
    setObjectCamera('splashRighto', 'camHUD')

    setProperty('splashLefto.visible', false)
    setProperty('splashDowno.visible', false)
    setProperty('splashUpo.visible', false)
    setProperty('splashRighto.visible', false)

    setProperty('splashLefto.offset.x', 10)
    setProperty('splashLefto.offset.y', 10)
    setProperty('splashDowno.offset.x', 10)
    setProperty('splashDowno.offset.y', 10)
    setProperty('splashUpo.offset.x', 10)
    setProperty('splashUpo.offset.y', 10)
    setProperty('splashRighto.offset.x', 10)
    setProperty('splashRighto.offset.y', 10)

    setObjectOrder('splashLefto', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashDowno', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashUpo', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashRighto', getObjectOrder('grpNoteSplashes'))

    addLuaSprite('splashLefto')
    addLuaSprite('splashDowno')
    addLuaSprite('splashUpo')
    addLuaSprite('splashRighto')
    return Function_Continue
end

function opponentNoteHit(id, dir, type, sus)
    if dir == 0 and not sus then
        setProperty('splashLefto.x', getPropertyFromGroup('opponentStrums', 0, 'x')-(200*0.7)*0.95)
        setProperty('splashLefto.y', getPropertyFromGroup('opponentStrums', 0, 'y')-(230*0.7))
        setProperty('splashLefto.visible', true)
        objectPlayAnimation('splashLefto', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashLefto.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif dir == 1 and not sus  then
        setProperty('splashDowno.x', getPropertyFromGroup('opponentStrums', 1, 'x')-(240*0.7)*0.95)
        setProperty('splashDowno.y', getPropertyFromGroup('opponentStrums', 1, 'y')-(230*0.7))
        setProperty('splashDowno.visible', true)
        objectPlayAnimation('splashDowno', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashDowno.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif dir == 2 and not sus then
        setProperty('splashUpo.x', getPropertyFromGroup('opponentStrums', 2, 'x')-(240*0.7)*0.95)
        setProperty('splashUpo.y', getPropertyFromGroup('opponentStrums', 2, 'y')-(230*0.7))
        setProperty('splashUpo.visible', true)
        objectPlayAnimation('splashUpo', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashUpo.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif dir == 3 and not sus then
        setProperty('splashRighto.x', getPropertyFromGroup('opponentStrums', 3, 'x')-(220*0.7)*0.95)
        setProperty('splashRighto.y', getPropertyFromGroup('opponentStrums', 3, 'y')-(230*0.7))
        setProperty('splashRighto.visible', true)
        objectPlayAnimation('splashRighto', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashRighto.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    end
end

function onUpdate()
    if getProperty('splashLefto.animation.curAnim.finished') and getProperty('splashLefto.visible') then
        setProperty('splashLefto.visible', false)
    end
    if getProperty('splashDowno.animation.curAnim.finished') and getProperty('splashDowno.visible') then
        setProperty('splashDowno.visible', false)
    end
    if getProperty('splashUpo.animation.curAnim.finished') and getProperty('splashUpo.visible') then
        setProperty('splashUpo.visible', false)
    end
    if getProperty('splashRighto.animation.curAnim.finished') and getProperty('splashRighto.visible') then
       setProperty('splashRighto.visible', false)
    end
end