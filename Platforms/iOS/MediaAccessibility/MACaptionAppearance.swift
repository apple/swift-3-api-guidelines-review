
let kMACaptionAppearanceSettingsChangedNotification: CFString
@available(iOS 7.0, *)
enum MACaptionAppearanceDomain : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Default
  case User
}
@available(iOS 7.0, *)
enum MACaptionAppearanceDisplayType : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case ForcedOnly
  case Automatic
  case AlwaysOn
}
@available(iOS 7.0, *)
enum MACaptionAppearanceBehavior : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case UseValue
  case UseContentIfAvailable
}
@available(iOS 7.0, *)
enum MACaptionAppearanceFontStyle : CFIndex {
  init?(rawValue rawValue: CFIndex)
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
@available(iOS 7.0, *)
enum MACaptionAppearanceTextEdgeStyle : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Undefined
  case None
  case Raised
  case Depressed
  case Uniform
  case DropShadow
}
@available(iOS 7.0, *)
let MAMediaCharacteristicDescribesMusicAndSoundForAccessibility: CFString
@available(iOS 7.0, *)
let MAMediaCharacteristicTranscribesSpokenDialogForAccessibility: CFString
@available(iOS 7.0, *)
func MACaptionAppearanceAddSelectedLanguage(_ domain: MACaptionAppearanceDomain, _ language: CFString) -> Bool
@available(iOS 7.0, *)
func MACaptionAppearanceCopySelectedLanguages(_ domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(iOS 7.0, *)
func MACaptionAppearanceGetDisplayType(_ domain: MACaptionAppearanceDomain) -> MACaptionAppearanceDisplayType
@available(iOS 7.0, *)
func MACaptionAppearanceSetDisplayType(_ domain: MACaptionAppearanceDomain, _ displayType: MACaptionAppearanceDisplayType)
@available(iOS 7.0, *)
func MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(_ domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(iOS 7.0, *)
func MACaptionAppearanceCopyForegroundColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(iOS 7.0, *)
func MACaptionAppearanceCopyBackgroundColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(iOS 7.0, *)
func MACaptionAppearanceCopyWindowColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(iOS 7.0, *)
func MACaptionAppearanceGetForegroundOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(iOS 7.0, *)
func MACaptionAppearanceGetBackgroundOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(iOS 7.0, *)
func MACaptionAppearanceGetWindowOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(iOS 7.0, *)
func MACaptionAppearanceGetWindowRoundedCornerRadius(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(iOS 7.0, *)
func MACaptionAppearanceCopyFontDescriptorForStyle(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>, _ fontStyle: MACaptionAppearanceFontStyle) -> Unmanaged<CTFontDescriptor>
@available(iOS 7.0, *)
func MACaptionAppearanceGetRelativeCharacterSize(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(iOS 7.0, *)
func MACaptionAppearanceGetTextEdgeStyle(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> MACaptionAppearanceTextEdgeStyle
