
protocol UIDocumentPickerDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  func documentPicker(controller: UIDocumentPickerViewController, didPickDocumentAt url: URL)
  @available(iOS 8.0, *)
  optional func documentPickerWasCancelled(controller: UIDocumentPickerViewController)
}
@available(iOS 8.0, *)
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `import`
  case open
  case exportToService
  case moveToService
}
@available(iOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  init?(coder aDecoder: Coder)
  init(url: URL, in mode: UIDocumentPickerMode)
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  var documentPickerMode: UIDocumentPickerMode { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  convenience init()
}
