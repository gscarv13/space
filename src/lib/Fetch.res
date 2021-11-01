// Bring the jsonResponse type and the type associated with JSON structure
open DataSourceType

// ============================ XMLHttpRequest Bindings
type request
type response
type onerror
@new external makeXMLHttpRequest: unit => request = "XMLHttpRequest"
@send external addEventListener: (request, string, unit => unit) => unit = "addEventListener"
@get external response: request => response = "response"
@get external onerror: request => onerror = "onerror"
@send external open_: (request, string, string) => unit = "open"
@send external send: request => unit = "send"
@send external abort: request => unit = "abort"
// ============================

@scope("JSON") @val external parseResponse: response => jsonResponse = "parse"

let handleFetch = callback => {
  let request = makeXMLHttpRequest()

  request->addEventListener("loadend", () => {
    let a = request->response->parseResponse
    callback(_ => a)
  })

  request->addEventListener("error", () => {
    Js.log("Error")
  })

  request->open_(
    "GET",
    "https://gitlab.com/api/v4/projects/30793592/repository/files/src%2Fdata.json/raw?ref=master",
  )
  request->send
}
