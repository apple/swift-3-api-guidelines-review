

/************************ Attributes ************************/
@available(watchOS 2.0, *)
let NSFontAttributeName: String
@available(watchOS 2.0, *)
let NSParagraphStyleAttributeName: String
@available(watchOS 2.0, *)
let NSForegroundColorAttributeName: String
@available(watchOS 2.0, *)
let NSBackgroundColorAttributeName: String
@available(watchOS 2.0, *)
let NSLigatureAttributeName: String
@available(watchOS 2.0, *)
let NSKernAttributeName: String
@available(watchOS 2.0, *)
let NSStrikethroughStyleAttributeName: String
@available(watchOS 2.0, *)
let NSUnderlineStyleAttributeName: String
@available(watchOS 2.0, *)
let NSStrokeColorAttributeName: String
@available(watchOS 2.0, *)
let NSStrokeWidthAttributeName: String
@available(watchOS 2.0, *)
let NSShadowAttributeName: String
@available(watchOS 2.0, *)
let NSTextEffectAttributeName: String
@available(watchOS 2.0, *)
let NSAttachmentAttributeName: String
@available(watchOS 2.0, *)
let NSLinkAttributeName: String
@available(watchOS 2.0, *)
let NSBaselineOffsetAttributeName: String
@available(watchOS 2.0, *)
let NSUnderlineColorAttributeName: String
@available(watchOS 2.0, *)
let NSStrikethroughColorAttributeName: String
@available(watchOS 2.0, *)
let NSObliquenessAttributeName: String
@available(watchOS 2.0, *)
let NSExpansionAttributeName: String
@available(watchOS 2.0, *)
let NSWritingDirectionAttributeName: String
@available(watchOS 2.0, *)
let NSVerticalGlyphFormAttributeName: String

/************************ Attribute values ************************/
@available(watchOS 2.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(watchOS 2.0, *)
  case StyleThick
  @available(watchOS 2.0, *)
  case StyleDouble
  @available(watchOS 2.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(watchOS 2.0, *)
  case PatternDot
  @available(watchOS 2.0, *)
  case PatternDash
  @available(watchOS 2.0, *)
  case PatternDashDot
  @available(watchOS 2.0, *)
  case PatternDashDotDot
  @available(watchOS 2.0, *)
  case ByWord
}
@available(watchOS 2.0, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(watchOS 2.0, *)
let NSTextEffectLetterpressStyle: String

/************************ Attribute fixing ************************/
extension NSMutableAttributedString {
  @available(watchOS 2.0, *)
  func fixAttributesIn(range: NSRange)
}

/************************ Document formats ************************/
@available(watchOS 2.0, *)
let NSPlainTextDocumentType: String
@available(watchOS 2.0, *)
let NSRTFTextDocumentType: String
@available(watchOS 2.0, *)
let NSRTFDTextDocumentType: String
@available(watchOS 2.0, *)
let NSHTMLTextDocumentType: String
@available(watchOS 2.0, *)
let NSTextLayoutSectionOrientation: String
@available(watchOS 2.0, *)
let NSTextLayoutSectionRange: String
@available(watchOS 2.0, *)
let NSDocumentTypeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(watchOS 2.0, *)
let NSDefaultAttributesDocumentAttribute: String
@available(watchOS 2.0, *)
let NSPaperSizeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSPaperMarginDocumentAttribute: String
@available(watchOS 2.0, *)
let NSViewSizeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSViewZoomDocumentAttribute: String
@available(watchOS 2.0, *)
let NSViewModeDocumentAttribute: String
@available(watchOS 2.0, *)
let NSReadOnlyDocumentAttribute: String
@available(watchOS 2.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(watchOS 2.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(watchOS 2.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(watchOS 2.0, *)
let NSTextLayoutSectionsAttribute: String
extension NSAttributedString {
  @available(watchOS 2.0, *)
  init(url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(watchOS 2.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(watchOS 2.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  @available(watchOS 2.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
}
extension NSMutableAttributedString {
  @available(watchOS 2.0, *)
  func readFrom(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(watchOS 2.0, *)
  func readFrom(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}

/************************ Misc methods ************************/
extension NSAttributedString {
  @available(watchOS 2.0, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
}

/************************ Deprecated ************************/
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSWritingDirectionFormatType instead")
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
extension NSAttributedString {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension NSMutableAttributedString {
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFromFileURL(url: NSURL, options opts: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
@available(watchOS 2.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(watchOS 2.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding {
  @available(watchOS 2.0, *)
  class func columnTerminatorsFor(aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
enum NSLineBreakMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
@available(watchOS 2.0, *)
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirectionForLanguage(languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(watchOS 2.0, *)
  var tabStops: [NSTextTab] { get }
  @available(watchOS 2.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(watchOS 2.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  @available(watchOS 2.0, *)
  var tabStops: [NSTextTab]!
  @available(watchOS 2.0, *)
  var defaultTabInterval: CGFloat
  @available(watchOS 2.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(watchOS 2.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(watchOS 2.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(watchOS 2.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(watchOS 2.0, *)
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> CGSize
  @available(watchOS 2.0, *)
  func drawAt(point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  func drawIn(rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(watchOS 2.0, *)
  func size() -> CGSize
  @available(watchOS 2.0, *)
  func drawAt(point: CGPoint)
  @available(watchOS 2.0, *)
  func drawIn(rect: CGRect)
}
@available(watchOS 2.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(watchOS 2.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(watchOS 2.0, *)
  func drawWith(rect: CGRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  @available(watchOS 2.0, *)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(watchOS 2.0, *)
  func drawWith(rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(watchOS 2.0, *)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}

/************************ Deprecated ************************/
extension NSStringDrawingContext {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var minimumTrackingAdjustment: CGFloat
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var actualTrackingAdjustment: CGFloat { get }
}
@available(watchOS 2.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
  case Justified
  case Natural
}
@available(watchOS 2.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
typealias UIAccessibilityTraits = UInt64
var UIAccessibilityTraitNone: UIAccessibilityTraits
var UIAccessibilityTraitButton: UIAccessibilityTraits
var UIAccessibilityTraitLink: UIAccessibilityTraits
@available(watchOS 2.0, *)
var UIAccessibilityTraitHeader: UIAccessibilityTraits
var UIAccessibilityTraitSearchField: UIAccessibilityTraits
var UIAccessibilityTraitImage: UIAccessibilityTraits
var UIAccessibilityTraitSelected: UIAccessibilityTraits
var UIAccessibilityTraitPlaysSound: UIAccessibilityTraits
var UIAccessibilityTraitKeyboardKey: UIAccessibilityTraits
var UIAccessibilityTraitStaticText: UIAccessibilityTraits
var UIAccessibilityTraitSummaryElement: UIAccessibilityTraits
var UIAccessibilityTraitNotEnabled: UIAccessibilityTraits
var UIAccessibilityTraitUpdatesFrequently: UIAccessibilityTraits
@available(watchOS 2.0, *)
var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
@available(watchOS 2.0, *)
var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
@available(watchOS 2.0, *)
var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
@available(watchOS 2.0, *)
var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
typealias UIAccessibilityNotifications = UInt32
var UIAccessibilityScreenChangedNotification: UIAccessibilityNotifications
var UIAccessibilityLayoutChangedNotification: UIAccessibilityNotifications
@available(watchOS 2.0, *)
var UIAccessibilityAnnouncementNotification: UIAccessibilityNotifications
@available(watchOS 2.0, *)
let UIAccessibilityAnnouncementDidFinishNotification: String
@available(watchOS 2.0, *)
let UIAccessibilityAnnouncementKeyStringValue: String
@available(watchOS 2.0, *)
let UIAccessibilityAnnouncementKeyWasSuccessful: String
@available(watchOS 2.0, *)
let UIAccessibilityElementFocusedNotification: String
@available(watchOS 2.0, *)
let UIAccessibilityFocusedElementKey: String
@available(watchOS 2.0, *)
let UIAccessibilityUnfocusedElementKey: String
@available(watchOS 2.0, *)
let UIAccessibilityAssistiveTechnologyKey: String
@available(watchOS 2.0, *)
var UIAccessibilityPageScrolledNotification: UIAccessibilityNotifications
@available(watchOS 2.0, *)
var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(watchOS 2.0, *)
var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(watchOS 2.0, *)
let UIAccessibilityNotificationSwitchControlIdentifier: String
@available(watchOS 2.0, *)
let UIAccessibilityNotificationVoiceOverIdentifier: String
@available(watchOS 2.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Separate
  case Combined
}
@available(watchOS 2.0, *)
let UIAccessibilitySpeechAttributePunctuation: String
@available(watchOS 2.0, *)
let UIAccessibilitySpeechAttributeLanguage: String
@available(watchOS 2.0, *)
let UIAccessibilitySpeechAttributePitch: String
struct UIRectCorner : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TopLeft: UIRectCorner { get }
  static var TopRight: UIRectCorner { get }
  static var BottomLeft: UIRectCorner { get }
  static var BottomRight: UIRectCorner { get }
  static var AllCorners: UIRectCorner { get }
}
@available(watchOS 2.0, *)
class UIBezierPath : NSObject, NSCopying, NSCoding {
  convenience init(rect: CGRect)
  convenience init(ovalIn rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(cgPath CGPath: CGPath)
  init()
  init?(coder aDecoder: NSCoder)
  var cgPath: CGPath
  func moveTo(point: CGPoint)
  func addLineTo(point: CGPoint)
  func addCurveTo(endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurveTo(endPoint: CGPoint, controlPoint: CGPoint)
  @available(watchOS 2.0, *)
  func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func closePath()
  func removeAllPoints()
  func append(bezierPath: UIBezierPath)
  @available(watchOS 2.0, *)
  func reversing() -> UIBezierPath
  func apply(transform: CGAffineTransform)
  var isEmpty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func contains(point: CGPoint) -> Bool
  var lineWidth: CGFloat
  var lineCapStyle: CGLineCap
  var lineJoinStyle: CGLineJoin
  var miterLimit: CGFloat
  var flatness: CGFloat
  var usesEvenOddFillRule: Bool
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func fill()
  func stroke()
  func fillWith(blendMode: CGBlendMode, alpha: CGFloat)
  func strokeWith(blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(watchOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  init(patternImage image: UIImage)
  class func black() -> UIColor
  class func darkGray() -> UIColor
  class func lightGray() -> UIColor
  class func white() -> UIColor
  class func gray() -> UIColor
  class func red() -> UIColor
  class func green() -> UIColor
  class func blue() -> UIColor
  class func cyan() -> UIColor
  class func yellow() -> UIColor
  class func magenta() -> UIColor
  class func orange() -> UIColor
  class func purple() -> UIColor
  class func brown() -> UIColor
  class func clear() -> UIColor
  func set()
  func setFill()
  func setStroke()
  @available(watchOS 2.0, *)
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(watchOS 2.0, *)
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(watchOS 2.0, *)
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func withAlphaComponent(alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
@available(watchOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(watchOS 2.0, *)
  class func preferredFontForTextStyle(style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(familyName: String) -> [String]
  class func systemFontOfSize(fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(watchOS 2.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(fontSize: CGFloat) -> UIFont
  @available(watchOS 2.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(watchOS 2.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(watchOS 2.0, *)
struct UIFontDescriptorSymbolicTraits : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TraitItalic: UIFontDescriptorSymbolicTraits { get }
  static var TraitBold: UIFontDescriptorSymbolicTraits { get }
  static var TraitExpanded: UIFontDescriptorSymbolicTraits { get }
  static var TraitCondensed: UIFontDescriptorSymbolicTraits { get }
  static var TraitMonoSpace: UIFontDescriptorSymbolicTraits { get }
  static var TraitVertical: UIFontDescriptorSymbolicTraits { get }
  static var TraitUIOptimized: UIFontDescriptorSymbolicTraits { get }
  static var TraitTightLeading: UIFontDescriptorSymbolicTraits { get }
  static var TraitLooseLeading: UIFontDescriptorSymbolicTraits { get }
  static var ClassMask: UIFontDescriptorSymbolicTraits { get }
  static var ClassUnknown: UIFontDescriptorSymbolicTraits { get }
  static var ClassOldStyleSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassTransitionalSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassModernSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassClarendonSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassSlabSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassFreeformSerifs: UIFontDescriptorSymbolicTraits { get }
  static var ClassSansSerif: UIFontDescriptorSymbolicTraits { get }
  static var ClassOrnamentals: UIFontDescriptorSymbolicTraits { get }
  static var ClassScripts: UIFontDescriptorSymbolicTraits { get }
  static var ClassSymbolic: UIFontDescriptorSymbolicTraits { get }
}
typealias UIFontDescriptorClass = Int
@available(watchOS 2.0, *)
class UIFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  convenience init()
  init?(coder aDecoder: NSCoder)
  var postscriptName: String { get }
  var pointSize: CGFloat { get }
  var matrix: CGAffineTransform { get }
  var symbolicTraits: UIFontDescriptorSymbolicTraits { get }
  func objectForKey(anAttribute: String) -> AnyObject?
  func fontAttributes() -> [String : AnyObject]
  func matchingFontDescriptorsWithMandatoryKeys(mandatoryKeys: Set<String>?) -> [UIFontDescriptor]
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: CGAffineTransform)
  class func preferredFontDescriptorWithTextStyle(style: String) -> UIFontDescriptor
  init(fontAttributes attributes: [String : AnyObject])
  func addingAttributes(attributes: [String : AnyObject]) -> UIFontDescriptor
  func withSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func withSize(newPointSize: CGFloat) -> UIFontDescriptor
  func withMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func withFace(newFace: String) -> UIFontDescriptor
  func withFamily(newFamily: String) -> UIFontDescriptor
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(watchOS 2.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorNameAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorFaceAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorSizeAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(watchOS 2.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(watchOS 2.0, *)
let UIFontSymbolicTrait: String
@available(watchOS 2.0, *)
let UIFontWeightTrait: String
@available(watchOS 2.0, *)
let UIFontWidthTrait: String
@available(watchOS 2.0, *)
let UIFontSlantTrait: String
@available(watchOS 2.0, *)
let UIFontWeightUltraLight: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightThin: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightLight: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightRegular: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightMedium: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightSemibold: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightBold: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightHeavy: CGFloat
@available(watchOS 2.0, *)
let UIFontWeightBlack: CGFloat
@available(watchOS 2.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(watchOS 2.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(watchOS 2.0, *)
let UIFontTextStyleTitle1: String
@available(watchOS 2.0, *)
let UIFontTextStyleTitle2: String
@available(watchOS 2.0, *)
let UIFontTextStyleTitle3: String
@available(watchOS 2.0, *)
let UIFontTextStyleHeadline: String
@available(watchOS 2.0, *)
let UIFontTextStyleSubheadline: String
@available(watchOS 2.0, *)
let UIFontTextStyleBody: String
@available(watchOS 2.0, *)
let UIFontTextStyleCallout: String
@available(watchOS 2.0, *)
let UIFontTextStyleFootnote: String
@available(watchOS 2.0, *)
let UIFontTextStyleCaption1: String
@available(watchOS 2.0, *)
let UIFontTextStyleCaption2: String
struct UIEdgeInsets {
  var top: CGFloat
  var left: CGFloat
  var bottom: CGFloat
  var right: CGFloat
  init()
  init(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat)
}

extension UIEdgeInsets : Equatable {
}
struct UIOffset {
  var horizontal: CGFloat
  var vertical: CGFloat
  init()
  init(horizontal: CGFloat, vertical: CGFloat)
}

extension UIOffset : Equatable {
}
@available(watchOS 2.0, *)
struct UIRectEdge : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIRectEdge { get }
  static var Top: UIRectEdge { get }
  static var Left: UIRectEdge { get }
  static var Bottom: UIRectEdge { get }
  static var Right: UIRectEdge { get }
  static var All: UIRectEdge { get }
}
func UIEdgeInsetsMake(top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> UIEdgeInsets
func UIEdgeInsetsInsetRect(rect: CGRect, _ insets: UIEdgeInsets) -> CGRect
func UIOffsetMake(horizontal: CGFloat, _ vertical: CGFloat) -> UIOffset
func UIEdgeInsetsEqualToEdgeInsets(insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool
func UIOffsetEqualToOffset(offset1: UIOffset, _ offset2: UIOffset) -> Bool
let UIEdgeInsetsZero: UIEdgeInsets
let UIOffsetZero: UIOffset
func NSStringFromCGPoint(point: CGPoint) -> String
func NSStringFromCGVector(vector: CGVector) -> String
func NSStringFromCGSize(size: CGSize) -> String
func NSStringFromCGRect(rect: CGRect) -> String
func NSStringFromCGAffineTransform(transform: CGAffineTransform) -> String
func NSStringFromUIEdgeInsets(insets: UIEdgeInsets) -> String
func NSStringFromUIOffset(offset: UIOffset) -> String
func CGPointFromString(string: String) -> CGPoint
func CGVectorFromString(string: String) -> CGVector
func CGSizeFromString(string: String) -> CGSize
func CGRectFromString(string: String) -> CGRect
func CGAffineTransformFromString(string: String) -> CGAffineTransform
func UIEdgeInsetsFromString(string: String) -> UIEdgeInsets
func UIOffsetFromString(string: String) -> UIOffset
extension NSValue {
  /*not inherited*/ init(cgPoint point: CGPoint)
  /*not inherited*/ init(cgVector vector: CGVector)
  /*not inherited*/ init(cgSize size: CGSize)
  /*not inherited*/ init(cgRect rect: CGRect)
  /*not inherited*/ init(cgAffineTransform transform: CGAffineTransform)
  /*not inherited*/ init(uiEdgeInsets insets: UIEdgeInsets)
  @available(watchOS 2.0, *)
  /*not inherited*/ init(uiOffset insets: UIOffset)
  func cgPointValue() -> CGPoint
  func cgVectorValue() -> CGVector
  func cgSizeValue() -> CGSize
  func cgRectValue() -> CGRect
  func cgAffineTransformValue() -> CGAffineTransform
  func uiEdgeInsetsValue() -> UIEdgeInsets
  @available(watchOS 2.0, *)
  func uiOffsetValue() -> UIOffset
}
extension NSCoder {
  func encode(point: CGPoint, forKey key: String)
  func encode(vector: CGVector, forKey key: String)
  func encode(size: CGSize, forKey key: String)
  func encode(rect: CGRect, forKey key: String)
  func encode(transform: CGAffineTransform, forKey key: String)
  func encode(insets: UIEdgeInsets, forKey key: String)
  @available(watchOS 2.0, *)
  func encode(offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(key: String) -> CGPoint
  func decodeCGVectorForKey(key: String) -> CGVector
  func decodeCGSizeForKey(key: String) -> CGSize
  func decodeCGRectForKey(key: String) -> CGRect
  func decodeCGAffineTransformForKey(key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(key: String) -> UIEdgeInsets
  @available(watchOS 2.0, *)
  func decodeUIOffsetForKey(key: String) -> UIOffset
}
func UIGraphicsGetCurrentContext() -> CGContext?
func UIGraphicsPushContext(context: CGContext)
func UIGraphicsPopContext()
func UIRectFillUsingBlendMode(rect: CGRect, _ blendMode: CGBlendMode)
func UIRectFill(rect: CGRect)
func UIRectFrameUsingBlendMode(rect: CGRect, _ blendMode: CGBlendMode)
func UIRectFrame(rect: CGRect)
func UIRectClip(rect: CGRect)
func UIGraphicsBeginImageContext(size: CGSize)
@available(watchOS 2.0, *)
func UIGraphicsBeginImageContextWithOptions(size: CGSize, _ opaque: Bool, _ scale: CGFloat)
func UIGraphicsGetImageFromCurrentImageContext() -> UIImage!
func UIGraphicsEndImageContext()
@available(watchOS 2.0, *)
func UIGraphicsBeginPDFContextToFile(path: String, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?) -> Bool
@available(watchOS 2.0, *)
func UIGraphicsBeginPDFContextToData(data: NSMutableData, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?)
@available(watchOS 2.0, *)
func UIGraphicsEndPDFContext()
@available(watchOS 2.0, *)
func UIGraphicsBeginPDFPage()
@available(watchOS 2.0, *)
func UIGraphicsBeginPDFPageWithInfo(bounds: CGRect, _ pageInfo: [NSObject : AnyObject]?)
@available(watchOS 2.0, *)
func UIGraphicsGetPDFContextBounds() -> CGRect
@available(watchOS 2.0, *)
func UIGraphicsSetPDFContextURLForRect(url: NSURL, _ rect: CGRect)
@available(watchOS 2.0, *)
func UIGraphicsAddPDFContextDestinationAtPoint(name: String, _ point: CGPoint)
@available(watchOS 2.0, *)
func UIGraphicsSetPDFContextDestinationForRect(name: String, _ rect: CGRect)
enum UIImageOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Left
  case Right
  case UpMirrored
  case DownMirrored
  case LeftMirrored
  case RightMirrored
}
enum UIImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Tile
  case Stretch
}
@available(watchOS 2.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
}
@available(watchOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  /*not inherited*/ init?(named name: String)
  init?(contentsOfFile path: String)
  init?(data: NSData)
  @available(watchOS 2.0, *)
  init?(data: NSData, scale: CGFloat)
  init(cgImage: CGImage)
  @available(watchOS 2.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(watchOS 2.0, *)
  var scale: CGFloat { get }
  @available(watchOS 2.0, *)
  class func animatedImageNamed(name: String, duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  class func animatedImageWith(images: [UIImage], duration: NSTimeInterval) -> UIImage?
  @available(watchOS 2.0, *)
  var images: [UIImage]? { get }
  @available(watchOS 2.0, *)
  var duration: NSTimeInterval { get }
  func drawAt(point: CGPoint)
  func drawAt(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawIn(rect: CGRect)
  func drawIn(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternIn(rect: CGRect)
  @available(watchOS 2.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(watchOS 2.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(watchOS 2.0, *)
  func withAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(watchOS 2.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(watchOS 2.0, *)
  func withRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(watchOS 2.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(watchOS 2.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(watchOS 2.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
  func stretchableImageWithLeftCapWidth(leftCapWidth: Int, topCapHeight: Int) -> UIImage
  var leftCapWidth: Int { get }
  var topCapHeight: Int { get }
}
func UIImagePNGRepresentation(image: UIImage) -> NSData?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> NSData?
@available(watchOS 2.0, *)
class UILocalNotification : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  @NSCopying var fireDate: NSDate?
  @NSCopying var timeZone: NSTimeZone?
  var repeatInterval: NSCalendarUnit
  @NSCopying var repeatCalendar: NSCalendar?
  @available(watchOS 2.0, *)
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  @available(watchOS 2.0, *)
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [NSObject : AnyObject]?
  @available(watchOS 2.0, *)
  var category: String?
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(watchOS 2.0, *)
let UILocalNotificationDefaultSoundName: String
