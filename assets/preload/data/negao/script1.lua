function onCreatePost(elapsed)
    if dadName == 'sonicedgy' then --replace the name for your character name
        for i=0,4,1 do
            setPropertyFromGroup('opponentStrums', i, 'texture', 'notas/notasedgy')
        end
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'notas/notasedgy'); --Change texture
            end    
        end
    end
end 