# Module
ajax = require "ajax"

# GET
ajax.get("http://uifaces.com/api/v1/random", (response) -> if response.statuscreateAvatar(response))

# Avatar
createAvatar = (data) ->
	avatar = new Layer(
		height: 200
		width: 200
		image: data.image_urls.epic
	)
	
	avatar.center()