

/************************ Attributes ************************/
@available(tvOS 6.0, *)
let NSFontAttributeName: String
@available(tvOS 6.0, *)
let NSParagraphStyleAttributeName: String
@available(tvOS 6.0, *)
let NSForegroundColorAttributeName: String
@available(tvOS 6.0, *)
let NSBackgroundColorAttributeName: String
@available(tvOS 6.0, *)
let NSLigatureAttributeName: String
@available(tvOS 6.0, *)
let NSKernAttributeName: String
@available(tvOS 6.0, *)
let NSStrikethroughStyleAttributeName: String
@available(tvOS 6.0, *)
let NSUnderlineStyleAttributeName: String
@available(tvOS 6.0, *)
let NSStrokeColorAttributeName: String
@available(tvOS 6.0, *)
let NSStrokeWidthAttributeName: String
@available(tvOS 6.0, *)
let NSShadowAttributeName: String
@available(tvOS 7.0, *)
let NSTextEffectAttributeName: String
@available(tvOS 7.0, *)
let NSAttachmentAttributeName: String
@available(tvOS 7.0, *)
let NSLinkAttributeName: String
@available(tvOS 7.0, *)
let NSBaselineOffsetAttributeName: String
@available(tvOS 7.0, *)
let NSUnderlineColorAttributeName: String
@available(tvOS 7.0, *)
let NSStrikethroughColorAttributeName: String
@available(tvOS 7.0, *)
let NSObliquenessAttributeName: String
@available(tvOS 7.0, *)
let NSExpansionAttributeName: String
@available(tvOS 7.0, *)
let NSWritingDirectionAttributeName: String
@available(tvOS 6.0, *)
let NSVerticalGlyphFormAttributeName: String

/************************ Attribute values ************************/
@available(tvOS 6.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(tvOS 7.0, *)
  case StyleThick
  @available(tvOS 7.0, *)
  case StyleDouble
  @available(tvOS 7.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(tvOS 7.0, *)
  case PatternDot
  @available(tvOS 7.0, *)
  case PatternDash
  @available(tvOS 7.0, *)
  case PatternDashDot
  @available(tvOS 7.0, *)
  case PatternDashDotDot
  @available(tvOS 7.0, *)
  case ByWord
}
@available(tvOS 9.0, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(tvOS 7.0, *)
let NSTextEffectLetterpressStyle: String

/************************ Attribute fixing ************************/
extension NSMutableAttributedString {
  @available(tvOS 7.0, *)
  func fixAttributesInRange(range: NSRange)
}

/************************ Document formats ************************/
@available(tvOS 7.0, *)
let NSPlainTextDocumentType: String
@available(tvOS 7.0, *)
let NSRTFTextDocumentType: String
@available(tvOS 7.0, *)
let NSRTFDTextDocumentType: String
@available(tvOS 7.0, *)
let NSHTMLTextDocumentType: String
@available(tvOS 7.0, *)
let NSTextLayoutSectionOrientation: String
@available(tvOS 7.0, *)
let NSTextLayoutSectionRange: String
@available(tvOS 7.0, *)
let NSDocumentTypeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(tvOS 7.0, *)
let NSDefaultAttributesDocumentAttribute: String
@available(tvOS 7.0, *)
let NSPaperSizeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSPaperMarginDocumentAttribute: String
@available(tvOS 7.0, *)
let NSViewSizeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSViewZoomDocumentAttribute: String
@available(tvOS 7.0, *)
let NSViewModeDocumentAttribute: String
@available(tvOS 7.0, *)
let NSReadOnlyDocumentAttribute: String
@available(tvOS 7.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(tvOS 7.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(tvOS 7.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(tvOS 7.0, *)
let NSTextLayoutSectionsAttribute: String
extension NSAttributedString {
  @available(tvOS 9.0, *)
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  func dataFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  @available(tvOS 7.0, *)
  func fileWrapperFromRange(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
}
extension NSMutableAttributedString {
  @available(tvOS 9.0, *)
  func readFromURL(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  func readFromData(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}

/************************ Misc methods ************************/
extension NSAttributedString {
  @available(tvOS 9.0, *)
  func containsAttachmentsInRange(range: NSRange) -> Bool
}
extension NSAttributedString {
}
extension NSMutableAttributedString {
}

/// NSDataAsset represents the contents of data entries in your asset catalog.
/// Data assets are not in the same class of stored content as images, so you cannot use a data asset to get image data for an image.
@available(tvOS 9.0, *)
class NSDataAsset : NSObject, NSCopying {

  /// Equivalent to -initWithName:name bundle:[NSBundle mainBundle];
  convenience init?(name: String)

  /// Create a data asset with the given name from the given bundle. Returns nil if the asset was not found.
  init?(name: String, bundle: NSBundle)

  /// The name used to reference the data asset
  var name: String { get }

  /// The data for this asset, as stored in the asset catalog
  @NSCopying var data: NSData { get }

  /// The Uniform Type Identifier for this data object.
  var typeIdentifier: String { get }
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
class NSLayoutAnchor : NSObject {
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
@available(tvOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
@available(tvOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
@available(tvOS 9.0, *)
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
enum NSLayoutRelation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LessThanOrEqual
  case Equal
  case GreaterThanOrEqual
}
enum NSLayoutAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
  case Top
  case Bottom
  case Leading
  case Trailing
  case Width
  case Height
  case CenterX
  case CenterY
  case Baseline
  static var LastBaseline: NSLayoutAttribute { get }
  @available(tvOS 8.0, *)
  case FirstBaseline
  @available(tvOS 8.0, *)
  case LeftMargin
  @available(tvOS 8.0, *)
  case RightMargin
  @available(tvOS 8.0, *)
  case TopMargin
  @available(tvOS 8.0, *)
  case BottomMargin
  @available(tvOS 8.0, *)
  case LeadingMargin
  @available(tvOS 8.0, *)
  case TrailingMargin
  @available(tvOS 8.0, *)
  case CenterXWithinMargins
  @available(tvOS 8.0, *)
  case CenterYWithinMargins
  case NotAnAttribute
}
struct NSLayoutFormatOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlignAllLeft: NSLayoutFormatOptions { get }
  static var AlignAllRight: NSLayoutFormatOptions { get }
  static var AlignAllTop: NSLayoutFormatOptions { get }
  static var AlignAllBottom: NSLayoutFormatOptions { get }
  static var AlignAllLeading: NSLayoutFormatOptions { get }
  static var AlignAllTrailing: NSLayoutFormatOptions { get }
  static var AlignAllCenterX: NSLayoutFormatOptions { get }
  static var AlignAllCenterY: NSLayoutFormatOptions { get }
  static var AlignAllBaseline: NSLayoutFormatOptions { get }
  static var AlignAllLastBaseline: NSLayoutFormatOptions { get }
  @available(tvOS 8.0, *)
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
typealias UILayoutPriority = Float
@available(tvOS 6.0, *)
let UILayoutPriorityRequired: UILayoutPriority
@available(tvOS 6.0, *)
let UILayoutPriorityDefaultHigh: UILayoutPriority
@available(tvOS 6.0, *)
let UILayoutPriorityDefaultLow: UILayoutPriority
@available(tvOS 6.0, *)
let UILayoutPriorityFittingSizeLevel: UILayoutPriority
@available(tvOS 6.0, *)
class NSLayoutConstraint : NSObject {
  class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions, metrics: [String : AnyObject]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
  convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: UILayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject { get }
  var firstAttribute: NSLayoutAttribute { get }
  var relation: NSLayoutRelation { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var secondAttribute: NSLayoutAttribute { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(tvOS 8.0, *)
  var active: Bool
  @available(tvOS 8.0, *)
  class func activateConstraints(constraints: [NSLayoutConstraint])
  @available(tvOS 8.0, *)
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
}
extension NSLayoutConstraint {
  @available(tvOS 7.0, *)
  var identifier: String?
}
protocol UILayoutSupport : NSObjectProtocol {
  var length: CGFloat { get }
  @available(tvOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
}
@available(tvOS 7.0, *)
enum NSTextLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(tvOS 7.0, *)
enum NSGlyphProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
@available(tvOS 7.0, *)
enum NSControlCharacterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ZeroAdvancement
  case Whitespace
  case HorizontalTab
  case LineBreak
  case ParagraphBreak
  case ContainerBreak
}
protocol NSTextLayoutOrientationProvider {
  @available(tvOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
@available(tvOS 7.0, *)
class NSLayoutManager : NSObject, NSCoding {

  /**************************** Initialization ****************************/
  init()
  init?(coder: NSCoder)

  /*************************** Text storage ***************************/
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?

  /**************************** Text containers ****************************/
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)

  /**************************** Delegate ****************************/
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?

  /*********************** Global layout manager options ***********************/
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: CGFloat
  var usesFontLeading: Bool
  @available(tvOS 7.0, *)
  var allowsNonContiguousLayout: Bool
  @available(tvOS 7.0, *)
  var hasNonContiguousLayout: Bool { get }

  /************************** Invalidation **************************/
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(tvOS 7.0, *)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  @available(tvOS 7.0, *)
  func processEditingForTextStorage(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)

  /************************ Causing glyph generation and layout ************************/
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForTextContainer(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: CGRect, inTextContainer container: NSTextContainer)

  /************************ Set glyphs and glyph properties ************************/
  @available(tvOS 7.0, *)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)

  /************************ Get glyphs and glyph properties ************************/
  var numberOfGlyphs: Int { get }
  func CGGlyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func CGGlyphAtIndex(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  @available(tvOS 7.0, *)
  func propertyForGlyphAtIndex(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAtIndex(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAtIndex(charIndex: Int) -> Int
  @available(tvOS 7.0, *)
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect)
  func setExtraLineFragmentRect(fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)

  /************************ Get layout information ************************/
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(tvOS 9.0, *)
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectForTextContainer(container: NSTextContainer) -> CGRect
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  @available(tvOS 9.0, *)
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  @available(tvOS 9.0, *)
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAtIndex(glyphIndex: Int) -> CGPoint
  func notShownAttributeForGlyphAtIndex(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAtIndex(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAtIndex(glyphIndex: Int) -> CGSize
  @available(tvOS 7.0, *)
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(glyphIndex: Int) -> NSRange

  /************************ More sophisticated queries ************************/
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForTextContainer(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContainingIndex(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, inTextContainer container: NSTextContainer) -> CGRect
  func glyphRangeForBoundingRect(bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndexForPoint(point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexForPoint(point: CGPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphForPoint(point: CGPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndexForPoint(point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAtIndex(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(tvOS 7.0, *)
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 7.0, *)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)

  /************************ Drawing support ************************/
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, atPoint origin: CGPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, atPoint origin: CGPoint)
  @available(tvOS 7.0, *)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [String : AnyObject], inContext graphicsContext: CGContext)
  @available(tvOS 7.0, *)
  func fillBackgroundRectArray(rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: UIColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {

  /************************ Glyph generation ************************/
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int

  /************************ Line layout ************************/
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseAction action: NSControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSControlCharacterAction
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(tvOS 9.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool

  /************************ Layout processing ************************/
  @available(tvOS 7.0, *)
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: CGSize)
}
@available(tvOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionZeroAdvancement instead")
var NSControlCharacterZeroAdvancementAction: Int { get }
@available(tvOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionWhitespace instead")
var NSControlCharacterWhitespaceAction: Int { get }
@available(tvOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionHorizontalTab instead")
var NSControlCharacterHorizontalTabAction: Int { get }
@available(tvOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionLineBreak instead")
var NSControlCharacterLineBreakAction: Int { get }
@available(tvOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionParagraphBreak instead")
var NSControlCharacterParagraphBreakAction: Int { get }
@available(tvOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionContainerBreak instead")
var NSControlCharacterContainerBreakAction: Int { get }
extension NSLayoutManager {
  func glyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func glyphAtIndex(glyphIndex: Int) -> CGGlyph
}
@available(tvOS 7.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(tvOS 7.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding {
  @available(tvOS 7.0, *)
  class func columnTerminatorsForLocale(aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(tvOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 6.0, *)
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
@available(tvOS 6.0, *)
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
  @available(tvOS 7.0, *)
  var tabStops: [NSTextTab] { get }
  @available(tvOS 7.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  init()
  @available(tvOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 6.0, *)
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
  @available(tvOS 7.0, *)
  var tabStops: [NSTextTab]!
  @available(tvOS 7.0, *)
  var defaultTabInterval: CGFloat
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(tvOS 9.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(tvOS 9.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(tvOS 9.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 6.0, *)
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(tvOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(tvOS 6.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(tvOS 7.0, *)
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> CGSize
  @available(tvOS 7.0, *)
  func drawAtPoint(point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  @available(tvOS 7.0, *)
  func drawInRect(rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(tvOS 6.0, *)
  func size() -> CGSize
  @available(tvOS 6.0, *)
  func drawAtPoint(point: CGPoint)
  @available(tvOS 6.0, *)
  func drawInRect(rect: CGRect)
}
@available(tvOS 6.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(tvOS 6.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(tvOS 7.0, *)
  func drawWithRect(rect: CGRect, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  @available(tvOS 7.0, *)
  func boundingRectWithSize(size: CGSize, options: NSStringDrawingOptions, attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(tvOS 6.0, *)
  func drawWithRect(rect: CGRect, options: NSStringDrawingOptions, context: NSStringDrawingContext?)
  @available(tvOS 6.0, *)
  func boundingRectWithSize(size: CGSize, options: NSStringDrawingOptions, context: NSStringDrawingContext?) -> CGRect
}

/************************ Deprecated ************************/
extension NSStringDrawingContext {
}
@available(tvOS 6.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
  case Justified
  case Natural
}
@available(tvOS 6.0, *)
func NSTextAlignmentToCTTextAlignment(nsTextAlignment: NSTextAlignment) -> CTTextAlignment
@available(tvOS 6.0, *)
func NSTextAlignmentFromCTTextAlignment(ctTextAlignment: CTTextAlignment) -> NSTextAlignment
@available(tvOS 6.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
@available(tvOS 7.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(tvOS 7.0, *)
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(tvOS 7.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {

  /**************************** Initialization ****************************/
  @available(tvOS 7.0, *)
  init(data contentData: NSData?, ofType uti: String?)

  /**************************** Content properties ****************************/
  @available(tvOS 7.0, *)
  @NSCopying var contents: NSData?
  @available(tvOS 7.0, *)
  var fileType: String?

  /**************************** Rendering/layout properties ****************************/
  @available(tvOS 7.0, *)
  var image: UIImage?
  @available(tvOS 7.0, *)
  var bounds: CGRect

  /**************************** Non-image contents properties ****************************/
  var fileWrapper: NSFileWrapper?
  convenience init()
  @available(tvOS 7.0, *)
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBoundsForTextContainer(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  @available(tvOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
@available(tvOS 7.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {

  /**************************** Initialization ****************************/
  @available(tvOS 7.0, *)
  init(size: CGSize)
  init?(coder: NSCoder)

  /**************************** Layout ****************************/
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(tvOS 9.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)

  /************************* Container shape properties *************************/
  @available(tvOS 7.0, *)
  var size: CGSize
  @available(tvOS 7.0, *)
  var exclusionPaths: [UIBezierPath]
  @available(tvOS 7.0, *)
  var lineBreakMode: NSLineBreakMode

  /************************* Layout constraint properties *************************/
  var lineFragmentPadding: CGFloat
  @available(tvOS 7.0, *)
  var maximumNumberOfLines: Int

  /**************************** Line fragments ****************************/
  @available(tvOS 7.0, *)
  func lineFragmentRectForProposedRect(proposedRect: CGRect, atIndex characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  @available(tvOS 9.0, *)
  var simpleRectangularTextContainer: Bool { get }

  /**************************** View synchronization ****************************/
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
@available(tvOS 7.0, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
@available(tvOS 7.0, *)
class NSTextStorage : NSMutableAttributedString {

  /**************************** Layout manager ****************************/
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(aLayoutManager: NSLayoutManager)
  func removeLayoutManager(aLayoutManager: NSLayoutManager)

  /**************************** Pending edit info ****************************/
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }

  /**************************** Delegate ****************************/
  unowned(unsafe) var delegate: @sil_unmanaged NSTextStorageDelegate?

  /**************************** Edit management ****************************/
  func edited(editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()

  /**************************** Attribute fixing ****************************/
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributesInRange(range: NSRange)
  func ensureAttributesAreFixedInRange(range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  @available(tvOS 9.0, *)
  init(URL url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(tvOS 7.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}

/****  NSTextStorage delegate methods ****/
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(tvOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}

/**** Notifications ****/
@available(tvOS 7.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(tvOS 7.0, *)
let NSTextStorageDidProcessEditingNotification: String
typealias UIAccelerationValue = Double
extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @available(tvOS 7.0, *)
  @NSCopying var accessibilityPath: UIBezierPath?
  @available(tvOS 5.0, *)
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  @available(tvOS 5.0, *)
  var accessibilityElementsHidden: Bool
  @available(tvOS 5.0, *)
  var accessibilityViewIsModal: Bool
  @available(tvOS 6.0, *)
  var shouldGroupAccessibilityChildren: Bool
  @available(tvOS 8.0, *)
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
  @available(tvOS 9.0, *)
  var accessibilityHeaderElements: [AnyObject]?
  class func isAccessibilityElement() -> Bool
  class func setIsAccessibilityElement(isAccessibilityElement: Bool)
  class func accessibilityLabel() -> String?
  class func setAccessibilityLabel(accessibilityLabel: String?)
  class func accessibilityHint() -> String?
  class func setAccessibilityHint(accessibilityHint: String?)
  class func accessibilityValue() -> String?
  class func setAccessibilityValue(accessibilityValue: String?)
  class func accessibilityTraits() -> UIAccessibilityTraits
  class func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  class func accessibilityFrame() -> CGRect
  class func setAccessibilityFrame(accessibilityFrame: CGRect)
  class func accessibilityPath() -> UIBezierPath?
  class func setAccessibilityPath(accessibilityPath: UIBezierPath?)
  class func accessibilityActivationPoint() -> CGPoint
  class func setAccessibilityActivationPoint(accessibilityActivationPoint: CGPoint)
  class func accessibilityLanguage() -> String?
  class func setAccessibilityLanguage(accessibilityLanguage: String?)
  class func accessibilityElementsHidden() -> Bool
  class func setAccessibilityElementsHidden(accessibilityElementsHidden: Bool)
  class func accessibilityViewIsModal() -> Bool
  class func setAccessibilityViewIsModal(accessibilityViewIsModal: Bool)
  class func shouldGroupAccessibilityChildren() -> Bool
  class func setShouldGroupAccessibilityChildren(shouldGroupAccessibilityChildren: Bool)
  class func accessibilityNavigationStyle() -> UIAccessibilityNavigationStyle
  class func setAccessibilityNavigationStyle(accessibilityNavigationStyle: UIAccessibilityNavigationStyle)
  class func accessibilityHeaderElements() -> [AnyObject]?
  class func setAccessibilityHeaderElements(accessibilityHeaderElements: [AnyObject]?)
}
@available(tvOS 7.0, *)
func UIAccessibilityConvertFrameToScreenCoordinates(rect: CGRect, _ view: UIView) -> CGRect
@available(tvOS 7.0, *)
func UIAccessibilityConvertPathToScreenCoordinates(path: UIBezierPath, _ view: UIView) -> UIBezierPath
extension NSObject {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElementAtIndex(index: Int) -> AnyObject?
  func accessibilityElementAtIndex(index: Int) -> AnyObject?
  class func indexOfAccessibilityElement(element: AnyObject) -> Int
  func indexOfAccessibilityElement(element: AnyObject) -> Int
  @available(tvOS 8.0, *)
  var accessibilityElements: [AnyObject]?
  class func accessibilityElements() -> [AnyObject]?
  class func setAccessibilityElements(accessibilityElements: [AnyObject]?)
}
extension NSObject {
  @available(tvOS 4.0, *)
  class func accessibilityElementDidBecomeFocused()
  @available(tvOS 4.0, *)
  func accessibilityElementDidBecomeFocused()
  @available(tvOS 4.0, *)
  class func accessibilityElementDidLoseFocus()
  @available(tvOS 4.0, *)
  func accessibilityElementDidLoseFocus()
  @available(tvOS 4.0, *)
  class func accessibilityElementIsFocused() -> Bool
  @available(tvOS 4.0, *)
  func accessibilityElementIsFocused() -> Bool
  @available(tvOS 9.0, *)
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
  @available(tvOS 9.0, *)
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
}
@available(tvOS 9.0, *)
func UIAccessibilityFocusedElement(assistiveTechnologyIdentifier: String?) -> AnyObject?
extension NSObject {
  @available(tvOS 7.0, *)
  class func accessibilityActivate() -> Bool
  @available(tvOS 7.0, *)
  func accessibilityActivate() -> Bool
  @available(tvOS 4.0, *)
  class func accessibilityIncrement()
  @available(tvOS 4.0, *)
  func accessibilityIncrement()
  @available(tvOS 4.0, *)
  class func accessibilityDecrement()
  @available(tvOS 4.0, *)
  func accessibilityDecrement()
  @available(tvOS 4.2, *)
  class func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  @available(tvOS 4.2, *)
  func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  @available(tvOS 5.0, *)
  class func accessibilityPerformEscape() -> Bool
  @available(tvOS 5.0, *)
  func accessibilityPerformEscape() -> Bool
  @available(tvOS 6.0, *)
  class func accessibilityPerformMagicTap() -> Bool
  @available(tvOS 6.0, *)
  func accessibilityPerformMagicTap() -> Bool
  @available(tvOS 8.0, *)
  var accessibilityCustomActions: [UIAccessibilityCustomAction]?
  class func accessibilityCustomActions() -> [UIAccessibilityCustomAction]?
  class func setAccessibilityCustomActions(accessibilityCustomActions: [UIAccessibilityCustomAction]?)
}
enum UIAccessibilityScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
  @available(tvOS 5.0, *)
  case Next
  @available(tvOS 5.0, *)
  case Previous
}
protocol UIAccessibilityReadingContent {
  @available(tvOS 5.0, *)
  func accessibilityLineNumberForPoint(point: CGPoint) -> Int
  @available(tvOS 5.0, *)
  func accessibilityContentForLineNumber(lineNumber: Int) -> String?
  @available(tvOS 5.0, *)
  func accessibilityFrameForLineNumber(lineNumber: Int) -> CGRect
  @available(tvOS 5.0, *)
  func accessibilityPageContent() -> String?
}
func UIAccessibilityPostNotification(notification: UIAccessibilityNotifications, _ argument: AnyObject?)
@available(tvOS 4.0, *)
func UIAccessibilityIsVoiceOverRunning() -> Bool
@available(tvOS 4.0, *)
let UIAccessibilityVoiceOverStatusChanged: String
@available(tvOS 5.0, *)
func UIAccessibilityIsMonoAudioEnabled() -> Bool
@available(tvOS 5.0, *)
let UIAccessibilityMonoAudioStatusDidChangeNotification: String
@available(tvOS 5.0, *)
func UIAccessibilityIsClosedCaptioningEnabled() -> Bool
@available(tvOS 5.0, *)
let UIAccessibilityClosedCaptioningStatusDidChangeNotification: String
@available(tvOS 6.0, *)
func UIAccessibilityIsInvertColorsEnabled() -> Bool
@available(tvOS 6.0, *)
let UIAccessibilityInvertColorsStatusDidChangeNotification: String
@available(tvOS 6.0, *)
func UIAccessibilityIsGuidedAccessEnabled() -> Bool
@available(tvOS 6.0, *)
let UIAccessibilityGuidedAccessStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsBoldTextEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityBoldTextStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsGrayscaleEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityGrayscaleStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsReduceTransparencyEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityReduceTransparencyStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsReduceMotionEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityReduceMotionStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityDarkerSystemColorsEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityDarkerSystemColorsStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsSwitchControlRunning() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilitySwitchControlStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsSpeakSelectionEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilitySpeakSelectionStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsSpeakScreenEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilitySpeakScreenStatusDidChangeNotification: String
@available(tvOS 9.0, *)
func UIAccessibilityIsShakeToUndoEnabled() -> Bool
@available(tvOS 9.0, *)
let UIAccessibilityShakeToUndoDidChangeNotification: String
@available(tvOS 7.0, *)
func UIAccessibilityRequestGuidedAccessSession(enable: Bool, _ completionHandler: (Bool) -> Void)
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func accessibilityScrollStatusForScrollView(scrollView: UIScrollView) -> String?
}
typealias UIAccessibilityTraits = UInt64
var UIAccessibilityTraitNone: UIAccessibilityTraits
var UIAccessibilityTraitButton: UIAccessibilityTraits
var UIAccessibilityTraitLink: UIAccessibilityTraits
@available(tvOS 6.0, *)
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
@available(tvOS 4.0, *)
var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
@available(tvOS 4.0, *)
var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
@available(tvOS 5.0, *)
var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
@available(tvOS 5.0, *)
var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
typealias UIAccessibilityNotifications = UInt32
var UIAccessibilityScreenChangedNotification: UIAccessibilityNotifications
var UIAccessibilityLayoutChangedNotification: UIAccessibilityNotifications
@available(tvOS 4.0, *)
var UIAccessibilityAnnouncementNotification: UIAccessibilityNotifications
@available(tvOS 6.0, *)
let UIAccessibilityAnnouncementDidFinishNotification: String
@available(tvOS 6.0, *)
let UIAccessibilityAnnouncementKeyStringValue: String
@available(tvOS 6.0, *)
let UIAccessibilityAnnouncementKeyWasSuccessful: String
@available(tvOS 9.0, *)
let UIAccessibilityElementFocusedNotification: String
@available(tvOS 9.0, *)
let UIAccessibilityFocusedElementKey: String
@available(tvOS 9.0, *)
let UIAccessibilityUnfocusedElementKey: String
@available(tvOS 9.0, *)
let UIAccessibilityAssistiveTechnologyKey: String
@available(tvOS 4.2, *)
var UIAccessibilityPageScrolledNotification: UIAccessibilityNotifications
@available(tvOS 8.0, *)
var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(tvOS 8.0, *)
var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(tvOS 8.0, *)
let UIAccessibilityNotificationSwitchControlIdentifier: String
@available(tvOS 9.0, *)
let UIAccessibilityNotificationVoiceOverIdentifier: String
@available(tvOS 8.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Separate
  case Combined
}
@available(tvOS 7.0, *)
let UIAccessibilitySpeechAttributePunctuation: String
@available(tvOS 7.0, *)
let UIAccessibilitySpeechAttributeLanguage: String
@available(tvOS 7.0, *)
let UIAccessibilitySpeechAttributePitch: String
@available(tvOS 8.0, *)
class UIAccessibilityCustomAction : NSObject {
  init(name: String, target: AnyObject?, selector: Selector)
  var name: String
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  init()
}
@available(tvOS 3.0, *)
class UIAccessibilityElement : NSObject, UIAccessibilityIdentification {
  init(accessibilityContainer container: AnyObject)
  unowned(unsafe) var accessibilityContainer: @sil_unmanaged AnyObject?
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityFrame: CGRect
  var accessibilityTraits: UIAccessibilityTraits
  init()
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
protocol UIAccessibilityIdentification : NSObjectProtocol {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String? { get set }
}
extension UIView : UIAccessibilityIdentification {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIBarItem : UIAccessibilityIdentification {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIImage : UIAccessibilityIdentification {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
@available(tvOS 5.0, *)
enum UIAccessibilityZoomType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsertionPoint
}
@available(tvOS 5.0, *)
func UIAccessibilityZoomFocusChanged(type: UIAccessibilityZoomType, _ frame: CGRect, _ view: UIView)
@available(tvOS 5.0, *)
func UIAccessibilityRegisterGestureConflictWithZoom()
enum UIActivityIndicatorViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WhiteLarge
  case White
}
@available(tvOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(activityIndicatorStyle style: UIActivityIndicatorViewStyle)
  init(frame: CGRect)
  init(coder: NSCoder)
  var activityIndicatorViewStyle: UIActivityIndicatorViewStyle
  var hidesWhenStopped: Bool
  @available(tvOS 5.0, *)
  var color: UIColor?
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  convenience init()
}
protocol UIActivityItemSource : NSObjectProtocol {
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  optional func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  optional func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(tvOS 2.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
typealias UIActivityViewControllerCompletionHandler = (String?, Bool) -> Void
typealias UIActivityViewControllerCompletionWithItemsHandler = (String?, Bool, [AnyObject]?, NSError?) -> Void
@available(tvOS 8.0, *)
enum UIAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
@available(tvOS 8.0, *)
enum UIAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ActionSheet
  case Alert
}
@available(tvOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var enabled: Bool
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle)
  func addAction(action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(tvOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextFieldWithConfigurationHandler(configurationHandler: ((UITextField) -> Void)?)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(tvOS 9.0, *)
  static func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  static func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  static func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
@available(tvOS 4.0, *)
enum UIApplicationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Active
  case Inactive
  case Background
}
typealias UIBackgroundTaskIdentifier = Int
@available(tvOS 4.0, *)
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
@available(tvOS 4.0, *)
let UIMinimumKeepAliveTimeout: NSTimeInterval
@available(tvOS 2.0, *)
class UIApplication : UIResponder {
  class func sharedApplication() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var idleTimerDisabled: Bool
  func openURL(url: NSURL) -> Bool
  @available(tvOS 3.0, *)
  func canOpenURL(url: NSURL) -> Bool
  func sendEvent(event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  @available(tvOS 4.0, *)
  var applicationState: UIApplicationState { get }
  @available(tvOS 4.0, *)
  var backgroundTimeRemaining: NSTimeInterval { get }
  @available(tvOS 4.0, *)
  func beginBackgroundTaskWithExpirationHandler(handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  @available(tvOS 7.0, *)
  func beginBackgroundTaskWithName(taskName: String?, expirationHandler handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  @available(tvOS 4.0, *)
  func endBackgroundTask(identifier: UIBackgroundTaskIdentifier)
  @available(tvOS 4.0, *)
  var protectedDataAvailable: Bool { get }
  @available(tvOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(tvOS 7.0, *)
  var preferredContentSizeCategory: String { get }
  init()
}
extension UIApplication {
  @available(tvOS 8.0, *)
  func registerForRemoteNotifications()
  @available(tvOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(tvOS 8.0, *)
  func isRegisteredForRemoteNotifications() -> Bool
}
extension UIApplication {
}
extension UIApplication {
}
extension UIApplication {
  @available(tvOS 4.0, *)
  func beginReceivingRemoteControlEvents()
  @available(tvOS 4.0, *)
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
}
extension UIApplication {
}
extension UIApplication {
  @available(tvOS 6.0, *)
  func extendStateRestoration()
  @available(tvOS 6.0, *)
  func completeStateRestoration()
  @available(tvOS 7.0, *)
  func ignoreSnapshotOnNextApplicationLaunch()
  @available(tvOS 7.0, *)
  class func registerObjectForStateRestoration(object: UIStateRestoring, restorationIdentifier: String)
}
protocol UIApplicationDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func applicationDidFinishLaunching(application: UIApplication)
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(tvOS 2.0, *)
  optional func applicationDidBecomeActive(application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationWillResignActive(application: UIApplication)
  @available(tvOS 9.0, *)
  optional func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool
  @available(tvOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationWillTerminate(application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationSignificantTimeChange(application: UIApplication)
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  @available(tvOS 3.0, *)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject])
  @available(tvOS 7.0, *)
  optional func application(application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: () -> Void)
  @available(tvOS 8.2, *)
  optional func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: ([NSObject : AnyObject]?) -> Void)
  @available(tvOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationDidEnterBackground(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationWillEnterForeground(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(application: UIApplication)
  @available(tvOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, willEncodeRestorableStateWithCoder coder: NSCoder)
  @available(tvOS 6.0, *)
  optional func application(application: UIApplication, didDecodeRestorableStateWithCoder coder: NSCoder)
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: NSError)
  @available(tvOS 8.0, *)
  optional func application(application: UIApplication, didUpdateUserActivity userActivity: NSUserActivity)
}
extension UIApplication {
}
func UIApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
let UITrackingRunLoopMode: String
@available(tvOS 4.0, *)
let UIApplicationDidEnterBackgroundNotification: String
@available(tvOS 4.0, *)
let UIApplicationWillEnterForegroundNotification: String
let UIApplicationDidFinishLaunchingNotification: String
let UIApplicationDidBecomeActiveNotification: String
let UIApplicationWillResignActiveNotification: String
let UIApplicationDidReceiveMemoryWarningNotification: String
let UIApplicationWillTerminateNotification: String
let UIApplicationSignificantTimeChangeNotification: String
@available(tvOS 3.0, *)
let UIApplicationLaunchOptionsURLKey: String
@available(tvOS 3.0, *)
let UIApplicationLaunchOptionsSourceApplicationKey: String
@available(tvOS 3.2, *)
let UIApplicationLaunchOptionsAnnotationKey: String
@available(tvOS 4.0, *)
let UIApplicationProtectedDataWillBecomeUnavailable: String
@available(tvOS 4.0, *)
let UIApplicationProtectedDataDidBecomeAvailable: String
@available(tvOS 4.0, *)
let UIApplicationLaunchOptionsLocationKey: String
@available(tvOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothCentralsKey: String
@available(tvOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: String
@available(tvOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityDictionaryKey: String
@available(tvOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityTypeKey: String
@available(tvOS 8.0, *)
let UIApplicationOpenSettingsURLString: String
@available(tvOS 9.0, *)
let UIApplicationOpenURLOptionsSourceApplicationKey: String
@available(tvOS 9.0, *)
let UIApplicationOpenURLOptionsAnnotationKey: String
@available(tvOS 9.0, *)
let UIApplicationOpenURLOptionsOpenInPlaceKey: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraSmall: String
@available(tvOS 7.0, *)
let UIContentSizeCategorySmall: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryMedium: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryExtraExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityMedium: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraExtraLarge: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryDidChangeNotification: String
@available(tvOS 7.0, *)
let UIContentSizeCategoryNewValueKey: String
@available(tvOS 7.0, *)
let UIApplicationUserDidTakeScreenshotNotification: String
@available(tvOS 8.0, *)
let UIApplicationKeyboardExtensionPointIdentifier: String
@available(tvOS 7.0, *)
enum UIAttachmentBehaviorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Items
  case Anchor
}
struct UIFloatRange {
  var minimum: CGFloat
  var maximum: CGFloat
  init()
  init(minimum: CGFloat, maximum: CGFloat)
}
@available(tvOS 9.0, *)
let UIFloatRangeZero: UIFloatRange
@available(tvOS 9.0, *)
let UIFloatRangeInfinite: UIFloatRange
@available(tvOS 9.0, *)
func UIFloatRangeIsInfinite(range: UIFloatRange) -> Bool
@available(tvOS 9.0, *)
func UIFloatRangeIsEqualToRange(range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
func UIFloatRangeMake(minimum: CGFloat, _ maximum: CGFloat) -> UIFloatRange
@available(tvOS 7.0, *)
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedToItem item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)

  /*!
   A sliding attachment allows for relative translation of two items along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local corrdinate system.
   @param axis Axis of allowed relative translation between local anchor point. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(tvOS 9.0, *)
  class func slidingAttachmentWithItem(item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /*!
   A sliding attachment allows for translation of the item along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The dynamic item connected by the attachment behavior.
   @param point The point for the item will be anchored by the attachment.
   @param axis Axis of allowed translation for the item. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(tvOS 9.0, *)
  class func slidingAttachmentWithItem(item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /*!
   A limit attachment imposes a maximum distance between two dynamic items, as if they were connected by a rope.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param offset1 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param offset2 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @see length
   */
  @available(tvOS 9.0, *)
  class func limitAttachmentWithItem(item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedToItem item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self

  /*!
   A fixed attachment fuses two dynamic items together at a reference point. 
   Fixed attachments are useful for creating complex shapes that can be broken apart later.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local corrdinate system.
   */
  @available(tvOS 9.0, *)
  class func fixedAttachmentWithItem(item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self

  /*!
   A pin attachment allows two dynamic items to independently rotate around the anchor point as if pinned together. 
   You can configure how far the two objects may rotate and the resistance to rotation
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local corrdinate system
   @see frictionTorque, resistance to rotation
   */
  @available(tvOS 9.0, *)
  class func pinAttachmentWithItem(item1: UIDynamicItem, attachedToItem item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  var items: [UIDynamicItem] { get }
  var attachedBehaviorType: UIAttachmentBehaviorType { get }
  var anchorPoint: CGPoint
  var length: CGFloat
  var damping: CGFloat
  var frequency: CGFloat
  @available(tvOS 9.0, *)
  var frictionTorque: CGFloat
  @available(tvOS 9.0, *)
  var attachmentRange: UIFloatRange
  convenience init()
}
enum UIBarButtonItemStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
  case Bordered
  case Done
}
enum UIBarButtonSystemItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Cancel
  case Edit
  case Save
  case Add
  case FlexibleSpace
  case FixedSpace
  case Compose
  case Reply
  case Action
  case Organize
  case Bookmarks
  case Search
  case Refresh
  case Stop
  case Camera
  case Trash
  case Play
  case Pause
  case Rewind
  case FastForward
  @available(tvOS 3.0, *)
  case Undo
  @available(tvOS 3.0, *)
  case Redo
  @available(tvOS 4.0, *)
  case PageCurl
}
@available(tvOS 2.0, *)
class UIBarButtonItem : UIBarItem, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  @available(tvOS 5.0, *)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(title: String?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target: AnyObject?, action: Selector)
  convenience init(customView: UIView)
  var style: UIBarButtonItemStyle
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector
  weak var target: @sil_weak AnyObject?
  @available(tvOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 6.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics)
  @available(tvOS 6.0, *)
  func backgroundImageForState(state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  var tintColor: UIColor?
  @available(tvOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
  @available(tvOS 5.0, *)
  func setTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func titlePositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> UIOffset
}
@available(tvOS 9.0, *)
class UIBarButtonItemGroup : NSObject, NSCoding {

  /// Create a new bar button item group with the given items. When bar button item layout is done, either the group's barButtonItems or its representativeItem is displayed (if it exists).
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: NSCoder)

  /// The bar button items assocaited with this group. Changing these items will affect the bar displaying these items without needing to re-set the groups that are in that bar. Any UIBarButtonItems that are already in group will be removed from that group.
  var barButtonItems: [UIBarButtonItem]

  /// In order to display as many items as possible, bars that support UIBarButtonItemGroup may choose to collapse items associated with groups to the representativeItem specified by the group.
  /// A bar will only collapse groups that have a representativeItem set, but may still choose to use an alternate presentation of these items.
  /// A UIBarButtonItem may only be either the representativeItem or a member of the barbuttonItems of a single UIBarButtonItemGroup and may only represent a single group.
  /// If the representativeItem has an action, then that action will be invoked, otherwise the bar will present a standard UI to allow selection of the barButtonItems in the representedItem's group.
  var representativeItem: UIBarButtonItem?

  /// Returns YES if the representativeItem of this group is currently being displayed, rather than its barButtonItems.
  var displayingRepresentativeItem: Bool { get }
  convenience init()
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension UIBarButtonItem {

  /// The group that the UIBarButtonItem is currently associated with, either as a member of the barButtonItems array or as that group's representativeItem.
  @available(tvOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
enum UIBarMetrics : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Compact
  case DefaultPrompt
  case CompactPrompt
  @available(tvOS, introduced=5.0, deprecated=8.0, message="Use UIBarMetricsCompact instead")
  static var LandscapePhone: UIBarMetrics { get }
  @available(tvOS, introduced=7.0, deprecated=8.0, message="Use UIBarMetricsCompactPrompt")
  static var LandscapePhonePrompt: UIBarMetrics { get }
}
@available(tvOS 7.0, *)
enum UIBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Bottom
  case Top
  case TopAttached
}
protocol UIBarPositioning : NSObjectProtocol {
  @available(tvOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIBarPositioningDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func positionForBar(bar: UIBarPositioning) -> UIBarPosition
}
@available(tvOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init()
  init?(coder aDecoder: NSCoder)
  var enabled: Bool
  var title: String?
  var image: UIImage?
  var imageInsets: UIEdgeInsets
  var tag: Int
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributesForState(state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
struct UIRectCorner : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TopLeft: UIRectCorner { get }
  static var TopRight: UIRectCorner { get }
  static var BottomLeft: UIRectCorner { get }
  static var BottomRight: UIRectCorner { get }
  static var AllCorners: UIRectCorner { get }
}
@available(tvOS 3.2, *)
class UIBezierPath : NSObject, NSCopying, NSCoding {
  convenience init(rect: CGRect)
  convenience init(ovalInRect rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(CGPath: CGPath)
  init()
  init?(coder aDecoder: NSCoder)
  var CGPath: CGPath
  func moveToPoint(point: CGPoint)
  func addLineToPoint(point: CGPoint)
  func addCurveToPoint(endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurveToPoint(endPoint: CGPoint, controlPoint: CGPoint)
  @available(tvOS 4.0, *)
  func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func closePath()
  func removeAllPoints()
  func appendPath(bezierPath: UIBezierPath)
  @available(tvOS 6.0, *)
  func bezierPathByReversingPath() -> UIBezierPath
  func applyTransform(transform: CGAffineTransform)
  var empty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func containsPoint(point: CGPoint) -> Bool
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
  func fillWithBlendMode(blendMode: CGBlendMode, alpha: CGFloat)
  func strokeWithBlendMode(blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
  @available(tvOS 3.2, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 3.2, *)
  func encodeWithCoder(aCoder: NSCoder)
}
enum UIButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Custom
  @available(tvOS 7.0, *)
  case System
  case DetailDisclosure
  case InfoLight
  case InfoDark
  case ContactAdd
  static var RoundedRect: UIButtonType { get }
}
@available(tvOS 2.0, *)
class UIButton : UIControl, NSCoding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  @available(tvOS 5.0, *)
  var tintColor: UIColor!
  var buttonType: UIButtonType { get }
  func setTitle(title: String?, forState state: UIControlState)
  func setTitleColor(color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(color: UIColor?, forState state: UIControlState)
  func setImage(image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  @available(tvOS 6.0, *)
  func setAttributedTitle(title: NSAttributedString?, forState state: UIControlState)
  func titleForState(state: UIControlState) -> String?
  func titleColorForState(state: UIControlState) -> UIColor?
  func titleShadowColorForState(state: UIControlState) -> UIColor?
  func imageForState(state: UIControlState) -> UIImage?
  func backgroundImageForState(state: UIControlState) -> UIImage?
  @available(tvOS 6.0, *)
  func attributedTitleForState(state: UIControlState) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(tvOS 6.0, *)
  var currentAttributedTitle: NSAttributedString? { get }
  @available(tvOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(tvOS 3.0, *)
  var imageView: UIImageView? { get }
  func backgroundRectForBounds(bounds: CGRect) -> CGRect
  func contentRectForBounds(bounds: CGRect) -> CGRect
  func titleRectForContentRect(contentRect: CGRect) -> CGRect
  func imageRectForContentRect(contentRect: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
extension UIButton {
}
struct UICollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UICollectionViewScrollPosition { get }
  static var Top: UICollectionViewScrollPosition { get }
  static var CenteredVertically: UICollectionViewScrollPosition { get }
  static var Bottom: UICollectionViewScrollPosition { get }
  static var Left: UICollectionViewScrollPosition { get }
  static var CenteredHorizontally: UICollectionViewScrollPosition { get }
  static var Right: UICollectionViewScrollPosition { get }
}
typealias UICollectionViewLayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
@available(tvOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  optional func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInCollectionView(collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
@available(tvOS 6.0, *)
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func registerClass(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [NSIndexPath]?
  func selectItemAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItemAtIndexPath(indexPath: NSIndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  @available(tvOS 7.0, *)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?)
  @available(tvOS 7.0, *)
  func startInteractiveTransitionToCollectionViewLayout(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout
  @available(tvOS 7.0, *)
  func finishInteractiveTransition()
  @available(tvOS 7.0, *)
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItemsInSection(section: Int) -> Int
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItemAtPoint(point: CGPoint) -> NSIndexPath?
  func indexPathForCell(cell: UICollectionViewCell) -> NSIndexPath?
  func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [NSIndexPath]
  @available(tvOS 9.0, *)
  func supplementaryViewForElementKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [UICollectionReusableView]
  @available(tvOS 9.0, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> [NSIndexPath]
  func scrollToItemAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: NSIndexSet)
  func deleteSections(sections: NSIndexSet)
  func reloadSections(sections: NSIndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func deleteItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func reloadItemsAtIndexPaths(indexPaths: [NSIndexPath])
  func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)?)
  @available(tvOS 9.0, *)
  func beginInteractiveMovementForItemAtIndexPath(indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  @available(tvOS 9.0, *)
  func endInteractiveMovement()
  @available(tvOS 9.0, *)
  func cancelInteractiveMovement()
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension NSIndexPath {
  @available(tvOS 6.0, *)
  convenience init(forItem item: Int, inSection section: Int)
  @available(tvOS 6.0, *)
  var item: Int { get }
}
@available(tvOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  func didTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout)
  @available(tvOS 8.0, *)
  func preferredLayoutAttributesFittingAttributes(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(tvOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var selected: Bool
  var highlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(tvOS 6.0, *)
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  @available(tvOS 7.0, *)
  var useLayoutToLayoutNavigationTransitions: Bool
  @available(tvOS 7.0, *)
  var collectionViewLayout: UICollectionViewLayout { get }
  @available(tvOS 9.0, *)
  var installsStandardGestureForInteractiveMovement: Bool
  convenience init()
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplayCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplayingCell cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 7.0, *)
  func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, shouldUpdateFocusInContext context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, didUpdateFocusInContext context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedViewInCollectionView(collectionView: UICollectionView) -> NSIndexPath?
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAtIndexPath originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(tvOS 6.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 6.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 6.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 6.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 6.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(tvOS 6.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
@available(tvOS 6.0, *)
let UICollectionElementKindSectionHeader: String
@available(tvOS 6.0, *)
let UICollectionElementKindSectionFooter: String
enum UICollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
@available(tvOS 7.0, *)
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  @available(tvOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
@available(tvOS 6.0, *)
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  @available(tvOS 8.0, *)
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionViewScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets
  @available(tvOS 9.0, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(tvOS 9.0, *)
  var sectionFootersPinToVisibleBounds: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum UICollectionElementCategory : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Cell
  case SupplementaryView
  case DecorationView
}
@available(tvOS 6.0, *)
class UICollectionViewLayoutAttributes : NSObject, NSCopying, UIDynamicItem {
  var frame: CGRect
  var center: CGPoint
  var size: CGSize
  var transform3D: CATransform3D
  @available(tvOS 7.0, *)
  var bounds: CGRect
  @available(tvOS 7.0, *)
  var transform: CGAffineTransform
  var alpha: CGFloat
  var zIndex: Int
  var hidden: Bool
  var indexPath: NSIndexPath
  var representedElementCategory: UICollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWithIndexPath indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  init()
  @available(tvOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
enum UICollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Insert
  case Delete
  case Reload
  case Move
  case None
}
@available(tvOS 6.0, *)
class UICollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: UICollectionUpdateAction { get }
  init()
}
@available(tvOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(tvOS 8.0, *)
  func invalidateItemsAtIndexPaths(indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  func invalidateSupplementaryElementsOfKind(elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  func invalidateDecorationElementsOfKind(elementKind: String, atIndexPaths indexPaths: [NSIndexPath])
  @available(tvOS 8.0, *)
  var invalidatedItemIndexPaths: [NSIndexPath]? { get }
  @available(tvOS 8.0, *)
  var invalidatedSupplementaryIndexPaths: [String : [NSIndexPath]]? { get }
  @available(tvOS 8.0, *)
  var invalidatedDecorationIndexPaths: [String : [NSIndexPath]]? { get }
  @available(tvOS 8.0, *)
  var contentOffsetAdjustment: CGPoint
  @available(tvOS 8.0, *)
  var contentSizeAdjustment: CGSize
  @available(tvOS 9.0, *)
  var previousIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  @available(tvOS 9.0, *)
  var targetIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  @available(tvOS 9.0, *)
  var interactiveMovementTarget: CGPoint { get }
  init()
}
@available(tvOS 6.0, *)
class UICollectionViewLayout : NSObject, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(tvOS 7.0, *)
  func invalidateLayoutWithContext(context: UICollectionViewLayoutInvalidationContext)
  func registerClass(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func registerNib(nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  @available(tvOS 7.0, *)
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool
  @available(tvOS 7.0, *)
  func invalidationContextForBoundsChange(newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 8.0, *)
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(tvOS 8.0, *)
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(tvOS 7.0, *)
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint) -> CGPoint
  func collectionViewContentSize() -> CGSize
}
extension UICollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(tvOS 7.0, *)
  func prepareForTransitionToLayout(newLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func prepareForTransitionFromLayout(oldLayout: UICollectionViewLayout)
  @available(tvOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, atIndexPath elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, atIndexPath decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(tvOS 7.0, *)
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
}
extension UICollectionViewLayout {
  @available(tvOS 9.0, *)
  func targetIndexPathForInteractivelyMovingItem(previousIndexPath: NSIndexPath, withPosition position: CGPoint) -> NSIndexPath
  @available(tvOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItemAtIndexPath(indexPath: NSIndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(tvOS 9.0, *)
  func invalidationContextForInteractivelyMovingItems(targetIndexPaths: [NSIndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [NSIndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(tvOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(indexPaths: [NSIndexPath], previousIndexPaths: [NSIndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
@available(tvOS 7.0, *)
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueForAnimatedKey(key: String) -> CGFloat
}
@available(tvOS 7.0, *)
struct UICollisionBehaviorMode : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Items: UICollisionBehaviorMode { get }
  static var Boundaries: UICollisionBehaviorMode { get }
  static var Everything: UICollisionBehaviorMode { get }
}
protocol UICollisionBehaviorDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem, atPoint p: CGPoint)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, atPoint p: CGPoint)
  @available(tvOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
}
@available(tvOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWithInsets(insets: UIEdgeInsets)
  func addBoundaryWithIdentifier(identifier: NSCopying, forPath bezierPath: UIBezierPath)
  func addBoundaryWithIdentifier(identifier: NSCopying, fromPoint p1: CGPoint, toPoint p2: CGPoint)
  func boundaryWithIdentifier(identifier: NSCopying) -> UIBezierPath?
  func removeBoundaryWithIdentifier(identifier: NSCopying)
  var boundaryIdentifiers: [NSCopying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
@available(tvOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(CGColor cgColor: CGColor)
  init(patternImage image: UIImage)
  @available(tvOS 5.0, *)
  init(CIColor ciColor: CIColor)
  class func blackColor() -> UIColor
  class func darkGrayColor() -> UIColor
  class func lightGrayColor() -> UIColor
  class func whiteColor() -> UIColor
  class func grayColor() -> UIColor
  class func redColor() -> UIColor
  class func greenColor() -> UIColor
  class func blueColor() -> UIColor
  class func cyanColor() -> UIColor
  class func yellowColor() -> UIColor
  class func magentaColor() -> UIColor
  class func orangeColor() -> UIColor
  class func purpleColor() -> UIColor
  class func brownColor() -> UIColor
  class func clearColor() -> UIColor
  func set()
  func setFill()
  func setStroke()
  @available(tvOS 5.0, *)
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 5.0, *)
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 5.0, *)
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func colorWithAlphaComponent(alpha: CGFloat) -> UIColor
  var CGColor: CGColor { get }
  @available(tvOS 5.0, *)
  var CIColor: CIColor { get }
  init()
  @available(tvOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension CIColor {
  @available(tvOS 5.0, *)
  convenience init(color: UIColor)
}
struct UIControlEvents : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var TouchDown: UIControlEvents { get }
  static var TouchDownRepeat: UIControlEvents { get }
  static var TouchDragInside: UIControlEvents { get }
  static var TouchDragOutside: UIControlEvents { get }
  static var TouchDragEnter: UIControlEvents { get }
  static var TouchDragExit: UIControlEvents { get }
  static var TouchUpInside: UIControlEvents { get }
  static var TouchUpOutside: UIControlEvents { get }
  static var TouchCancel: UIControlEvents { get }
  static var ValueChanged: UIControlEvents { get }
  @available(tvOS 9.0, *)
  static var PrimaryActionTriggered: UIControlEvents { get }
  static var EditingDidBegin: UIControlEvents { get }
  static var EditingChanged: UIControlEvents { get }
  static var EditingDidEnd: UIControlEvents { get }
  static var EditingDidEndOnExit: UIControlEvents { get }
  static var AllTouchEvents: UIControlEvents { get }
  static var AllEditingEvents: UIControlEvents { get }
  static var ApplicationReserved: UIControlEvents { get }
  static var SystemReserved: UIControlEvents { get }
  static var AllEvents: UIControlEvents { get }
}
enum UIControlContentVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Top
  case Bottom
  case Fill
}
enum UIControlContentHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Left
  case Right
  case Fill
}
struct UIControlState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIControlState { get }
  static var Highlighted: UIControlState { get }
  static var Disabled: UIControlState { get }
  static var Selected: UIControlState { get }
  @available(tvOS 9.0, *)
  static var Focused: UIControlState { get }
  static var Application: UIControlState { get }
  static var Reserved: UIControlState { get }
}
@available(tvOS 2.0, *)
class UIControl : UIView {
  var enabled: Bool
  var selected: Bool
  var highlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var tracking: Bool { get }
  var touchInside: Bool { get }
  func beginTrackingWithTouch(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWithTouch(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWithTouch(touch: UITouch?, withEvent event: UIEvent?)
  func cancelTrackingWithEvent(event: UIEvent?)
  func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<NSObject>
  func allControlEvents() -> UIControlEvents
  func actionsForTarget(target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsForControlEvents(controlEvents: UIControlEvents)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  @available(tvOS 3.2, *)
  case Phone
  @available(tvOS 3.2, *)
  case Pad
  @available(tvOS 9.0, *)
  case TV
}
@available(tvOS 2.0, *)
class UIDevice : NSObject {
  class func currentDevice() -> UIDevice
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  @available(tvOS 6.0, *)
  var identifierForVendor: NSUUID? { get }
  @available(tvOS 3.0, *)
  var proximityMonitoringEnabled: Bool
  @available(tvOS 3.0, *)
  var proximityState: Bool { get }
  @available(tvOS 4.0, *)
  var multitaskingSupported: Bool { get }
  @available(tvOS 3.2, *)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(tvOS 4.2, *)
  func playInputClick()
  init()
}
protocol UIInputViewAudioFeedback : NSObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
@available(tvOS 3.0, *)
let UIDeviceProximityStateDidChangeNotification: String
extension UIDocument {
}
protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  @available(tvOS 7.0, *)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
@available(tvOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsInRect(rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(item: UIDynamicItem)
  var running: Bool { get }
  func elapsedTime() -> NSTimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(decorationViewKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
}
@available(tvOS 9.0, *)
enum UIDynamicItemCollisionBoundsType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Rectangle
  case Ellipse
  case Path
}
protocol UIDynamicItem : NSObjectProtocol {
  var center: CGPoint { get set }
  var bounds: CGRect { get }
  var transform: CGAffineTransform { get set }

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(tvOS 9.0, *)
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(tvOS 9.0, *)
  optional var collisionBoundingPath: UIBezierPath { get }
}
@available(tvOS 9.0, *)
class UIDynamicItemGroup : NSObject, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  @available(tvOS 9.0, *)
  var center: CGPoint
  @available(tvOS 9.0, *)
  var bounds: CGRect { get }
  @available(tvOS 9.0, *)
  var transform: CGAffineTransform

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
@available(tvOS 7.0, *)
class UIDynamicBehavior : NSObject {
  func addChildBehavior(behavior: UIDynamicBehavior)
  func removeChildBehavior(behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMoveToAnimator(dynamicAnimator: UIDynamicAnimator?)
  var dynamicAnimator: UIDynamicAnimator? { get }
  init()
}
@available(tvOS 7.0, *)
class UIDynamicItemBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var elasticity: CGFloat
  var friction: CGFloat
  var density: CGFloat
  var resistance: CGFloat
  var angularResistance: CGFloat

  /*!
   Specifies the charge associated with the item behavior. Charge determines the degree to which a dynamic item is affected by
   electric and magnetic fields. Note that this is a unitless quantity, it is up to the developer to
   set charge and field strength appropriately. Defaults to 0.0
   */
  @available(tvOS 9.0, *)
  var charge: CGFloat

  /*!
   If an item is anchored, it can participate in collisions, but will not exhibit
   any dynamic response. i.e. The item will behave more like a collision boundary.
   The default is NO
   */
  @available(tvOS 9.0, *)
  var anchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocityForItem(item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocityForItem(item: UIDynamicItem) -> CGFloat
  convenience init()
}
enum UIEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Touches
  case Motion
  case RemoteControl
  @available(tvOS 9.0, *)
  case Presses
}
enum UIEventSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case MotionShake
  case RemoteControlPlay
  case RemoteControlPause
  case RemoteControlStop
  case RemoteControlTogglePlayPause
  case RemoteControlNextTrack
  case RemoteControlPreviousTrack
  case RemoteControlBeginSeekingBackward
  case RemoteControlEndSeekingBackward
  case RemoteControlBeginSeekingForward
  case RemoteControlEndSeekingForward
}
@available(tvOS 2.0, *)
class UIEvent : NSObject {
  @available(tvOS 3.0, *)
  var type: UIEventType { get }
  @available(tvOS 3.0, *)
  var subtype: UIEventSubtype { get }
  var timestamp: NSTimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touchesForWindow(window: UIWindow) -> Set<UITouch>?
  func touchesForView(view: UIView) -> Set<UITouch>?
  @available(tvOS 3.2, *)
  func touchesForGestureRecognizer(gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(tvOS 9.0, *)
  func coalescedTouchesForTouch(touch: UITouch) -> [UITouch]?
  @available(tvOS 9.0, *)
  func predictedTouchesForTouch(touch: UITouch) -> [UITouch]?
  init()
}
@available(tvOS 9.0, *)
class UIFieldBehavior : UIDynamicBehavior {
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }

  /*!
   The position (origin) of the field in the reference coordinate system
   */
  var position: CGPoint

  /*! 
   The region property is the domain of the field's effect. No force is applied to objects outside the region.
   The default region is the infiniteRegion
   */
  var region: UIRegion

  /*! Strength scaling value. default 1.0 */
  var strength: CGFloat

  /*! The falloff exponent used to calculate field strength at a distance.
   Falloff starts at the minimum radius.
   The default exponent is zero, which results in a uniform field with no falloff.
   @see minimumRadius
   */
  var falloff: CGFloat

  /*! Minimum radius of effect. Default is very small. */
  var minimumRadius: CGFloat

  /*! The direction of the field.
   If the field is non-directional, a zero vector will be returned
   @see linearGravityFieldWithVector:direction
   @see velocityFieldWithVector:direction
   */
  var direction: CGVector

  /*! Fields without a smoothness component will return 0
   @see noiseFieldWithSmoothness:smoothness:animationSpeed
   @see turbulenceFieldWithSmoothness:smoothness:animationSpeed
   */
  var smoothness: CGFloat

  /*! Fields that can be animated can have non zero values. A value of 2 will animate twice as fast as a value of 1.
   @see noiseFieldWithSmoothness:smoothness:animationSpeed
   @see turbulenceFieldWithSmoothness:smoothness:animationSpeed
   */
  var animationSpeed: CGFloat

  /*!
   Slows an object proportionally to the object’s velocity.
   Use this to simulate effects such as friction from motion through the air.
   */
  class func dragField() -> Self

  /*!
   Applies a force tangential to the direction from the sample point to the field's position.
   The force will be CCW to the direction. Make the strength negative to apply force in the CW direction.
   Amount is proportional to distance from center and the object's mass. This can be used to create rotational effects.
   */
  class func vortexField() -> Self

  /*!
   Applies a force in the direction of the origin of the field in local space. To repel objects, use a negative strength.
   The force is proportional to the distance from the field origin. Varies with the mass of the object according to F = ma
   @param position the origin of the field
   @see position
   */
  class func radialGravityFieldWithPosition(position: CGPoint) -> Self

  /*!
   Applies a force in the direction of the vector in the local space. To repel objects, use a negative strength.
   The force is the same everywhere in the field. Varies with the mass of the object according to F = ma
   @param direction The direction the force is applied in the x,y plane. The length of the direction vector is multiplied by 
   the field's strength property to get the final calculated force. All components of the direction vector are used to calculate the length.
   @see direction
   */
  class func linearGravityFieldWithVector(direction: CGVector) -> Self

  /*!
   Uses the supplied velocity vector for any object entering the field’s region of effect.
   Velocity fields override the effect of any other acceleration applied to the body.
   @param direction The directed velocity that will be applied to the body.
   @see direction
   */
  class func velocityFieldWithVector(direction: CGVector) -> Self

  /*!
   A time varying differentiable Perlin simplex noise field. By default a smooth noise is calculated,
   and the field is time varying. To freeze the noise in place, set animationSpeed to 0.0. Mass is ignored.
   @param smoothness value of 0 means as noisy as possible, 1 means as smooth as possible
   @param animationSpeed is the general field rate of change in Hz
   @see smoothness
   @see animationSpeed
   */
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self

  /*!
   Just like Noise, except the strength of the noise is proportional to the velocity of the object in the field.
   @param smoothness value of 0 means as noisy as possible, 1 means as smooth as possible
   @param animationSpeed is the general field rate of change in Hz
   @see smoothness
   @see animationSpeed
   */
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> Self

  /*!
   A Hooke’s law force - a force linearly proportional to distance from the center of the field. An object in this
   field will oscillate with a period proportional to the inverse of the mass.
   An example use is to keep objects confined to a particular region.
   */
  class func springField() -> Self

  /*!
   A force proportional to the charge on the object. A charge property has been
   added to UIDynamicItemBehavior to accomplish this. An example use of this field is to make objects behavior differently
   from one another when they enter a region, or to make an object's behavior different than its mass based behavior
   This field models the first part of the Lorentz equation, F = qE
   */
  class func electricField() -> Self

  /*!
   The magnetic field is a uniform field in the positive-z direction (coming out of the screen). When the velocity 
   of a charged dynamic item is perpendicular to the uniform magnetic field, the item feels a resulting force normal
   to both the velocity and the B field. This results CCW circular motion. You can adjust the strength of the B field
   to be negative which will result in circular motion being CW instead of CCW. An example use of this field is to make 
   objects behavior differently from one another when they enter a region, or to make an object's behavior different 
   than its mass based behavior. This field models the second part of the Lorentz equation, F = qvB
   */
  class func magneticField() -> Self

  /*!
   A field force with a custom force evaluator.
   @param field the field being evaluated
   @param position The location to evaluate the force at
   @param velocity The velocity to be considered during force evaluation. Useful for calculating drag.
   @param mass The mass to be taken into account during force evaluation
   @param charge The charge to be taken into account during force evaluation
   @param deltaTime The current time step
   */
  class func fieldWithEvaluationBlock(block: (UIFieldBehavior, CGPoint, CGVector, CGFloat, CGFloat, NSTimeInterval) -> CGVector) -> Self
}
@available(tvOS 9.0, *)
struct UIFocusHeading : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Up: UIFocusHeading { get }
  static var Down: UIFocusHeading { get }
  static var Left: UIFocusHeading { get }
  static var Right: UIFocusHeading { get }
  static var Next: UIFocusHeading { get }
  static var Previous: UIFocusHeading { get }
}

/// UIFocusUpdateContexts provide information relevant to a specific focus update from one view to another. They are ephemeral objects that are usually discarded after the update is finished.
@available(tvOS 9.0, *)
class UIFocusUpdateContext : NSObject {

  /// The view that was focused before the update. May be nil if no view was focused, such as when setting initial focus.
  weak var previouslyFocusedView: @sil_weak UIView? { get }

  /// The view that will be focused after the update. May be nil if no view will be focused.
  weak var nextFocusedView: @sil_weak UIView? { get }

  /// The focus heading in which the update is occuring.
  var focusHeading: UIFocusHeading { get }
  init()
}

/// UIFocusEnvironments represent branches of the view hierarchy participating in the focus system.
@available(tvOS 9.0, *)
protocol UIFocusEnvironment : NSObjectProtocol {

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}

/// UIFocusGuides are UILayoutGuide subclasses that participate in the focus system from within their owning view. A UIFocusGuide may be used to expose non-view areas as focusable.
@available(tvOS 9.0, *)
class UIFocusGuide : UILayoutGuide {

  /// If disabled, UIFocusGuides are ignored by the focus engine, but still participate in layout. Modifying this flag allows you to conditionally enable or disable certain focus behaviors. YES by default.
  var enabled: Bool

  /// Setting a preferred focused view marks this guide's layoutFrame as focusable, and if focused, redirects focus to its preferred focused view. If nil, this guide is effectively disabled.
  weak var preferredFocusedView: @sil_weak UIView?
  init()
  init?(coder aDecoder: NSCoder)
}

/// UIFocusAnimationCoordinator is used to coordinate disparate animations that are related to a focus update.
@available(tvOS 9.0, *)
class UIFocusAnimationCoordinator : NSObject {

  /**
   Specifies focus-related animations that should be coordinated with the animations of the focusing or un-focusing view.
   
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the main animation completes.
   (Note that this may not be after all the coordinated animations specified by the call complete if the duration is not inherited.)
   
   It is perfectly legitimate to only specify a completion block.
   */
  func addCoordinatedAnimations(animations: (() -> Void)?, completion: (() -> Void)?)
  init()
}
@available(tvOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(tvOS 7.0, *)
  class func preferredFontForTextStyle(style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(familyName: String) -> [String]
  class func systemFontOfSize(fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(fontSize: CGFloat) -> UIFont
  @available(tvOS 8.2, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(tvOS 9.0, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(tvOS 4.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func fontWithSize(fontSize: CGFloat) -> UIFont
  @available(tvOS 7.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(tvOS 7.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(tvOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 7.0, *)
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
@available(tvOS 7.0, *)
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
  func fontDescriptorByAddingAttributes(attributes: [String : AnyObject]) -> UIFontDescriptor
  func fontDescriptorWithSymbolicTraits(symbolicTraits: UIFontDescriptorSymbolicTraits) -> UIFontDescriptor
  func fontDescriptorWithSize(newPointSize: CGFloat) -> UIFontDescriptor
  func fontDescriptorWithMatrix(matrix: CGAffineTransform) -> UIFontDescriptor
  func fontDescriptorWithFace(newFace: String) -> UIFontDescriptor
  func fontDescriptorWithFamily(newFamily: String) -> UIFontDescriptor
  @available(tvOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(tvOS 7.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorNameAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorFaceAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorSizeAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(tvOS 7.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(tvOS 7.0, *)
let UIFontSymbolicTrait: String
@available(tvOS 7.0, *)
let UIFontWeightTrait: String
@available(tvOS 7.0, *)
let UIFontWidthTrait: String
@available(tvOS 7.0, *)
let UIFontSlantTrait: String
@available(tvOS 8.2, *)
let UIFontWeightUltraLight: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightThin: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightLight: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightRegular: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightMedium: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightSemibold: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightBold: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightHeavy: CGFloat
@available(tvOS 8.2, *)
let UIFontWeightBlack: CGFloat
@available(tvOS 7.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(tvOS 7.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(tvOS 9.0, *)
let UIFontTextStyleTitle1: String
@available(tvOS 9.0, *)
let UIFontTextStyleTitle2: String
@available(tvOS 9.0, *)
let UIFontTextStyleTitle3: String
@available(tvOS 7.0, *)
let UIFontTextStyleHeadline: String
@available(tvOS 7.0, *)
let UIFontTextStyleSubheadline: String
@available(tvOS 7.0, *)
let UIFontTextStyleBody: String
@available(tvOS 9.0, *)
let UIFontTextStyleCallout: String
@available(tvOS 7.0, *)
let UIFontTextStyleFootnote: String
@available(tvOS 7.0, *)
let UIFontTextStyleCaption1: String
@available(tvOS 7.0, *)
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
@available(tvOS 7.0, *)
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
  /*not inherited*/ init(CGPoint point: CGPoint)
  /*not inherited*/ init(CGVector vector: CGVector)
  /*not inherited*/ init(CGSize size: CGSize)
  /*not inherited*/ init(CGRect rect: CGRect)
  /*not inherited*/ init(CGAffineTransform transform: CGAffineTransform)
  /*not inherited*/ init(UIEdgeInsets insets: UIEdgeInsets)
  @available(tvOS 5.0, *)
  /*not inherited*/ init(UIOffset insets: UIOffset)
  func CGPointValue() -> CGPoint
  func CGVectorValue() -> CGVector
  func CGSizeValue() -> CGSize
  func CGRectValue() -> CGRect
  func CGAffineTransformValue() -> CGAffineTransform
  func UIEdgeInsetsValue() -> UIEdgeInsets
  @available(tvOS 5.0, *)
  func UIOffsetValue() -> UIOffset
}
extension NSCoder {
  func encodeCGPoint(point: CGPoint, forKey key: String)
  func encodeCGVector(vector: CGVector, forKey key: String)
  func encodeCGSize(size: CGSize, forKey key: String)
  func encodeCGRect(rect: CGRect, forKey key: String)
  func encodeCGAffineTransform(transform: CGAffineTransform, forKey key: String)
  func encodeUIEdgeInsets(insets: UIEdgeInsets, forKey key: String)
  @available(tvOS 5.0, *)
  func encodeUIOffset(offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(key: String) -> CGPoint
  func decodeCGVectorForKey(key: String) -> CGVector
  func decodeCGSizeForKey(key: String) -> CGSize
  func decodeCGRectForKey(key: String) -> CGRect
  func decodeCGAffineTransformForKey(key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(key: String) -> UIEdgeInsets
  @available(tvOS 5.0, *)
  func decodeUIOffsetForKey(key: String) -> UIOffset
}
enum UIGestureRecognizerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Possible
  case Began
  case Changed
  case Ended
  case Cancelled
  case Failed
  static var Recognized: UIGestureRecognizerState { get }
}
@available(tvOS 3.2, *)
class UIGestureRecognizer : NSObject {
  init(target: AnyObject?, action: Selector)
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?, action: Selector)
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var enabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  @available(tvOS 9.0, *)
  var allowedTouchTypes: [NSNumber]
  @available(tvOS 9.0, *)
  var allowedPressTypes: [NSNumber]
  func requireGestureRecognizerToFail(otherGestureRecognizer: UIGestureRecognizer)
  func locationInView(view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(touchIndex: Int, inView view: UIView?) -> CGPoint
  convenience init()
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(tvOS 3.2, *)
  optional func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
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
@available(tvOS 4.0, *)
func UIGraphicsBeginImageContextWithOptions(size: CGSize, _ opaque: Bool, _ scale: CGFloat)
func UIGraphicsGetImageFromCurrentImageContext() -> UIImage!
func UIGraphicsEndImageContext()
@available(tvOS 3.2, *)
func UIGraphicsBeginPDFContextToFile(path: String, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?) -> Bool
@available(tvOS 3.2, *)
func UIGraphicsBeginPDFContextToData(data: NSMutableData, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?)
@available(tvOS 3.2, *)
func UIGraphicsEndPDFContext()
@available(tvOS 3.2, *)
func UIGraphicsBeginPDFPage()
@available(tvOS 3.2, *)
func UIGraphicsBeginPDFPageWithInfo(bounds: CGRect, _ pageInfo: [NSObject : AnyObject]?)
@available(tvOS 3.2, *)
func UIGraphicsGetPDFContextBounds() -> CGRect
@available(tvOS 3.2, *)
func UIGraphicsSetPDFContextURLForRect(url: NSURL, _ rect: CGRect)
@available(tvOS 3.2, *)
func UIGraphicsAddPDFContextDestinationAtPoint(name: String, _ point: CGPoint)
@available(tvOS 3.2, *)
func UIGraphicsSetPDFContextDestinationForRect(name: String, _ rect: CGRect)
@available(tvOS 7.0, *)
class UIGravityBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var gravityDirection: CGVector
  var angle: CGFloat
  var magnitude: CGFloat
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Allow
  case Deny
}
@available(tvOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWithIdentifier(restrictionIdentifier: String, didChangeState newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
}
@available(tvOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
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
@available(tvOS 7.0, *)
enum UIImageRenderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case AlwaysOriginal
  case AlwaysTemplate
}

/*!
 UITabBarController manages a button bar and transition view, for an application with multiple top-level modes.
 
 To use in your application, add its view to the view hierarchy, then add top-level view controllers in order.
 Most clients will not need to subclass UITabBarController.

 If more than five view controllers are added to a tab bar controller, only the first four will display.
 The rest will be accessible under an automatically generated More item.
 
 UITabBarController is rotatable if all of its view controllers are rotatable.
 */
@available(tvOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  /*not inherited*/ init?(named name: String)
  @available(tvOS 8.0, *)
  /*not inherited*/ init?(named name: String, inBundle bundle: NSBundle?, compatibleWithTraitCollection traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: NSData)
  @available(tvOS 6.0, *)
  init?(data: NSData, scale: CGFloat)
  init(CGImage cgImage: CGImage)
  @available(tvOS 4.0, *)
  init(CGImage cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  @available(tvOS 5.0, *)
  init(CIImage ciImage: CIImage)
  @available(tvOS 6.0, *)
  init(CIImage ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var CGImage: CGImage? { get }
  @available(tvOS 5.0, *)
  var CIImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 5.0, *)
  class func animatedImageNamed(name: String, duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: NSTimeInterval) -> UIImage?
  @available(tvOS 6.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  class func animatedImageWithImages(images: [UIImage], duration: NSTimeInterval) -> UIImage?
  @available(tvOS 5.0, *)
  var images: [UIImage]? { get }
  @available(tvOS 5.0, *)
  var duration: NSTimeInterval { get }
  func drawAtPoint(point: CGPoint)
  func drawAtPoint(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawInRect(rect: CGRect)
  func drawInRect(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternInRect(rect: CGRect)
  @available(tvOS 5.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(tvOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(tvOS 6.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(tvOS 6.0, *)
  func imageWithAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(tvOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(tvOS 7.0, *)
  func imageWithRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(tvOS 7.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(tvOS 8.0, *)
  @NSCopying var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  var imageAsset: UIImageAsset? { get }
  @available(tvOS 9.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(tvOS 9.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(tvOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension UIImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
extension UIImage {
}
extension CIImage {
  @available(tvOS 5.0, *)
  init?(image: UIImage)
  @available(tvOS 5.0, *)
  init?(image: UIImage, options: [NSObject : AnyObject]?)
}
func UIImagePNGRepresentation(image: UIImage) -> NSData?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> NSData?
@available(tvOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func imageWithTraitCollection(traitCollection: UITraitCollection) -> UIImage
  func registerImage(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWithTraitCollection(traitCollection: UITraitCollection)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(tvOS 2.0, *)
class UIImageView : UIView {
  init(image: UIImage?)
  @available(tvOS 3.0, *)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  @available(tvOS 3.0, *)
  var highlightedImage: UIImage?
  var userInteractionEnabled: Bool
  @available(tvOS 3.0, *)
  var highlighted: Bool
  var animationImages: [UIImage]?
  @available(tvOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: NSTimeInterval
  var animationRepeatCount: Int
  @available(tvOS 7.0, *)
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  @available(tvOS 9.0, *)
  var adjustsImageWhenAncestorFocused: Bool
  @available(tvOS 9.0, *)
  var focusedFrameGuide: UILayoutGuide { get }
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(tvOS 7.0, *)
enum UIInputViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Keyboard
}
@available(tvOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputViewStyle { get }
  @available(tvOS 9.0, *)
  var allowsSelfSizing: Bool
  init(frame: CGRect, inputViewStyle: UIInputViewStyle)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITextDocumentProxy : UIKeyInput {
  var documentContextBeforeInput: String? { get }
  var documentContextAfterInput: String? { get }
  func adjustTextPositionByCharacterOffset(offset: Int)
}
@available(tvOS 8.0, *)
class UIInputViewController : UIViewController, UITextInputDelegate {
  var inputView: UIInputView?
  var textDocumentProxy: UITextDocumentProxy { get }
  var primaryLanguage: String?
  func dismissKeyboard()
  func advanceToNextInputMode()
  func requestSupplementaryLexiconWithCompletion(completionHandler: (UILexicon) -> Void)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 8.0, *)
  func selectionWillChange(textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func selectionDidChange(textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func textWillChange(textInput: UITextInput?)
  @available(tvOS 8.0, *)
  func textDidChange(textInput: UITextInput?)
}
@available(tvOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Compact
  case Regular
}
extension UIColor {
}
extension UIFont {
}
@available(tvOS 2.0, *)
class UILabel : UIView, NSCoding {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var highlightedTextColor: UIColor?
  var highlighted: Bool
  var userInteractionEnabled: Bool
  var enabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  @available(tvOS 6.0, *)
  var minimumScaleFactor: CGFloat
  @available(tvOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawTextInRect(rect: CGRect)
  @available(tvOS 6.0, *)
  var preferredMaxLayoutWidth: CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(tvOS 9.0, *)
class UILayoutGuide : NSObject, NSCoding {
  var layoutFrame: CGRect { get }
  weak var owningView: @sil_weak UIView?
  var identifier: String
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  init()
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 3.2, *)
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var minimumPressDuration: CFTimeInterval
  var allowableMovement: CGFloat
  init(target: AnyObject?, action: Selector)
  convenience init()
}

/*! UIMotionEffect is an abstract superclass which declaratively represents a rendering
    effect that depends on the motion of the device. Given some device pose, subclassers
    provide relative values which are to be applied to the keypaths of the target's view.
 
    Subclasses must implement conformance for NSCopying and NSCoding. */
@available(tvOS 7.0, *)
class UIMotionEffect : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)

  /*! Abstract method. Given the `viewerOffset`, this method should compute a set of key paths
      and relative values pairs which will represent the effect of the device's motion on
      the target view. The return value is a dictionary whose keys and values are these
      key paths (as NSStrings) and relative values, respectively.
  
      The `viewerOffset` is an estimate of the viewer's position relative to direction the
      screen's facing. Values in each dimension range from -1 to 1. Facing straight at the
      viewer is (0, 0). Tilting the phone to the right produces a more positive horizontal
      value; tilting the phone down produces a more positive vertical value.
  
      `keyPaths` should be expressed relative to the effect's target view. Only key paths
      which would animate if set in an animation block may be targeted by motion effects.
  
      Example return value: `@{ @"center": [NSValue 
   valueFromCGPoint:CGPointMake(3.4, 1.2)],
                                @"layer.shadowOffset.x": @(-1.1) }` */
  func keyPathsAndRelativeValuesForViewerOffset(viewerOffset: UIOffset) -> [String : AnyObject]?
  @available(tvOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
enum UIInterpolatingMotionEffectType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! Tracks the device being tilted left/right relative to the viewer. The minimum
      relative values maps to the device being tilted all the way to the left, the
      maximum to the right. */
  case TiltAlongHorizontalAxis

  /*! Tracks the device being tilted up/down relative to the viewer. The minimum
      relative values maps to the device being tilted all the way down, the maximum
      all the way up. */
  case TiltAlongVerticalAxis
}

/*! This motion effect maps movement of a particular type (e.g. left/right tilt) to an
    interpolated output between two relative values provided by the client. Uses Core
    Animation's implementation of interpolation for all the standard types.
 
    `keyPath` should be expressed relative to the effect's target view. */
@available(tvOS 7.0, *)
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath: String, type: UIInterpolatingMotionEffectType)
  init?(coder aDecoder: NSCoder)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffectType { get }
  var minimumRelativeValue: AnyObject?
  var maximumRelativeValue: AnyObject?
  convenience init()
}

/*! Behaves like CAAnimationGroup. Merges key/value pairs of constituent
    using Core Animation's implementations of addition for all the standard types. */
@available(tvOS 7.0, *)
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(tvOS 3.0, *)
  var translucent: Bool
  func pushNavigationItem(item: UINavigationItem, animated: Bool)
  func popNavigationItemAnimated(animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(items: [UINavigationItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImageForBarPosition(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImageForBarMetrics(barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 6.0, *)
  var shadowImage: UIImage?
  @available(tvOS 5.0, *)
  var titleTextAttributes: [String : AnyObject]?
  @available(tvOS 5.0, *)
  func setTitleVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func titleVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPushItem item: UINavigationItem) -> Bool
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPushItem item: UINavigationItem)
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPopItem item: UINavigationItem) -> Bool
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPopItem item: UINavigationItem)
}
@available(tvOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  init?(coder: NSCoder)
  var title: String?
  var titleView: UIView?
  @available(tvOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(tvOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(tvOS 5.0, *)
  func setLeftBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  @available(tvOS 5.0, *)
  func setRightBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  func setRightBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}

/*!
 UINavigationController manages a stack of view controllers and a navigation bar.
 It performs horizontal view transitions for pushed and popped views while keeping the navigation bar in sync.
 
 Most clients will not need to subclass UINavigationController.
 
 If a navigation controller is nested in a tabbar controller, it uses the title and toolbar attributes of the bottom view controller on the stack.
 
 UINavigationController is rotatable if its top view controller is rotatable.
 Navigation between controllers with non-uniform rotatability is currently not supported.
*/
enum UINavigationControllerOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Push
  case Pop
}
let UINavigationControllerHideShowBarDuration: CGFloat

/*!
 UITabBarController manages a button bar and transition view, for an application with multiple top-level modes.
 
 To use in your application, add its view to the view hierarchy, then add top-level view controllers in order.
 Most clients will not need to subclass UITabBarController.

 If more than five view controllers are added to a tab bar controller, only the first four will display.
 The rest will be accessible under an automatically generated More item.
 
 UITabBarController is rotatable if all of its view controllers are rotatable.
 */
@available(tvOS 2.0, *)
class UINavigationController : UIViewController {
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(viewController: UIViewController, animated: Bool)
  func popViewControllerAnimated(animated: Bool) -> UIViewController?
  func popToViewController(viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(tvOS 3.0, *)
  func setViewControllers(viewControllers: [UIViewController], animated: Bool)
  var navigationBarHidden: Bool
  func setNavigationBarHidden(hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  @available(tvOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool)
  @available(tvOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool)
  @available(tvOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
}
@available(tvOS 4.0, *)
class UINib : NSObject {
  /*not inherited*/ init(nibName name: String, bundle bundleOrNil: NSBundle?)
  /*not inherited*/ init(data: NSData, bundle bundleOrNil: NSBundle?)
  func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]?) -> [AnyObject]
  init()
}
@available(tvOS 3.0, *)
let UINibExternalObjects: String
extension NSBundle {
  func loadNibNamed(name: String!, owner: AnyObject!, options: [NSObject : AnyObject]!) -> [AnyObject]!
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(tvOS 8.0, *)
  class func prepareForInterfaceBuilder()
  @available(tvOS 8.0, *)
  func prepareForInterfaceBuilder()
}
@available(tvOS 2.0, *)
class UIPageControl : UIControl {
  var numberOfPages: Int
  var currentPage: Int
  var hidesForSinglePage: Bool
  var defersCurrentPageDisplay: Bool
  func updateCurrentPageDisplay()
  func sizeForNumberOfPages(pageCount: Int) -> CGSize
  @available(tvOS 6.0, *)
  var pageIndicatorTintColor: UIColor?
  @available(tvOS 6.0, *)
  var currentPageIndicatorTintColor: UIColor?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIPageViewControllerNavigationOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
enum UIPageViewControllerSpineLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Min
  case Mid
  case Max
}
enum UIPageViewControllerNavigationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Reverse
}
enum UIPageViewControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PageCurl
  case Scroll
}
let UIPageViewControllerOptionSpineLocationKey: String
@available(tvOS 6.0, *)
let UIPageViewControllerOptionInterPageSpacingKey: String
@available(tvOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : AnyObject]?)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var doubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(viewControllers: [UIViewController]?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)?)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionToViewControllers pendingViewControllers: [UIViewController])
  @available(tvOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  @available(tvOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  @available(tvOS 6.0, *)
  optional func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
  @available(tvOS 6.0, *)
  optional func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
}
@available(tvOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  func translationInView(view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, inView view: UIView?)
  func velocityInView(view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
extension UIPasteboard {
}
protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
@available(tvOS 5.0, *)
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  @available(tvOS 6.0, *)
  class func wantsDefaultContentAppearance() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 5.0, *)
  class func arrowBase() -> CGFloat
  @available(tvOS 5.0, *)
  class func contentViewInsets() -> UIEdgeInsets
  @available(tvOS 5.0, *)
  class func arrowHeight() -> CGFloat
}
@available(tvOS, introduced=3.2, deprecated=9.0, message="UIPopoverController is deprecated. Popovers are now implemented as UIViewController presentations. Use a modal presentation style of UIModalPresentationPopover and UIPopoverPresentationController.")
class UIPopoverController : NSObject, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentViewController(viewController: UIViewController, animated: Bool)
  var popoverContentSize: CGSize
  func setPopoverContentSize(size: CGSize, animated: Bool)
  var popoverVisible: Bool { get }
  var popoverArrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func presentPopoverFromRect(rect: CGRect, inView view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func presentPopoverFromBarButtonItem(item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func dismissPopoverAnimated(animated: Bool)
  @available(tvOS 7.0, *)
  @NSCopying var backgroundColor: UIColor?
  @available(tvOS 5.0, *)
  var popoverLayoutMargins: UIEdgeInsets
  @available(tvOS 5.0, *)
  var popoverBackgroundViewClass: AnyClass?
  init()
}
protocol UIPopoverControllerDelegate : NSObjectProtocol {
  @available(tvOS, introduced=3.2, deprecated=9.0)
  optional func popoverControllerShouldDismissPopover(popoverController: UIPopoverController) -> Bool
  @available(tvOS, introduced=3.2, deprecated=9.0)
  optional func popoverControllerDidDismissPopover(popoverController: UIPopoverController)
  @available(tvOS, introduced=7.0, deprecated=9.0)
  optional func popoverController(popoverController: UIPopoverController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView?>)
}
struct UIPopoverArrowDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Up: UIPopoverArrowDirection { get }
  static var Down: UIPopoverArrowDirection { get }
  static var Left: UIPopoverArrowDirection { get }
  static var Right: UIPopoverArrowDirection { get }
  static var Any: UIPopoverArrowDirection { get }
  static var Unknown: UIPopoverArrowDirection { get }
}
extension UIViewController {
  @available(tvOS 3.2, *)
  var modalInPopover: Bool
}
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle
  @available(tvOS 8.3, *)
  optional func adaptivePresentationStyleForPresentationController(controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(tvOS 8.0, *)
  optional func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(tvOS 8.3, *)
  optional func presentationController(presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
@available(tvOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  @available(tvOS 8.3, *)
  func adaptivePresentationStyleForTraitCollection(traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  func presentedView() -> UIView?
  func frameOfPresentedViewInContainerView() -> CGRect
  func shouldPresentInFullscreen() -> Bool
  func shouldRemovePresentersView() -> Bool
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
  init()
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(tvOS 9.0, *)
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(tvOS 9.0, *)
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
@available(tvOS 9.0, *)
enum UIPressPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Changed
  case Stationary
  case Ended
  case Cancelled
}
@available(tvOS 9.0, *)
enum UIPressType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UpArrow
  case DownArrow
  case LeftArrow
  case RightArrow
  case Select
  case Menu
  case PlayPause
}
@available(tvOS 9.0, *)
class UIPress : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UIPressPhase { get }
  var type: UIPressType { get }
  var window: UIWindow? { get }
  var responder: UIResponder? { get }
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  var force: CGFloat { get }
  init()
}
@available(tvOS 9.0, *)
class UIPressesEvent : UIEvent {
  func allPresses() -> Set<UIPress>
  func pressesForGestureRecognizer(gesture: UIGestureRecognizer) -> Set<UIPress>
  init()
}
var UIPrintingNotAvailableError: Int { get }
var UIPrintNoContentError: Int { get }
var UIPrintUnknownImageFormatError: Int { get }
var UIPrintJobFailedError: Int { get }
extension UIView {
}
extension UIPrintPaper {
}
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, NSError?) -> Void
enum UIProgressViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
}
@available(tvOS 2.0, *)
class UIProgressView : UIView, NSCoding {
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init(progressViewStyle style: UIProgressViewStyle)
  var progressViewStyle: UIProgressViewStyle
  var progress: Float
  @available(tvOS 5.0, *)
  var progressTintColor: UIColor?
  @available(tvOS 5.0, *)
  var trackTintColor: UIColor?
  @available(tvOS 5.0, *)
  var progressImage: UIImage?
  @available(tvOS 5.0, *)
  var trackImage: UIImage?
  @available(tvOS 5.0, *)
  func setProgress(progress: Float, animated: Bool)
  @available(tvOS 9.0, *)
  var observedProgress: NSProgress?
  convenience init()
}
@available(tvOS 7.0, *)
enum UIPushBehaviorMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Continuous
  case Instantaneous
}
@available(tvOS 7.0, *)
class UIPushBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem], mode: UIPushBehaviorMode)
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  func targetOffsetFromCenterForItem(item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(o: UIOffset, forItem item: UIDynamicItem)
  var mode: UIPushBehaviorMode { get }
  var active: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
@available(tvOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {

  /*! A shared infinite region
   */
  class func infiniteRegion() -> Self

  /*! Create a circular region with radius
   */
  init(radius: CGFloat)

  /*! Create a rectangular region of size.
   */
  init(size: CGSize)

  /*! Create a new region that is the inverse of the current region.
   The inverse of the infiniteRegion is an empty region.
   Subclasses of UIRegion need to provide an implementation of inverseRegion.
   */
  func inverseRegion() -> Self

  /*! Create a new region that is the original region plus the supplied region
   */
  func regionByUnionWithRegion(region: UIRegion) -> Self

  /*! Create a new region that is the original region minus the supplied region
   */
  func regionByDifferenceFromRegion(region: UIRegion) -> Self

  /*! Create a new region that is the region covered by the original region and the supplied region
   */
  func regionByIntersectionWithRegion(region: UIRegion) -> Self

  /*! Test for containment
   */
  func containsPoint(point: CGPoint) -> Bool
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 2.0, *)
class UIResponder : NSObject {
  func nextResponder() -> UIResponder?
  func canBecomeFirstResponder() -> Bool
  func becomeFirstResponder() -> Bool
  func canResignFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func isFirstResponder() -> Bool
  func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?)
  @available(tvOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(touches: Set<NSObject>)
  @available(tvOS 9.0, *)
  func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 9.0, *)
  func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(tvOS 3.0, *)
  func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(tvOS 3.0, *)
  func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(tvOS 4.0, *)
  func remoteControlReceivedWithEvent(event: UIEvent?)
  @available(tvOS 3.0, *)
  func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
  @available(tvOS 7.0, *)
  func targetForAction(action: Selector, withSender sender: AnyObject?) -> AnyObject?
  @available(tvOS 3.0, *)
  var undoManager: NSUndoManager? { get }
  init()
}
@available(tvOS 7.0, *)
struct UIKeyModifierFlags : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var AlphaShift: UIKeyModifierFlags { get }
  static var Shift: UIKeyModifierFlags { get }
  static var Control: UIKeyModifierFlags { get }
  static var Alternate: UIKeyModifierFlags { get }
  static var Command: UIKeyModifierFlags { get }
  static var NumericPad: UIKeyModifierFlags { get }
}
@available(tvOS 7.0, *)
class UIKeyCommand : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  @available(tvOS 9.0, *)
  var discoverabilityTitle: String?
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  @available(tvOS 7.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 7.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension UIResponder {
  @available(tvOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension NSObject {
  @available(tvOS 3.0, *)
  class func cut(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func cut(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func copy(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func copy(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func paste(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func paste(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func select(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func select(sender: AnyObject?)
  @available(tvOS 3.0, *)
  class func selectAll(sender: AnyObject?)
  @available(tvOS 3.0, *)
  func selectAll(sender: AnyObject?)
  @available(tvOS 3.2, *)
  class func delete(sender: AnyObject?)
  @available(tvOS 3.2, *)
  func delete(sender: AnyObject?)
  @available(tvOS 5.0, *)
  class func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(tvOS 5.0, *)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(tvOS 5.0, *)
  class func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(tvOS 5.0, *)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleBoldface(sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleBoldface(sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleItalics(sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleItalics(sender: AnyObject?)
  @available(tvOS 6.0, *)
  class func toggleUnderline(sender: AnyObject?)
  @available(tvOS 6.0, *)
  func toggleUnderline(sender: AnyObject?)
  @available(tvOS 7.0, *)
  class func increaseSize(sender: AnyObject?)
  @available(tvOS 7.0, *)
  func increaseSize(sender: AnyObject?)
  @available(tvOS 7.0, *)
  class func decreaseSize(sender: AnyObject?)
  @available(tvOS 7.0, *)
  func decreaseSize(sender: AnyObject?)
}
extension UIResponder {
  @available(tvOS 3.2, *)
  var inputView: UIView? { get }
  @available(tvOS 3.2, *)
  var inputAccessoryView: UIView? { get }
  @available(tvOS 8.0, *)
  var inputViewController: UIInputViewController? { get }
  @available(tvOS 8.0, *)
  var inputAccessoryViewController: UIInputViewController? { get }
  @available(tvOS 7.0, *)
  var textInputMode: UITextInputMode? { get }
  @available(tvOS 7.0, *)
  var textInputContextIdentifier: String? { get }
  @available(tvOS 7.0, *)
  class func clearTextInputContextIdentifier(identifier: String)
  @available(tvOS 3.2, *)
  func reloadInputViews()
}
@available(tvOS 7.0, *)
let UIKeyInputUpArrow: String
@available(tvOS 7.0, *)
let UIKeyInputDownArrow: String
@available(tvOS 7.0, *)
let UIKeyInputLeftArrow: String
@available(tvOS 7.0, *)
let UIKeyInputRightArrow: String
@available(tvOS 7.0, *)
let UIKeyInputEscape: String
extension UIResponder {
  @available(tvOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(tvOS 8.0, *)
  func updateUserActivityState(activity: NSUserActivity)
  @available(tvOS 8.0, *)
  func restoreUserActivityState(activity: NSUserActivity)
}
@available(tvOS 3.2, *)
let UIScreenDidConnectNotification: String
@available(tvOS 3.2, *)
let UIScreenDidDisconnectNotification: String
@available(tvOS 3.2, *)
let UIScreenModeDidChangeNotification: String
@available(tvOS 5.0, *)
let UIScreenBrightnessDidChangeNotification: String
enum UIScreenOverscanCompensation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Scale
  case InsetBounds
  @available(tvOS 9.0, *)
  case None
  @available(tvOS, introduced=5.0, deprecated=9.0, message="Use UIScreenOverscanCompensationNone")
  static var InsetApplicationFrame: UIScreenOverscanCompensation { get }
}
@available(tvOS 2.0, *)
class UIScreen : NSObject, UITraitEnvironment {
  @available(tvOS 3.2, *)
  class func screens() -> [UIScreen]
  class func mainScreen() -> UIScreen
  var bounds: CGRect { get }
  @available(tvOS 4.0, *)
  var scale: CGFloat { get }
  @available(tvOS 3.2, *)
  var currentMode: UIScreenMode? { get }
  @available(tvOS 5.0, *)
  var overscanCompensation: UIScreenOverscanCompensation
  @available(tvOS 9.0, *)
  var overscanCompensationInsets: UIEdgeInsets { get }
  @available(tvOS 4.3, *)
  var mirroredScreen: UIScreen? { get }
  @available(tvOS 8.0, *)
  var coordinateSpace: UICoordinateSpace { get }
  @available(tvOS 8.0, *)
  var fixedCoordinateSpace: UICoordinateSpace { get }
  @available(tvOS 8.0, *)
  var nativeBounds: CGRect { get }
  @available(tvOS 8.0, *)
  var nativeScale: CGFloat { get }
  @available(tvOS 4.0, *)
  func displayLinkWithTarget(target: AnyObject, selector sel: Selector) -> CADisplayLink?
  @available(tvOS 9.0, *)
  weak var focusedView: @sil_weak UIView? { get }
  @available(tvOS 9.0, *)
  var supportsFocus: Bool { get }
  init()
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
extension UIScreen {
  @available(tvOS 7.0, *)
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
}
@available(tvOS 3.2, *)
class UIScreenMode : NSObject {
  var size: CGSize { get }
  var pixelAspectRatio: CGFloat { get }
  init()
}
enum UIScrollViewIndicatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  case White
}
@available(tvOS 7.0, *)
enum UIScrollViewKeyboardDismissMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case OnDrag
  case Interactive
}
@available(tvOS 3.0, *)
let UIScrollViewDecelerationRateNormal: CGFloat
@available(tvOS 3.0, *)
let UIScrollViewDecelerationRateFast: CGFloat
@available(tvOS 2.0, *)
class UIScrollView : UIView, NSCoding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var directionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var scrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  @available(tvOS 3.0, *)
  var decelerationRate: CGFloat
  func setContentOffset(contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var tracking: Bool { get }
  var dragging: Bool { get }
  var decelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelInContentView(view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(tvOS 3.0, *)
  var zoomScale: CGFloat
  @available(tvOS 3.0, *)
  func setZoomScale(scale: CGFloat, animated: Bool)
  @available(tvOS 3.0, *)
  func zoomToRect(rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var zooming: Bool { get }
  var zoomBouncing: Bool { get }
  @available(tvOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(tvOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  @available(tvOS 9.0, *)
  var directionalPressGestureRecognizer: UIGestureRecognizer { get }
  @available(tvOS 7.0, *)
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func scrollViewDidScroll(scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  optional func scrollViewDidZoom(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  optional func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  optional func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  optional func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  optional func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  optional func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  optional func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
enum UISearchBarIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Search
}
@available(tvOS 7.0, *)
enum UISearchBarStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Prominent
  case Minimal
}
@available(tvOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 7.0, *)
  var searchBarStyle: UISearchBarStyle
  @available(tvOS 3.0, *)
  var translucent: Bool
  @available(tvOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(tvOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(tvOS 3.0, *)
  var showsScopeBar: Bool
  var inputAccessoryView: UIView?
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(tvOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImageForBarPosition(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setSearchFieldBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func searchFieldBackgroundImageForState(state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setImage(iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state: UIControlState)
  @available(tvOS 5.0, *)
  func imageForSearchBarIcon(icon: UISearchBarIcon, state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonBackgroundImageForState(state: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonDividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func scopeBarButtonTitleTextAttributesForState(state: UIControlState) -> [String : AnyObject]?
  @available(tvOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  func setPositionAdjustment(adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  @available(tvOS 5.0, *)
  func positionAdjustmentForSearchBarIcon(icon: UISearchBarIcon) -> UIOffset
  @available(tvOS 7.0, *)
  var barPosition: UIBarPosition { get }
  @available(tvOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(tvOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(tvOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(tvOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(tvOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(tvOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(tvOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(tvOS 2.0, *)
  var secureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(tvOS 2.0, *)
  optional func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarTextDidBeginEditing(searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarTextDidEndEditing(searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
  @available(tvOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarSearchButtonClicked(searchBar: UISearchBar)
  @available(tvOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
@available(tvOS 9.0, *)
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func willPresentSearchController(searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func didPresentSearchController(searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func willDismissSearchController(searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func didDismissSearchController(searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func presentSearchController(searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func updateSearchResultsForSearchController(searchController: UISearchController)
}
@available(tvOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var active: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  @available(tvOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 8.0, *)
  func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 8.0, *)
  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 8.0, *)
  func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  @available(tvOS 8.0, *)
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  @available(tvOS 8.0, *)
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  @available(tvOS 8.0, *)
  func animationEnded(transitionCompleted: Bool)
}
var UISegmentedControlNoSegment: Int { get }
enum UISegmentedControlSegment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Left
  case Center
  case Right
  case Alone
}
@available(tvOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(items: [AnyObject]?)
  var momentary: Bool
  var numberOfSegments: Int { get }
  @available(tvOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegmentWithTitle(title: String?, atIndex segment: Int, animated: Bool)
  func insertSegmentWithImage(image: UIImage?, atIndex segment: Int, animated: Bool)
  func removeSegmentAtIndex(segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAtIndex segment: Int)
  func titleForSegmentAtIndex(segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAtIndex segment: Int)
  func imageForSegmentAtIndex(segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAtIndex segment: Int)
  func widthForSegmentAtIndex(segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAtIndex segment: Int)
  func contentOffsetForSegmentAtIndex(segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAtIndex segment: Int)
  func isEnabledForSegmentAtIndex(segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  @available(tvOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func dividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(attributes: [NSObject : AnyObject]?, forState state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributesForState(state: UIControlState) -> [NSObject : AnyObject]?
  @available(tvOS 5.0, *)
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func contentPositionAdjustmentForSegmentType(leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(tvOS 7.0, *)
class UISnapBehavior : UIDynamicBehavior {
  init(item: UIDynamicItem, snapToPoint point: CGPoint)
  @available(tvOS 9.0, *)
  var snapPoint: CGPoint
  var damping: CGFloat
  convenience init()
}
@available(tvOS 8.0, *)
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case PrimaryHidden
  case AllVisible
  case PrimaryOverlay
}
@available(tvOS 8.0, *)
let UISplitViewControllerAutomaticDimension: CGFloat
@available(tvOS 3.2, *)
class UISplitViewController : UIViewController {
  var viewControllers: [UIViewController]
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(tvOS 5.1, *)
  var presentsWithGesture: Bool
  @available(tvOS 8.0, *)
  var collapsed: Bool { get }
  @available(tvOS 8.0, *)
  var preferredDisplayMode: UISplitViewControllerDisplayMode
  @available(tvOS 8.0, *)
  var displayMode: UISplitViewControllerDisplayMode { get }
  @available(tvOS 8.0, *)
  func displayModeButtonItem() -> UIBarButtonItem
  @available(tvOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(tvOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
  @available(tvOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  @available(tvOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UISplitViewControllerDelegate {
  @available(tvOS 8.0, *)
  optional func splitViewController(svc: UISplitViewController, willChangeToDisplayMode displayMode: UISplitViewControllerDisplayMode)
  @available(tvOS 8.0, *)
  optional func targetDisplayModeForActionInSplitViewController(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, showViewController vc: UIViewController, sender: AnyObject?) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool
  @available(tvOS 8.0, *)
  optional func primaryViewControllerForCollapsingSplitViewController(splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func primaryViewControllerForExpandingSplitViewController(splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(tvOS 8.0, *)
  func collapseSecondaryViewController(secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(tvOS 8.0, *)
  func separateSecondaryViewControllerForSplitViewController(splitViewController: UISplitViewController) -> UIViewController?
}
@available(tvOS 9.0, *)
enum UIStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case FillEqually
  case FillProportionally
  case EqualSpacing
  case EqualCentering
}
@available(tvOS 9.0, *)
enum UIStackViewAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case Leading
  static var Top: UIStackViewAlignment { get }
  case FirstBaseline
  case Center
  case Trailing
  static var Bottom: UIStackViewAlignment { get }
  case LastBaseline
}
@available(tvOS 9.0, *)
class UIStackView : UIView {
  init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(view: UIView)
  func removeArrangedSubview(view: UIView)
  func insertArrangedSubview(view: UIView, atIndex stackIndex: Int)
  var axis: UILayoutConstraintAxis
  var distribution: UIStackViewDistribution
  var alignment: UIStackViewAlignment
  var spacing: CGFloat
  var baselineRelativeArrangement: Bool
  var layoutMarginsRelativeArrangement: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(tvOS 6.0, *)
let UIStateRestorationViewControllerStoryboardKey: String
@available(tvOS 6.0, *)
let UIApplicationStateRestorationBundleVersionKey: String
@available(tvOS 6.0, *)
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
@available(tvOS 7.0, *)
let UIApplicationStateRestorationTimestampKey: String
@available(tvOS 7.0, *)
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  @available(tvOS 2.0, *)
  static func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(tvOS 2.0, *)
  func modelIdentifierForElementAtIndexPath(idx: NSIndexPath, inView view: UIView) -> String?
  @available(tvOS 2.0, *)
  func indexPathForElementWithModelIdentifier(identifier: String, inView view: UIView) -> NSIndexPath?
}
protocol UIStateRestoring : NSObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableStateWithCoder(coder: NSCoder)
  optional func decodeRestorableStateWithCoder(coder: NSCoder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func objectWithRestorationIdentifierPath(identifierComponents: [String], coder: NSCoder) -> UIStateRestoring?
}
@available(tvOS 5.0, *)
class UIStoryboard : NSObject {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewControllerWithIdentifier(identifier: String) -> UIViewController
  init()
}
@available(tvOS, introduced=5.0, deprecated=9.0, message="Access destinationViewController.popoverPresentationController from your segue's performHandler or override of -perform")
class UIStoryboardPopoverSegue : UIStoryboardSegue {
  var popoverController: UIPopoverController { get }
  @available(tvOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
}
@available(tvOS 5.0, *)
class UIStoryboardSegue : NSObject {
  @available(tvOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  var identifier: String? { get }
  var sourceViewController: UIViewController { get }
  var destinationViewController: UIViewController { get }

  /// Subclasses can override this method to augment or replace the effect of this segue. For example, to animate alongside the effect of a Modal Presentation segue, an override of this method can call super, then send -animateAlongsideTransition:completion: to the transitionCoordinator of the destinationViewController.
  /// The segue runtime will call +[UIView setAnimationsAreEnabled:] prior to invoking this method, based on the value of the Animates checkbox in the Properties Inspector for the segue.
  func perform()
}

/// Encapsulates the source of a prospective unwind segue.
/// You do not create instances of this class directly. Instead, UIKit creates an instance of this class and sends -destinationViewControllerForUnwindSource: to each ancestor of the sourceViewController until one returns a non-null result or the chain is exhausted.
@available(tvOS 9.0, *)
class UIStoryboardUnwindSegueSource : NSObject {
  var sourceViewController: UIViewController { get }
  var unwindAction: Selector { get }
  var sender: AnyObject? { get }
}
enum UIBaselineAdjustment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlignBaselines
  case AlignCenters
  case None
}
extension NSString {
}
struct UISwipeGestureRecognizerDirection : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Right: UISwipeGestureRecognizerDirection { get }
  static var Left: UISwipeGestureRecognizerDirection { get }
  static var Up: UISwipeGestureRecognizerDirection { get }
  static var Down: UISwipeGestureRecognizerDirection { get }
}
@available(tvOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var direction: UISwipeGestureRecognizerDirection
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(tvOS 7.0, *)
enum UITabBarItemPositioning : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Fill
  case Centered
}
@available(tvOS 2.0, *)
class UITabBar : UIView {
  unowned(unsafe) var delegate: @sil_unmanaged UITabBarDelegate?
  var items: [UITabBarItem]?
  unowned(unsafe) var selectedItem: @sil_unmanaged UITabBarItem?
  func setItems(items: [UITabBarItem]?, animated: Bool)
  @available(tvOS 5.0, *)
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(tvOS 6.0, *)
  var shadowImage: UIImage?
  @available(tvOS 7.0, *)
  var itemWidth: CGFloat
  @available(tvOS 7.0, *)
  var itemSpacing: CGFloat
  @available(tvOS 7.0, *)
  var translucent: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UITabBarDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem)
}
@available(tvOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  @available(tvOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 2.0, *)
  func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool
  @available(tvOS 2.0, *)
  optional func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController)
  @available(tvOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, animationControllerForTransitionFromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
}
enum UITabBarSystemItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case More
  case Favorites
  case Featured
  case TopRated
  case Recents
  case Contacts
  case History
  case Bookmarks
  case Search
  case Downloads
  case MostRecent
  case MostViewed
}

/*!
 UITabBarController manages a button bar and transition view, for an application with multiple top-level modes.
 
 To use in your application, add its view to the view hierarchy, then add top-level view controllers in order.
 Most clients will not need to subclass UITabBarController.

 If more than five view controllers are added to a tab bar controller, only the first four will display.
 The rest will be accessible under an automatically generated More item.
 
 UITabBarController is rotatable if all of its view controllers are rotatable.
 */
@available(tvOS 2.0, *)
class UITabBarItem : UIBarItem {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(title: String?, image: UIImage?, tag: Int)
  @available(tvOS 7.0, *)
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarSystemItem, tag: Int)
  @available(tvOS 7.0, *)
  var selectedImage: UIImage?
  var badgeValue: String?
  @available(tvOS 5.0, *)
  var titlePositionAdjustment: UIOffset
}
enum UITableViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case Grouped
}
enum UITableViewScrollPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Top
  case Middle
  case Bottom
}
enum UITableViewRowAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fade
  case Right
  case Left
  case Top
  case Bottom
  case None
  case Middle
  case Automatic
}
@available(tvOS 5.0, *)
let UITableViewAutomaticDimension: CGFloat
@available(tvOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  optional func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(tvOS 2.0, *)
class UITableView : UIScrollView, NSCoding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: NSCoder)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  weak var delegate: @sil_weak UITableViewDelegate?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(tvOS 3.2, *)
  var backgroundView: UIView?
  func reloadData()
  @available(tvOS 3.0, *)
  func reloadSectionIndexTitles()
  var numberOfSections: Int { get }
  func numberOfRowsInSection(section: Int) -> Int
  func rectForSection(section: Int) -> CGRect
  func rectForHeaderInSection(section: Int) -> CGRect
  func rectForFooterInSection(section: Int) -> CGRect
  func rectForRowAtIndexPath(indexPath: NSIndexPath) -> CGRect
  func indexPathForRowAtPoint(point: CGPoint) -> NSIndexPath?
  func indexPathForCell(cell: UITableViewCell) -> NSIndexPath?
  func indexPathsForRowsInRect(rect: CGRect) -> [NSIndexPath]?
  func cellForRowAtIndexPath(indexPath: NSIndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [NSIndexPath]? { get }
  @available(tvOS 6.0, *)
  func headerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  @available(tvOS 6.0, *)
  func footerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAtIndexPath(indexPath: NSIndexPath, atScrollPosition scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAtScrollPosition(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 3.0, *)
  func reloadRowsAtIndexPaths(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(tvOS 5.0, *)
  func moveRowAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath)
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
  @available(tvOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: NSIndexPath? { get }
  @available(tvOS 5.0, *)
  var indexPathsForSelectedRows: [NSIndexPath]? { get }
  func selectRowAtIndexPath(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRowAtIndexPath(indexPath: NSIndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(tvOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(tvOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(tvOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  @available(tvOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell?
  @available(tvOS 6.0, *)
  func dequeueReusableCellWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 6.0, *)
  func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView?
  @available(tvOS 5.0, *)
  func registerNib(nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerClass(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerNib(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func registerClass(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  optional func numberOfSectionsInTableView(tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
extension NSIndexPath {
  convenience init(forRow row: Int, inSection section: Int)
  var section: Int { get }
  var row: Int { get }
}
enum UITableViewCellStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Value1
  case Value2
  case Subtitle
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Blue
  case Gray
  @available(tvOS 7.0, *)
  case Default
}
@available(tvOS 9.0, *)
enum UITableViewCellFocusStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
enum UITableViewCellEditingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Delete
  case Insert
}
enum UITableViewCellAccessoryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case DisclosureIndicator
  case Checkmark
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DefaultMask: UITableViewCellStateMask { get }
  static var ShowingEditControlMask: UITableViewCellStateMask { get }
  static var ShowingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
@available(tvOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(tvOS 3.0, *)
  init(style: UITableViewCellStyle, reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 3.0, *)
  var imageView: UIImageView? { get }
  @available(tvOS 3.0, *)
  var textLabel: UILabel? { get }
  @available(tvOS 3.0, *)
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(tvOS 5.0, *)
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCellSelectionStyle
  var selected: Bool
  var highlighted: Bool
  func setSelected(selected: Bool, animated: Bool)
  func setHighlighted(highlighted: Bool, animated: Bool)
  var editingStyle: UITableViewCellEditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCellAccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCellAccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(tvOS 9.0, *)
  var focusStyle: UITableViewCellFocusStyle
  @available(tvOS 3.0, *)
  func willTransitionToState(state: UITableViewCellStateMask)
  @available(tvOS 3.0, *)
  func didTransitionToState(state: UITableViewCellStateMask)
  convenience init(frame: CGRect)
  convenience init()
  @available(tvOS 3.2, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOfGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(tvOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool
  @available(tvOS 9.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceivePress press: UIPress) -> Bool
}
extension UITableViewCell {
}
@available(tvOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var tableView: UITableView!
  @available(tvOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  convenience init()
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, shouldHighlightRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 6.0, *)
  func tableView(tableView: UITableView, didUnhighlightRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 3.0, *)
  func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 3.0, *)
  func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAtIndexPath sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, shouldShowMenuForRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func tableView(tableView: UITableView, performAction action: Selector, forRowAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, shouldUpdateFocusInContext context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  func indexPathForPreferredFocusedViewInTableView(tableView: UITableView) -> NSIndexPath?
  @available(tvOS 2.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(tvOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(tvOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(tvOS 2.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(tvOS 2.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
  @available(tvOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(tvOS 2.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(tvOS 2.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(tvOS 2.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  func numberOfSectionsInTableView(tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(tvOS 2.0, *)
  func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
@available(tvOS 6.0, *)
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  var tintColor: UIColor!
  var textLabel: UILabel? { get }
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  convenience init(frame: CGRect)
  convenience init()
}
@available(tvOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(tvOS 3.2, *)
class UITextChecker : NSObject {
  func rangeOfMisspelledWordInString(stringToCheck: String, range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language: String) -> NSRange
  func guessesForWordRange(range: NSRange, inString string: String, language: String) -> [AnyObject]?
  func completionsForPartialWordRange(range: NSRange, inString string: String?, language: String) -> [AnyObject]?
  func ignoreWord(wordToIgnore: String)
  func ignoredWords() -> [AnyObject]?
  func setIgnoredWords(words: [AnyObject]?)
  class func learnWord(word: String)
  class func hasLearnedWord(word: String) -> Bool
  class func unlearnWord(word: String)
  class func availableLanguages() -> [AnyObject]
  init()
}
enum UITextBorderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Line
  case Bezel
  case RoundedRect
}
enum UITextFieldViewMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Never
  case WhileEditing
  case UnlessEditing
  case Always
}
@available(tvOS 2.0, *)
class UITextField : UIControl, UITextInput, NSCoding {
  var text: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  @available(tvOS 7.0, *)
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @available(tvOS 6.0, *)
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var editing: Bool { get }
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  var typingAttributes: [String : AnyObject]?
  var clearButtonMode: UITextFieldViewMode
  var leftView: UIView?
  var leftViewMode: UITextFieldViewMode
  var rightView: UIView?
  var rightViewMode: UITextFieldViewMode
  func borderRectForBounds(bounds: CGRect) -> CGRect
  func textRectForBounds(bounds: CGRect) -> CGRect
  func placeholderRectForBounds(bounds: CGRect) -> CGRect
  func editingRectForBounds(bounds: CGRect) -> CGRect
  func clearButtonRectForBounds(bounds: CGRect) -> CGRect
  func leftViewRectForBounds(bounds: CGRect) -> CGRect
  func rightViewRectForBounds(bounds: CGRect) -> CGRect
  func drawTextInRect(rect: CGRect)
  func drawPlaceholderInRect(rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 3.2, *)
  func textInRange(range: UITextRange) -> String?
  @available(tvOS 3.2, *)
  func replaceRange(range: UITextRange, withText text: String)
  @available(tvOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(tvOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(tvOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(tvOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(tvOS 2.0, *)
  func unmarkText()
  @available(tvOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  @available(tvOS 3.2, *)
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  @available(tvOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(tvOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(tvOS 3.2, *)
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  @available(tvOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(tvOS 3.2, *)
  func firstRectForRange(range: UITextRange) -> CGRect
  @available(tvOS 3.2, *)
  func caretRectForPosition(position: UITextPosition) -> CGRect
  @available(tvOS 6.0, *)
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  @available(tvOS 3.2, *)
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  @available(tvOS 3.2, *)
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  @available(tvOS 6.0, *)
  func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  @available(tvOS 3.2, *)
  func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(tvOS 3.2, *)
  func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(tvOS 2.0, *)
  var textInputView: UIView { get }
  @available(tvOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(tvOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(tvOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(tvOS 2.0, *)
  func dictationRecognitionFailed()
  @available(tvOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(tvOS 2.0, *)
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  @available(tvOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(tvOS 9.0, *)
  func beginFloatingCursorAtPoint(point: CGPoint)
  @available(tvOS 9.0, *)
  func updateFloatingCursorAtPoint(point: CGPoint)
  @available(tvOS 9.0, *)
  func endFloatingCursor()
  @available(tvOS 2.0, *)
  func hasText() -> Bool
  @available(tvOS 2.0, *)
  func insertText(text: String)
  @available(tvOS 2.0, *)
  func deleteBackward()
  @available(tvOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(tvOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(tvOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(tvOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(tvOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(tvOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(tvOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(tvOS 2.0, *)
  var secureTextEntry: Bool
}
extension UIView {
  func endEditing(force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidBeginEditing(textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textFieldShouldEndEditing(textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldDidEndEditing(textField: UITextField)
  @available(tvOS 2.0, *)
  optional func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldClear(textField: UITextField) -> Bool
  @available(tvOS 2.0, *)
  optional func textFieldShouldReturn(textField: UITextField) -> Bool
}
let UITextFieldTextDidBeginEditingNotification: String
let UITextFieldTextDidEndEditingNotification: String
let UITextFieldTextDidChangeNotification: String
protocol UIKeyInput : UITextInputTraits {
  func hasText() -> Bool
  func insertText(text: String)
  func deleteBackward()
}
enum UITextStorageDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Backward
}
enum UITextLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
}
typealias UITextDirection = Int
enum UITextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
enum UITextGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Character
  case Word
  case Sentence
  case Paragraph
  case Line
  case Document
}
@available(tvOS 5.1, *)
class UIDictationPhrase : NSObject {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
  init()
}
protocol UITextInput : UIKeyInput {
  @available(tvOS 3.2, *)
  func textInRange(range: UITextRange) -> String?
  @available(tvOS 3.2, *)
  func replaceRange(range: UITextRange, withText text: String)
  @available(tvOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(tvOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(tvOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]? { get set }
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  @available(tvOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  @available(tvOS 3.2, *)
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  @available(tvOS 3.2, *)
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  @available(tvOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(tvOS 3.2, *)
  func firstRectForRange(range: UITextRange) -> CGRect
  @available(tvOS 3.2, *)
  func caretRectForPosition(position: UITextPosition) -> CGRect
  @available(tvOS 6.0, *)
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  @available(tvOS 3.2, *)
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  @available(tvOS 3.2, *)
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  @available(tvOS 6.0, *)
  optional func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  @available(tvOS 3.2, *)
  optional func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(tvOS 3.2, *)
  optional func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  optional func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(tvOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(tvOS 5.1, *)
  optional func insertDictationResult(dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(tvOS 9.0, *)
  optional func beginFloatingCursorAtPoint(point: CGPoint)
  @available(tvOS 9.0, *)
  optional func updateFloatingCursorAtPoint(point: CGPoint)
  @available(tvOS 9.0, *)
  optional func endFloatingCursor()
}
@available(tvOS 3.2, *)
class UITextPosition : NSObject {
  init()
}
@available(tvOS 3.2, *)
class UITextRange : NSObject {
  var empty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
@available(tvOS 6.0, *)
class UITextSelectionRect : NSObject {
  var rect: CGRect { get }
  var writingDirection: UITextWritingDirection { get }
  var containsStart: Bool { get }
  var containsEnd: Bool { get }
  var isVertical: Bool { get }
  init()
}
protocol UITextInputDelegate : NSObjectProtocol {
  func selectionWillChange(textInput: UITextInput?)
  func selectionDidChange(textInput: UITextInput?)
  func textWillChange(textInput: UITextInput?)
  func textDidChange(textInput: UITextInput?)
}
protocol UITextInputTokenizer : NSObjectProtocol {
  @available(tvOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(tvOS 3.2, *)
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput: UIResponder)
  init()
  @available(tvOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(tvOS 4.2, *)
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  init()
  @available(tvOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 4.2, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 4.2, *)
let UITextInputCurrentInputModeDidChangeNotification: String
enum UITextAutocapitalizationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Words
  case Sentences
  case AllCharacters
}
enum UITextAutocorrectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case No
  case Yes
}
@available(tvOS 5.0, *)
enum UITextSpellCheckingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case No
  case Yes
}
enum UIKeyboardType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case ASCIICapable
  case NumbersAndPunctuation
  case URL
  case NumberPad
  case PhonePad
  case NamePhonePad
  case EmailAddress
  @available(tvOS 4.1, *)
  case DecimalPad
  @available(tvOS 5.0, *)
  case Twitter
  @available(tvOS 7.0, *)
  case WebSearch
  static var Alphabet: UIKeyboardType { get }
}
enum UIKeyboardAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(tvOS 7.0, *)
  case Dark
  @available(tvOS 7.0, *)
  case Light
  static var Alert: UIKeyboardAppearance { get }
}
enum UIReturnKeyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Go
  case Google
  case Join
  case Next
  case Route
  case Search
  case Send
  case Yahoo
  case Done
  case EmergencyCall
  @available(tvOS 9.0, *)
  case Continue
}
protocol UITextInputTraits : NSObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  @available(tvOS 5.0, *)
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var secureTextEntry: Bool { get set }
}
protocol UITextViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func textViewShouldBeginEditing(textView: UITextView) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewShouldEndEditing(textView: UITextView) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewDidBeginEditing(textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textViewDidEndEditing(textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func textViewDidChange(textView: UITextView)
  @available(tvOS 2.0, *)
  optional func textViewDidChangeSelection(textView: UITextView)
  @available(tvOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool
  @available(tvOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool
}
@available(tvOS 2.0, *)
class UITextView : UIScrollView, UITextInput {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  @available(tvOS 7.0, *)
  var selectable: Bool
  @available(tvOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(tvOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(tvOS 6.0, *)
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(tvOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(tvOS 7.0, *)
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 7.0, *)
  var textContainer: NSTextContainer { get }
  @available(tvOS 7.0, *)
  var textContainerInset: UIEdgeInsets
  @available(tvOS 7.0, *)
  var layoutManager: NSLayoutManager { get }
  @available(tvOS 7.0, *)
  var textStorage: NSTextStorage { get }
  @available(tvOS 7.0, *)
  var linkTextAttributes: [String : AnyObject]!
  convenience init(frame: CGRect)
  convenience init()
  @available(tvOS 3.2, *)
  func textInRange(range: UITextRange) -> String?
  @available(tvOS 3.2, *)
  func replaceRange(range: UITextRange, withText text: String)
  @available(tvOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(tvOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(tvOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(tvOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(tvOS 2.0, *)
  func unmarkText()
  @available(tvOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(tvOS 3.2, *)
  func textRangeFromPosition(fromPosition: UITextPosition, toPosition: UITextPosition) -> UITextRange?
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func positionFromPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func comparePosition(position: UITextPosition, toPosition other: UITextPosition) -> NSComparisonResult
  @available(tvOS 3.2, *)
  func offsetFromPosition(from: UITextPosition, toPosition: UITextPosition) -> Int
  @available(tvOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(tvOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(tvOS 3.2, *)
  func positionWithinRange(range: UITextRange, farthestInDirection direction: UITextLayoutDirection) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeByExtendingPosition(position: UITextPosition, inDirection direction: UITextLayoutDirection) -> UITextRange?
  @available(tvOS 3.2, *)
  func baseWritingDirectionForPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> UITextWritingDirection
  @available(tvOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(tvOS 3.2, *)
  func firstRectForRange(range: UITextRange) -> CGRect
  @available(tvOS 3.2, *)
  func caretRectForPosition(position: UITextPosition) -> CGRect
  @available(tvOS 6.0, *)
  func selectionRectsForRange(range: UITextRange) -> [AnyObject]
  @available(tvOS 3.2, *)
  func closestPositionToPoint(point: CGPoint) -> UITextPosition?
  @available(tvOS 3.2, *)
  func closestPositionToPoint(point: CGPoint, withinRange range: UITextRange) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterRangeAtPoint(point: CGPoint) -> UITextRange?
  @available(tvOS 6.0, *)
  func shouldChangeTextInRange(range: UITextRange, replacementText text: String) -> Bool
  @available(tvOS 3.2, *)
  func textStylingAtPosition(position: UITextPosition, inDirection direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(tvOS 3.2, *)
  func positionWithinRange(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(tvOS 3.2, *)
  func characterOffsetOfPosition(position: UITextPosition, withinRange range: UITextRange) -> Int
  @available(tvOS 2.0, *)
  var textInputView: UIView { get }
  @available(tvOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(tvOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(tvOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(tvOS 2.0, *)
  func dictationRecognitionFailed()
  @available(tvOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(tvOS 2.0, *)
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  @available(tvOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(tvOS 9.0, *)
  func beginFloatingCursorAtPoint(point: CGPoint)
  @available(tvOS 9.0, *)
  func updateFloatingCursorAtPoint(point: CGPoint)
  @available(tvOS 9.0, *)
  func endFloatingCursor()
  @available(tvOS 2.0, *)
  func hasText() -> Bool
  @available(tvOS 2.0, *)
  func insertText(text: String)
  @available(tvOS 2.0, *)
  func deleteBackward()
  @available(tvOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(tvOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(tvOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(tvOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(tvOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(tvOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(tvOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(tvOS 2.0, *)
  var secureTextEntry: Bool
}
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
enum UITouchPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Moved
  case Stationary
  case Ended
  case Cancelled
}
enum UIForceTouchCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unavailable
  case Available
}
@available(tvOS 9.0, *)
enum UITouchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Direct
  case Indirect
  @available(tvOS 9.1, *)
  case Stylus
}
@available(tvOS 9.1, *)
struct UITouchProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Force: UITouchProperties { get }
  static var Azimuth: UITouchProperties { get }
  static var Altitude: UITouchProperties { get }
  static var Location: UITouchProperties { get }
}
@available(tvOS 2.0, *)
class UITouch : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UITouchPhase { get }
  var tapCount: Int { get }
  @available(tvOS 9.0, *)
  var type: UITouchType { get }
  @available(tvOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(tvOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(tvOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func locationInView(view: UIView?) -> CGPoint
  func previousLocationInView(view: UIView?) -> CGPoint
  @available(tvOS 9.1, *)
  func preciseLocationInView(view: UIView?) -> CGPoint
  @available(tvOS 9.1, *)
  func precisePreviousLocationInView(view: UIView?) -> CGPoint
  @available(tvOS 9.0, *)
  var force: CGFloat { get }
  @available(tvOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(tvOS 9.1, *)
  func azimuthAngleInView(view: UIView?) -> CGFloat
  @available(tvOS 9.1, *)
  func azimuthUnitVectorInView(view: UIView?) -> CGVector
  @available(tvOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(tvOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(tvOS 9.1, *)
  var estimatedProperties: UITouchProperties { get }
  @available(tvOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
  init()
}

/*! A trait collection encapsulates the system traits of an interface's environment. */
@available(tvOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func containsTraitsInCollection(trait: UITraitCollection?) -> Bool

  /*! Returns a trait collection by merging the traits in `traitCollections`. The last trait along any given
   axis (e.g. interface usage) will supercede any others. */
  /*not inherited*/ init(traitsFromCollections traitCollections: [UITraitCollection])
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(tvOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(tvOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}

/*! Trait environments expose a trait collection that describes their environment. */
protocol UITraitEnvironment : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
enum UIViewAnimationCurve : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EaseInOut
  case EaseIn
  case EaseOut
  case Linear
}
enum UIViewContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ScaleToFill
  case ScaleAspectFit
  case ScaleAspectFill
  case Redraw
  case Center
  case Top
  case Bottom
  case Left
  case Right
  case TopLeft
  case TopRight
  case BottomLeft
  case BottomRight
}
enum UIViewAnimationTransition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case FlipFromLeft
  case FlipFromRight
  case CurlUp
  case CurlDown
}
struct UIViewAutoresizing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIViewAutoresizing { get }
  static var FlexibleLeftMargin: UIViewAutoresizing { get }
  static var FlexibleWidth: UIViewAutoresizing { get }
  static var FlexibleRightMargin: UIViewAutoresizing { get }
  static var FlexibleTopMargin: UIViewAutoresizing { get }
  static var FlexibleHeight: UIViewAutoresizing { get }
  static var FlexibleBottomMargin: UIViewAutoresizing { get }
}
@available(tvOS 4.0, *)
struct UIViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LayoutSubviews: UIViewAnimationOptions { get }
  static var AllowUserInteraction: UIViewAnimationOptions { get }
  static var BeginFromCurrentState: UIViewAnimationOptions { get }
  static var Repeat: UIViewAnimationOptions { get }
  static var Autoreverse: UIViewAnimationOptions { get }
  static var OverrideInheritedDuration: UIViewAnimationOptions { get }
  static var OverrideInheritedCurve: UIViewAnimationOptions { get }
  static var AllowAnimatedContent: UIViewAnimationOptions { get }
  static var ShowHideTransitionViews: UIViewAnimationOptions { get }
  static var OverrideInheritedOptions: UIViewAnimationOptions { get }
  static var CurveEaseInOut: UIViewAnimationOptions { get }
  static var CurveEaseIn: UIViewAnimationOptions { get }
  static var CurveEaseOut: UIViewAnimationOptions { get }
  static var CurveLinear: UIViewAnimationOptions { get }
  static var TransitionNone: UIViewAnimationOptions { get }
  static var TransitionFlipFromLeft: UIViewAnimationOptions { get }
  static var TransitionFlipFromRight: UIViewAnimationOptions { get }
  static var TransitionCurlUp: UIViewAnimationOptions { get }
  static var TransitionCurlDown: UIViewAnimationOptions { get }
  static var TransitionCrossDissolve: UIViewAnimationOptions { get }
  static var TransitionFlipFromTop: UIViewAnimationOptions { get }
  static var TransitionFlipFromBottom: UIViewAnimationOptions { get }
}
@available(tvOS 7.0, *)
struct UIViewKeyframeAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LayoutSubviews: UIViewKeyframeAnimationOptions { get }
  static var AllowUserInteraction: UIViewKeyframeAnimationOptions { get }
  static var BeginFromCurrentState: UIViewKeyframeAnimationOptions { get }
  static var Repeat: UIViewKeyframeAnimationOptions { get }
  static var Autoreverse: UIViewKeyframeAnimationOptions { get }
  static var OverrideInheritedDuration: UIViewKeyframeAnimationOptions { get }
  static var OverrideInheritedOptions: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeLinear: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeDiscrete: UIViewKeyframeAnimationOptions { get }
  static var CalculationModePaced: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeCubic: UIViewKeyframeAnimationOptions { get }
  static var CalculationModeCubicPaced: UIViewKeyframeAnimationOptions { get }
}
@available(tvOS 7.0, *)
enum UISystemAnimation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Delete
}
@available(tvOS 7.0, *)
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Normal
  case Dimmed
}
@available(tvOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
@available(tvOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
protocol UICoordinateSpace : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  var bounds: CGRect { get }
}

/*!
 UITabBarController manages a button bar and transition view, for an application with multiple top-level modes.
 
 To use in your application, add its view to the view hierarchy, then add top-level view controllers in order.
 Most clients will not need to subclass UITabBarController.

 If more than five view controllers are added to a tab bar controller, only the first four will display.
 The rest will be accessible under an automatically generated More item.
 
 UITabBarController is rotatable if all of its view controllers are rotatable.
 */
@available(tvOS 2.0, *)
class UIView : UIResponder, NSCoding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var userInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(tvOS 9.0, *)
  func canBecomeFocused() -> Bool
  @available(tvOS 9.0, *)
  var focused: Bool { get }
  @available(tvOS 9.0, *)
  class func userInterfaceLayoutDirectionForSemanticContentAttribute(attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(tvOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 2.0, *)
  class func appearance() -> Self
  @available(tvOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(tvOS 8.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  class func appearanceForTraitCollection(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(tvOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(tvOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertPoint(point: CGPoint, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, toCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect
  @available(tvOS 8.0, *)
  func convertRect(rect: CGRect, fromCoordinateSpace coordinateSpace: UICoordinateSpace) -> CGRect

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(tvOS 9.0, *)
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(tvOS 9.0, *)
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}

extension UIView : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
extension UIView {
  var frame: CGRect
  var bounds: CGRect
  var center: CGPoint
  var transform: CGAffineTransform
  @available(tvOS 4.0, *)
  var contentScaleFactor: CGFloat
  func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convertPoint(point: CGPoint, toView view: UIView?) -> CGPoint
  func convertPoint(point: CGPoint, fromView view: UIView?) -> CGPoint
  func convertRect(rect: CGRect, toView view: UIView?) -> CGRect
  func convertRect(rect: CGRect, fromView view: UIView?) -> CGRect
  var autoresizesSubviews: Bool
  var autoresizingMask: UIViewAutoresizing
  func sizeThatFits(size: CGSize) -> CGSize
  func sizeToFit()
}
extension UIView {
  var superview: UIView? { get }
  var subviews: [UIView] { get }
  var window: UIWindow? { get }
  func removeFromSuperview()
  func insertSubview(view: UIView, atIndex index: Int)
  func exchangeSubviewAtIndex(index1: Int, withSubviewAtIndex index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewToFront(view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMoveToSuperview(newSuperview: UIView?)
  func didMoveToSuperview()
  func willMoveToWindow(newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendantOfView(view: UIView) -> Bool
  func viewWithTag(tag: Int) -> UIView?
  func setNeedsLayout()
  func layoutIfNeeded()
  func layoutSubviews()
  @available(tvOS 8.0, *)
  var layoutMargins: UIEdgeInsets
  @available(tvOS 8.0, *)
  var preservesSuperviewLayoutMargins: Bool
  @available(tvOS 8.0, *)
  func layoutMarginsDidChange()
  @available(tvOS 9.0, *)
  var layoutMarginsGuide: UILayoutGuide { get }

  /// This content guide provides a layout area that you can use to place text and related content whose width should generally be constrained to a size that is easy for the user to read. This guide provides a centered region that you can place content within to get this behavior for this view.
  @available(tvOS 9.0, *)
  var readableContentGuide: UILayoutGuide { get }
}
extension UIView {
  func drawRect(rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayInRect(rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var opaque: Bool
  var clearsContextBeforeDrawing: Bool
  var hidden: Bool
  var contentMode: UIViewContentMode
  @available(tvOS 8.0, *)
  var maskView: UIView?
  @available(tvOS 7.0, *)
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var tintAdjustmentMode: UIViewTintAdjustmentMode
  @available(tvOS 7.0, *)
  func tintColorDidChange()
}
extension UIView {
  class func beginAnimations(animationID: String?, context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(delegate: AnyObject?)
  class func setAnimationWillStartSelector(selector: Selector)
  class func setAnimationDidStopSelector(selector: Selector)
  class func setAnimationDuration(duration: NSTimeInterval)
  class func setAnimationDelay(delay: NSTimeInterval)
  class func setAnimationStartDate(startDate: NSDate)
  class func setAnimationCurve(curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(repeatCount: Float)
  class func setAnimationRepeatAutoreverses(repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(fromCurrentState: Bool)
  class func setAnimationTransition(transition: UIViewAnimationTransition, forView view: UIView, cache: Bool)
  class func setAnimationsEnabled(enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  @available(tvOS 7.0, *)
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  @available(tvOS 9.0, *)
  class func inheritedAnimationDuration() -> NSTimeInterval
}
extension UIView {
  @available(tvOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  @available(tvOS 7.0, *)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func transitionWithView(view: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: (() -> Void)?, completion: ((Bool) -> Void)?)
  @available(tvOS 4.0, *)
  class func transitionFromView(fromView: UIView, toView: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions, completion: ((Bool) -> Void)?)
  @available(tvOS 7.0, *)
  class func performSystemAnimation(animation: UISystemAnimation, onViews views: [UIView], options: UIViewAnimationOptions, animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)?)
}
extension UIView {
  @available(tvOS 7.0, *)
  class func animateKeyframesWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewKeyframeAnimationOptions, animations: () -> Void, completion: ((Bool) -> Void)?)
  @available(tvOS 7.0, *)
  class func addKeyframeWithRelativeStartTime(frameStartTime: Double, relativeDuration frameDuration: Double, animations: () -> Void)
}
extension UIView {
  @available(tvOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]?
  @available(tvOS 3.2, *)
  func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(tvOS 3.2, *)
  func removeGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(tvOS 6.0, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {

  /*! Begins applying `effect` to the receiver. The effect's emitted keyPath/value pairs will be
      applied to the view's presentation layer.
   
      Animates the transition to the motion effect's values using the present UIView animation
      context. */
  @available(tvOS 7.0, *)
  func addMotionEffect(effect: UIMotionEffect)

  /*! Stops applying `effect` to the receiver. Any affected presentation values will animate to
      their post-removal values using the present UIView animation context. */
  @available(tvOS 7.0, *)
  func removeMotionEffect(effect: UIMotionEffect)
  @available(tvOS 7.0, *)
  var motionEffects: [UIMotionEffect]
}
enum UILayoutConstraintAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
extension UIView {
  @available(tvOS 6.0, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(tvOS 6.0, *)
  func addConstraint(constraint: NSLayoutConstraint)
  @available(tvOS 6.0, *)
  func addConstraints(constraints: [NSLayoutConstraint])
  @available(tvOS 6.0, *)
  func removeConstraint(constraint: NSLayoutConstraint)
  @available(tvOS 6.0, *)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension UIView {
  @available(tvOS 6.0, *)
  func updateConstraintsIfNeeded()
  @available(tvOS 6.0, *)
  func updateConstraints()
  @available(tvOS 6.0, *)
  func needsUpdateConstraints() -> Bool
  @available(tvOS 6.0, *)
  func setNeedsUpdateConstraints()
}
extension UIView {
  @available(tvOS 6.0, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(tvOS 6.0, *)
  class func requiresConstraintBasedLayout() -> Bool
}
extension UIView {
  @available(tvOS 6.0, *)
  func alignmentRectForFrame(frame: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func frameForAlignmentRect(alignmentRect: CGRect) -> CGRect
  @available(tvOS 6.0, *)
  func alignmentRectInsets() -> UIEdgeInsets
  @available(tvOS 9.0, *)
  var viewForFirstBaselineLayout: UIView { get }
  @available(tvOS 9.0, *)
  var viewForLastBaselineLayout: UIView { get }
  @available(tvOS 6.0, *)
  func intrinsicContentSize() -> CGSize
  @available(tvOS 6.0, *)
  func invalidateIntrinsicContentSize()
  @available(tvOS 6.0, *)
  func contentHuggingPriorityForAxis(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(tvOS 6.0, *)
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  @available(tvOS 6.0, *)
  func contentCompressionResistancePriorityForAxis(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(tvOS 6.0, *)
  func setContentCompressionResistancePriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
}
@available(tvOS 6.0, *)
let UIViewNoIntrinsicMetric: CGFloat
@available(tvOS 6.0, *)
let UILayoutFittingCompressedSize: CGSize
@available(tvOS 6.0, *)
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  @available(tvOS 6.0, *)
  func systemLayoutSizeFittingSize(targetSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func systemLayoutSizeFittingSize(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  @available(tvOS 9.0, *)
  var layoutGuides: [UILayoutGuide] { get }
  @available(tvOS 9.0, *)
  func addLayoutGuide(layoutGuide: UILayoutGuide)
  @available(tvOS 9.0, *)
  func removeLayoutGuide(layoutGuide: UILayoutGuide)
}
extension UIView {
  @available(tvOS 9.0, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(tvOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(tvOS 9.0, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(tvOS 9.0, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(tvOS 9.0, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
}
extension UIView {
  @available(tvOS 6.0, *)
  func constraintsAffectingLayoutForAxis(axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  @available(tvOS 6.0, *)
  func hasAmbiguousLayout() -> Bool
  @available(tvOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UIView {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  func encodeRestorableStateWithCoder(coder: NSCoder)
  @available(tvOS 6.0, *)
  func decodeRestorableStateWithCoder(coder: NSCoder)
}
extension UIView {
  @available(tvOS 7.0, *)
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
  @available(tvOS 7.0, *)
  func resizableSnapshotViewFromRect(rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  @available(tvOS 7.0, *)
  func drawViewHierarchyInRect(rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case CrossDissolve
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullScreen
  @available(tvOS 3.2, *)
  case CurrentContext
  @available(tvOS 7.0, *)
  case Custom
  @available(tvOS 8.0, *)
  case OverFullScreen
  @available(tvOS 8.0, *)
  case OverCurrentContext
  @available(tvOS 7.0, *)
  case None
}
protocol UIContentContainer : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
@available(tvOS 8.0, *)
let UIViewControllerShowDetailTargetDidChangeNotification: String
@available(tvOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var view: UIView!
  func loadView()
  @available(tvOS 9.0, *)
  func loadViewIfNeeded()
  @available(tvOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(tvOS 3.0, *)
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  @available(tvOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(tvOS 5.0, *)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(tvOS 6.0, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  @available(tvOS 5.0, *)
  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
  @available(tvOS 6.0, *)
  func canPerformUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  @available(tvOS 9.0, *)
  func allowedChildViewControllersForUnwindingFromSource(source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(tvOS 9.0, *)
  func childViewControllerContainingSegueSource(source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(tvOS, introduced=6.0, deprecated=9.0)
  func viewControllerForUnwindSegueAction(action: Selector, fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  @available(tvOS 9.0, *)
  func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(tvOS, introduced=6.0, deprecated=9.0)
  func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
  @available(tvOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(tvOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parentViewController: @sil_weak UIViewController? { get }
  @available(tvOS 5.0, *)
  var presentedViewController: UIViewController? { get }
  @available(tvOS 5.0, *)
  var presentingViewController: UIViewController? { get }
  @available(tvOS 5.0, *)
  var definesPresentationContext: Bool
  @available(tvOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(tvOS 5.0, *)
  func isBeingPresented() -> Bool
  @available(tvOS 5.0, *)
  func isBeingDismissed() -> Bool
  @available(tvOS 5.0, *)
  func isMovingToParentViewController() -> Bool
  @available(tvOS 5.0, *)
  func isMovingFromParentViewController() -> Bool
  @available(tvOS 5.0, *)
  func presentViewController(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
  @available(tvOS 5.0, *)
  func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)?)
  @available(tvOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(tvOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(tvOS 4.3, *)
  func disablesAutomaticKeyboardDismissal() -> Bool
  @available(tvOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(tvOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(tvOS 7.0, *)
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(tvOS 7.0, *)
  var preferredContentSize: CGSize
  @available(tvOS 8.0, *)
  func targetViewControllerForAction(action: Selector, sender: AnyObject?) -> UIViewController?
  @available(tvOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  @available(tvOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(tvOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  @available(tvOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  @available(tvOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  @available(tvOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(tvOS 9.0, *)
  func shouldUpdateFocusInContext(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(tvOS 9.0, *)
  func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
}
extension UIViewController {
  var editing: Bool
  func setEditing(editing: Bool, animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
}
@available(tvOS 5.0, *)
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  @available(tvOS 5.0, *)
  var childViewControllers: [UIViewController] { get }
  @available(tvOS 5.0, *)
  func addChildViewController(childController: UIViewController)
  @available(tvOS 5.0, *)
  func removeFromParentViewController()
  @available(tvOS 5.0, *)
  func transitionFromViewController(fromViewController: UIViewController, toViewController: UIViewController, duration: NSTimeInterval, options: UIViewAnimationOptions, animations: (() -> Void)?, completion: ((Bool) -> Void)?)
  @available(tvOS 5.0, *)
  func beginAppearanceTransition(isAppearing: Bool, animated: Bool)
  @available(tvOS 5.0, *)
  func endAppearanceTransition()
  @available(tvOS 8.0, *)
  func setOverrideTraitCollection(collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(tvOS 8.0, *)
  func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(tvOS 6.0, *)
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  @available(tvOS 5.0, *)
  func willMoveToParentViewController(parent: UIViewController?)
  @available(tvOS 5.0, *)
  func didMoveToParentViewController(parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  var restorationClass: AnyObject.Type?
  @available(tvOS 6.0, *)
  func encodeRestorableStateWithCoder(coder: NSCoder)
  @available(tvOS 6.0, *)
  func decodeRestorableStateWithCoder(coder: NSCoder)
  @available(tvOS 7.0, *)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: AnyObject.Type? { get }
}
extension UIViewController {
  @available(tvOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(tvOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(tvOS 7.0, *)
  var topLayoutGuide: UILayoutSupport { get }
  @available(tvOS 7.0, *)
  var bottomLayoutGuide: UILayoutSupport { get }
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func addKeyCommand(keyCommand: UIKeyCommand)
  @available(tvOS 9.0, *)
  func removeKeyCommand(keyCommand: UIKeyCommand)
}
extension UIViewController : NSExtensionRequestHandling {
  @available(tvOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
  @available(tvOS 8.0, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
extension UIViewController {
  @available(tvOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(tvOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(tvOS 9.0, *)
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(tvOS 9.0, *)
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(tvOS 9.0, *)
  var sourceView: UIView { get }
  @available(tvOS 9.0, *)
  var sourceRect: CGRect { get set }
}
@available(tvOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(tvOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func registerForPreviewingWithDelegate(delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(tvOS 9.0, *)
  func unregisterForPreviewingWithContext(previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func previewActionItems() -> [UIPreviewActionItem]
}
@available(tvOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
@available(tvOS 9.0, *)
enum UIPreviewActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
@available(tvOS 9.0, *)
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewActionStyle, handler: (UIPreviewAction, UIViewController) -> Void)
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var title: String { get }
}
@available(tvOS 9.0, *)
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewActionStyle, actions: [UIPreviewAction])
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  var title: String { get }
}
protocol UIViewControllerTransitionCoordinatorContext : NSObjectProtocol {
  func isAnimated() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func initiallyInteractive() -> Bool
  func isInteractive() -> Bool
  func isCancelled() -> Bool
  func transitionDuration() -> NSTimeInterval
  func percentComplete() -> CGFloat
  func completionVelocity() -> CGFloat
  func completionCurve() -> UIViewAnimationCurve
  @available(tvOS 2.0, *)
  func viewControllerForKey(key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(tvOS 2.0, *)
  func containerView() -> UIView
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  @available(tvOS 2.0, *)
  func animateAlongsideTransitionInView(view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)?) -> Bool
  func notifyWhenInteractionEndsUsingBlock(handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(tvOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
@available(tvOS 7.0, *)
let UITransitionContextFromViewControllerKey: String
@available(tvOS 7.0, *)
let UITransitionContextToViewControllerKey: String
@available(tvOS 8.0, *)
let UITransitionContextFromViewKey: String
@available(tvOS 8.0, *)
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func containerView() -> UIView?
  func isAnimated() -> Bool
  func isInteractive() -> Bool
  func transitionWasCancelled() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func updateInteractiveTransition(percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(didComplete: Bool)
  @available(tvOS 2.0, *)
  func viewControllerForKey(key: String) -> UIViewController?
  @available(tvOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(tvOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(tvOS 2.0, *)
  func initialFrameForViewController(vc: UIViewController) -> CGRect
  @available(tvOS 2.0, *)
  func finalFrameForViewController(vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : NSObjectProtocol {
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func animationEnded(transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : NSObjectProtocol {
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
  optional func completionSpeed() -> CGFloat
  optional func completionCurve() -> UIViewAnimationCurve
}
protocol UIViewControllerTransitioningDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 2.0, *)
  optional func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  optional func presentationControllerForPresentedViewController(presented: UIViewController, presentingViewController presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(tvOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancelInteractiveTransition()
  func finishInteractiveTransition()
  init()
  @available(tvOS 7.0, *)
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
}
@available(tvOS 8.0, *)
enum UIBlurEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ExtraLight
  case Light
  case Dark
}
@available(tvOS 8.0, *)
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(forBlurEffect blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
}
typealias UIWindowLevel = CGFloat
@available(tvOS 2.0, *)
class UIWindow : UIView {
  @available(tvOS 3.2, *)
  var screen: UIScreen
  var windowLevel: UIWindowLevel
  var keyWindow: Bool { get }
  func becomeKeyWindow()
  func resignKeyWindow()
  func makeKeyWindow()
  func makeKeyAndVisible()
  @available(tvOS 4.0, *)
  var rootViewController: UIViewController?
  func sendEvent(event: UIEvent)
  func convertPoint(point: CGPoint, toWindow window: UIWindow?) -> CGPoint
  func convertPoint(point: CGPoint, fromWindow window: UIWindow?) -> CGPoint
  func convertRect(rect: CGRect, toWindow window: UIWindow?) -> CGRect
  func convertRect(rect: CGRect, fromWindow window: UIWindow?) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let UIWindowLevelNormal: UIWindowLevel
let UIWindowLevelAlert: UIWindowLevel
let UIWindowDidBecomeVisibleNotification: String
let UIWindowDidBecomeHiddenNotification: String
let UIWindowDidBecomeKeyNotification: String
let UIWindowDidResignKeyNotification: String
let UIKeyboardWillShowNotification: String
let UIKeyboardDidShowNotification: String
let UIKeyboardWillHideNotification: String
let UIKeyboardDidHideNotification: String
@available(tvOS 3.2, *)
let UIKeyboardFrameBeginUserInfoKey: String
@available(tvOS 3.2, *)
let UIKeyboardFrameEndUserInfoKey: String
@available(tvOS 3.0, *)
let UIKeyboardAnimationDurationUserInfoKey: String
@available(tvOS 3.0, *)
let UIKeyboardAnimationCurveUserInfoKey: String
@available(tvOS 9.0, *)
let UIKeyboardIsLocalUserInfoKey: String
@available(tvOS 5.0, *)
let UIKeyboardWillChangeFrameNotification: String
@available(tvOS 5.0, *)
let UIKeyboardDidChangeFrameNotification: String
