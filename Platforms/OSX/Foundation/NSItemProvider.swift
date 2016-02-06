
typealias ItemProviderCompletionHandler = (SecureCoding?, Error!) -> Void
typealias ItemProviderLoadHandler = (ItemProviderCompletionHandler!, AnyClass!, [Object : AnyObject]!) -> Void
@available(OSX 10.10, *)
class ItemProvider : Object, Copying {
  init(item: SecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItemFor(typeIdentifier typeIdentifier: String, loadHandler: ItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingTo(typeIdentifier typeIdentifier: String) -> Bool
  func loadItemFor(typeIdentifier typeIdentifier: String, options: [Object : AnyObject]? = [:], completionHandler: ItemProviderCompletionHandler? = nil)
  convenience init()
  @available(OSX 10.10, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.10, *)
let itemProviderPreferredImageSizeKey: String
extension ItemProvider {
  @available(OSX 10.10, *)
  var previewImageHandler: ItemProviderLoadHandler?
  @available(OSX 10.10, *)
  func loadPreviewImage(options options: [Object : AnyObject]! = [:], completionHandler: ItemProviderCompletionHandler!)
}
@available(OSX 10.10, *)
let extensionJavaScriptPreprocessingResultsKey: String
@available(OSX 10.10, *)
let itemProviderErrorDomain: String
@available(OSX 10.10, *)
enum ItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(OSX 10.11, *)
  case UnavailableCoercionError
}
