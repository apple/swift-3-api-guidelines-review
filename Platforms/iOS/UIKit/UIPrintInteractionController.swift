
typealias UIPrintInteractionCompletionHandler = (UIPrintInteractionController, Bool, NSError?) -> Void
@available(iOS 9.0, *)
enum UIPrinterCutterBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoCut
  case PrinterDefault
  case CutAfterEachPage
  case CutAfterEachCopy
  case CutAfterEachJob
}
@available(iOS 4.2, *)
class UIPrintInteractionController : NSObject {
  class func isPrintingAvailable() -> Bool
  class func printableUTIs() -> Set<String>
  class func canPrintURL(url: NSURL) -> Bool
  class func canPrintData(data: NSData) -> Bool
  class func sharedPrintController() -> UIPrintInteractionController
  var printInfo: UIPrintInfo?
  weak var delegate: @sil_weak UIPrintInteractionControllerDelegate?
  var showsPageRange: Bool
  @available(iOS 7.0, *)
  var showsNumberOfCopies: Bool
  @available(iOS 8.0, *)
  var showsPaperSelectionForLoadedPapers: Bool
  var printPaper: UIPrintPaper? { get }
  var printPageRenderer: UIPrintPageRenderer?
  var printFormatter: UIPrintFormatter?
  @NSCopying var printingItem: AnyObject?
  var printingItems: [AnyObject]?
  func presentAnimated(animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func presentFromRect(rect: CGRect, inView view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func presentFromBarButtonItem(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func printToPrinter(printer: UIPrinter, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func dismissAnimated(animated: Bool)
  init()
}
protocol UIPrintInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 4.2, *)
  optional func printInteractionControllerParentViewController(printInteractionController: UIPrintInteractionController) -> UIViewController
  @available(iOS 4.2, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillPresentPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidPresentPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillDismissPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidDismissPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillStartJob(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidFinishJob(printInteractionController: UIPrintInteractionController)
  @available(iOS 7.0, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, cutLengthForPaper paper: UIPrintPaper) -> CGFloat
  @available(iOS 9.0, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [AnyObject]) -> UIPrinterCutterBehavior
}
