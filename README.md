# gurli

A little utility CoffeeScript for setting and getting query parameters more conveniently.

## Usage examples

You can create a new Gurli instance using `myGurli = new Gurli()`. This object will represent your current location with your current query parameters. You can then call the following methods on the object:

#### setParam(name, value)
Adds the a new pair to the Gurli object. If the key already exists, the value is overridden.

#### getParam(name)
Returns the value for the specified key. Returns undefined if no value is associated.

#### removeParam(name)
Removes the specified key (if present) from the Gurli object.

#### clearParams()
Removes any query parameters from the Gurli object.

#### setBaseUrl(newUrl)
Replaces the part of the url before the question mark, but retains query parameters.

#### toURL()
Returns a URL encoded string that contains the full URL with the set query parameters.

#### goto()
Navigates to the URL specified in the Gurli object.
