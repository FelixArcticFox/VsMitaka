songended = false

function onUpdatePost()
    if songended == false then
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'VS MitaKa:  '..'Song: '..getProperty('curSong')..' | '..getProperty('scoreTxt.text'))
    end
end
function onDestroy()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'VS MitaKa:  ')
end

function onGameOver()
    songended = true
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'VS MitaKa:  '..' Song: '..getProperty('curSong')..' | GameOver')
    return Function_Continue
end