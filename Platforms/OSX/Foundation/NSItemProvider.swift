
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(OSX 10.10, *)
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOfURL fileURL: NSURL!)
  func registerItemForTypeIdentifier(typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(typeIdentifier: String, options: [NSObject : AnyObject]?, completionHandler: NSItemProviderCompletionHandler?)
  convenience init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(OSX 10.10, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(OSX 10.10, *)
  func loadPreviewImageWithOptions(options: [NSObject : AnyObject]!, completionHandler: NSItemProviderCompletionHandler!)
}
@available(OSX 10.10, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(OSX 10.10, *)
let NSItemProviderErrorDomain: String
@available(OSX 10.10, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(OSX 10.11, *)
  case UnavailableCoercionError
}
