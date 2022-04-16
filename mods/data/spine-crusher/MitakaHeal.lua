function onUpdate()
   if keyJustPressed('space') then
   	playSound('heal', 0.7);
  	triggerEvent('Play Animation', 'hey', 'bf');
	triggerEvent('Play Animation', 'singUP', 'dad');
	setProperty('health', 2)
	setProperty('songMisses', getProperty('songMisses')-(-1))
   end
end