class Gurli
  constructor: () ->
    @baseUrl = window.location.href.split("?")[0]
    paramsArray = window.location.href.split("?")[1]
    paramsArray = if paramsArray then paramsArray.split("&") else []
    @params = {}
    for pairIndex of paramsArray
      pairArray = paramsArray[pairIndex].split("=")
      @params[decodeURIComponent(pairArray[0])] = decodeURIComponent(pairArray[1])

  setParam: (name, value) ->
    @params[name] = value

  getParam: (name) ->
    @params[name]

  removeParam: (name) ->
    delete @params[name]

  clearParams: ->
    @params = []
    return

  setBaseUrl: (newUrl) ->
    @baseUrl = encodeURI(newUrl)

  toURL: ->
    urlString = @baseUrl + "?"
    for property of @params
      urlString = urlString + encodeURIComponent(property) + "=" + encodeURIComponent(@params[property]) + "&"
    urlString.slice(0, -1)

  goto: ->
    window.location = @.toURL()

window.Gurli = Gurli


