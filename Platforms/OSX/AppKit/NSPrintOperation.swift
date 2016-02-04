
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
class NSPrintOperation : Object {
  /*not inherited*/ init(view: NSView, printInfo: NSPrintInfo)
  class func pdfOperationWith(view: NSView, inside rect: Rect, to data: MutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func pdfOperationWith(view: NSView, inside rect: Rect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  class func epsOperationWith(view: NSView, inside rect: Rect, to data: MutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func epsOperationWith(view: NSView, inside rect: Rect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  /*not inherited*/ init(view: NSView)
  class func pdfOperationWith(view: NSView, inside rect: Rect, to data: MutableData) -> NSPrintOperation
  class func epsOperationWith(view: NSView, inside rect: Rect, to data: MutableData?) -> NSPrintOperation
  class func current() -> NSPrintOperation?
  class func setCurrentOperation(operation: NSPrintOperation?)
  var isCopyingOperation: Bool { get }
  @available(OSX 10.7, *)
  var preferredRenderingQuality: NSPrintRenderingQuality { get }
  @available(OSX 10.5, *)
  var jobTitle: String?
  var showsPrintPanel: Bool
  var showsProgressPanel: Bool
  var printPanel: NSPrintPanel
  @available(OSX 10.9, *)
  var pdfPanel: NSPDFPanel
  var canSpawnSeparateThread: Bool
  var pageOrder: NSPrintingPageOrder
  func runModalFor(docWindow: NSWindow, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func run() -> Bool
  var view: NSView? { get }
  @NSCopying var printInfo: NSPrintInfo
  var context: NSGraphicsContext? { get }
  @available(OSX 10.5, *)
  var pageRange: NSRange { get }
  var currentPage: Int { get }
  func createContext() -> NSGraphicsContext?
  func destroyContext()
  func deliverResult() -> Bool
  func cleanUp()
  init()
}
extension NSPrintOperation {
}
