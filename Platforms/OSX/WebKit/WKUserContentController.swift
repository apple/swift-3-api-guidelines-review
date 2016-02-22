
@available(OSX 10.10, *)
class WKUserContentController : NSObject {
  var userScripts: [WKUserScript] { get }
  func addUserScript(userScript: WKUserScript)
  func removeAllUserScripts()
  func add(scriptMessageHandler: WKScriptMessageHandler, name: String)
  func removeScriptMessageHandler(forName name: String)
  init()
}
