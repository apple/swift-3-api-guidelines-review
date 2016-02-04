
enum NSPrintingPageOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DescendingPageOrder
  case SpecialPageOrder
  case AscendingPageOrder
  case UnknownPageOrder
}
@available(OSX 10.7, *)
enum NSPrintRenderingQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Best
  case Responsive
}
let NSPrintOperationExistsException: String
class NSPrintOperation : NSObject {
  /*not inherited*/ init(view: NSView, printInfo: NSPrintInfo)
  class func PDFOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func PDFOperationWithView(view: NSView, insideRect rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  class func EPSOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func EPSOperationWithView(view: NSView, insideRect rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  /*not inherited*/ init(view: NSView)
  class func PDFOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData) -> NSPrintOperation
  class func EPSOperationWithView(view: NSView, insideRect rect: NSRect, toData data: NSMutableData?) -> NSPrintOperation
  class func currentOperation() -> NSPrintOperation?
  class func setCurrentOperation(operation: NSPrintOperation?)
  var copyingOperation: Bool { get }
  @available(OSX 10.7, *)
  var preferredRenderingQuality: NSPrintRenderingQuality { get }
  @available(OSX 10.5, *)
  var jobTitle: String?
  var showsPrintPanel: Bool
  var showsProgressPanel: Bool
  var printPanel: NSPrintPanel
  @available(OSX 10.9, *)
  var PDFPanel: NSPDFPanel
  var canSpawnSeparateThread: Bool
  var pageOrder: NSPrintingPageOrder
  func runOperationModalForWindow(docWindow: NSWindow, delegate: AnyObject?, didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runOperation() -> Bool
  var view: NSView? { get }
  @NSCopying var printInfo: NSPrintInfo
  var context: NSGraphicsContext? { get }
  @available(OSX 10.5, *)
  var pageRange: NSRange { get }
  var currentPage: Int { get }
  func createContext() -> NSGraphicsContext?
  func destroyContext()
  func deliverResult() -> Bool
  func cleanUpOperation()
  init()
}
extension NSPrintOperation {
}
