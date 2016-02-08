
let kMACaptionAppearanceSettingsChangedNotification: CFString
@available(OSX 10.9, *)
enum MACaptionAppearanceDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case `default`
  case user
}
@available(OSX 10.9, *)
enum MACaptionAppearanceDisplayType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case forcedOnly
  case automatic
  case alwaysOn
}
@available(OSX 10.9, *)
enum MACaptionAppearanceBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case useValue
  case useContentIfAvailable
}
@available(OSX 10.9, *)
enum MACaptionAppearanceFontStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case `default`
  case monospacedWithSerif
  case proportionalWithSerif
  case monospacedWithoutSerif
  case proportionalWithoutSerif
  case casual
  case cursive
  case smallCapital
}
@available(OSX 10.9, *)
enum MACaptionAppearanceTextEdgeStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case undefined
  case none
  case raised
  case depressed
  case uniform
  case dropShadow
}
@available(OSX 10.9, *)
let MAMediaCharacteristicDescribesMusicAndSoundForAccessibility: CFString
@available(OSX 10.9, *)
let MAMediaCharacteristicTranscribesSpokenDialogForAccessibility: CFString
@available(OSX 10.9, *)
func MACaptionAppearanceAddSelectedLanguage(domain: MACaptionAppearanceDomain, _ language: CFString) -> Bool
@available(OSX 10.9, *)
func MACaptionAppearanceCopySelectedLanguages(domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(OSX 10.9, *)
func MACaptionAppearanceGetDisplayType(domain: MACaptionAppearanceDomain) -> MACaptionAppearanceDisplayType
@available(OSX 10.9, *)
func MACaptionAppearanceSetDisplayType(domain: MACaptionAppearanceDomain, _ displayType: MACaptionAppearanceDisplayType)
@available(OSX 10.9, *)
func MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(OSX 10.9, *)
func MACaptionAppearanceCopyForegroundColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(OSX 10.9, *)
func MACaptionAppearanceCopyBackgroundColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(OSX 10.9, *)
func MACaptionAppearanceCopyWindowColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(OSX 10.9, *)
func MACaptionAppearanceGetForegroundOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetBackgroundOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetWindowOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetWindowRoundedCornerRadius(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceCopyFontDescriptorForStyle(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>, _ fontStyle: MACaptionAppearanceFontStyle) -> Unmanaged<CTFontDescriptor>
@available(OSX 10.9, *)
func MACaptionAppearanceGetRelativeCharacterSize(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetTextEdgeStyle(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> MACaptionAppearanceTextEdgeStyle
