
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, NSError?) -> Void
protocol UIPrinterPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func printerPickerControllerParentViewController(_ printerPickerController: UIPrinterPickerController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func printerPickerController(_ printerPickerController: UIPrinterPickerController, shouldShowPrinter printer: UIPrinter) -> Bool
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillPresent(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidPresent(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillDismiss(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidDismiss(_ printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidSelectPrinter(_ printerPickerController: UIPrinterPickerController)
}
@available(iOS 8.0, *)
class UIPrinterPickerController : NSObject {
  /*not inherited*/ init(initiallySelectedPrinter printer: UIPrinter?)
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func presentAnimated(_ animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func presentFromRect(_ rect: CGRect, inView view: UIView, animated animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func presentFromBarButtonItem(_ item: UIBarButtonItem, animated animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler?) -> Bool
  func dismissAnimated(_ animated: Bool)
}
