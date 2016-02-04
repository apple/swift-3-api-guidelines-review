
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSaveScriptCommand(command: NSScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrintScriptCommand(command: NSScriptCommand) -> AnyObject?
  var objectSpecifier: NSScriptObjectSpecifier { get }
}
