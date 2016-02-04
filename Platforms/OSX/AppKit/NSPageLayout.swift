
class NSPageLayout : NSObject {
  @available(OSX 10.5, *)
  func addAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  func removeAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  func beginSheetWithPrintInfo(printInfo: NSPrintInfo, modalForWindow docWindow: NSWindow, delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalWithPrintInfo(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo? { get }
  init()
}
extension NSPageLayout {
}
extension NSApplication {
  func runPageLayout(sender: AnyObject?)
}
