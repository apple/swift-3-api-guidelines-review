
@available(OSX 10.10, *)
class WKUserContentController : NSObject {
  var userScripts: [WKUserScript] { get }
  func addUserScript(_ userScript: WKUserScript)
  func removeAllUserScripts()
  func addScriptMessageHandler(_ scriptMessageHandler: WKScriptMessageHandler, name name: String)
  func removeScriptMessageHandlerForName(_ name: String)
}
