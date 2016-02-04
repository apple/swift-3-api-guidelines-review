
enum NSAlertStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case WarningAlertStyle
  case InformationalAlertStyle
  case CriticalAlertStyle
}
class NSAlert : Object {
  /*not inherited*/ init(error: Error)
  var messageText: String
  var informativeText: String
  var icon: NSImage!
  func addButtonWithTitle(title: String) -> NSButton
  var buttons: [NSButton] { get }
  var showsHelp: Bool
  var helpAnchor: String?
  var alertStyle: NSAlertStyle
  unowned(unsafe) var delegate: @sil_unmanaged NSAlertDelegate?
  @available(OSX 10.5, *)
  var showsSuppressionButton: Bool
  @available(OSX 10.5, *)
  var suppressionButton: NSButton? { get }
  @available(OSX 10.5, *)
  var accessoryView: NSView?
  @available(OSX 10.5, *)
  func layout()
  func runModal() -> NSModalResponse
  @available(OSX, introduced=10.3, deprecated=10.10, message="Use -beginSheetModalForWindow:completionHandler: instead")
  func beginSheetModalFor(window: NSWindow, modalDelegate delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  func beginSheetModalFor(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)? = nil)
  var window: NSWindow { get }
  init()
}
var NSAlertFirstButtonReturn: Int { get }
var NSAlertSecondButtonReturn: Int { get }
var NSAlertThirdButtonReturn: Int { get }
protocol NSAlertDelegate : ObjectProtocol {
  optional func alertShowHelp(alert: NSAlert) -> Bool
}
