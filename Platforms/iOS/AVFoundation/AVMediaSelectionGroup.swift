
@available(iOS 5.0, *)
class AVMediaSelectionGroup : Object, Copying {
  var options: [AVMediaSelectionOption] { get }
  @available(iOS 8.0, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOption(withPropertyList plist: AnyObject) -> AVMediaSelectionOption?
  init()
  @available(iOS 5.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(iOS 6.0, *)
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], with locale: Locale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(iOS 5.0, *)
class AVMediaSelectionOption : Object, Copying {
  var mediaType: String { get }
  var mediaSubTypes: [Number] { get }
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool
  var isPlayable: Bool { get }
  @available(iOS 7.0, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadata(forFormat format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  @available(iOS 7.0, *)
  func displayName(with locale: Locale) -> String
  @available(iOS 7.0, *)
  var displayName: String { get }
  init()
  @available(iOS 5.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
