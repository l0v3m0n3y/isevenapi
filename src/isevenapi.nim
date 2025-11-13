import asyncdispatch, httpclient, json, strutils
const api = "https://api.isevenapi.xyz/api"
var headers = newHttpHeaders({
    "Connection": "keep-alive",
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36",
    "Host": "api.isevenapi.xyz",
    "Accept": "application/json",
    "Content-Type": "application/json"
})


proc is_seven*(num:int): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let response = await client.get(api & "/iseven/" & $num)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()
