
@available(OSX 10.5, *)
struct NSPrintPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ShowsCopies: NSPrintPanelOptions { get }
  static var ShowsPageRange: NSPrintPanelOptions { get }
  static var ShowsPaperSize: NSPrintPanelOptions { get }
  static var ShowsOrientation: NSPrintPanelOptions { get }
  static var ShowsScaling: NSPrintPanelOptions { get }
  @available(OSX 10.6, *)
  static var ShowsPrintSelection: NSPrintPanelOptions { get }
  static var ShowsPageSetupAccessory: NSPrintPanelOptions { get }
  static var ShowsPreview: NSPrintPanelOptions { get }
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
  func beginSheetWithPrintInfo(printInfo: NSPrintInfo, modalForWindow docWindow: NSWindow, delegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.5, *)
  func runModalWithPrintInfo(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  @available(OSX 10.5, *)
  var printInfo: NSPrintInfo { get }
  init()
}
extension NSPrintPanel {
}
