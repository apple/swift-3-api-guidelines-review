
@available(OSX 10.10, *)
class WKUserContentController : Object {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func add(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandlerForName(name: String)
  init()
}
