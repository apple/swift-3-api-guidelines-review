
@available(iOS 4.0, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(iOS 8.0, *)
  var identifier: String? { get }
  @available(iOS 8.0, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: NSLocale? { get }
  var time: CMTime { get }
  @available(iOS 4.2, *)
  var duration: CMTime { get }
  @available(iOS 8.0, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<NSCopying, NSObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
extension AVMetadataItem {
  @available(iOS 9.0, *)
  @NSCopying var startDate: NSDate? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: NSNumber? { get }
  var dateValue: NSDate? { get }
  var dataValue: NSData? { get }
}
extension AVMetadataItem {
  @available(iOS 4.2, *)
  func statusOfValueForKey(_ key: String, error outError: NSErrorPointer) -> AVKeyValueStatus
  @available(iOS 4.2, *)
  func loadValuesAsynchronouslyForKeys(_ keys: [String], completionHandler handler: (() -> Void)?)
}
extension AVMetadataItem {
  @available(iOS 6.0, *)
  class func metadataItemsFromArray(_ metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(iOS 8.0, *)
  class func metadataItemsFromArray(_ metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  @available(iOS 7.0, *)
  class func metadataItemsFromArray(_ metadataItems: [AVMetadataItem], filteredByMetadataItemFilter metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(iOS 8.0, *)
  class func identifierForKey(_ key: AnyObject, keySpace keySpace: String) -> String?
  @available(iOS 8.0, *)
  class func keySpaceForIdentifier(_ identifier: String) -> String?
  @available(iOS 8.0, *)
  class func keyForIdentifier(_ identifier: String) -> AnyObject?
  @NSCopying var key: protocol<NSCopying, NSObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(iOS 4.0, *)
class AVMutableMetadataItem : AVMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMetadataItem {
  @available(iOS 9.0, *)
  /*not inherited*/ init(propertiesOfMetadataItem metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(iOS 9.0, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respondWithValue(_ value: protocol<NSCopying, NSObjectProtocol>)
  func respondWithError(_ error: NSError)
}
@available(iOS 7.0, *)
class AVMetadataItemFilter : NSObject {
  class func metadataItemFilterForSharing() -> AVMetadataItemFilter
}
extension AVMetadataItem {
  class func metadataItemsFromArray(_ metadataItems: [AVMetadataItem], withLocale locale: NSLocale) -> [AVMetadataItem]
  class func metadataItemsFromArray(_ metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace keySpace: String?) -> [AVMetadataItem]
}
