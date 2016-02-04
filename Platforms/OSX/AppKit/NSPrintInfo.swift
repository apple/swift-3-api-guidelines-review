
@available(OSX 10.9, *)
enum NSPaperOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case Landscape
}
enum NSPrintingPaginationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AutoPagination
  case FitPagination
  case ClipPagination
}
let NSPrintSpoolJob: String
let NSPrintPreviewJob: String
let NSPrintSaveJob: String
let NSPrintCancelJob: String
let NSPrintPaperName: String
let NSPrintPaperSize: String
let NSPrintOrientation: String
let NSPrintScalingFactor: String
let NSPrintLeftMargin: String
let NSPrintRightMargin: String
let NSPrintTopMargin: String
let NSPrintBottomMargin: String
let NSPrintHorizontallyCentered: String
let NSPrintVerticallyCentered: String
let NSPrintHorizontalPagination: String
let NSPrintVerticalPagination: String
let NSPrintPrinter: String
let NSPrintCopies: String
let NSPrintAllPages: String
let NSPrintFirstPage: String
let NSPrintLastPage: String
let NSPrintMustCollate: String
let NSPrintReversePageOrder: String
let NSPrintJobDisposition: String
let NSPrintPagesAcross: String
let NSPrintPagesDown: String
let NSPrintTime: String
let NSPrintDetailedErrorReporting: String
let NSPrintFaxNumber: String
let NSPrintPrinterName: String
@available(OSX 10.6, *)
let NSPrintSelectionOnly: String
@available(OSX 10.6, *)
let NSPrintJobSavingURL: String
@available(OSX 10.6, *)
let NSPrintJobSavingFileNameExtensionHidden: String
let NSPrintHeaderAndFooter: String
class NSPrintInfo : Object, Copying, Coding {
  class func setSharedPrintInfo(printInfo: NSPrintInfo)
  class func shared() -> NSPrintInfo
  init(dictionary attributes: [String : AnyObject])
  func dictionary() -> MutableDictionary
  var paperName: String?
  var paperSize: Size
  var orientation: NSPaperOrientation
  @available(OSX 10.6, *)
  var scalingFactor: CGFloat
  var leftMargin: CGFloat
  var rightMargin: CGFloat
  var topMargin: CGFloat
  var bottomMargin: CGFloat
  var isHorizontallyCentered: Bool
  var isVerticallyCentered: Bool
  var horizontalPagination: NSPrintingPaginationMode
  var verticalPagination: NSPrintingPaginationMode
  var jobDisposition: String
  @NSCopying var printer: NSPrinter
  func setUpPrintOperationDefaultValues()
  var imageablePageBounds: Rect { get }
  var localizedPaperName: String? { get }
  class func defaultPrinter() -> NSPrinter?
  @available(OSX 10.5, *)
  var printSettings: MutableDictionary { get }
  @available(OSX 10.5, *)
  func pmPrintSession() -> UnsafeMutablePointer<Void>
  @available(OSX 10.5, *)
  func pmPageFormat() -> UnsafeMutablePointer<Void>
  @available(OSX 10.5, *)
  func pmPrintSettings() -> UnsafeMutablePointer<Void>
  @available(OSX 10.5, *)
  func updateFromPMPageFormat()
  @available(OSX 10.5, *)
  func updateFromPMPrintSettings()
  @available(OSX 10.6, *)
  var isSelectionOnly: Bool
  @available(OSX 10.9, *)
  func takeSettingsFrom(inPDFInfo: NSPDFInfo)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension NSPrintInfo {
}
enum NSPrintingOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PortraitOrientation
  case LandscapeOrientation
}
