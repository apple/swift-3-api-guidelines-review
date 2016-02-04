
protocol UIDocumentPickerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func documentPicker(controller: UIDocumentPickerViewController, didPickDocumentAtURL url: NSURL)
  @available(iOS 8.0, *)
  optional func documentPickerWasCancelled(controller: UIDocumentPickerViewController)
}
@available(iOS 8.0, *)
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Import
  case Open
  case ExportToService
  case MoveToService
}
@available(iOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init?(coder aDecoder: NSCoder)
  init(URL url: NSURL, inMode mode: UIDocumentPickerMode)
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  var documentPickerMode: UIDocumentPickerMode { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
