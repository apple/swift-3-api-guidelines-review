
@available(OSX 10.8, *)
class AVMediaSelectionGroup : NSObject, NSCopying {
  var options: [AVMediaSelectionOption] { get }
  @available(OSX 10.10, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOption(withPropertyList plist: AnyObject) -> AVMediaSelectionOption?
  @available(OSX 10.8, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(OSX 10.8, *)
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], with locale: NSLocale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(OSX 10.8, *)
class AVMediaSelectionOption : NSObject, NSCopying {
  var mediaType: String { get }
  var mediaSubTypes: [NSNumber] { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: String) -> Bool
  var isPlayable: Bool { get }
  @available(OSX 10.9, *)
  var extendedLanguageTag: String? { get }
  var locale: NSLocale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadata(forFormat format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  @available(OSX 10.9, *)
  func displayName(with locale: NSLocale) -> String
  @available(OSX 10.9, *)
  var displayName: String { get }
  @available(OSX 10.8, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
