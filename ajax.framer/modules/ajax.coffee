exports.get = (url, callback) ->
    request = new XMLHttpRequest()
    request.open('GET', url, true)

    request.onload = ->
        if request.status >= 200 and request.status < 400
            callback(JSON.parse(request.responseText))
        else
            callback(JSON.parse({status: false}))

    request.onerror = ->
        callback(JSON.parse({status: false}))

    request.send()

