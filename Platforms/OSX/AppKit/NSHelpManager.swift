
class NSHelpManager : Object {
  class func shared() -> NSHelpManager
  class func setContextHelpModeActive(active: Bool)
  class func isContextHelpModeActive() -> Bool
  func setContextHelp(attrString: AttributedString, forObject object: AnyObject)
  func removeContextHelp(forObject object: AnyObject)
  func contextHelp(forObject object: AnyObject) -> AttributedString?
  func showContextHelp(forObject object: AnyObject, locationHint pt: Point) -> Bool
  func openHelpAnchor(anchor: String, inBook book: String?)
  func find(query: String, inBook book: String?)
  @available(OSX 10.6, *)
  func registerBooks(in bundle: Bundle) -> Bool
  init()
}
let NSContextHelpModeDidActivateNotification: String
let NSContextHelpModeDidDeactivateNotification: String
extension Bundle {
  func contextHelp(forKey key: String) -> AttributedString?
}
extension NSApplication {
  func activateContextHelpMode(sender: AnyObject?)
  func showHelp(sender: AnyObject?)
}
