
@available(tvOS 4.0, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(tvOS 8.0, *)
  var identifier: String? { get }
  @available(tvOS 8.0, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: NSLocale? { get }
  var time: CMTime { get }
  @available(tvOS 4.2, *)
  var duration: CMTime { get }
  @available(tvOS 8.0, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  @available(tvOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
extension AVMetadataItem {
  @available(tvOS 9.0, *)
  @NSCopying var startDate: NSDate? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: NSNumber? { get }
  var dateValue: NSDate? { get }
  var dataValue: NSData? { get }
}
extension AVMetadataItem {
  @available(tvOS 4.2, *)
  func statusOfValue(forKey key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(tvOS 4.2, *)
  func loadValuesAsynchronously(forKeys keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVMetadataItem {
  @available(tvOS 6.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(tvOS 8.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  @available(tvOS 7.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(tvOS 8.0, *)
  class func identifier(forKey key: AnyObject, keySpace keySpace: String) -> String?
  @available(tvOS 8.0, *)
  class func keySpace(forIdentifier identifier: String) -> String?
  @available(tvOS 8.0, *)
  class func key(forIdentifier identifier: String) -> AnyObject?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(tvOS 4.0, *)
class AVMutableMetadataItem : AVMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMetadataItem {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(tvOS 9.0, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(withValue value: protocol<NSCopying, NSObjectProtocol>)
  func respondWithError(_ error: NSError)
}
@available(tvOS 7.0, *)
class AVMetadataItemFilter : NSObject {
  class func forSharing() -> AVMetadataItemFilter
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: NSLocale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace keySpace: String?) -> [AVMetadataItem]
}
