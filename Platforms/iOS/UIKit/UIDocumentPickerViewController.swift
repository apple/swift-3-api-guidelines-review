
protocol UIDocumentPickerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAtURL url: NSURL)
  @available(iOS 8.0, *)
  optional func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController)
}
@available(iOS 8.0, *)
enum UIDocumentPickerMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Import
  case Open
  case ExportToService
  case MoveToService
}
@available(iOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init(URL url: NSURL, inMode mode: UIDocumentPickerMode)
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  var documentPickerMode: UIDocumentPickerMode { get }
}
