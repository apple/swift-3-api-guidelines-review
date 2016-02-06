
typealias UIPrintInteractionCompletionHandler = (UIPrintInteractionController, Bool, Error?) -> Void
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
class UIPrintInteractionController : Object {
  class func isPrintingAvailable() -> Bool
  class func printableUTIs() -> Set<String>
  class func canPrint(url: URL) -> Bool
  class func canPrint(data: Data) -> Bool
  class func sharedPrint() -> UIPrintInteractionController
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
  func present(animated animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func presentFrom(rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func presentFrom(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func printTo(printer: UIPrinter, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func dismiss(animated animated: Bool)
  init()
}
protocol UIPrintInteractionControllerDelegate : ObjectProtocol {
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
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, cutLengthFor paper: UIPrintPaper) -> CGFloat
  @available(iOS 9.0, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [AnyObject]) -> UIPrinterCutterBehavior
}
