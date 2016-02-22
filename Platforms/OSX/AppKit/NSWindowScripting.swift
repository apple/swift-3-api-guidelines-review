
extension NSWindow {
  var hasCloseBox: Bool { get }
  var hasTitleBar: Bool { get }
  var isFloatingPanel: Bool { get }
  var isMiniaturizable: Bool { get }
  var isModalPanel: Bool { get }
  var isResizable: Bool { get }
  var isZoomable: Bool { get }
  var orderedIndex: Int
  func setIsMiniaturized(flag: Bool)
  func setIsVisible(flag: Bool)
  func setIsZoomed(flag: Bool)
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrint(command: NSScriptCommand) -> AnyObject?
  func handleSave(command: NSScriptCommand) -> AnyObject?
}
