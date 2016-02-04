
let kMACaptionAppearanceSettingsChangedNotification: CFString
@available(tvOS 7.0, *)
enum MACaptionAppearanceDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Default
  case User
}
@available(tvOS 7.0, *)
enum MACaptionAppearanceDisplayType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case ForcedOnly
  case Automatic
  case AlwaysOn
}
@available(tvOS 7.0, *)
enum MACaptionAppearanceBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case UseValue
  case UseContentIfAvailable
}
@available(tvOS 7.0, *)
enum MACaptionAppearanceFontStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Default
  case MonospacedWithSerif
  case ProportionalWithSerif
  case MonospacedWithoutSerif
  case ProportionalWithoutSerif
  case Casual
  case Cursive
  case SmallCapital
}
@available(tvOS 7.0, *)
enum MACaptionAppearanceTextEdgeStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Undefined
  case None
  case Raised
  case Depressed
  case Uniform
  case DropShadow
}
@available(tvOS 7.0, *)
let MAMediaCharacteristicDescribesMusicAndSoundForAccessibility: CFString
@available(tvOS 7.0, *)
let MAMediaCharacteristicTranscribesSpokenDialogForAccessibility: CFString
@available(tvOS 7.0, *)
func MACaptionAppearanceAddSelectedLanguage(domain: MACaptionAppearanceDomain, _ language: CFString) -> Bool
@available(tvOS 7.0, *)
func MACaptionAppearanceCopySelectedLanguages(domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(tvOS 7.0, *)
func MACaptionAppearanceGetDisplayType(domain: MACaptionAppearanceDomain) -> MACaptionAppearanceDisplayType
@available(tvOS 7.0, *)
func MACaptionAppearanceSetDisplayType(domain: MACaptionAppearanceDomain, _ displayType: MACaptionAppearanceDisplayType)
@available(tvOS 7.0, *)
func MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(tvOS 7.0, *)
func MACaptionAppearanceCopyForegroundColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(tvOS 7.0, *)
func MACaptionAppearanceCopyBackgroundColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(tvOS 7.0, *)
func MACaptionAppearanceCopyWindowColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(tvOS 7.0, *)
func MACaptionAppearanceGetForegroundOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(tvOS 7.0, *)
func MACaptionAppearanceGetBackgroundOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(tvOS 7.0, *)
func MACaptionAppearanceGetWindowOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(tvOS 7.0, *)
func MACaptionAppearanceGetWindowRoundedCornerRadius(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(tvOS 7.0, *)
func MACaptionAppearanceCopyFontDescriptorForStyle(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>, _ fontStyle: MACaptionAppearanceFontStyle) -> Unmanaged<CTFontDescriptor>
@available(tvOS 7.0, *)
func MACaptionAppearanceGetRelativeCharacterSize(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(tvOS 7.0, *)
func MACaptionAppearanceGetTextEdgeStyle(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> MACaptionAppearanceTextEdgeStyle
