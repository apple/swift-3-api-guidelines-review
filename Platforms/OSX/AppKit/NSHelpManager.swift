
class NSHelpManager : NSObject {
  class func shared() -> NSHelpManager
  class func setContextHelpModeActive(active: Bool)
  class func isContextHelpModeActive() -> Bool
  func setContextHelp(attrString: NSAttributedString, for object: AnyObject)
  func removeContextHelp(for object: AnyObject)
  func contextHelp(for object: AnyObject) -> NSAttributedString?
  func showContextHelp(for object: AnyObject, locationHint pt: NSPoint) -> Bool
  func openHelpAnchor(anchor: String, inBook book: String?)
  func find(query: String, inBook book: String?)
  @available(OSX 10.6, *)
  func registerBooks(in bundle: NSBundle) -> Bool
  init()
}
let NSContextHelpModeDidActivateNotification: String
let NSContextHelpModeDidDeactivateNotification: String
extension NSBundle {
  func contextHelp(forKey key: String) -> NSAttributedString?
}
extension NSApplication {
  func activateContextHelpMode(sender: AnyObject?)
  func showHelp(sender: AnyObject?)
}
