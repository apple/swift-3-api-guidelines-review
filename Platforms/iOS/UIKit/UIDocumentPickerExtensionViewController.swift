
@available(iOS 8.0, *)
class UIDocumentPickerExtensionViewController : UIViewController {
  func dismissGrantingAccessToURL(url: NSURL?)
  func prepareForPresentationInMode(mode: UIDocumentPickerMode)
  var documentPickerMode: UIDocumentPickerMode { get }
  @NSCopying var originalURL: NSURL? { get }
  var validTypes: [String]? { get }
  var providerIdentifier: String { get }
  @NSCopying var documentStorageURL: NSURL? { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
