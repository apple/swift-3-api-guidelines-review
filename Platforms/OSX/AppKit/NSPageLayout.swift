
class NSPageLayout : Object {
  @available(OSX 10.5, *)
  func addAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  func removeAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  func beginSheet(with printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModal(with printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo? { get }
  init()
}
extension NSPageLayout {
}
extension NSApplication {
  func runPageLayout(sender: AnyObject?)
}
