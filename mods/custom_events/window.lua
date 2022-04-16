local windowX = 0;
local windowY = 0;

function onEvent(name, value1, value2)
    windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
    windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')
    setPropertyFromClass('openfl.Lib','application.window.x',windowX + value1)
    setPropertyFromClass('openfl.Lib','application.window.y',windowY + value2)
end