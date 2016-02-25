
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSave(_ command: NSScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(_ command: NSCloseCommand) -> AnyObject?
  func handlePrint(_ command: NSScriptCommand) -> AnyObject?
}
