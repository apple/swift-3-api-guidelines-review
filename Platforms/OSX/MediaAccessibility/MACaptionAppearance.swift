
let kMACaptionAppearanceSettingsChangedNotification: CFString
@available(OSX 10.9, *)
enum MACaptionAppearanceDomain : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Default
  case User
}
@available(OSX 10.9, *)
enum MACaptionAppearanceDisplayType : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case ForcedOnly
  case Automatic
  case AlwaysOn
}
@available(OSX 10.9, *)
enum MACaptionAppearanceBehavior : CFIndex {
  init?(rawValue rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case UseValue
  case UseContentIfAvailable
}
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
let MAMediaCharacteristicDescribesMusicAndSoundForAccessibility: CFString
@available(OSX 10.9, *)
let MAMediaCharacteristicTranscribesSpokenDialogForAccessibility: CFString
@available(OSX 10.9, *)
func MACaptionAppearanceAddSelectedLanguage(_ domain: MACaptionAppearanceDomain, _ language: CFString) -> Bool
@available(OSX 10.9, *)
func MACaptionAppearanceCopySelectedLanguages(_ domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(OSX 10.9, *)
func MACaptionAppearanceGetDisplayType(_ domain: MACaptionAppearanceDomain) -> MACaptionAppearanceDisplayType
@available(OSX 10.9, *)
func MACaptionAppearanceSetDisplayType(_ domain: MACaptionAppearanceDomain, _ displayType: MACaptionAppearanceDisplayType)
@available(OSX 10.9, *)
func MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(_ domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>
@available(OSX 10.9, *)
func MACaptionAppearanceCopyForegroundColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(OSX 10.9, *)
func MACaptionAppearanceCopyBackgroundColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(OSX 10.9, *)
func MACaptionAppearanceCopyWindowColor(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>
@available(OSX 10.9, *)
func MACaptionAppearanceGetForegroundOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetBackgroundOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetWindowOpacity(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetWindowRoundedCornerRadius(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceCopyFontDescriptorForStyle(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>, _ fontStyle: MACaptionAppearanceFontStyle) -> Unmanaged<CTFontDescriptor>
@available(OSX 10.9, *)
func MACaptionAppearanceGetRelativeCharacterSize(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat
@available(OSX 10.9, *)
func MACaptionAppearanceGetTextEdgeStyle(_ domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> MACaptionAppearanceTextEdgeStyle
