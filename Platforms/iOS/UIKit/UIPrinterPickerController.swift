
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, Error?) -> Void
protocol UIPrinterPickerControllerDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  optional func printerPickerControllerParentViewController(printerPickerController: UIPrinterPickerController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func printerPickerController(printerPickerController: UIPrinterPickerController, shouldShow printer: UIPrinter) -> Bool
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
class UIPrinterPickerController : Object {
  /*not inherited*/ init(initiallySelectedPrinter printer: UIPrinter?)
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func present(animated animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler? = nil) -> Bool
  func presentFrom(rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler? = nil) -> Bool
  func presentFrom(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler? = nil) -> Bool
  func dismiss(animated animated: Bool)
  init()
}
