
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSave(command: NSScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrint(command: NSScriptCommand) -> AnyObject?
  var objectSpecifier: NSScriptObjectSpecifier { get }
}
