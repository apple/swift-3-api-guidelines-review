
@available(OSX 10.10, *)
class WKUserContentController : NSObject {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func addScriptMessageHandler(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandlerForName(name: String)
  init()
}
