function onEvent(name, value1, value2)

     if name == "Set Camera Zoom" then

	     doTweenZoom('zoom', 'camGame', value1, value2, 'linear')

       end
    end