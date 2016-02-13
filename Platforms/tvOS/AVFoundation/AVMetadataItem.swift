
@available(tvOS 4.0, *)
class AVMetadataItem : Object, AVAsynchronousKeyValueLoading, Copying, MutableCopying {
  @available(tvOS 8.0, *)
  var identifier: String? { get }
  @available(tvOS 8.0, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: Locale? { get }
  var time: CMTime { get }
  @available(tvOS 4.2, *)
  var duration: CMTime { get }
  @available(tvOS 8.0, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<Copying, ObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  init()
  @available(tvOS 4.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
}
extension AVMetadataItem {
  @available(tvOS 9.0, *)
  @NSCopying var startDate: Date? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: Number? { get }
  var dateValue: Date? { get }
  var dataValue: Data? { get }
}
extension AVMetadataItem {
  @available(tvOS 4.2, *)
  func statusOfValue(forKey key: String, error outError: ErrorPointer) -> AVKeyValueStatus
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
  class func identifier(forKey key: AnyObject, keySpace: String) -> String?
  @available(tvOS 8.0, *)
  class func keySpace(forIdentifier identifier: String) -> String?
  @available(tvOS 8.0, *)
  class func key(forIdentifier identifier: String) -> AnyObject?
  @NSCopying var key: protocol<Copying, ObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(tvOS 4.0, *)
class AVMutableMetadataItem : AVMetadataItem {
  @available(tvOS 8.0, *)
  var identifier: String?
  @available(tvOS 8.0, *)
  var extendedLanguageTag: String?
  @NSCopying var locale: Locale?
  var time: CMTime
  @available(tvOS 4.2, *)
  var duration: CMTime
  @available(tvOS 8.0, *)
  var dataType: String?
  @NSCopying var value: protocol<Copying, ObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @available(tvOS 9.0, *)
  @NSCopying var startDate: Date?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<Copying, ObjectProtocol>?
}
extension AVMetadataItem {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(tvOS 9.0, *)
class AVMetadataItemValueRequest : Object {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(value value: protocol<Copying, ObjectProtocol>)
  func respondWithError(error: Error)
  init()
}
@available(tvOS 7.0, *)
class AVMetadataItemFilter : Object {
  class func forSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: Locale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
