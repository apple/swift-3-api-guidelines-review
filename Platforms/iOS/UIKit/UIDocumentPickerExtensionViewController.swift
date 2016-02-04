
@available(iOS 8.0, *)
class UIDocumentPickerExtensionViewController : UIViewController {
  func dismissGrantingAccessTo(url: URL?)
  func prepareForPresentationIn(mode: UIDocumentPickerMode)
  var documentPickerMode: UIDocumentPickerMode { get }
  @NSCopying var originalURL: URL? { get }
  var validTypes: [String]? { get }
  var providerIdentifier: String { get }
  @NSCopying var documentStorageURL: URL? { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
