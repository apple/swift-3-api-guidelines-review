
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(OSX 10.10, *)
class NSItemProvider : NSObject, NSCopying {
  init(item item: NSSecureCoding?, typeIdentifier typeIdentifier: String?)
  convenience init?(contentsOfURL fileURL: NSURL!)
  func registerItemForTypeIdentifier(_ typeIdentifier: String, loadHandler loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConformingToTypeIdentifier(_ typeIdentifier: String) -> Bool
  func loadItemForTypeIdentifier(_ typeIdentifier: String, options options: [NSObject : AnyObject]?, completionHandler completionHandler: NSItemProviderCompletionHandler?)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(OSX 10.10, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(OSX 10.10, *)
  func loadPreviewImageWithOptions(_ options: [NSObject : AnyObject]!, completionHandler completionHandler: NSItemProviderCompletionHandler!)
}
@available(OSX 10.10, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(OSX 10.10, *)
let NSItemProviderErrorDomain: String
@available(OSX 10.10, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ItemUnavailableError
  case UnexpectedValueClassError
  @available(OSX 10.11, *)
  case UnavailableCoercionError
}
