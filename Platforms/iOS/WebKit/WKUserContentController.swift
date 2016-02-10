
@available(iOS 8.0, *)
class WKUserContentController : Object {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func add(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandler(forName name: String)
  init()
}
