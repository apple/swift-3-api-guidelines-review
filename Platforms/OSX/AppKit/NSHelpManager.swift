
class NSHelpManager : NSObject {
  class func sharedHelpManager() -> NSHelpManager
  class func setContextHelpModeActive(active: Bool)
  class func isContextHelpModeActive() -> Bool
  func setContextHelp(attrString: NSAttributedString, forObject object: AnyObject)
  func removeContextHelpForObject(object: AnyObject)
  func contextHelpForObject(object: AnyObject) -> NSAttributedString?
  func showContextHelpForObject(object: AnyObject, locationHint pt: NSPoint) -> Bool
  func openHelpAnchor(anchor: String, inBook book: String?)
  func findString(query: String, inBook book: String?)
  @available(OSX 10.6, *)
  func registerBooksInBundle(bundle: NSBundle) -> Bool
  init()
}
let NSContextHelpModeDidActivateNotification: String
let NSContextHelpModeDidDeactivateNotification: String
extension NSBundle {
  func contextHelpForKey(key: String) -> NSAttributedString?
}
extension NSApplication {
  func activateContextHelpMode(sender: AnyObject?)
  func showHelp(sender: AnyObject?)
}
