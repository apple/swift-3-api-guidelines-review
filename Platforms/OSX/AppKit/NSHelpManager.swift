
class NSHelpManager : NSObject {
  class func sharedHelpManager() -> NSHelpManager
  class func setContextHelpModeActive(_ active: Bool)
  class func isContextHelpModeActive() -> Bool
  func setContextHelp(_ attrString: NSAttributedString, forObject object: AnyObject)
  func removeContextHelpForObject(_ object: AnyObject)
  func contextHelpForObject(_ object: AnyObject) -> NSAttributedString?
  func showContextHelpForObject(_ object: AnyObject, locationHint pt: NSPoint) -> Bool
  func openHelpAnchor(_ anchor: String, inBook book: String?)
  func findString(_ query: String, inBook book: String?)
  @available(OSX 10.6, *)
  func registerBooksInBundle(_ bundle: NSBundle) -> Bool
}
let NSContextHelpModeDidActivateNotification: String
let NSContextHelpModeDidDeactivateNotification: String
extension NSBundle {
  func contextHelpForKey(_ key: String) -> NSAttributedString?
}
extension NSApplication {
  func activateContextHelpMode(_ sender: AnyObject?)
  func showHelp(_ sender: AnyObject?)
}
