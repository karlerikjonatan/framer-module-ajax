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
## License
Copyright (c) 2015 Jonatan Pettersson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
