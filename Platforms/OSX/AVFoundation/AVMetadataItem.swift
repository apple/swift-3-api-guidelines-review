
@available(OSX 10.7, *)
class AVMetadataItem : Object, AVAsynchronousKeyValueLoading, Copying, MutableCopying {
  @available(OSX 10.10, *)
  var identifier: String? { get }
  @available(OSX 10.10, *)
  var extendedLanguageTag: String? { get }
  @NSCopying var locale: Locale? { get }
  var time: CMTime { get }
  @available(OSX 10.7, *)
  var duration: CMTime { get }
  @available(OSX 10.10, *)
  var dataType: String? { get }
  @NSCopying var value: protocol<Copying, ObjectProtocol>? { get }
  var extraAttributes: [String : AnyObject]? { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
}
extension AVMetadataItem {
  @available(OSX 10.11, *)
  @NSCopying var startDate: Date? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: Number? { get }
  var dateValue: Date? { get }
  var dataValue: Data? { get }
}
extension AVMetadataItem {
  @available(OSX 10.7, *)
  func statusOfValue(forKey key: String, error outError: ErrorPointer) -> AVKeyValueStatus
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
  @NSCopying var key: protocol<Copying, ObjectProtocol>? { get }
  var commonKey: String? { get }
  var keySpace: String? { get }
}
@available(OSX 10.7, *)
class AVMutableMetadataItem : AVMetadataItem {
  @available(OSX 10.10, *)
  var identifier: String?
  @available(OSX 10.10, *)
  var extendedLanguageTag: String?
  @NSCopying var locale: Locale?
  var time: CMTime
  @available(OSX 10.7, *)
  var duration: CMTime
  @available(OSX 10.10, *)
  var dataType: String?
  @NSCopying var value: protocol<Copying, ObjectProtocol>?
  var extraAttributes: [String : AnyObject]?
  init()
}
extension AVMutableMetadataItem {
  @available(OSX 10.11, *)
  @NSCopying var startDate: Date?
}
extension AVMutableMetadataItem {
  var keySpace: String?
  @NSCopying var key: protocol<Copying, ObjectProtocol>?
}
extension AVMetadataItem {
  @available(OSX 10.11, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: (AVMetadataItemValueRequest) -> Void)
}
@available(OSX 10.11, *)
class AVMetadataItemValueRequest : Object {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(withValue value: protocol<Copying, ObjectProtocol>)
  func respondWithError(error: Error)
  init()
}
@available(OSX 10.9, *)
class AVMetadataItemFilter : Object {
  class func forSharing() -> AVMetadataItemFilter
  init()
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: Locale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: AnyObject?, keySpace: String?) -> [AVMetadataItem]
}
