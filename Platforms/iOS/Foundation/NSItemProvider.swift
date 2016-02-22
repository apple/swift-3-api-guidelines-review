
typealias NSItemProviderCompletionHandler = (NSSecureCoding?, NSError!) -> Void
typealias NSItemProviderLoadHandler = (NSItemProviderCompletionHandler!, AnyClass!, [NSObject : AnyObject]!) -> Void
@available(iOS 8.0, *)
class NSItemProvider : NSObject, NSCopying {
  init(item: NSSecureCoding?, typeIdentifier: String?)
  convenience init?(contentsOf fileURL: NSURL!)
  func registerItem(forTypeIdentifier typeIdentifier: String, loadHandler: NSItemProviderLoadHandler)
  var registeredTypeIdentifiers: [AnyObject] { get }
  func hasItemConforming(toTypeIdentifier typeIdentifier: String) -> Bool
  func loadItem(forTypeIdentifier typeIdentifier: String, options: [NSObject : AnyObject]? = [:], completionHandler: NSItemProviderCompletionHandler? = nil)
  convenience init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
let NSItemProviderPreferredImageSizeKey: String
extension NSItemProvider {
  @available(iOS 8.0, *)
  var previewImageHandler: NSItemProviderLoadHandler?
  @available(iOS 8.0, *)
  func loadPreviewImage(options options: [NSObject : AnyObject]! = [:], completionHandler: NSItemProviderCompletionHandler!)
}
@available(iOS 8.0, *)
let NSExtensionJavaScriptPreprocessingResultsKey: String
@available(iOS 8.0, *)
let NSExtensionJavaScriptFinalizeArgumentKey: String
@available(iOS 8.0, *)
let NSItemProviderErrorDomain: String
@available(iOS 8.0, *)
enum NSItemProviderErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case itemUnavailableError
  case unexpectedValueClassError
  @available(iOS 9.0, *)
  case unavailableCoercionError
}
