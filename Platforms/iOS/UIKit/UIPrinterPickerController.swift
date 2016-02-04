
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, NSError?) -> Void
protocol UIPrinterPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func printerPickerControllerParentViewController(printerPickerController: UIPrinterPickerController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func printerPickerController(printerPickerController: UIPrinterPickerController, shouldShowPrinter printer: UIPrinter) -> Bool
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillPresent(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidPresent(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillDismiss(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidDismiss(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidSelectPrinter(printerPickerController: UIPrinterPickerController)
}
@available(iOS 8.0, *)
class UIPrinterPickerController : NSObject {
  /*not inherited*/ init(initiallySelectedPrinter printer: UIPrinter?)
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func presentAnimated(animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func presentFromRect(rect: CGRect, inView view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func presentFromBarButtonItem(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func dismissAnimated(animated: Bool)
  init()
}
