
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
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
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
  func statusOfValueForKey(key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(OSX 10.7, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)?)
}
extension AVMetadataItem {
  @available(OSX 10.8, *)
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(OSX 10.10, *)
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  @available(OSX 10.9, *)
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], filteredByMetadataItemFilter metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(OSX 10.10, *)
  class func identifierForKey(key: AnyObject, keySpace: String) -> String?
  @available(OSX 10.10, *)
  class func keySpaceForIdentifier(identifier: String) -> String?
  @available(OSX 10.10, *)
  class func keyForIdentifier(identifier: String) -> AnyObject?
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
  /*not inherited*/ init(propertiesOfMetadataItem metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(OSX 10.11, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respondWithValue(value: protocol<NSCopying, NSObjectProtocol>)
  func respondWithError(error: NSError)
  init()
}
@available(OSX 10.9, *)
class AVMetadataItemFilter : NSObject {
  class func metadataItemFilterForSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], withLocale locale: NSLocale) -> [AVMetadataItem]
  class func metadataItemsFromArray(metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
