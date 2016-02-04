
@available(iOS 4.0, *)
class AVMetadataItem : Object, AVAsynchronousKeyValueLoading, Copying, MutableCopying {
  @available(iOS 8.0, *)
  var identifier: String? { get }
  @available(iOS 8.0, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: Locale? { get }
  var time: CMTime { get }
  @available(iOS 4.2, *)
  var duration: CMTime { get }
  @available(iOS 8.0, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<Copying, ObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  init()
  @available(iOS 4.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
}
extension AVMetadataItem {
  @available(iOS 9.0, *)
  @NSCopying var startDate: Date? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: Number? { get }
  var dateValue: Date? { get }
  var dataValue: Data? { get }
}
extension AVMetadataItem {
  @available(iOS 4.2, *)
  func statusOfValueForKey(key: String, error outError: ErrorPointer) -> AVKeyValueStatus
  @available(iOS 4.2, *)
  func loadValuesAsynchronouslyForKeys(keys: [String], completionHandler handler: (() -> Void)? = nil)
}
extension AVMetadataItem {
  @available(iOS 6.0, *)
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(iOS 8.0, *)
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredByIdentifier identifier: String) -> [AVMetadataItem]
  @available(iOS 7.0, *)
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(iOS 8.0, *)
  class func identifierForKey(key: AnyObject, keySpace: String) -> String?
  @available(iOS 8.0, *)
  class func keySpaceForIdentifier(identifier: String) -> String?
  @available(iOS 8.0, *)
  class func keyForIdentifier(identifier: String) -> AnyObject?
  @NSCopying var key: protocol<Copying, ObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(iOS 4.0, *)
class AVMutableMetadataItem : AVMetadataItem {
  @available(iOS 8.0, *)
  var identifier: String?
  @available(iOS 8.0, *)
  var extendedLanguageTag: String?
  @NSCopying var locale: Locale?
  var time: CMTime
  @available(iOS 4.2, *)
  var duration: CMTime
  @available(iOS 8.0, *)
  var dataType: String?
  @NSCopying var value: protocol<Copying, ObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @available(iOS 9.0, *)
  @NSCopying var startDate: Date?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<Copying, ObjectProtocol>?
}
extension AVMetadataItem {
  @available(iOS 9.0, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(iOS 9.0, *)
class AVMetadataItemValueRequest : Object {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respondWithValue(value: protocol<Copying, ObjectProtocol>)
  func respondWithError(error: Error)
  init()
}
@available(iOS 7.0, *)
class AVMetadataItemFilter : Object {
  class func forSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], withLocale locale: Locale) -> [AVMetadataItem]
  class func metadataItemsFrom(metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
