

/*!
 @constant kMAAudibleMediaSettingsChangedNotification
 @abstract CFNotification sent when any user-defined audible media settings are changed.
 */
let kMAAudibleMediaSettingsChangedNotification: CFString

/*!
 @constant MAMediaCharacteristicDescribesVideoForAccessibility
 @abstract A media characteristic that indicates that a track or media selection option includes audible content that descries a video for accessibility.
 */
@available(OSX 10.10, *)
let MAMediaCharacteristicDescribesVideoForAccessibility: CFString

/*!
 @function MAAudibleMediaCopyPreferredCharacteristics
 @abstract User preference for audible media characteristic
 @result An array containing the preferred order of media characteristics for audible media.
 */
@available(OSX 10.10, *)
func MAAudibleMediaCopyPreferredCharacteristics() -> Unmanaged<CFArray>

/*!
 @const kMACaptionAppearanceSettingsChangedNotification
 @abstract CFNotification sent when any user-defined captioning settings are changed.
 */
let kMACaptionAppearanceSettingsChangedNotification: CFString

/*!
 @enum MACaptionAppearanceDomain
 
 @discussion
 MACaptionAppearanceDomain is used to specify which domain of preferences to access.
 
 @constant kMACaptionAppearanceDomainUser
    The user-defined preferences. This domain should be passed to retrieve settings that should be used to render captions.
 @constant kMACaptionAppearanceDomainDefault
    The system defaults which will not change during a user session. These settings should be used for comparison, not to render captions. For example, when rendering a glyph some caption render engines need to get the user-defined font and the system-defined font to determeine the final pixel size to render a glyph. Most render engines will never need to use this domain.
 */
@available(OSX 10.9, *)
enum MACaptionAppearanceDomain : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Default
  case User
}

/*!
 @enum MACaptionAppearanceDisplayType
 
 @discussion
 MACaptionAppearanceDisplayType is used to specify the the type of captions that should be displayed
 
 @constant kMACaptionAppearanceDisplayTypeForcedOnly
    Only forced captions for translation should be displayed.
 @constant kMACaptionAppearanceDisplayTypeAutomatic
    If the language of the audio track differs from the system locale then captions matching the system locale should be displayed (if available).
 @constant kMACaptionAppearanceDisplayTypeAlwaysOn
    The best available captioning track should always be displayed, whether it be CC, SDH, or subtitles.
 */
@available(OSX 10.9, *)
enum MACaptionAppearanceDisplayType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case ForcedOnly
  case Automatic
  case AlwaysOn
}

/*!
 @enum MACaptionAppearanceBehavior
 
 @discussion
 MACaptionAppearanceBehavior is used to determine how a preference value should be used.

 @constant kMACaptionAppearanceBehaviorUseValue
    The value should override any content, application, or otherwise-defined values.
 @constant kMACaptionAppearanceBehaviorUseContentIfAvailable
    Content, application, or otherwise-defined values should override the returned value. If no other value is defined, then the return value should be used.
 */
@available(OSX 10.9, *)
enum MACaptionAppearanceBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case UseValue
  case UseContentIfAvailable
}

/*!
 @enum MACaptionAppearanceFontStyle
 
 @discussion
 MACaptionAppearanceFontStyle is used to specify a font style
 
 @constant kMACaptionAppearanceFontStyleDefault
    Default font style.
 @constant kMACaptionAppearanceFontStyleMonospacedWithSerif
    Font style for fonts similar to Courier.
 @constant kMACaptionAppearanceFontStyleProportionalWithSerif
    Font style for fonts similar to Times New Roman.
 @constant kMACaptionAppearanceFontStyleMonospacedWithoutSerif
    Font style for fonts similar to Helvetica Monospaced.
 @constant kMACaptionAppearanceFontStyleProportionalWithoutSerif
    Font style for fonts similar to Arial.
 @constant kMACaptionAppearanceFontStyleCasual
    Font style for fonts similar to Dom and Impress.
 @constant kMACaptionAppearanceFontStyleCursive
    Font style for fonts similar to Coronet and Marigold.
 @constant kMACaptionAppearanceFontStyleSmallCapital
    Font style for fonts similar to Engravers Gothic.
 */
@available(OSX 10.9, *)
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

/*!
 @enum MACaptionAppearanceTextEdgeStyle
 
 @discussion
 MACaptionAppearanceTextEdgeStyle is used to specify a text-edge style.
 
 @constant kMACaptionAppearanceTextEdgeStyleUndefined
    Undefined edge style.
 @constant kMACaptionAppearanceTextEdgeStyleNone
    No edge style.
 @constant kMACaptionAppearanceTextEdgeStyleRaised
    Raised edge style.
 @constant kMACaptionAppearanceTextEdgeStyleDepressed
    Depressed edge style.
 @constant kMACaptionAppearanceTextEdgeStyleUniform
    Uniform edge style.
 @constant kMACaptionAppearanceTextEdgeStyleDropShadow
    Shadow edge style.
 */
@available(OSX 10.9, *)
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

/*!
 @constant MAMediaCharacteristicDescribesMusicAndSoundForAccessibility
 @abstract A media characteristic that indicates that a track or media selection option includes legible content in the language of its specified locale that:
 - describes music and
 - describes sound other than spoken dialog, such as sound effects and significant silences, occurring in program audio.
 @discussion
 Legible tracks provided for accessibility purposes are typically tagged both with this characteristic as well as with MAMediaCharacteristicTranscribesSpokenDialogForAccessibility.
 A legible track provided for accessibility purposes that's associated with an audio track without music and without sound other than spoken dialog -- lacking even significant silences -- can be tagged with this characteristic, because it trivially meets these requirements.
 */
@available(OSX 10.9, *)
let MAMediaCharacteristicDescribesMusicAndSoundForAccessibility: CFString

/*!
 @constant MAMediaCharacteristicTranscribesSpokenDialogForAccessibility
 @abstract A media characteristic that indicates that a track or media selection option includes legible content in the language of its specified locale that:
 - transcribes spoken dialog and
 - identifies speakers whenever other visual cues are insufficient for a viewer to determine who is speaking.
 @discussion
 Legible tracks provided for accessibility purposes are typically tagged both with this characteristic as well as with MAMediaCharacteristicDescribesMusicAndSoundForAccessibility.
 A legible track provided for accessibility purposes that's associated with an audio track that has no spoken dialog can be tagged with this characteristic, because it trivially meets these requirements.
 */
@available(OSX 10.9, *)
let MAMediaCharacteristicTranscribesSpokenDialogForAccessibility: CFString

/*!
 @function MACaptionAppearanceAddSelectedLanguage
 @abstract Adds a user's selected caption language to stack of languages.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link
 @param language Canonical language identifier (see @link CFLocale@/link) of the user's preferred caption language.
 @result <code>true</code> if addition was successful. Unsuccessful additions are most liketly the result of invalid language codes.
 @discussion After a language is added it will appear first in the array returned by MACaptionAppearanceCopySelectedLanguages. Applications should call this anytime a user selects a specific languages for captioning tracks.

 For example, an AVFoundation clients may execute the following code in response to a user selecting a captioning track:
 <code>
 // in response to a user selection (from a pop-up menu or any other UI affordance), make the selection effective
 -[AVPlayerItem selectMediaOption:legibleOption inMediaSelectionGroup:legibleGroup];
 
 // now update system-wide captioning preferences by registering the language of the option selected by the user
  MACaptionAppearanceAddSelectedLanguage(kMACaptionAppearanceDomainUser, (CFStringRef)[[legibleOption locale] localeIdentifier]);
</code> 
 */
@available(OSX 10.9, *)
func MACaptionAppearanceAddSelectedLanguage(domain: MACaptionAppearanceDomain, _ language: CFString) -> Bool

/*!
 @function MACaptionAppearanceCopySelectedLanguages
 
 @abstract Copies the user's preferred caption languages.
 
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 
 @result Ordered array of preferred canonical language identifiers.
 
 @discussion Languages added using MACaptionAppearanceAddSelectedLanguage are normalized, and thus the contents of this array may have slightly different strings than those passed into MACaptionAppearanceAddSelectedLanguage.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceCopySelectedLanguages(domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>

/*!
 @function MACaptionAppearanceGetDisplayType
 @abstract User preference representing what type of captions should be displayed
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @result User preference representing what type of captions should be displayed. See @link MACaptionAppearanceDisplayType @/link.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetDisplayType(domain: MACaptionAppearanceDomain) -> MACaptionAppearanceDisplayType

/*!
 @function MACaptionAppearanceSetDisplayType
 @abstract User preference representing what type of captions should be displayed
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param displayType Captions display type, see  @link MACaptionAppearanceDisplayType @/link.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceSetDisplayType(domain: MACaptionAppearanceDomain, _ displayType: MACaptionAppearanceDisplayType)

/*!
 @function MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics
 @abstract User preference for captioning media characteristic
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @result An array containing the preferred order of media characteristics for captions.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(domain: MACaptionAppearanceDomain) -> Unmanaged<CFArray>

/*!
 @function MACaptionAppearanceCopyForegroundColor
 @abstract User preference for foreground/text color.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for foreground/text color.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceCopyForegroundColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>

/*!
 @function MACaptionAppearanceCopyBackgroundColor
 @abstract User preference for background color.
 @discussion The background color is the color behind each caption glyph.
 @param domain Preference domain, see @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for background color.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceCopyBackgroundColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>

/*!
 @function MACaptionAppearanceCopyWindowColor
 @abstract User preference for window color.
 @discussion The window color is the color of a box behind all of the caption glyphs.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for window color.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceCopyWindowColor(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> Unmanaged<CGColor>

/*!
 @function MACaptionAppearanceGetForegroundOpacity
 @abstract User preference for foreground opacity.
 @param domain Preference domain, see @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for foreground opacity.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetForegroundOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat

/*!
 @function MACaptionAppearanceGetBackgroundOpacity
 @abstract User preference for background opacity.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for background opacity.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetBackgroundOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat

/*!
 @function MACaptionAppearanceGetWindowOpacity
 @abstract User preference for window opacity.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for window opacity.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetWindowOpacity(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat

/*!
 @function MACaptionAppearanceGetWindowRoundedCornerRadius
 @abstract User preference for caption-window corner radius.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for caption-window corner radius.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetWindowRoundedCornerRadius(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat

/*!
 @function MACaptionAppearanceCopyFontForStyle
 @abstract User font preference for the specified style.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @param fontStyle Font style, see  @link MACaptionAppearanceFontStyle @/link.
 @result User font preference for the specified style.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceCopyFontDescriptorForStyle(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>, _ fontStyle: MACaptionAppearanceFontStyle) -> Unmanaged<CTFontDescriptor>

/*!
 @function MACaptionAppearanceGetRelativeCharacterSize
 @abstract User preference for font scaling.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User font scaling preference for the specified style.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetRelativeCharacterSize(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> CGFloat

/*!
 @function MACaptionAppearanceGetTextEdgeStyle
 @abstract User preference for text edge style.
 @param domain Preference domain, see  @link MACaptionAppearanceDomain @/link.
 @param *behavior (see @link MACaptionAppearanceBehavior @/link)
 @result User preference for text edge style.
 */
@available(OSX 10.9, *)
func MACaptionAppearanceGetTextEdgeStyle(domain: MACaptionAppearanceDomain, _ behavior: UnsafeMutablePointer<MACaptionAppearanceBehavior>) -> MACaptionAppearanceTextEdgeStyle
