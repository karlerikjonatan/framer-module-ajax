# framer.module.ajax
framer.module.ajax is an Ajax module for Framer.

## Installation
Add ```ajax.coffee``` to the /modules folder of your project.

## Usage
To include the module within your project, add the following:

``` coffeescript
ajax = require "ajax"
```

framer.module.ajax consists of the method ```get``` and requires the parameters ```url```, ```callback```.

#### get
``` coffeescript
ajax.get(url, (response) -> callback(response))
```
The ```url``` and ```callback``` parameters defines the URL to request and the function to run (together with response object) on success.

framer.module.ajax parses all responses as ```JSON```.

### Example
``` coffeescript
# Module
ajax = require "ajax"

# GET
ajax.get("http://uifaces.com/api/v1/random", (response) -> createAvatar(response))

# Avatar
createAvatar = (data) ->
	avatar = new Layer(
		height: 200
		width: 200
		image: data.image_urls.epic
	)
```
