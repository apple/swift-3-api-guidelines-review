
@available(iOS 8.0, *)
enum UIDocumentMenuOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case first
  case last
}
protocol UIDocumentMenuDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func documentMenu(documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController)
  @available(iOS 8.0, *)
  optional func documentMenuWasCancelled(documentMenu: UIDocumentMenuViewController)
}
@available(iOS 8.0, *)
class UIDocumentMenuViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  init(url: NSURL, in mode: UIDocumentPickerMode)
  init?(coder aDecoder: NSCoder)
  func addOption(title title: String, image: UIImage?, order: UIDocumentMenuOrder, handler: () -> Void)
  weak var delegate: @sil_weak UIDocumentMenuDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
