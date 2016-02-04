
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSave(command: ScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(command: CloseCommand) -> AnyObject?
  func handlePrint(command: ScriptCommand) -> AnyObject?
  var objectSpecifier: ScriptObjectSpecifier { get }
}
