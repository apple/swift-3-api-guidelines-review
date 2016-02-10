
typealias ItemProviderCompletionHandler = (SecureCoding?, Error!) -> Void
typealias ItemProviderLoadHandler = (ItemProviderCompletionHandler!, AnyClass!, [Object : AnyObject]!) -> Void
@available(tvOS 8.0, *)
class ItemProvider : Object, Copying {
  init(item: SecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItemFor(typeIdentifier typeIdentifier: String, loadHandler: ItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingTo(typeIdentifier typeIdentifier: String) -> Bool
  func loadItemFor(typeIdentifier typeIdentifier: String, options: [Object : AnyObject]? = [:], completionHandler: ItemProviderCompletionHandler? = nil)
  convenience init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
let itemProviderPreferredImageSizeKey: String
extension ItemProvider {
  @available(tvOS 8.0, *)
  var previewImageHandler: ItemProviderLoadHandler?
  @available(tvOS 8.0, *)
  func loadPreviewImage(options options: [Object : AnyObject]! = [:], completionHandler: ItemProviderCompletionHandler!)
}
@available(tvOS 8.0, *)
let extensionJavaScriptPreprocessingResultsKey: String
@available(tvOS 8.0, *)
let extensionJavaScriptFinalizeArgumentKey: String
@available(tvOS 8.0, *)
let itemProviderErrorDomain: String
@available(tvOS 8.0, *)
enum ItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case itemUnavailableError
  case unexpectedValueClassError
  @available(tvOS 9.0, *)
  case unavailableCoercionError
}
