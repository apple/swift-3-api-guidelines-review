
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(watchOS 2.0, *)
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOfURL fileURL: NSURL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [NSObject : AnyObject]?, completionHandler: NSItemProviderCompletionHandler?)
  convenience init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(watchOS 2.0, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(watchOS 2.0, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(watchOS 2.0, *)
  func loadPreviewImageWithOptions(options: [NSObject : AnyObject]!, completionHandler: NSItemProviderCompletionHandler!)
}
@available(watchOS 2.0, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(watchOS 2.0, *)
let NSExtensionJavaScriptFinalizeArgumentKey: String
@available(watchOS 2.0, *)
let NSItemProviderErrorDomain: String
@available(watchOS 2.0, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(watchOS 2.0, *)
  case UnavailableCoercionError
}
