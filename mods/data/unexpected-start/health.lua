function opponentNoteHit(id, direction, noteType, isSustainNote)

	if getProperty('health') >= 0.35 then

		setProperty('health', getProperty('health') -0.008)

	end
end
