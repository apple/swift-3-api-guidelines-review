
class CTFontDescriptor {
}
@available(tvOS 3.2, *)
func CTFontDescriptorGetTypeID() -> CFTypeID
@available(tvOS 3.2, *)
let kCTFontURLAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontNameAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontDisplayNameAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontFamilyNameAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontStyleNameAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontTraitsAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontVariationAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontSizeAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontMatrixAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontCascadeListAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontCharacterSetAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontLanguagesAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontBaselineAdjustAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontMacintoshEncodingsAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontFeaturesAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontFeatureSettingsAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontFixedAdvanceAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontOrientationAttribute: CFString
enum CTFontOrientation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(tvOS 6.0, *)
  case Default
  @available(tvOS 6.0, *)
  case Horizontal
  @available(tvOS 6.0, *)
  case Vertical
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontDefaultOrientation: CTFontOrientation { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontHorizontalOrientation: CTFontOrientation { get }
  @available(tvOS, introduced=3.2, deprecated=9.0)
  static var kCTFontVerticalOrientation: CTFontOrientation { get }
}
@available(tvOS 3.2, *)
let kCTFontFormatAttribute: CFString
enum CTFontFormat : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unrecognized
  case OpenTypePostScript
  case OpenTypeTrueType
  case TrueType
  case PostScript
  case Bitmap
}
@available(tvOS 3.2, *)
let kCTFontRegistrationScopeAttribute: CFString
@available(tvOS 3.2, *)
let kCTFontPriorityAttribute: CFString
var kCTFontPrioritySystem: Int { get }
var kCTFontPriorityNetwork: Int { get }
var kCTFontPriorityComputer: Int { get }
var kCTFontPriorityUser: Int { get }
var kCTFontPriorityDynamic: Int { get }
var kCTFontPriorityProcess: Int { get }
typealias CTFontPriority = UInt32
@available(tvOS 3.2, *)
let kCTFontEnabledAttribute: CFString
@available(tvOS 6.0, *)
let kCTFontDownloadableAttribute: CFString
@available(tvOS 7.0, *)
let kCTFontDownloadedAttribute: CFString
@available(tvOS 3.2, *)
func CTFontDescriptorCreateWithNameAndSize(name: CFString, _ size: CGFloat) -> CTFontDescriptor
@available(tvOS 3.2, *)
func CTFontDescriptorCreateWithAttributes(attributes: CFDictionary) -> CTFontDescriptor
@available(tvOS 3.2, *)
func CTFontDescriptorCreateCopyWithAttributes(original: CTFontDescriptor, _ attributes: CFDictionary) -> CTFontDescriptor
@available(tvOS 7.0, *)
func CTFontDescriptorCreateCopyWithFamily(original: CTFontDescriptor, _ family: CFString) -> CTFontDescriptor?
@available(tvOS 7.0, *)
func CTFontDescriptorCreateCopyWithSymbolicTraits(original: CTFontDescriptor, _ symTraitValue: CTFontSymbolicTraits, _ symTraitMask: CTFontSymbolicTraits) -> CTFontDescriptor?
@available(tvOS 3.2, *)
func CTFontDescriptorCreateCopyWithVariation(original: CTFontDescriptor, _ variationIdentifier: CFNumber, _ variationValue: CGFloat) -> CTFontDescriptor
@available(tvOS 3.2, *)
func CTFontDescriptorCreateCopyWithFeature(original: CTFontDescriptor, _ featureTypeIdentifier: CFNumber, _ featureSelectorIdentifier: CFNumber) -> CTFontDescriptor
@available(tvOS 3.2, *)
func CTFontDescriptorCreateMatchingFontDescriptors(descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CFArray?
@available(tvOS 3.2, *)
func CTFontDescriptorCreateMatchingFontDescriptor(descriptor: CTFontDescriptor, _ mandatoryAttributes: CFSet?) -> CTFontDescriptor?
enum CTFontDescriptorMatchingState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case DidBegin
  case DidFinish
  case WillBeginQuerying
  case Stalled
  case WillBeginDownloading
  case Downloading
  case DidFinishDownloading
  case DidMatch
  case DidFailWithError
}
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingSourceDescriptor: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingDescriptors: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingResult: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingPercentage: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingCurrentAssetSize: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingTotalDownloadedSize: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingTotalAssetSize: CFString
@available(tvOS 6.0, *)
let kCTFontDescriptorMatchingError: CFString
typealias CTFontDescriptorProgressHandler = (CTFontDescriptorMatchingState, CFDictionary) -> Bool
@available(tvOS 6.0, *)
func CTFontDescriptorMatchFontDescriptorsWithProgressHandler(descriptors: CFArray, _ mandatoryAttributes: CFSet?, _ progressBlock: CTFontDescriptorProgressHandler) -> Bool
@available(tvOS 3.2, *)
func CTFontDescriptorCopyAttributes(descriptor: CTFontDescriptor) -> CFDictionary
@available(tvOS 3.2, *)
func CTFontDescriptorCopyAttribute(descriptor: CTFontDescriptor, _ attribute: CFString) -> CFTypeRef?
@available(tvOS 3.2, *)
func CTFontDescriptorCopyLocalizedAttribute(descriptor: CTFontDescriptor, _ attribute: CFString, _ language: UnsafeMutablePointer<Unmanaged<CFString>?>) -> CFTypeRef?
