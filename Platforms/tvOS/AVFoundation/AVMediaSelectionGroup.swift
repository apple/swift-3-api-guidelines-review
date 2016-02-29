
@available(tvOS 5.0, *)
class AVMediaSelectionGroup : NSObject, NSCopying {
  var options: [AVMediaSelectionOption] { get }
  @available(tvOS 8.0, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOption(withPropertyList plist: AnyObject) -> AVMediaSelectionOption?
  @available(tvOS 5.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(tvOS 6.0, *)
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], with locale: NSLocale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(tvOS 5.0, *)
class AVMediaSelectionOption : NSObject, NSCopying {
  var mediaType: String { get }
  var mediaSubTypes: [NSNumber] { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: String) -> Bool
  var isPlayable: Bool { get }
  @available(tvOS 7.0, *)
  var extendedLanguageTag: String? { get }
  var locale: NSLocale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadata(forFormat format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  @available(tvOS 7.0, *)
  func displayName(with locale: NSLocale) -> String
  @available(tvOS 7.0, *)
  var displayName: String { get }
  @available(tvOS 5.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
