
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSaveScriptCommand(_ command: NSScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(_ command: NSCloseCommand) -> AnyObject?
  func handlePrintScriptCommand(_ command: NSScriptCommand) -> AnyObject?
}
