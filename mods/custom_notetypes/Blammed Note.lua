function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blammed Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BLAMNOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function noteMiss(funny, noteData, noteType , issus)
	if noteType == 'Blammed Note' then
		setProperty('health', getProperty('songMisses')-0.5);
	end
end