
typealias UIPrintInteractionCompletionHandler = (UIPrintInteractionController, Bool, NSError?) -> Void
@available(iOS 9.0, *)
enum UIPrinterCutterBehavior : Int {
  init?(rawValue rawValue: Int)
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
  class func canPrintURL(_ url: NSURL) -> Bool
  class func canPrintData(_ data: NSData) -> Bool
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
  func presentAnimated(_ animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func presentFromRect(_ rect: CGRect, inView view: UIView, animated animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func presentFromBarButtonItem(_ item: UIBarButtonItem, animated animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func printToPrinter(_ printer: UIPrinter, completionHandler completion: UIPrintInteractionCompletionHandler?) -> Bool
  func dismissAnimated(_ animated: Bool)
}
protocol UIPrintInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 4.2, *)
  optional func printInteractionControllerParentViewController(_ printInteractionController: UIPrintInteractionController) -> UIViewController
  @available(iOS 4.2, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillPresentPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidPresentPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillDismissPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidDismissPrinterOptions(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillStartJob(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidFinishJob(_ printInteractionController: UIPrintInteractionController)
  @available(iOS 7.0, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, cutLengthForPaper paper: UIPrintPaper) -> CGFloat
  @available(iOS 9.0, *)
  optional func printInteractionController(_ printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [AnyObject]) -> UIPrinterCutterBehavior
}
