
extension NSWindow {
  var hasCloseBox: Bool { get }
  var hasTitleBar: Bool { get }
  var floatingPanel: Bool { get }
  var miniaturizable: Bool { get }
  var modalPanel: Bool { get }
  var resizable: Bool { get }
  var zoomable: Bool { get }
  var orderedIndex: Int
  func setIsMiniaturized(flag: Bool)
  func setIsVisible(flag: Bool)
  func setIsZoomed(flag: Bool)
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrintScriptCommand(command: NSScriptCommand) -> AnyObject?
  func handleSaveScriptCommand(command: NSScriptCommand) -> AnyObject?
}
