
@available(OSX 10.7, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(OSX 10.10, *)
  var identifier: String? { get }
  @available(OSX 10.10, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: NSLocale? { get }
  var time: CMTime { get }
  @available(OSX 10.7, *)
  var duration: CMTime { get }
  @available(OSX 10.10, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  init()
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVMetadataItem {
  @available(OSX 10.11, *)
  @NSCopying var startDate: NSDate? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: NSNumber? { get }
  var dateValue: NSDate? { get }
  var dataValue: NSData? { get }
}
extension AVMetadataItem {
  @available(OSX 10.7, *)
  func statusOfValue(forKey key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(OSX 10.7, *)
  func loadValuesAsynchronously(forKeys keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVMetadataItem {
  @available(OSX 10.8, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(OSX 10.10, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  @available(OSX 10.9, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(OSX 10.10, *)
  class func identifier(forKey key: AnyObject, keySpace: String) -> String?
  @available(OSX 10.10, *)
  class func keySpace(forIdentifier identifier: String) -> String?
  @available(OSX 10.10, *)
  class func key(forIdentifier identifier: String) -> AnyObject?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(OSX 10.7, *)
class AVMutableMetadataItem : AVMetadataItem {
  @available(OSX 10.10, *)
  var identifier: String?
  @available(OSX 10.10, *)
  var extendedLanguageTag: String?
  @NSCopying var locale: NSLocale?
  var time: CMTime
  @available(OSX 10.7, *)
  var duration: CMTime
  @available(OSX 10.10, *)
  var dataType: String?
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @available(OSX 10.11, *)
  @NSCopying var startDate: NSDate?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>?
}
extension AVMetadataItem {
  @available(OSX 10.11, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(OSX 10.11, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(withValue value: protocol<NSCopying, NSObjectProtocol>)
  func respondWithError(error: NSError)
  init()
}
@available(OSX 10.9, *)
class AVMetadataItemFilter : NSObject {
  class func forSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: NSLocale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
