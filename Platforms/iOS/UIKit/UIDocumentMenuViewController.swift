
@available(iOS 8.0, *)
enum UIDocumentMenuOrder : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case First
  case Last
}
protocol UIDocumentMenuDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func documentMenu(_ documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController)
  @available(iOS 8.0, *)
  optional func documentMenuWasCancelled(_ documentMenu: UIDocumentMenuViewController)
}
@available(iOS 8.0, *)
class UIDocumentMenuViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], inMode mode: UIDocumentPickerMode)
  init(URL url: NSURL, inMode mode: UIDocumentPickerMode)
  func addOptionWithTitle(_ title: String, image image: UIImage?, order order: UIDocumentMenuOrder, handler handler: () -> Void)
  weak var delegate: @sil_weak UIDocumentMenuDelegate?
}
