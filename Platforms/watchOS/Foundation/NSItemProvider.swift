
typealias ItemProviderCompletionHandler = (SecureCoding?, Error!) -> Void
typealias ItemProviderLoadHandler = (ItemProviderCompletionHandler!, AnyClass!, [Object : AnyObject]!) -> Void
@available(watchOS 2.0, *)
class ItemProvider : Object, Copying {
  init(item: SecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItem(forTypeIdentifier typeIdentifier: String, loadHandler: ItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConforming(toTypeIdentifier typeIdentifier: String) -> Bool
  func loadItem(forTypeIdentifier typeIdentifier: String, options: [Object : AnyObject]? = [:], completionHandler: ItemProviderCompletionHandler? = nil)
  convenience init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(watchOS 2.0, *)
let itemProviderPreferredImageSizeKey: String
extension ItemProvider {
  @available(watchOS 2.0, *)
  var previewImageHandler: ItemProviderLoadHandler?
  @available(watchOS 2.0, *)
  func loadPreviewImage(options options: [Object : AnyObject]! = [:], completionHandler: ItemProviderCompletionHandler!)
}
@available(watchOS 2.0, *)
let extensionJavaScriptPreprocessingResultsKey: String
@available(watchOS 2.0, *)
let extensionJavaScriptFinalizeArgumentKey: String
@available(watchOS 2.0, *)
let itemProviderErrorDomain: String
@available(watchOS 2.0, *)
enum ItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case itemUnavailableError
  case unexpectedValueClassError
  @available(watchOS 2.0, *)
  case unavailableCoercionError
}
