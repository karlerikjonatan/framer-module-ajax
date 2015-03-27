# Module
ajax = require "ajax"

# GET
ajax.get("http://uifaces.com/api/v1/random", createAvatar)

# Avatar

createAvatar = (response) ->	
	avatar = new Layer({
		height: 200
		width: 200
		image: response.image_urls.epic
	})
	
	avatar.center()