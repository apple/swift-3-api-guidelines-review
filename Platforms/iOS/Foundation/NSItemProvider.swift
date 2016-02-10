
typealias ItemProviderCompletionHandler = (SecureCoding?, Error!) -> Void
typealias ItemProviderLoadHandler = (ItemProviderCompletionHandler!, AnyClass!, [Object : AnyObject]!) -> Void
@available(iOS 8.0, *)
class ItemProvider : Object, Copying {
  init(item: SecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: URL!)
  func registerItem(forTypeIdentifier typeIdentifier: String, loadHandler: ItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConforming(toTypeIdentifier typeIdentifier: String) -> Bool
  func loadItem(forTypeIdentifier typeIdentifier: String, options: [Object : AnyObject]? = [:], completionHandler: ItemProviderCompletionHandler? = nil)
  convenience init()
  @available(iOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
let itemProviderPreferredImageSizeKey: String
extension ItemProvider {
  @available(iOS 8.0, *)
  var previewImageHandler: ItemProviderLoadHandler?
  @available(iOS 8.0, *)
  func loadPreviewImage(options options: [Object : AnyObject]! = [:], completionHandler: ItemProviderCompletionHandler!)
}
@available(iOS 8.0, *)
let extensionJavaScriptPreprocessingResultsKey: String
@available(iOS 8.0, *)
let extensionJavaScriptFinalizeArgumentKey: String
@available(iOS 8.0, *)
let itemProviderErrorDomain: String
@available(iOS 8.0, *)
enum ItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case itemUnavailableError
  case unexpectedValueClassError
  @available(iOS 9.0, *)
  case unavailableCoercionError
}
