
extension NSWindow {
  var hasCloseBox: Bool { get }
  var hasTitleBar: Bool { get }
  var floatingPanel: Bool { get }
  var miniaturizable: Bool { get }
  var modalPanel: Bool { get }
  var resizable: Bool { get }
  var zoomable: Bool { get }
  var orderedIndex: Int
  func setIsMiniaturized(_ flag: Bool)
  func setIsVisible(_ flag: Bool)
  func setIsZoomed(_ flag: Bool)
  func handleCloseScriptCommand(_ command: NSCloseCommand) -> AnyObject?
  func handlePrintScriptCommand(_ command: NSScriptCommand) -> AnyObject?
  func handleSaveScriptCommand(_ command: NSScriptCommand) -> AnyObject?
}
