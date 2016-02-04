
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
  init()
  @available(tvOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
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
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(tvOS 4.2, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)?)
}
extension AVMetadataItem {
  @available(tvOS 6.0, *)
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(tvOS 8.0, *)
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  @available(tvOS 7.0, *)
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], filteredByMetadataItemFilter metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(tvOS 8.0, *)
  class func identifierForKey(key: AnyObject, keySpace: String) -> String?
  @available(tvOS 8.0, *)
  class func keySpaceForIdentifier(identifier: String) -> String?
  @available(tvOS 8.0, *)
  class func keyForIdentifier(identifier: String) -> AnyObject?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(tvOS 4.0, *)
class AVMutableMetadataItem : AVMetadataItem {
  @available(tvOS 8.0, *)
  var identifier: String?
  @available(tvOS 8.0, *)
  var extendedLanguageTag: String?
  @NSCopying var locale: NSLocale?
  var time: CMTime
  @available(tvOS 4.2, *)
  var duration: CMTime
  @available(tvOS 8.0, *)
  var dataType: String?
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @available(tvOS 9.0, *)
  @NSCopying var startDate: NSDate?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>?
}
extension AVMetadataItem {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(propertiesOfMetadataItem metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(tvOS 9.0, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respondWithValue(value: protocol<NSCopying, NSObjectProtocol>)
  func respondWithError(error: NSError)
  init()
}
@available(tvOS 7.0, *)
class AVMetadataItemFilter : NSObject {
  class func metadataItemFilterForSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], withLocale locale: NSLocale) -> [AVMetadataItem]
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
