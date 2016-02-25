
@available(iOS 5.0, *)
class AVMediaSelectionGroup : NSObject, NSCopying {
  var options: [AVMediaSelectionOption] { get }
  @available(iOS 8.0, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOptionWithPropertyList(_ plist: AnyObject) -> AVMediaSelectionOption?
  @available(iOS 5.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptionsFromArray(_ mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(iOS 6.0, *)
  class func mediaSelectionOptionsFromArray(_ mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFromArray(_ mediaSelectionOptions: [AVMediaSelectionOption], withLocale locale: NSLocale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFromArray(_ mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFromArray(_ mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(iOS 5.0, *)
class AVMediaSelectionOption : NSObject, NSCopying {
  var mediaType: String { get }
  var mediaSubTypes: [NSNumber] { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: String) -> Bool
  var playable: Bool { get }
  @available(iOS 7.0, *)
  var extendedLanguageTag: String? { get }
  var locale: NSLocale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(_ format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOptionInMediaSelectionGroup(_ mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  @available(iOS 7.0, *)
  func displayNameWithLocale(_ locale: NSLocale) -> String
  @available(iOS 7.0, *)
  var displayName: String { get }
  @available(iOS 5.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
