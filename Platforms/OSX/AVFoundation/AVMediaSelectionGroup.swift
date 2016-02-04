
@available(OSX 10.8, *)
class AVMediaSelectionGroup : Object, Copying {
  var options: [AVMediaSelectionOption] { get }
  @available(OSX 10.10, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOptionWithPropertyList(plist: AnyObject) -> AVMediaSelectionOption?
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(OSX 10.8, *)
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withLocale locale: Locale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptionsFrom(mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [String]) -> [AVMediaSelectionOption]
}
@available(OSX 10.8, *)
class AVMediaSelectionOption : Object, Copying {
  var mediaType: String { get }
  var mediaSubTypes: [Number] { get }
  func hasMediaCharacteristic(mediaCharacteristic: String) -> Bool
  var isPlayable: Bool { get }
  @available(OSX 10.9, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadataForFormat(format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOptionIn(mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> AnyObject
  @available(OSX 10.9, *)
  func displayNameWith(locale: Locale) -> String
  @available(OSX 10.9, *)
  var displayName: String { get }
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
