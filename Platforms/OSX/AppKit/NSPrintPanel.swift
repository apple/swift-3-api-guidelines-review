
@available(OSX 10.5, *)
struct NSPrintPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var showsCopies: NSPrintPanelOptions { get }
  static var showsPageRange: NSPrintPanelOptions { get }
  static var showsPaperSize: NSPrintPanelOptions { get }
  static var showsOrientation: NSPrintPanelOptions { get }
  static var showsScaling: NSPrintPanelOptions { get }
  @available(OSX 10.6, *)
  static var showsPrintSelection: NSPrintPanelOptions { get }
  static var showsPageSetupAccessory: NSPrintPanelOptions { get }
  static var showsPreview: NSPrintPanelOptions { get }
}
let NSPrintPhotoJobStyleHint: String
@available(OSX 10.6, *)
let NSPrintAllPresetsJobStyleHint: String
@available(OSX 10.6, *)
let NSPrintNoPresetsJobStyleHint: String
@available(OSX 10.5, *)
let NSPrintPanelAccessorySummaryItemNameKey: String
@available(OSX 10.5, *)
let NSPrintPanelAccessorySummaryItemDescriptionKey: String
protocol NSPrintPanelAccessorizing {
  func localizedSummaryItems() -> [[String : String]]
  optional func keyPathsForValuesAffectingPreview() -> Set<String>
}
class NSPrintPanel : NSObject {
  @available(OSX 10.5, *)
  func addAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  func removeAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  @available(OSX 10.5, *)
  var options: NSPrintPanelOptions
  @available(OSX 10.5, *)
  func setDefaultButtonTitle(defaultButtonTitle: String?)
  @available(OSX 10.5, *)
  func defaultButtonTitle() -> String?
  @available(OSX 10.5, *)
  var helpAnchor: String?
  var jobStyleHint: String?
  func beginSheet(printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.5, *)
  func runModal(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  @available(OSX 10.5, *)
  var printInfo: NSPrintInfo { get }
  init()
}
extension NSPrintPanel {
}
