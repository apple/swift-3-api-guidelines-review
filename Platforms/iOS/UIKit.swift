

/************************ Attributes ************************/
@available(iOS 6.0, *)
let NSFontAttributeName: String
@available(iOS 6.0, *)
let NSParagraphStyleAttributeName: String
@available(iOS 6.0, *)
let NSForegroundColorAttributeName: String
@available(iOS 6.0, *)
let NSBackgroundColorAttributeName: String
@available(iOS 6.0, *)
let NSLigatureAttributeName: String
@available(iOS 6.0, *)
let NSKernAttributeName: String
@available(iOS 6.0, *)
let NSStrikethroughStyleAttributeName: String
@available(iOS 6.0, *)
let NSUnderlineStyleAttributeName: String
@available(iOS 6.0, *)
let NSStrokeColorAttributeName: String
@available(iOS 6.0, *)
let NSStrokeWidthAttributeName: String
@available(iOS 6.0, *)
let NSShadowAttributeName: String
@available(iOS 7.0, *)
let NSTextEffectAttributeName: String
@available(iOS 7.0, *)
let NSAttachmentAttributeName: String
@available(iOS 7.0, *)
let NSLinkAttributeName: String
@available(iOS 7.0, *)
let NSBaselineOffsetAttributeName: String
@available(iOS 7.0, *)
let NSUnderlineColorAttributeName: String
@available(iOS 7.0, *)
let NSStrikethroughColorAttributeName: String
@available(iOS 7.0, *)
let NSObliquenessAttributeName: String
@available(iOS 7.0, *)
let NSExpansionAttributeName: String
@available(iOS 7.0, *)
let NSWritingDirectionAttributeName: String
@available(iOS 6.0, *)
let NSVerticalGlyphFormAttributeName: String

/************************ Attribute values ************************/
@available(iOS 6.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(iOS 7.0, *)
  case StyleThick
  @available(iOS 7.0, *)
  case StyleDouble
  @available(iOS 7.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  case PatternDot
  @available(iOS 7.0, *)
  case PatternDash
  @available(iOS 7.0, *)
  case PatternDashDot
  @available(iOS 7.0, *)
  case PatternDashDotDot
  @available(iOS 7.0, *)
  case ByWord
}
@available(iOS 9.0, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(iOS 7.0, *)
let NSTextEffectLetterpressStyle: String

/************************ Attribute fixing ************************/
extension NSMutableAttributedString {
  @available(iOS 7.0, *)
  func fixAttributesIn(range: NSRange)
}

/************************ Document formats ************************/
@available(iOS 7.0, *)
let NSPlainTextDocumentType: String
@available(iOS 7.0, *)
let NSRTFTextDocumentType: String
@available(iOS 7.0, *)
let NSRTFDTextDocumentType: String
@available(iOS 7.0, *)
let NSHTMLTextDocumentType: String
@available(iOS 7.0, *)
let NSTextLayoutSectionOrientation: String
@available(iOS 7.0, *)
let NSTextLayoutSectionRange: String
@available(iOS 7.0, *)
let NSDocumentTypeDocumentAttribute: String
@available(iOS 7.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(iOS 7.0, *)
let NSDefaultAttributesDocumentAttribute: String
@available(iOS 7.0, *)
let NSPaperSizeDocumentAttribute: String
@available(iOS 7.0, *)
let NSPaperMarginDocumentAttribute: String
@available(iOS 7.0, *)
let NSViewSizeDocumentAttribute: String
@available(iOS 7.0, *)
let NSViewZoomDocumentAttribute: String
@available(iOS 7.0, *)
let NSViewModeDocumentAttribute: String
@available(iOS 7.0, *)
let NSReadOnlyDocumentAttribute: String
@available(iOS 7.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(iOS 7.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(iOS 7.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(iOS 7.0, *)
let NSTextLayoutSectionsAttribute: String
extension NSAttributedString {
  @available(iOS 9.0, *)
  init(url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  @available(iOS 7.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
}
extension NSMutableAttributedString {
  @available(iOS 9.0, *)
  func readFrom(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  func readFrom(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}

/************************ Misc methods ************************/
extension NSAttributedString {
  @available(iOS 9.0, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
}

/************************ Deprecated ************************/
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSWritingDirectionFormatType instead")
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
extension NSAttributedString {
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension NSMutableAttributedString {
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFromFileURL(url: NSURL, options opts: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}

/// NSDataAsset represents the contents of data entries in your asset catalog.
/// Data assets are not in the same class of stored content as images, so you cannot use a data asset to get image data for an image.
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class NSFileProviderExtension : NSObject {
  class func writePlaceholderAt(placeholderURL: NSURL, withMetadata metadata: [NSObject : AnyObject]) throws
  class func placeholderURLFor(url: NSURL) -> NSURL
  func providerIdentifier() -> String
  func documentStorageURL() -> NSURL
  func urlForItemWithPersistentIdentifier(identifier: String) -> NSURL?
  func persistentIdentifierForItemAt(url: NSURL) -> String?
  func providePlaceholderAt(url: NSURL, completionHandler: (NSError?) -> Void)
  func startProvidingItemAt(url: NSURL, completionHandler: (NSError?) -> Void)
  func itemChangedAt(url: NSURL)
  func stopProvidingItemAt(url: NSURL)
  init()
}
@available(iOS 9.0, *)
class NSLayoutAnchor : NSObject {
  func constraintEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
@available(iOS 9.0, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
@available(iOS 9.0, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
@available(iOS 9.0, *)
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
  @available(iOS 8.0, *)
  case FirstBaseline
  @available(iOS 8.0, *)
  case LeftMargin
  @available(iOS 8.0, *)
  case RightMargin
  @available(iOS 8.0, *)
  case TopMargin
  @available(iOS 8.0, *)
  case BottomMargin
  @available(iOS 8.0, *)
  case LeadingMargin
  @available(iOS 8.0, *)
  case TrailingMargin
  @available(iOS 8.0, *)
  case CenterXWithinMargins
  @available(iOS 8.0, *)
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
  @available(iOS 8.0, *)
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
typealias UILayoutPriority = Float
@available(iOS 6.0, *)
let UILayoutPriorityRequired: UILayoutPriority
@available(iOS 6.0, *)
let UILayoutPriorityDefaultHigh: UILayoutPriority
@available(iOS 6.0, *)
let UILayoutPriorityDefaultLow: UILayoutPriority
@available(iOS 6.0, *)
let UILayoutPriorityFittingSizeLevel: UILayoutPriority
@available(iOS 6.0, *)
class NSLayoutConstraint : NSObject {
  class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions = [], metrics: [String : AnyObject]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
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
  @available(iOS 8.0, *)
  var isActive: Bool
  @available(iOS 8.0, *)
  class func activateConstraints(constraints: [NSLayoutConstraint])
  @available(iOS 8.0, *)
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
}
extension NSLayoutConstraint {
  @available(iOS 7.0, *)
  var identifier: String?
}
protocol UILayoutSupport : NSObjectProtocol {
  var length: CGFloat { get }
  @available(iOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
}
@available(iOS 7.0, *)
enum NSTextLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(iOS 7.0, *)
enum NSGlyphProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
@available(iOS 7.0, *)
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
  @available(iOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
@available(iOS 7.0, *)
class NSLayoutManager : NSObject, NSCoding {

  /**************************** Initialization ****************************/
  init()
  init?(coder: NSCoder)

  /*************************** Text storage ***************************/
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?

  /**************************** Text containers ****************************/
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, at index: Int)
  func removeTextContainerAt(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)

  /**************************** Delegate ****************************/
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?

  /*********************** Global layout manager options ***********************/
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: CGFloat
  var usesFontLeading: Bool
  @available(iOS 7.0, *)
  var allowsNonContiguousLayout: Bool
  @available(iOS 7.0, *)
  var hasNonContiguousLayout: Bool { get }

  /************************** Invalidation **************************/
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(iOS 7.0, *)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  @available(iOS 7.0, *)
  func processEditingFor(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)

  /************************ Causing glyph generation and layout ************************/
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutFor(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: CGRect, in container: NSTextContainer)

  /************************ Set glyphs and glyph properties ************************/
  @available(iOS 7.0, *)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)

  /************************ Get glyphs and glyph properties ************************/
  var numberOfGlyphs: Int { get }
  func cgGlyphAt(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func cgGlyphAt(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  @available(iOS 7.0, *)
  func propertyForGlyphAt(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAt(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAt(charIndex: Int) -> Int
  @available(iOS 7.0, *)
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect)
  func setExtraLineFragmentRect(fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAt glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAt glyphIndex: Int)
  func setAttachmentSize(attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)

  /************************ Get layout information ************************/
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(iOS 9.0, *)
  func textContainerForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectFor(container: NSTextContainer) -> CGRect
  func lineFragmentRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentUsedRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAt(glyphIndex: Int) -> CGPoint
  func notShownAttributeForGlyphAt(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAt(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAt(glyphIndex: Int) -> CGSize
  @available(iOS 7.0, *)
  func truncatedGlyphRangeInLineFragmentForGlyphAt(glyphIndex: Int) -> NSRange

  /************************ More sophisticated queries ************************/
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeFor(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContaining(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, in container: NSTextContainer) -> CGRect
  func glyphRangeForBoundingRect(bounds: CGRect, in container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: CGRect, in container: NSTextContainer) -> NSRange
  func glyphIndexFor(point: CGPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexFor(point: CGPoint, in container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphFor(point: CGPoint, in container: NSTextContainer) -> CGFloat
  func characterIndexFor(point: CGPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAt(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(iOS 7.0, *)
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, usingBlock block: (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)

  /************************ Drawing support ************************/
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, at origin: CGPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, at origin: CGPoint)
  @available(iOS 7.0, *)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [String : AnyObject], in graphicsContext: CGContext)
  @available(iOS 7.0, *)
  func fillBackgroundRectArray(rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: UIColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {

  /************************ Glyph generation ************************/
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int

  /************************ Line layout ************************/
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUse action: NSControlCharacterAction, forControlCharacterAt charIndex: Int) -> NSControlCharacterAction
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAt charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 9.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool

  /************************ Layout processing ************************/
  @available(iOS 7.0, *)
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(iOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: CGSize)
}
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionZeroAdvancement instead")
var NSControlCharacterZeroAdvancementAction: Int { get }
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionWhitespace instead")
var NSControlCharacterWhitespaceAction: Int { get }
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionHorizontalTab instead")
var NSControlCharacterHorizontalTabAction: Int { get }
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionLineBreak instead")
var NSControlCharacterLineBreakAction: Int { get }
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionParagraphBreak instead")
var NSControlCharacterParagraphBreakAction: Int { get }
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSControlCharacterActionContainerBreak instead")
var NSControlCharacterContainerBreakAction: Int { get }
extension NSLayoutManager {
  func glyphAt(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func glyphAt(glyphIndex: Int) -> CGGlyph
}
@available(iOS 7.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(iOS 7.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding {
  @available(iOS 7.0, *)
  class func columnTerminatorsFor(aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(iOS 7.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
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
@available(iOS 6.0, *)
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
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab] { get }
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  init()
  @available(iOS 6.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
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
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab]!
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(iOS 9.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(iOS 9.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(iOS 9.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(iOS 6.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(iOS 6.0, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(iOS 7.0, *)
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> CGSize
  @available(iOS 7.0, *)
  func drawAt(point: CGPoint, withAttributes attrs: [String : AnyObject]?)
  @available(iOS 7.0, *)
  func drawIn(rect: CGRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(iOS 6.0, *)
  func size() -> CGSize
  @available(iOS 6.0, *)
  func drawAt(point: CGPoint)
  @available(iOS 6.0, *)
  func drawIn(rect: CGRect)
}
@available(iOS 6.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(iOS 6.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(iOS 7.0, *)
  func drawWith(rect: CGRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  @available(iOS 7.0, *)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> CGRect
}
extension NSAttributedString {
  @available(iOS 6.0, *)
  func drawWith(rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(iOS 6.0, *)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}

/************************ Deprecated ************************/
extension NSStringDrawingContext {
}
@available(iOS 6.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
  case Justified
  case Natural
}
@available(iOS 6.0, *)
func NSTextAlignmentToCTTextAlignment(nsTextAlignment: NSTextAlignment) -> CTTextAlignment
@available(iOS 6.0, *)
func NSTextAlignmentFromCTTextAlignment(ctTextAlignment: CTTextAlignment) -> NSTextAlignment
@available(iOS 6.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
@available(iOS 7.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(iOS 7.0, *)
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(iOS 7.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {

  /**************************** Initialization ****************************/
  @available(iOS 7.0, *)
  init(data contentData: NSData?, ofType uti: String?)

  /**************************** Content properties ****************************/
  @available(iOS 7.0, *)
  @NSCopying var contents: NSData?
  @available(iOS 7.0, *)
  var fileType: String?

  /**************************** Rendering/layout properties ****************************/
  @available(iOS 7.0, *)
  var image: UIImage?
  @available(iOS 7.0, *)
  var bounds: CGRect

  /**************************** Non-image contents properties ****************************/
  var fileWrapper: NSFileWrapper?
  convenience init()
  @available(iOS 7.0, *)
  func imageForBounds(imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(iOS 7.0, *)
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  @available(iOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
@available(iOS 7.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {

  /**************************** Initialization ****************************/
  @available(iOS 7.0, *)
  init(size: CGSize)
  init?(coder: NSCoder)

  /**************************** Layout ****************************/
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(iOS 9.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)

  /************************* Container shape properties *************************/
  @available(iOS 7.0, *)
  var size: CGSize
  @available(iOS 7.0, *)
  var exclusionPaths: [UIBezierPath]
  @available(iOS 7.0, *)
  var lineBreakMode: NSLineBreakMode

  /************************* Layout constraint properties *************************/
  var lineFragmentPadding: CGFloat
  @available(iOS 7.0, *)
  var maximumNumberOfLines: Int

  /**************************** Line fragments ****************************/
  @available(iOS 7.0, *)
  func lineFragmentRectForProposedRect(proposedRect: CGRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<CGRect>) -> CGRect
  @available(iOS 9.0, *)
  var isSimpleRectangularTextContainer: Bool { get }

  /**************************** View synchronization ****************************/
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  convenience init()
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
  @available(iOS 7.0, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
@available(iOS 7.0, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
@available(iOS 7.0, *)
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
  func invalidateAttributesIn(range: NSRange)
  func ensureAttributesAreFixedIn(range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  init(url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}

/****  NSTextStorage delegate methods ****/
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(iOS 7.0, *)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}

/**** Notifications ****/
@available(iOS 7.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(iOS 7.0, *)
let NSTextStorageDidProcessEditingNotification: String
typealias UIAccelerationValue = Double
protocol UIAccelerometerDelegate : NSObjectProtocol {
}
extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @available(iOS 7.0, *)
  @NSCopying var accessibilityPath: UIBezierPath?
  @available(iOS 5.0, *)
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  @available(iOS 5.0, *)
  var accessibilityElementsHidden: Bool
  @available(iOS 5.0, *)
  var accessibilityViewIsModal: Bool
  @available(iOS 6.0, *)
  var shouldGroupAccessibilityChildren: Bool
  @available(iOS 8.0, *)
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
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
@available(iOS 7.0, *)
func UIAccessibilityConvertFrameToScreenCoordinates(rect: CGRect, _ view: UIView) -> CGRect
@available(iOS 7.0, *)
func UIAccessibilityConvertPathToScreenCoordinates(path: UIBezierPath, _ view: UIView) -> UIBezierPath
extension NSObject {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElementAt(index: Int) -> AnyObject?
  func accessibilityElementAt(index: Int) -> AnyObject?
  class func indexOfAccessibilityElement(element: AnyObject) -> Int
  func indexOfAccessibilityElement(element: AnyObject) -> Int
  @available(iOS 8.0, *)
  var accessibilityElements: [AnyObject]?
  class func accessibilityElements() -> [AnyObject]?
  class func setAccessibilityElements(accessibilityElements: [AnyObject]?)
}
extension NSObject {
  @available(iOS 4.0, *)
  class func accessibilityElementDidBecomeFocused()
  @available(iOS 4.0, *)
  func accessibilityElementDidBecomeFocused()
  @available(iOS 4.0, *)
  class func accessibilityElementDidLoseFocus()
  @available(iOS 4.0, *)
  func accessibilityElementDidLoseFocus()
  @available(iOS 4.0, *)
  class func accessibilityElementIsFocused() -> Bool
  @available(iOS 4.0, *)
  func accessibilityElementIsFocused() -> Bool
  @available(iOS 9.0, *)
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
  @available(iOS 9.0, *)
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
}
@available(iOS 9.0, *)
func UIAccessibilityFocusedElement(assistiveTechnologyIdentifier: String?) -> AnyObject?
extension NSObject {
  @available(iOS 7.0, *)
  class func accessibilityActivate() -> Bool
  @available(iOS 7.0, *)
  func accessibilityActivate() -> Bool
  @available(iOS 4.0, *)
  class func accessibilityIncrement()
  @available(iOS 4.0, *)
  func accessibilityIncrement()
  @available(iOS 4.0, *)
  class func accessibilityDecrement()
  @available(iOS 4.0, *)
  func accessibilityDecrement()
  @available(iOS 4.2, *)
  class func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  @available(iOS 4.2, *)
  func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  @available(iOS 5.0, *)
  class func accessibilityPerformEscape() -> Bool
  @available(iOS 5.0, *)
  func accessibilityPerformEscape() -> Bool
  @available(iOS 6.0, *)
  class func accessibilityPerformMagicTap() -> Bool
  @available(iOS 6.0, *)
  func accessibilityPerformMagicTap() -> Bool
  @available(iOS 8.0, *)
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
  @available(iOS 5.0, *)
  case Next
  @available(iOS 5.0, *)
  case Previous
}
protocol UIAccessibilityReadingContent {
  @available(iOS 5.0, *)
  func accessibilityLineNumberFor(point: CGPoint) -> Int
  @available(iOS 5.0, *)
  func accessibilityContentForLineNumber(lineNumber: Int) -> String?
  @available(iOS 5.0, *)
  func accessibilityFrameForLineNumber(lineNumber: Int) -> CGRect
  @available(iOS 5.0, *)
  func accessibilityPageContent() -> String?
}
func UIAccessibilityPostNotification(notification: UIAccessibilityNotifications, _ argument: AnyObject?)
@available(iOS 4.0, *)
func UIAccessibilityIsVoiceOverRunning() -> Bool
@available(iOS 4.0, *)
let UIAccessibilityVoiceOverStatusChanged: String
@available(iOS 5.0, *)
func UIAccessibilityIsMonoAudioEnabled() -> Bool
@available(iOS 5.0, *)
let UIAccessibilityMonoAudioStatusDidChangeNotification: String
@available(iOS 5.0, *)
func UIAccessibilityIsClosedCaptioningEnabled() -> Bool
@available(iOS 5.0, *)
let UIAccessibilityClosedCaptioningStatusDidChangeNotification: String
@available(iOS 6.0, *)
func UIAccessibilityIsInvertColorsEnabled() -> Bool
@available(iOS 6.0, *)
let UIAccessibilityInvertColorsStatusDidChangeNotification: String
@available(iOS 6.0, *)
func UIAccessibilityIsGuidedAccessEnabled() -> Bool
@available(iOS 6.0, *)
let UIAccessibilityGuidedAccessStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsBoldTextEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilityBoldTextStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsGrayscaleEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilityGrayscaleStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsReduceTransparencyEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilityReduceTransparencyStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsReduceMotionEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilityReduceMotionStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityDarkerSystemColorsEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilityDarkerSystemColorsStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsSwitchControlRunning() -> Bool
@available(iOS 8.0, *)
let UIAccessibilitySwitchControlStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsSpeakSelectionEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilitySpeakSelectionStatusDidChangeNotification: String
@available(iOS 8.0, *)
func UIAccessibilityIsSpeakScreenEnabled() -> Bool
@available(iOS 8.0, *)
let UIAccessibilitySpeakScreenStatusDidChangeNotification: String
@available(iOS 9.0, *)
func UIAccessibilityIsShakeToUndoEnabled() -> Bool
@available(iOS 9.0, *)
let UIAccessibilityShakeToUndoDidChangeNotification: String
@available(iOS 7.0, *)
func UIAccessibilityRequestGuidedAccessSession(enable: Bool, _ completionHandler: (Bool) -> Void)
protocol UIPickerViewAccessibilityDelegate : UIPickerViewDelegate {
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, accessibilityLabelForComponent component: Int) -> String?
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, accessibilityHintForComponent component: Int) -> String?
}
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func accessibilityScrollStatusFor(scrollView: UIScrollView) -> String?
}
typealias UIAccessibilityTraits = UInt64
var UIAccessibilityTraitNone: UIAccessibilityTraits
var UIAccessibilityTraitButton: UIAccessibilityTraits
var UIAccessibilityTraitLink: UIAccessibilityTraits
@available(iOS 6.0, *)
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
@available(iOS 4.0, *)
var UIAccessibilityTraitStartsMediaSession: UIAccessibilityTraits
@available(iOS 4.0, *)
var UIAccessibilityTraitAdjustable: UIAccessibilityTraits
@available(iOS 5.0, *)
var UIAccessibilityTraitAllowsDirectInteraction: UIAccessibilityTraits
@available(iOS 5.0, *)
var UIAccessibilityTraitCausesPageTurn: UIAccessibilityTraits
typealias UIAccessibilityNotifications = UInt32
var UIAccessibilityScreenChangedNotification: UIAccessibilityNotifications
var UIAccessibilityLayoutChangedNotification: UIAccessibilityNotifications
@available(iOS 4.0, *)
var UIAccessibilityAnnouncementNotification: UIAccessibilityNotifications
@available(iOS 6.0, *)
let UIAccessibilityAnnouncementDidFinishNotification: String
@available(iOS 6.0, *)
let UIAccessibilityAnnouncementKeyStringValue: String
@available(iOS 6.0, *)
let UIAccessibilityAnnouncementKeyWasSuccessful: String
@available(iOS 9.0, *)
let UIAccessibilityElementFocusedNotification: String
@available(iOS 9.0, *)
let UIAccessibilityFocusedElementKey: String
@available(iOS 9.0, *)
let UIAccessibilityUnfocusedElementKey: String
@available(iOS 9.0, *)
let UIAccessibilityAssistiveTechnologyKey: String
@available(iOS 4.2, *)
var UIAccessibilityPageScrolledNotification: UIAccessibilityNotifications
@available(iOS 8.0, *)
var UIAccessibilityPauseAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(iOS 8.0, *)
var UIAccessibilityResumeAssistiveTechnologyNotification: UIAccessibilityNotifications
@available(iOS 8.0, *)
let UIAccessibilityNotificationSwitchControlIdentifier: String
@available(iOS 9.0, *)
let UIAccessibilityNotificationVoiceOverIdentifier: String
@available(iOS 8.0, *)
enum UIAccessibilityNavigationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Separate
  case Combined
}
@available(iOS 7.0, *)
let UIAccessibilitySpeechAttributePunctuation: String
@available(iOS 7.0, *)
let UIAccessibilitySpeechAttributeLanguage: String
@available(iOS 7.0, *)
let UIAccessibilitySpeechAttributePitch: String
@available(iOS 8.0, *)
class UIAccessibilityCustomAction : NSObject {
  init(name: String, target: AnyObject?, selector: Selector)
  var name: String
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  init()
}
@available(iOS 3.0, *)
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
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
protocol UIAccessibilityIdentification : NSObjectProtocol {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String? { get set }
}
extension UIView : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIBarItem : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIImage : UIAccessibilityIdentification {
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
@available(iOS 5.0, *)
enum UIAccessibilityZoomType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsertionPoint
}
@available(iOS 5.0, *)
func UIAccessibilityZoomFocusChanged(type: UIAccessibilityZoomType, _ frame: CGRect, _ view: UIView)
@available(iOS 5.0, *)
func UIAccessibilityRegisterGestureConflictWithZoom()
enum UIActionSheetStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Default
  case BlackTranslucent
  case BlackOpaque
}
@available(iOS, introduced=2.0, deprecated=8.3, message="UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead")
class UIActionSheet : UIView {
  init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?)
  weak var delegate: @sil_weak UIActionSheetDelegate?
  var title: String
  var actionSheetStyle: UIActionSheetStyle
  func addButtonWithTitle(title: String?) -> Int
  func buttonTitleAt(buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var destructiveButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  func showFrom(view: UIToolbar)
  func showFrom(view: UITabBar)
  @available(iOS 3.2, *)
  func showFrom(item: UIBarButtonItem, animated: Bool)
  @available(iOS 3.2, *)
  func showFrom(rect: CGRect, in view: UIView, animated: Bool)
  func showIn(view: UIView)
  func dismissWithClickedButtonIndex(buttonIndex: Int, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

extension UIActionSheet {
  convenience init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIActionSheetDelegate : NSObjectProtocol {
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheetCancel(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func willPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func didPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  optional func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
@available(iOS 6.0, *)
let UIActivityTypePostToFacebook: String
@available(iOS 6.0, *)
let UIActivityTypePostToTwitter: String
@available(iOS 6.0, *)
let UIActivityTypePostToWeibo: String
@available(iOS 6.0, *)
let UIActivityTypeMessage: String
@available(iOS 6.0, *)
let UIActivityTypeMail: String
@available(iOS 6.0, *)
let UIActivityTypePrint: String
@available(iOS 6.0, *)
let UIActivityTypeCopyToPasteboard: String
@available(iOS 6.0, *)
let UIActivityTypeAssignToContact: String
@available(iOS 6.0, *)
let UIActivityTypeSaveToCameraRoll: String
@available(iOS 7.0, *)
let UIActivityTypeAddToReadingList: String
@available(iOS 7.0, *)
let UIActivityTypePostToFlickr: String
@available(iOS 7.0, *)
let UIActivityTypePostToVimeo: String
@available(iOS 7.0, *)
let UIActivityTypePostToTencentWeibo: String
@available(iOS 7.0, *)
let UIActivityTypeAirDrop: String
@available(iOS 9.0, *)
let UIActivityTypeOpenInIBooks: String
@available(iOS 7.0, *)
enum UIActivityCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Action
  case Share
}
@available(iOS 6.0, *)
class UIActivity : NSObject {
  @available(iOS 7.0, *)
  class func activityCategory() -> UIActivityCategory
  func activityType() -> String?
  func activityTitle() -> String?
  func activityImage() -> UIImage?
  func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool
  func prepareWithActivityItems(activityItems: [AnyObject])
  func activityViewController() -> UIViewController?
  func performActivity()
  func activityDidFinish(completed: Bool)
  init()
}
enum UIActivityIndicatorViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WhiteLarge
  case White
  case Gray
}
@available(iOS 2.0, *)
class UIActivityIndicatorView : UIView, NSCoding {
  init(activityIndicatorStyle style: UIActivityIndicatorViewStyle)
  init(frame: CGRect)
  init(coder: NSCoder)
  var activityIndicatorViewStyle: UIActivityIndicatorViewStyle
  var hidesWhenStopped: Bool
  @available(iOS 5.0, *)
  var color: UIColor?
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  convenience init()
}
protocol UIActivityItemSource : NSObjectProtocol {
  @available(iOS 6.0, *)
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  @available(iOS 6.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  optional func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
@available(iOS 6.0, *)
class UIActivityItemProvider : NSOperation, UIActivityItemSource {
  init(placeholderItem: AnyObject)
  var placeholderItem: AnyObject? { get }
  var activityType: String? { get }
  func item() -> AnyObject
  @available(iOS 6.0, *)
  func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> AnyObject
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> AnyObject?
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, dataTypeIdentifierForActivityType activityType: String?) -> String
  @available(iOS 6.0, *)
  func activityViewController(activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: String?, suggestedSize size: CGSize) -> UIImage?
}
typealias UIActivityViewControllerCompletionHandler = (String?, Bool) -> Void
typealias UIActivityViewControllerCompletionWithItemsHandler = (String?, Bool, [AnyObject]?, NSError?) -> Void
@available(iOS 6.0, *)
class UIActivityViewController : UIViewController {
  init(activityItems: [AnyObject], applicationActivities: [UIActivity]?)
  @available(iOS, introduced=6.0, deprecated=8.0, message="Use completionWithItemsHandler instead.")
  var completionHandler: UIActivityViewControllerCompletionHandler?
  @available(iOS 8.0, *)
  var completionWithItemsHandler: UIActivityViewControllerCompletionWithItemsHandler?
  var excludedActivityTypes: [String]?
}
@available(iOS 8.0, *)
enum UIAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
@available(iOS 8.0, *)
enum UIAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ActionSheet
  case Alert
}
@available(iOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil)
  var title: String? { get }
  var style: UIAlertActionStyle { get }
  var isEnabled: Bool
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle)
  func addAction(action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(iOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextField(configurationHandler configurationHandler: ((UITextField) -> Void)? = nil)
  var textFields: [UITextField]? { get }
  var title: String?
  var message: String?
  var preferredStyle: UIAlertControllerStyle { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIAlertViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case SecureTextInput
  case PlainTextInput
  case LoginAndPasswordInput
}
@available(iOS, introduced=2.0, deprecated=9.0, message="UIAlertView is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleAlert instead")
class UIAlertView : UIView {
  convenience init(title: String?, message: String?, delegate: AnyObject?, cancelButtonTitle: String?)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  weak var delegate: @sil_weak AnyObject?
  var title: String
  var message: String?
  func addButtonWithTitle(title: String?) -> Int
  func buttonTitleAt(buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  func show()
  func dismissWithClickedButtonIndex(buttonIndex: Int, animated: Bool)
  @available(iOS 5.0, *)
  var alertViewStyle: UIAlertViewStyle
  @available(iOS 5.0, *)
  func textFieldAt(textFieldIndex: Int) -> UITextField?
  convenience init()
}

extension UIAlertView {
  convenience init(title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIAlertViewDelegate : NSObjectProtocol {
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(alertView: UIAlertView, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertViewCancel(alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func willPresent(alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func didPresent(alertView: UIAlertView)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=9.0)
  optional func alertViewShouldEnableFirstOtherButton(alertView: UIAlertView) -> Bool
}
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  static func appearanceFor(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
}
enum UIStatusBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 7.0, *)
  case LightContent
}
enum UIStatusBarAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  @available(iOS 3.2, *)
  case Fade
  @available(iOS 3.2, *)
  case Slide
}
enum UIInterfaceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
}

extension UIInterfaceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
}
@available(iOS 6.0, *)
let UIApplicationInvalidInterfaceOrientationException: String
struct UIInterfaceOrientationMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Portrait: UIInterfaceOrientationMask { get }
  static var LandscapeLeft: UIInterfaceOrientationMask { get }
  static var LandscapeRight: UIInterfaceOrientationMask { get }
  static var PortraitUpsideDown: UIInterfaceOrientationMask { get }
  static var Landscape: UIInterfaceOrientationMask { get }
  static var All: UIInterfaceOrientationMask { get }
  static var AllButUpsideDown: UIInterfaceOrientationMask { get }
}
func UIInterfaceOrientationIsPortrait(orientation: UIInterfaceOrientation) -> Bool
func UIInterfaceOrientationIsLandscape(orientation: UIInterfaceOrientation) -> Bool
@available(iOS, introduced=3.0, deprecated=8.0, message="Use UIUserNotificationType for user notifications and registerForRemoteNotifications for receiving remote notifications instead.")
struct UIRemoteNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIRemoteNotificationType { get }
  static var Badge: UIRemoteNotificationType { get }
  static var Sound: UIRemoteNotificationType { get }
  static var Alert: UIRemoteNotificationType { get }
  static var NewsstandContentAvailability: UIRemoteNotificationType { get }
}
@available(iOS 7.0, *)
enum UIBackgroundFetchResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
@available(iOS 7.0, *)
enum UIBackgroundRefreshStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Restricted
  case Denied
  case Available
}
@available(iOS 4.0, *)
enum UIApplicationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Active
  case Inactive
  case Background
}
typealias UIBackgroundTaskIdentifier = Int
@available(iOS 4.0, *)
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
@available(iOS 4.0, *)
let UIMinimumKeepAliveTimeout: NSTimeInterval
@available(iOS 7.0, *)
let UIApplicationBackgroundFetchIntervalMinimum: NSTimeInterval
@available(iOS 7.0, *)
let UIApplicationBackgroundFetchIntervalNever: NSTimeInterval
@available(iOS 2.0, *)
class UIApplication : UIResponder {
  class func shared() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var isIdleTimerDisabled: Bool
  func open(url: NSURL) -> Bool
  @available(iOS 3.0, *)
  func canOpen(url: NSURL) -> Bool
  func send(event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  var isNetworkActivityIndicatorVisible: Bool
  @available(iOS 6.0, *)
  func supportedInterfaceOrientationsFor(window: UIWindow?) -> UIInterfaceOrientationMask
  var statusBarOrientationAnimationDuration: NSTimeInterval { get }
  var statusBarFrame: CGRect { get }
  var applicationIconBadgeNumber: Int
  @available(iOS 3.0, *)
  var applicationSupportsShakeToEdit: Bool
  @available(iOS 4.0, *)
  var applicationState: UIApplicationState { get }
  @available(iOS 4.0, *)
  var backgroundTimeRemaining: NSTimeInterval { get }
  @available(iOS 4.0, *)
  func beginBackgroundTask(expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 7.0, *)
  func beginBackgroundTaskWithName(taskName: String?, expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 4.0, *)
  func endBackgroundTask(identifier: UIBackgroundTaskIdentifier)

  /*! The system guarantees that it will not wake up your application for a background fetch more
      frequently than the interval provided. Set to UIApplicationBackgroundFetchIntervalMinimum to be
      woken as frequently as the system desires, or to UIApplicationBackgroundFetchIntervalNever (the
      default) to never be woken for a background fetch.
   
      This setter will have no effect unless your application has the "fetch" 
      UIBackgroundMode. See the UIApplicationDelegate method
      `application:performFetchWithCompletionHandler:` for more. */
  @available(iOS 7.0, *)
  func setMinimumBackgroundFetchInterval(minimumBackgroundFetchInterval: NSTimeInterval)

  /*! When background refresh is available for an application, it may launched or resumed in the background to handle significant
      location changes, remote notifications, background fetches, etc. Observe UIApplicationBackgroundRefreshStatusDidChangeNotification to
      be notified of changes. */
  @available(iOS 7.0, *)
  var backgroundRefreshStatus: UIBackgroundRefreshStatus { get }
  @available(iOS 4.0, *)
  var isProtectedDataAvailable: Bool { get }
  @available(iOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(iOS 7.0, *)
  var preferredContentSizeCategory: String { get }
  init()
}
extension UIApplication {
  @available(iOS 8.0, *)
  func registerForRemoteNotifications()
  @available(iOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(iOS 8.0, *)
  func isRegisteredForRemoteNotifications() -> Bool
  @available(iOS, introduced=3.0, deprecated=8.0, message="Please use registerForRemoteNotifications and registerUserNotificationSettings: instead")
  func registerForRemoteNotificationTypes(types: UIRemoteNotificationType)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Please use -[UIApplication isRegisteredForRemoteNotifications], or -[UIApplication currentUserNotificationSettings] to retrieve user-enabled remote notification and user notification settings")
  func enabledRemoteNotificationTypes() -> UIRemoteNotificationType
}
extension UIApplication {
  @available(iOS 4.0, *)
  func presentLocalNotificationNow(notification: UILocalNotification)
  @available(iOS 4.0, *)
  func scheduleLocalNotification(notification: UILocalNotification)
  @available(iOS 4.0, *)
  func cancel(notification: UILocalNotification)
  @available(iOS 4.0, *)
  func cancelAllLocalNotifications()
  @available(iOS 4.0, *)
  var scheduledLocalNotifications: [UILocalNotification]?
}
extension UIApplication {
  @available(iOS 8.0, *)
  func register(notificationSettings: UIUserNotificationSettings)
  @available(iOS 8.0, *)
  func currentUserNotificationSettings() -> UIUserNotificationSettings?
}
extension UIApplication {
  @available(iOS 4.0, *)
  func beginReceivingRemoteControlEvents()
  @available(iOS 4.0, *)
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
  @available(iOS, introduced=9.0, deprecated=9.0, message="Newsstand apps now behave like normal apps on SpringBoard")
  func setNewsstandIconImage(image: UIImage?)
}
extension UIApplication {
  @available(iOS 9.0, *)
  var shortcutItems: [UIApplicationShortcutItem]?
}
extension UIApplication {
  @available(iOS 6.0, *)
  func extendStateRestoration()
  @available(iOS 6.0, *)
  func completeStateRestoration()
  @available(iOS 7.0, *)
  func ignoreSnapshotOnNextApplicationLaunch()
  @available(iOS 7.0, *)
  class func registerObjectForStateRestoration(object: UIStateRestoring, restorationIdentifier: String)
}
protocol UIApplicationDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func applicationDidFinishLaunching(application: UIApplication)
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidBecomeActive(application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillResignActive(application: UIApplication)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Please use application:openURL:options:")
  optional func application(application: UIApplication, handleOpen url: NSURL) -> Bool
  @available(iOS, introduced=4.2, deprecated=9.0, message="Please use application:openURL:options:")
  optional func application(application: UIApplication, open url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool
  @available(iOS 9.0, *)
  optional func application(app: UIApplication, open url: NSURL, options: [String : AnyObject]) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillTerminate(application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationSignificantTimeChange(application: UIApplication)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWith error: NSError)
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject])
  @available(iOS 4.0, *)
  optional func application(application: UIApplication, didReceive notification: UILocalNotification)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject], completionHandler: () -> Void)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [NSObject : AnyObject], completionHandler: () -> Void)
  @available(iOS 9.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject], completionHandler: () -> Void)

  /*! This delegate method offers an opportunity for applications with the "remote-notification" background mode to fetch appropriate new data in response to an incoming remote notification. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
   
   This method will be invoked even if the application was launched or resumed because of the remote notification. The respective delegate methods will be invoked first. Note that this behavior is in contrast to application:didReceiveRemoteNotification:, which is not called in those cases, and which will not be invoked if this method is implemented. !*/
  @available(iOS 7.0, *)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject], fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)

  /// Applications with the "fetch" background mode may be given opportunities to fetch updated content in the background or when it is convenient for the system. This method will be called in these situations. You should call the fetchCompletionHandler as soon as you're finished performing that operation, so the system can accurately estimate its power and data cost.
  @available(iOS 7.0, *)
  optional func application(application: UIApplication, performFetchWithCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  @available(iOS 9.0, *)
  optional func application(application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void)
  @available(iOS 7.0, *)
  optional func application(application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: () -> Void)
  @available(iOS 8.2, *)
  optional func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: ([NSObject : AnyObject]?) -> Void)
  @available(iOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationDidEnterBackground(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationWillEnterForeground(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(application: UIApplication)
  @available(iOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, willEncodeRestorableStateWith coder: NSCoder)
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, didDecodeRestorableStateWith coder: NSCoder)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: NSError)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, didUpdateUserActivity userActivity: NSUserActivity)
}
extension UIApplication {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  var statusBarOrientation: UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=9.0, message="Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  func setStatusBarOrientation(interfaceOrientation: UIInterfaceOrientation, animated: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController preferredStatusBarStyle]")
  var statusBarStyle: UIStatusBarStyle
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController preferredStatusBarStyle]")
  func setStatusBarStyle(statusBarStyle: UIStatusBarStyle, animated: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController prefersStatusBarHidden]")
  var statusBarHidden: Bool
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(hidden: Bool, withAnimation animation: UIStatusBarAnimation)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Please use UIRemoteNotificationTypeVoIP remote notifications for VoIP applications")
  func setKeepAliveTimeout(timeout: NSTimeInterval, handler keepAliveHandler: (() -> Void)? = nil) -> Bool
  @available(iOS, introduced=4.0, deprecated=9.0, message="Please use UIRemoteNotificationTypeVoIP remote notifications for VoIP applications")
  func clearKeepAliveTimeout()
}
func UIApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
let UITrackingRunLoopMode: String
@available(iOS 4.0, *)
let UIApplicationDidEnterBackgroundNotification: String
@available(iOS 4.0, *)
let UIApplicationWillEnterForegroundNotification: String
let UIApplicationDidFinishLaunchingNotification: String
let UIApplicationDidBecomeActiveNotification: String
let UIApplicationWillResignActiveNotification: String
let UIApplicationDidReceiveMemoryWarningNotification: String
let UIApplicationWillTerminateNotification: String
let UIApplicationSignificantTimeChangeNotification: String
let UIApplicationWillChangeStatusBarOrientationNotification: String
let UIApplicationDidChangeStatusBarOrientationNotification: String
let UIApplicationStatusBarOrientationUserInfoKey: String
let UIApplicationWillChangeStatusBarFrameNotification: String
let UIApplicationDidChangeStatusBarFrameNotification: String
let UIApplicationStatusBarFrameUserInfoKey: String
@available(iOS 7.0, *)
let UIApplicationBackgroundRefreshStatusDidChangeNotification: String
@available(iOS 3.0, *)
let UIApplicationLaunchOptionsURLKey: String
@available(iOS 3.0, *)
let UIApplicationLaunchOptionsSourceApplicationKey: String
@available(iOS 3.0, *)
let UIApplicationLaunchOptionsRemoteNotificationKey: String
@available(iOS 4.0, *)
let UIApplicationLaunchOptionsLocalNotificationKey: String
@available(iOS 3.2, *)
let UIApplicationLaunchOptionsAnnotationKey: String
@available(iOS 4.0, *)
let UIApplicationProtectedDataWillBecomeUnavailable: String
@available(iOS 4.0, *)
let UIApplicationProtectedDataDidBecomeAvailable: String
@available(iOS 4.0, *)
let UIApplicationLaunchOptionsLocationKey: String
@available(iOS 5.0, *)
let UIApplicationLaunchOptionsNewsstandDownloadsKey: String
@available(iOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothCentralsKey: String
@available(iOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: String
@available(iOS 9.0, *)
let UIApplicationLaunchOptionsShortcutItemKey: String
@available(iOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityDictionaryKey: String
@available(iOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityTypeKey: String
@available(iOS 8.0, *)
let UIApplicationOpenSettingsURLString: String
@available(iOS 9.0, *)
let UIApplicationOpenURLOptionsSourceApplicationKey: String
@available(iOS 9.0, *)
let UIApplicationOpenURLOptionsAnnotationKey: String
@available(iOS 9.0, *)
let UIApplicationOpenURLOptionsOpenInPlaceKey: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraSmall: String
@available(iOS 7.0, *)
let UIContentSizeCategorySmall: String
@available(iOS 7.0, *)
let UIContentSizeCategoryMedium: String
@available(iOS 7.0, *)
let UIContentSizeCategoryLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityMedium: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryDidChangeNotification: String
@available(iOS 7.0, *)
let UIContentSizeCategoryNewValueKey: String
@available(iOS 7.0, *)
let UIApplicationUserDidTakeScreenshotNotification: String
@available(iOS 8.0, *)
let UIApplicationKeyboardExtensionPointIdentifier: String
@available(iOS 9.0, *)
enum UIApplicationShortcutIconType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Compose
  case Play
  case Pause
  case Add
  case Location
  case Search
  case Share
  @available(iOS 9.1, *)
  case Prohibit
  @available(iOS 9.1, *)
  case Contact
  @available(iOS 9.1, *)
  case Home
  @available(iOS 9.1, *)
  case MarkLocation
  @available(iOS 9.1, *)
  case Favorite
  @available(iOS 9.1, *)
  case Love
  @available(iOS 9.1, *)
  case Cloud
  @available(iOS 9.1, *)
  case Invitation
  @available(iOS 9.1, *)
  case Confirmation
  @available(iOS 9.1, *)
  case Mail
  @available(iOS 9.1, *)
  case Message
  @available(iOS 9.1, *)
  case Date
  @available(iOS 9.1, *)
  case Time
  @available(iOS 9.1, *)
  case CapturePhoto
  @available(iOS 9.1, *)
  case CaptureVideo
  @available(iOS 9.1, *)
  case Task
  @available(iOS 9.1, *)
  case TaskCompleted
  @available(iOS 9.1, *)
  case Alarm
  @available(iOS 9.1, *)
  case Bookmark
  @available(iOS 9.1, *)
  case Shuffle
  @available(iOS 9.1, *)
  case Audio
  @available(iOS 9.1, *)
  case Update
}
@available(iOS 9.0, *)
class UIApplicationShortcutIcon : NSObject, NSCopying {
  convenience init(type: UIApplicationShortcutIconType)
  convenience init(templateImageName: String)
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class UIApplicationShortcutItem : NSObject, NSCopying, NSMutableCopying {
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [NSObject : AnyObject]?)
  convenience init(type: String, localizedTitle: String)
  var type: String { get }
  var localizedTitle: String { get }
  var localizedSubtitle: String? { get }
  @NSCopying var icon: UIApplicationShortcutIcon? { get }
  var userInfo: [String : NSSecureCoding]? { get }
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class UIMutableApplicationShortcutItem : UIApplicationShortcutItem {
  var type: String
  var localizedTitle: String
  var localizedSubtitle: String?
  @NSCopying var icon: UIApplicationShortcutIcon?
  var userInfo: [String : NSSecureCoding]?
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [NSObject : AnyObject]?)
  convenience init(type: String, localizedTitle: String)
}
@available(iOS 7.0, *)
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
@available(iOS 9.0, *)
let UIFloatRangeZero: UIFloatRange
@available(iOS 9.0, *)
let UIFloatRangeInfinite: UIFloatRange
@available(iOS 9.0, *)
func UIFloatRangeIsInfinite(range: UIFloatRange) -> Bool
@available(iOS 9.0, *)
func UIFloatRangeIsEqualToRange(range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
func UIFloatRangeMake(minimum: CGFloat, _ maximum: CGFloat) -> UIFloatRange
@available(iOS 7.0, *)
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedTo item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)

  /*!
   A sliding attachment allows for relative translation of two items along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local corrdinate system.
   @param axis Axis of allowed relative translation between local anchor point. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(iOS 9.0, *)
  class func slidingAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /*!
   A sliding attachment allows for translation of the item along a specified axis with respect to the anchor point. A sliding
   attachment prevents all relative rotation of the dynamic items.
   @param item1 The dynamic item connected by the attachment behavior.
   @param point The point for the item will be anchored by the attachment.
   @param axis Axis of allowed translation for the item. Must be a unit vector.
   @see attachmentRange, Represents the slidable range of the attachment with respect to the anchor point along the specified axis, this range must include 0
   */
  @available(iOS 9.0, *)
  class func slidingAttachmentWith(item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self

  /*!
   A limit attachment imposes a maximum distance between two dynamic items, as if they were connected by a rope.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param offset1 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param offset2 The point, within the dynamic item and described as an offset from its center point, for the attachment behavior.
   @see length
   */
  @available(iOS 9.0, *)
  class func limitAttachmentWith(item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self

  /*!
   A fixed attachment fuses two dynamic items together at a reference point. 
   Fixed attachments are useful for creating complex shapes that can be broken apart later.
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local corrdinate system.
   */
  @available(iOS 9.0, *)
  class func fixedAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self

  /*!
   A pin attachment allows two dynamic items to independently rotate around the anchor point as if pinned together. 
   You can configure how far the two objects may rotate and the resistance to rotation
   @param item1 The first of two dynamic items connected by the attachment behavior.
   @param item2 The second of two dynamic items connected by the attachment behavior.
   @param point The point for which each item will be attached. The anchor point will be converted to each items local corrdinate system
   @see frictionTorque, resistance to rotation
   */
  @available(iOS 9.0, *)
  class func pinAttachmentWith(item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  var items: [UIDynamicItem] { get }
  var attachedBehaviorType: UIAttachmentBehaviorType { get }
  var anchorPoint: CGPoint
  var length: CGFloat
  var damping: CGFloat
  var frequency: CGFloat
  @available(iOS 9.0, *)
  var frictionTorque: CGFloat
  @available(iOS 9.0, *)
  var attachmentRange: UIFloatRange
  convenience init()
}
enum UIBarButtonItemStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
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
  @available(iOS 3.0, *)
  case Undo
  @available(iOS 3.0, *)
  case Redo
  @available(iOS 4.0, *)
  case PageCurl
}
@available(iOS 2.0, *)
class UIBarButtonItem : UIBarItem, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  @available(iOS 5.0, *)
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
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  func backgroundImageFor(state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  var tintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  func setTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titlePositionAdjustmentFor(barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackButtonTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonTitlePositionAdjustmentFor(barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
}
@available(iOS 9.0, *)
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
  var isDisplayingRepresentativeItem: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
}
extension UIBarButtonItem {

  /// The group that the UIBarButtonItem is currently associated with, either as a member of the barButtonItems array or as that group's representativeItem.
  @available(iOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
enum UIBarMetrics : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Compact
  case DefaultPrompt
  case CompactPrompt
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use UIBarMetricsCompact instead")
  static var LandscapePhone: UIBarMetrics { get }
  @available(iOS, introduced=7.0, deprecated=8.0, message="Use UIBarMetricsCompactPrompt")
  static var LandscapePhonePrompt: UIBarMetrics { get }
}
@available(iOS 7.0, *)
enum UIBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Bottom
  case Top
  case TopAttached
}
protocol UIBarPositioning : NSObjectProtocol {
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIBarPositioningDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func positionForBar(bar: UIBarPositioning) -> UIBarPosition
}
@available(iOS 2.0, *)
class UIBarItem : NSObject, NSCoding, UIAppearance {
  init()
  init?(coder aDecoder: NSCoder)
  var isEnabled: Bool
  var title: String?
  var image: UIImage?
  @available(iOS 5.0, *)
  var landscapeImagePhone: UIImage?
  var imageInsets: UIEdgeInsets
  @available(iOS 5.0, *)
  var landscapeImagePhoneInsets: UIEdgeInsets
  var tag: Int
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  @available(iOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func appearanceFor(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self
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
@available(iOS 3.2, *)
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
  @available(iOS 4.0, *)
  func addArcWithCenter(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func closePath()
  func removeAllPoints()
  func append(bezierPath: UIBezierPath)
  @available(iOS 6.0, *)
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
  @available(iOS 3.2, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 3.2, *)
  func encodeWith(aCoder: NSCoder)
}
enum UIButtonType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Custom
  @available(iOS 7.0, *)
  case System
  case DetailDisclosure
  case InfoLight
  case InfoDark
  case ContactAdd
  static var RoundedRect: UIButtonType { get }
}
@available(iOS 2.0, *)
class UIButton : UIControl, NSCoding {
  convenience init(type buttonType: UIButtonType)
  var contentEdgeInsets: UIEdgeInsets
  var titleEdgeInsets: UIEdgeInsets
  var reversesTitleShadowWhenHighlighted: Bool
  var imageEdgeInsets: UIEdgeInsets
  var adjustsImageWhenHighlighted: Bool
  var adjustsImageWhenDisabled: Bool
  var showsTouchWhenHighlighted: Bool
  @available(iOS 5.0, *)
  var tintColor: UIColor!
  var buttonType: UIButtonType { get }
  func setTitle(title: String?, forState state: UIControlState)
  func setTitleColor(color: UIColor?, forState state: UIControlState)
  func setTitleShadowColor(color: UIColor?, forState state: UIControlState)
  func setImage(image: UIImage?, forState state: UIControlState)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setAttributedTitle(title: NSAttributedString?, forState state: UIControlState)
  func titleFor(state: UIControlState) -> String?
  func titleColorFor(state: UIControlState) -> UIColor?
  func titleShadowColorFor(state: UIControlState) -> UIColor?
  func imageFor(state: UIControlState) -> UIImage?
  func backgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func attributedTitleFor(state: UIControlState) -> NSAttributedString?
  var currentTitle: String? { get }
  var currentTitleColor: UIColor { get }
  var currentTitleShadowColor: UIColor? { get }
  var currentImage: UIImage? { get }
  var currentBackgroundImage: UIImage? { get }
  @available(iOS 6.0, *)
  var currentAttributedTitle: NSAttributedString? { get }
  @available(iOS 3.0, *)
  var titleLabel: UILabel? { get }
  @available(iOS 3.0, *)
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
@available(iOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  optional func numberOfSectionsIn(collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  optional func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 7.0, *)
  optional func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedViewIn(collectionView: UICollectionView) -> NSIndexPath?
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 9.0, *)
  optional func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
}
@available(iOS 6.0, *)
class UICollectionView : UIScrollView {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  var collectionViewLayout: UICollectionViewLayout
  weak var delegate: @sil_weak UICollectionViewDelegate?
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  var backgroundView: UIView?
  func register(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func register(nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func register(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func register(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  func indexPathsForSelectedItems() -> [NSIndexPath]?
  func selectItemAt(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
  func deselectItemAt(indexPath: NSIndexPath, animated: Bool)
  func reloadData()
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
  @available(iOS 7.0, *)
  func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  func startInteractiveTransitionTo(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  @available(iOS 7.0, *)
  func finishInteractiveTransition()
  @available(iOS 7.0, *)
  func cancelInteractiveTransition()
  func numberOfSections() -> Int
  func numberOfItemsInSection(section: Int) -> Int
  func layoutAttributesForItemAt(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElementOfKind(kind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItemAt(point: CGPoint) -> NSIndexPath?
  func indexPathFor(cell: UICollectionViewCell) -> NSIndexPath?
  func cellForItemAt(indexPath: NSIndexPath) -> UICollectionViewCell?
  func visibleCells() -> [UICollectionViewCell]
  func indexPathsForVisibleItems() -> [NSIndexPath]
  @available(iOS 9.0, *)
  func supplementaryViewForElementKind(elementKind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [UICollectionReusableView]
  @available(iOS 9.0, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> [NSIndexPath]
  func scrollToItemAt(indexPath: NSIndexPath, at scrollPosition: UICollectionViewScrollPosition, animated: Bool)
  func insertSections(sections: NSIndexSet)
  func deleteSections(sections: NSIndexSet)
  func reloadSections(sections: NSIndexSet)
  func moveSection(section: Int, toSection newSection: Int)
  func insertItemsAt(indexPaths: [NSIndexPath])
  func deleteItemsAt(indexPaths: [NSIndexPath])
  func reloadItemsAt(indexPaths: [NSIndexPath])
  func moveItemAt(indexPath: NSIndexPath, to newIndexPath: NSIndexPath)
  func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 9.0, *)
  func beginInteractiveMovementForItemAt(indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func updateInteractiveMovementTargetPosition(targetPosition: CGPoint)
  @available(iOS 9.0, *)
  func endInteractiveMovement()
  @available(iOS 9.0, *)
  func cancelInteractiveMovement()
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
extension NSIndexPath {
  @available(iOS 6.0, *)
  convenience init(forItem item: Int, inSection section: Int)
  @available(iOS 6.0, *)
  var item: Int { get }
}
@available(iOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func apply(layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransitionFrom(oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  func didTransitionFrom(oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  @available(iOS 8.0, *)
  func preferredLayoutAttributesFitting(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  var contentView: UIView { get }
  var isSelected: Bool
  var isHighlighted: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 6.0, *)
class UICollectionViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  init(collectionViewLayout layout: UICollectionViewLayout)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView?
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 7.0, *)
  var useLayoutToLayoutNavigationTransitions: Bool
  @available(iOS 7.0, *)
  var collectionViewLayout: UICollectionViewLayout { get }
  @available(iOS 9.0, *)
  var installsStandardGestureForInteractiveMovement: Bool
  convenience init()
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldHighlightItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didHighlightItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didUnhighlightItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldSelectItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldDeselectItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didDeselectItemAt indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(iOS 8.0, *)
  func collectionView(collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 7.0, *)
  func collectionView(collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canFocusItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedViewIn(collectionView: UICollectionView) -> NSIndexPath?
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: NSIndexPath, toProposedIndexPath proposedIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(iOS 6.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 6.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 6.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 6.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 6.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 6.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, cellForItemAt indexPath: NSIndexPath) -> UICollectionViewCell
  @available(iOS 6.0, *)
  func numberOfSectionsIn(collectionView: UICollectionView) -> Int
  @available(iOS 6.0, *)
  func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> UICollectionReusableView
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, canMoveItemAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func collectionView(collectionView: UICollectionView, moveItemAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
@available(iOS 6.0, *)
let UICollectionElementKindSectionHeader: String
@available(iOS 6.0, *)
let UICollectionElementKindSectionFooter: String
enum UICollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
@available(iOS 7.0, *)
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: NSIndexPath) -> CGSize
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  @available(iOS 6.0, *)
  optional func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
@available(iOS 6.0, *)
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  @available(iOS 8.0, *)
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionViewScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets
  @available(iOS 9.0, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(iOS 9.0, *)
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
@available(iOS 6.0, *)
class UICollectionViewLayoutAttributes : NSObject, NSCopying, UIDynamicItem {
  var frame: CGRect
  var center: CGPoint
  var size: CGSize
  var transform3D: CATransform3D
  @available(iOS 7.0, *)
  var bounds: CGRect
  @available(iOS 7.0, *)
  var transform: CGAffineTransform
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: NSIndexPath
  var representedElementCategory: UICollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWith indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  init()
  @available(iOS 6.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
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
@available(iOS 6.0, *)
class UICollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: UICollectionUpdateAction { get }
  init()
}
@available(iOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : NSObject {
  var isInvalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(iOS 8.0, *)
  func invalidateItemsAt(indexPaths: [NSIndexPath])
  @available(iOS 8.0, *)
  func invalidateSupplementaryElementsOfKind(elementKind: String, at indexPaths: [NSIndexPath])
  @available(iOS 8.0, *)
  func invalidateDecorationElementsOfKind(elementKind: String, at indexPaths: [NSIndexPath])
  @available(iOS 8.0, *)
  var invalidatedItemIndexPaths: [NSIndexPath]? { get }
  @available(iOS 8.0, *)
  var invalidatedSupplementaryIndexPaths: [String : [NSIndexPath]]? { get }
  @available(iOS 8.0, *)
  var invalidatedDecorationIndexPaths: [String : [NSIndexPath]]? { get }
  @available(iOS 8.0, *)
  var contentOffsetAdjustment: CGPoint
  @available(iOS 8.0, *)
  var contentSizeAdjustment: CGSize
  @available(iOS 9.0, *)
  var previousIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  @available(iOS 9.0, *)
  var targetIndexPathsForInteractivelyMovingItems: [NSIndexPath]? { get }
  @available(iOS 9.0, *)
  var interactiveMovementTarget: CGPoint { get }
  init()
}
@available(iOS 6.0, *)
class UICollectionViewLayout : NSObject, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(iOS 7.0, *)
  func invalidateLayoutWith(context: UICollectionViewLayoutInvalidationContext)
  func register(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(nib: UINib?, forDecorationViewOfKind elementKind: String)
  @available(iOS 6.0, *)
  func encodeWith(aCoder: NSCoder)
}
extension UICollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  @available(iOS 7.0, *)
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsIn(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItemAt(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool
  @available(iOS 7.0, *)
  func invalidationContextForBoundsChange(newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 8.0, *)
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(iOS 8.0, *)
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint) -> CGPoint
  func collectionViewContentSize() -> CGSize
}
extension UICollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(iOS 7.0, *)
  func prepareForTransitionTo(newLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  func prepareForTransitionFrom(oldLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAt(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAt(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  @available(iOS 7.0, *)
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(iOS 7.0, *)
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(iOS 7.0, *)
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> [NSIndexPath]
  @available(iOS 7.0, *)
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> [NSIndexPath]
}
extension UICollectionViewLayout {
  @available(iOS 9.0, *)
  func targetIndexPathForInteractivelyMovingItem(previousIndexPath: NSIndexPath, withPosition position: CGPoint) -> NSIndexPath
  @available(iOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItemAt(indexPath: NSIndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(iOS 9.0, *)
  func invalidationContextForInteractivelyMovingItems(targetIndexPaths: [NSIndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [NSIndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths(indexPaths: [NSIndexPath], previousIndexPaths: [NSIndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
@available(iOS 7.0, *)
class UICollectionViewTransitionLayout : UICollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: UICollectionViewLayout { get }
  var nextLayout: UICollectionViewLayout { get }
  init(currentLayout: UICollectionViewLayout, nextLayout newLayout: UICollectionViewLayout)
  init?(coder aDecoder: NSCoder)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueForAnimatedKey(key: String) -> CGFloat
}
@available(iOS 7.0, *)
struct UICollisionBehaviorMode : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Items: UICollisionBehaviorMode { get }
  static var Boundaries: UICollisionBehaviorMode { get }
  static var Everything: UICollisionBehaviorMode { get }
}
protocol UICollisionBehaviorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, withItem item2: UIDynamicItem, at p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item1: UIDynamicItem, withItem item2: UIDynamicItem)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint)
  @available(iOS 7.0, *)
  optional func collisionBehavior(behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?)
}
@available(iOS 7.0, *)
class UICollisionBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem])
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  var collisionMode: UICollisionBehaviorMode
  var translatesReferenceBoundsIntoBoundary: Bool
  func setTranslatesReferenceBoundsIntoBoundaryWith(insets: UIEdgeInsets)
  func addBoundaryWithIdentifier(identifier: NSCopying, forPath bezierPath: UIBezierPath)
  func addBoundaryWithIdentifier(identifier: NSCopying, from p1: CGPoint, to p2: CGPoint)
  func boundaryWithIdentifier(identifier: NSCopying) -> UIBezierPath?
  func removeBoundaryWithIdentifier(identifier: NSCopying)
  var boundaryIdentifiers: [NSCopying]? { get }
  func removeAllBoundaries()
  weak var collisionDelegate: @sil_weak UICollisionBehaviorDelegate?
  convenience init()
}
@available(iOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  init(patternImage image: UIImage)
  @available(iOS 5.0, *)
  init(ciColor: CIColor)
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
  @available(iOS 5.0, *)
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 5.0, *)
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 5.0, *)
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>) -> Bool
  func withAlphaComponent(alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
  @available(iOS 5.0, *)
  var ciColor: CIColor { get }
  init()
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

extension UIColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension CIColor {
  @available(iOS 5.0, *)
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
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  static var Focused: UIControlState { get }
  static var Application: UIControlState { get }
  static var Reserved: UIControlState { get }
}
@available(iOS 2.0, *)
class UIControl : UIView {
  var isEnabled: Bool
  var isSelected: Bool
  var isHighlighted: Bool
  var contentVerticalAlignment: UIControlContentVerticalAlignment
  var contentHorizontalAlignment: UIControlContentHorizontalAlignment
  var state: UIControlState { get }
  var isTracking: Bool { get }
  var isTouchInside: Bool { get }
  func beginTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func continueTrackingWith(touch: UITouch, withEvent event: UIEvent?) -> Bool
  func endTrackingWith(touch: UITouch?, withEvent event: UIEvent?)
  func cancelTrackingWith(event: UIEvent?)
  func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func removeTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents)
  func allTargets() -> Set<NSObject>
  func allControlEvents() -> UIControlEvents
  func actionsForTarget(target: AnyObject?, forControlEvent controlEvent: UIControlEvents) -> [String]?
  func sendAction(action: Selector, to target: AnyObject?, forEvent event: UIEvent?)
  func sendActionsFor(controlEvents: UIControlEvents)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
struct UIDataDetectorTypes : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PhoneNumber: UIDataDetectorTypes { get }
  static var Link: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var Address: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var CalendarEvent: UIDataDetectorTypes { get }
  static var None: UIDataDetectorTypes { get }
  static var All: UIDataDetectorTypes { get }
}
enum UIDatePickerMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Time
  case Date
  case DateAndTime
  case CountDownTimer
}
@available(iOS 2.0, *)
class UIDatePicker : UIControl, NSCoding {
  var datePickerMode: UIDatePickerMode
  var locale: NSLocale?
  @NSCopying var calendar: NSCalendar!
  var timeZone: NSTimeZone?
  var date: NSDate
  var minimumDate: NSDate?
  var maximumDate: NSDate?
  var countDownDuration: NSTimeInterval
  var minuteInterval: Int
  func setDate(date: NSDate, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
enum UIDeviceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
  case FaceUp
  case FaceDown
}

extension UIDeviceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
  var isFlat: Bool { get }
  var isValidInterfaceOrientation: Bool { get }
}
enum UIDeviceBatteryState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Unplugged
  case Charging
  case Full
}
enum UIUserInterfaceIdiom : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  @available(iOS 3.2, *)
  case Phone
  @available(iOS 3.2, *)
  case Pad
  @available(iOS 9.0, *)
  case TV
}
func UIDeviceOrientationIsPortrait(orientation: UIDeviceOrientation) -> Bool
func UIDeviceOrientationIsLandscape(orientation: UIDeviceOrientation) -> Bool
@available(iOS 2.0, *)
class UIDevice : NSObject {
  class func current() -> UIDevice
  var name: String { get }
  var model: String { get }
  var localizedModel: String { get }
  var systemName: String { get }
  var systemVersion: String { get }
  var orientation: UIDeviceOrientation { get }
  @available(iOS 6.0, *)
  var identifierForVendor: NSUUID? { get }
  var generatesDeviceOrientationNotifications: Bool { get }
  func beginGeneratingDeviceOrientationNotifications()
  func endGeneratingDeviceOrientationNotifications()
  @available(iOS 3.0, *)
  var isBatteryMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var batteryState: UIDeviceBatteryState { get }
  @available(iOS 3.0, *)
  var batteryLevel: Float { get }
  @available(iOS 3.0, *)
  var isProximityMonitoringEnabled: Bool
  @available(iOS 3.0, *)
  var isProximityState: Bool { get }
  @available(iOS 4.0, *)
  var isMultitaskingSupported: Bool { get }
  @available(iOS 3.2, *)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(iOS 4.2, *)
  func playInputClick()
  init()
}
protocol UIInputViewAudioFeedback : NSObjectProtocol {
  optional var enableInputClicksWhenVisible: Bool { get }
}
func UI_USER_INTERFACE_IDIOM() -> UIUserInterfaceIdiom
let UIDeviceOrientationDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceBatteryStateDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceBatteryLevelDidChangeNotification: String
@available(iOS 3.0, *)
let UIDeviceProximityStateDidChangeNotification: String
enum UIDocumentChangeKind : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Undone
  case Redone
  case Cleared
}
enum UIDocumentSaveOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ForCreating
  case ForOverwriting
}
struct UIDocumentState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Normal: UIDocumentState { get }
  static var Closed: UIDocumentState { get }
  static var InConflict: UIDocumentState { get }
  static var SavingError: UIDocumentState { get }
  static var EditingDisabled: UIDocumentState { get }
  static var ProgressAvailable: UIDocumentState { get }
}
@available(iOS 5.0, *)
let UIDocumentStateChangedNotification: String
@available(iOS 5.0, *)
class UIDocument : NSObject, NSFilePresenter, NSProgressReporting {
  init(fileURL url: NSURL)
  var fileURL: NSURL { get }
  var localizedName: String { get }
  var fileType: String? { get }
  @NSCopying var fileModificationDate: NSDate?
  var documentState: UIDocumentState { get }
  func open(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func close(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func loadFromContents(contents: AnyObject, ofType typeName: String?) throws
  func contentsForType(typeName: String) throws -> AnyObject
  func disableEditing()
  func enableEditing()
  var undoManager: NSUndoManager!
  func hasUnsavedChanges() -> Bool
  func updateChangeCount(change: UIDocumentChangeKind)
  func changeCountTokenFor(saveOperation: UIDocumentSaveOperation) -> AnyObject
  func updateChangeCountWithToken(changeCountToken: AnyObject, forSaveOperation saveOperation: UIDocumentSaveOperation)
  func saveTo(url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, completionHandler: ((Bool) -> Void)? = nil)
  func autosave(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func savingFileType() -> String?
  func fileNameExtensionForType(typeName: String?, saveOperation: UIDocumentSaveOperation) -> String
  func writeContents(contents: AnyObject, andAttributes additionalFileAttributes: [NSObject : AnyObject]?, safelyTo url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws
  func writeContents(contents: AnyObject, to url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation, originalContentsURL: NSURL?) throws
  func fileAttributesToWriteTo(url: NSURL, forSaveOperation saveOperation: UIDocumentSaveOperation) throws -> [NSObject : AnyObject]
  func readFrom(url: NSURL) throws
  func performAsynchronousFileAccessUsing(block: () -> Void)
  func handle(error: NSError, userInteractionPermitted: Bool)
  func finishedHandling(error: NSError, recovered: Bool)
  func userInteractionNoLongerPermittedFor(error: NSError)
  func revertToContentsOf(url: NSURL, completionHandler: ((Bool) -> Void)? = nil)
  convenience init()
  @available(iOS 5.0, *)
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(iOS 5.0, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(iOS 5.0, *)
  func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  @available(iOS 5.0, *)
  func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func presentedItemDidMoveTo(newURL: NSURL)
  @available(iOS 5.0, *)
  func presentedItemDidChange()
  @available(iOS 5.0, *)
  func presentedItemDidGainVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidLose(version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  @available(iOS 5.0, *)
  func accommodatePresentedSubitemDeletionAt(url: NSURL, completionHandler: (NSError?) -> Void)
  @available(iOS 5.0, *)
  func presentedSubitemDidAppearAt(url: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemAt(oldURL: NSURL, didMoveTo newURL: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemDidChangeAt(url: NSURL)
  @available(iOS 5.0, *)
  func presentedSubitemAt(url: NSURL, didGainVersion version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitemAt(url: NSURL, didLose version: NSFileVersion)
  @available(iOS 5.0, *)
  func presentedSubitemAt(url: NSURL, didResolveConflictVersion version: NSFileVersion)
  @available(iOS 7.0, *)
  var progress: NSProgress { get }
}
@available(iOS 8.0, *)
let NSUserActivityDocumentURLKey: String
extension UIDocument {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(userActivity: NSUserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(userActivity: NSUserActivity)
}
@available(iOS 3.2, *)
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
  /*not inherited*/ init(url: NSURL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var url: NSURL?
  var uti: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: AnyObject?
  func presentOptionsMenuFrom(rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOptionsMenuFrom(item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreviewAnimated(animated: Bool) -> Bool
  func presentOpenInMenuFrom(rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOpenInMenuFrom(item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreviewAnimated(animated: Bool)
  func dismissMenuAnimated(animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
  init()
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheetCancel(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func willPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func didPresent(actionSheet: UIActionSheet)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced=2.0, deprecated=8.3)
  func actionSheet(actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewControllerForPreview(controller: UIDocumentInteractionController) -> UIViewController
  @available(iOS 3.2, *)
  optional func documentInteractionControllerRectForPreview(controller: UIDocumentInteractionController) -> CGRect
  @available(iOS 3.2, *)
  optional func documentInteractionControllerViewForPreview(controller: UIDocumentInteractionController) -> UIView?
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillBeginPreview(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidEndPreview(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOptionsMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOptionsMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerWillPresentOpenInMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionControllerDidDismissOpenInMenu(controller: UIDocumentInteractionController)
  @available(iOS 3.2, *)
  optional func documentInteractionController(controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  @available(iOS 3.2, *)
  optional func documentInteractionController(controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
}
@available(iOS 8.0, *)
enum UIDocumentMenuOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case First
  case Last
}
protocol UIDocumentMenuDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func documentMenu(documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController)
  @available(iOS 8.0, *)
  optional func documentMenuWasCancelled(documentMenu: UIDocumentMenuViewController)
}
@available(iOS 8.0, *)
class UIDocumentMenuViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  init(url: NSURL, in mode: UIDocumentPickerMode)
  init?(coder aDecoder: NSCoder)
  func addOptionWithTitle(title: String, image: UIImage?, order: UIDocumentMenuOrder, handler: () -> Void)
  weak var delegate: @sil_weak UIDocumentMenuDelegate?
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
@available(iOS 8.0, *)
class UIDocumentPickerExtensionViewController : UIViewController {
  func dismissGrantingAccessTo(url: NSURL?)
  func prepareForPresentationIn(mode: UIDocumentPickerMode)
  var documentPickerMode: UIDocumentPickerMode { get }
  @NSCopying var originalURL: NSURL? { get }
  var validTypes: [String]? { get }
  var providerIdentifier: String { get }
  @NSCopying var documentStorageURL: NSURL? { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIDocumentPickerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func documentPicker(controller: UIDocumentPickerViewController, didPickDocumentAt url: NSURL)
  @available(iOS 8.0, *)
  optional func documentPickerWasCancelled(controller: UIDocumentPickerViewController)
}
@available(iOS 8.0, *)
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Import
  case Open
  case ExportToService
  case MoveToService
}
@available(iOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  init?(coder aDecoder: NSCoder)
  init(url: NSURL, in mode: UIDocumentPickerMode)
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  var documentPickerMode: UIDocumentPickerMode { get }
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func dynamicAnimatorWillResume(animator: UIDynamicAnimator)
  @available(iOS 7.0, *)
  optional func dynamicAnimatorDidPause(animator: UIDynamicAnimator)
}
@available(iOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(behavior: UIDynamicBehavior)
  func removeBehavior(behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func itemsIn(rect: CGRect) -> [UIDynamicItem]
  func updateItemUsingCurrentState(item: UIDynamicItem)
  var isRunning: Bool { get }
  func elapsedTime() -> NSTimeInterval
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
  convenience init()
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCellAt(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(kind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(decorationViewKind: String, at indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes?
}
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  optional var collisionBoundingPath: UIBezierPath { get }
}
@available(iOS 9.0, *)
class UIDynamicItemGroup : NSObject, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  @available(iOS 9.0, *)
  var center: CGPoint
  @available(iOS 9.0, *)
  var bounds: CGRect { get }
  @available(iOS 9.0, *)
  var transform: CGAffineTransform

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
@available(iOS 7.0, *)
class UIDynamicBehavior : NSObject {
  func addChildBehavior(behavior: UIDynamicBehavior)
  func removeChildBehavior(behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMoveTo(dynamicAnimator: UIDynamicAnimator?)
  var dynamicAnimator: UIDynamicAnimator? { get }
  init()
}
@available(iOS 7.0, *)
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
  @available(iOS 9.0, *)
  var charge: CGFloat

  /*!
   If an item is anchored, it can participate in collisions, but will not exhibit
   any dynamic response. i.e. The item will behave more like a collision boundary.
   The default is NO
   */
  @available(iOS 9.0, *)
  var isAnchored: Bool
  var allowsRotation: Bool
  func addLinearVelocity(velocity: CGPoint, forItem item: UIDynamicItem)
  func linearVelocityFor(item: UIDynamicItem) -> CGPoint
  func addAngularVelocity(velocity: CGFloat, forItem item: UIDynamicItem)
  func angularVelocityFor(item: UIDynamicItem) -> CGFloat
  convenience init()
}
enum UIEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Touches
  case Motion
  case RemoteControl
  @available(iOS 9.0, *)
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
@available(iOS 2.0, *)
class UIEvent : NSObject {
  @available(iOS 3.0, *)
  var type: UIEventType { get }
  @available(iOS 3.0, *)
  var subtype: UIEventSubtype { get }
  var timestamp: NSTimeInterval { get }
  func allTouches() -> Set<UITouch>?
  func touchesFor(window: UIWindow) -> Set<UITouch>?
  func touchesFor(view: UIView) -> Set<UITouch>?
  @available(iOS 3.2, *)
  func touchesFor(gesture: UIGestureRecognizer) -> Set<UITouch>?
  @available(iOS 9.0, *)
  func coalescedTouchesFor(touch: UITouch) -> [UITouch]?
  @available(iOS 9.0, *)
  func predictedTouchesFor(touch: UITouch) -> [UITouch]?
  init()
}
@available(iOS 9.0, *)
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
  class func linearGravityFieldWith(direction: CGVector) -> Self

  /*!
   Uses the supplied velocity vector for any object entering the field’s region of effect.
   Velocity fields override the effect of any other acceleration applied to the body.
   @param direction The directed velocity that will be applied to the body.
   @see direction
   */
  class func velocityFieldWith(direction: CGVector) -> Self

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
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
protocol UIFocusEnvironment : NSObjectProtocol {

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}

/// UIFocusGuides are UILayoutGuide subclasses that participate in the focus system from within their owning view. A UIFocusGuide may be used to expose non-view areas as focusable.
@available(iOS 9.0, *)
class UIFocusGuide : UILayoutGuide {

  /// If disabled, UIFocusGuides are ignored by the focus engine, but still participate in layout. Modifying this flag allows you to conditionally enable or disable certain focus behaviors. YES by default.
  var isEnabled: Bool

  /// Setting a preferred focused view marks this guide's layoutFrame as focusable, and if focused, redirects focus to its preferred focused view. If nil, this guide is effectively disabled.
  weak var preferredFocusedView: @sil_weak UIView?
  init()
  init?(coder aDecoder: NSCoder)
}

/// UIFocusAnimationCoordinator is used to coordinate disparate animations that are related to a focus update.
@available(iOS 9.0, *)
class UIFocusAnimationCoordinator : NSObject {

  /**
   Specifies focus-related animations that should be coordinated with the animations of the focusing or un-focusing view.
   
   Any animations specified will be run in the same animation context as the main animation. The completion block is invoked after the main animation completes.
   (Note that this may not be after all the coordinated animations specified by the call complete if the duration is not inherited.)
   
   It is perfectly legitimate to only specify a completion block.
   */
  func addCoordinatedAnimations(animations: (() -> Void)?, completion: (() -> Void)? = nil)
  init()
}
@available(iOS 2.0, *)
class UIFont : NSObject, NSCopying {
  @available(iOS 7.0, *)
  class func preferredFontForTextStyle(style: String) -> UIFont
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  class func familyNames() -> [String]
  class func fontNamesForFamilyName(familyName: String) -> [String]
  class func systemFontOfSize(fontSize: CGFloat) -> UIFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> UIFont
  class func italicSystemFontOfSize(fontSize: CGFloat) -> UIFont
  @available(iOS 8.2, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  @available(iOS 9.0, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> UIFont
  var familyName: String { get }
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  @available(iOS 4.0, *)
  var lineHeight: CGFloat { get }
  var leading: CGFloat { get }
  func withSize(fontSize: CGFloat) -> UIFont
  @available(iOS 7.0, *)
  /*not inherited*/ init(descriptor: UIFontDescriptor, size pointSize: CGFloat)
  @available(iOS 7.0, *)
  func fontDescriptor() -> UIFontDescriptor
  init()
  @available(iOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
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
  @available(iOS 7.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(iOS 7.0, *)
let UIFontDescriptorFamilyAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorNameAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFaceAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorSizeAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorVisibleNameAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorMatrixAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorCharacterSetAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorCascadeListAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorTraitsAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFixedAdvanceAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorFeatureSettingsAttribute: String
@available(iOS 7.0, *)
let UIFontDescriptorTextStyleAttribute: String
@available(iOS 7.0, *)
let UIFontSymbolicTrait: String
@available(iOS 7.0, *)
let UIFontWeightTrait: String
@available(iOS 7.0, *)
let UIFontWidthTrait: String
@available(iOS 7.0, *)
let UIFontSlantTrait: String
@available(iOS 8.2, *)
let UIFontWeightUltraLight: CGFloat
@available(iOS 8.2, *)
let UIFontWeightThin: CGFloat
@available(iOS 8.2, *)
let UIFontWeightLight: CGFloat
@available(iOS 8.2, *)
let UIFontWeightRegular: CGFloat
@available(iOS 8.2, *)
let UIFontWeightMedium: CGFloat
@available(iOS 8.2, *)
let UIFontWeightSemibold: CGFloat
@available(iOS 8.2, *)
let UIFontWeightBold: CGFloat
@available(iOS 8.2, *)
let UIFontWeightHeavy: CGFloat
@available(iOS 8.2, *)
let UIFontWeightBlack: CGFloat
@available(iOS 7.0, *)
let UIFontFeatureTypeIdentifierKey: String
@available(iOS 7.0, *)
let UIFontFeatureSelectorIdentifierKey: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle1: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle2: String
@available(iOS 9.0, *)
let UIFontTextStyleTitle3: String
@available(iOS 7.0, *)
let UIFontTextStyleHeadline: String
@available(iOS 7.0, *)
let UIFontTextStyleSubheadline: String
@available(iOS 7.0, *)
let UIFontTextStyleBody: String
@available(iOS 9.0, *)
let UIFontTextStyleCallout: String
@available(iOS 7.0, *)
let UIFontTextStyleFootnote: String
@available(iOS 7.0, *)
let UIFontTextStyleCaption1: String
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
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
  @available(iOS 5.0, *)
  /*not inherited*/ init(uiOffset insets: UIOffset)
  func cgPointValue() -> CGPoint
  func cgVectorValue() -> CGVector
  func cgSizeValue() -> CGSize
  func cgRectValue() -> CGRect
  func cgAffineTransformValue() -> CGAffineTransform
  func uiEdgeInsetsValue() -> UIEdgeInsets
  @available(iOS 5.0, *)
  func uiOffsetValue() -> UIOffset
}
extension NSCoder {
  func encode(point: CGPoint, forKey key: String)
  func encode(vector: CGVector, forKey key: String)
  func encode(size: CGSize, forKey key: String)
  func encode(rect: CGRect, forKey key: String)
  func encode(transform: CGAffineTransform, forKey key: String)
  func encode(insets: UIEdgeInsets, forKey key: String)
  @available(iOS 5.0, *)
  func encode(offset: UIOffset, forKey key: String)
  func decodeCGPointForKey(key: String) -> CGPoint
  func decodeCGVectorForKey(key: String) -> CGVector
  func decodeCGSizeForKey(key: String) -> CGSize
  func decodeCGRectForKey(key: String) -> CGRect
  func decodeCGAffineTransformForKey(key: String) -> CGAffineTransform
  func decodeUIEdgeInsetsForKey(key: String) -> UIEdgeInsets
  @available(iOS 5.0, *)
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
@available(iOS 3.2, *)
class UIGestureRecognizer : NSObject {
  init(target: AnyObject?, action: Selector)
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?, action: Selector)
  weak var delegate: @sil_weak UIGestureRecognizerDelegate?
  var isEnabled: Bool
  var view: UIView? { get }
  var cancelsTouchesInView: Bool
  var delaysTouchesBegan: Bool
  var delaysTouchesEnded: Bool
  @available(iOS 9.0, *)
  var allowedTouchTypes: [NSNumber]
  @available(iOS 9.0, *)
  var allowedPressTypes: [NSNumber]
  func requireGestureRecognizerToFail(otherGestureRecognizer: UIGestureRecognizer)
  func locationIn(view: UIView?) -> CGPoint
  func numberOfTouches() -> Int
  func locationOfTouch(touchIndex: Int, in view: UIView?) -> CGPoint
  convenience init()
}
protocol UIGestureRecognizerDelegate : NSObjectProtocol {
  @available(iOS 3.2, *)
  optional func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  optional func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
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
@available(iOS 4.0, *)
func UIGraphicsBeginImageContextWithOptions(size: CGSize, _ opaque: Bool, _ scale: CGFloat)
func UIGraphicsGetImageFromCurrentImageContext() -> UIImage!
func UIGraphicsEndImageContext()
@available(iOS 3.2, *)
func UIGraphicsBeginPDFContextToFile(path: String, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?) -> Bool
@available(iOS 3.2, *)
func UIGraphicsBeginPDFContextToData(data: NSMutableData, _ bounds: CGRect, _ documentInfo: [NSObject : AnyObject]?)
@available(iOS 3.2, *)
func UIGraphicsEndPDFContext()
@available(iOS 3.2, *)
func UIGraphicsBeginPDFPage()
@available(iOS 3.2, *)
func UIGraphicsBeginPDFPageWithInfo(bounds: CGRect, _ pageInfo: [NSObject : AnyObject]?)
@available(iOS 3.2, *)
func UIGraphicsGetPDFContextBounds() -> CGRect
@available(iOS 3.2, *)
func UIGraphicsSetPDFContextURLForRect(url: NSURL, _ rect: CGRect)
@available(iOS 3.2, *)
func UIGraphicsAddPDFContextDestinationAtPoint(name: String, _ point: CGPoint)
@available(iOS 3.2, *)
func UIGraphicsSetPDFContextDestinationForRect(name: String, _ rect: CGRect)
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWithIdentifier(restrictionIdentifier: String, didChange newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
}
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
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
@available(iOS 2.0, *)
class UIImage : NSObject, NSSecureCoding {
  /*not inherited*/ init?(named name: String)
  @available(iOS 8.0, *)
  /*not inherited*/ init?(named name: String, in bundle: NSBundle?, compatibleWith traitCollection: UITraitCollection?)
  init?(contentsOfFile path: String)
  init?(data: NSData)
  @available(iOS 6.0, *)
  init?(data: NSData, scale: CGFloat)
  init(cgImage: CGImage)
  @available(iOS 4.0, *)
  init(cgImage: CGImage, scale: CGFloat, orientation: UIImageOrientation)
  @available(iOS 5.0, *)
  init(ciImage: CIImage)
  @available(iOS 6.0, *)
  init(ciImage: CIImage, scale: CGFloat, orientation: UIImageOrientation)
  var size: CGSize { get }
  var cgImage: CGImage? { get }
  @available(iOS 5.0, *)
  var ciImage: CIImage? { get }
  var imageOrientation: UIImageOrientation { get }
  @available(iOS 4.0, *)
  var scale: CGFloat { get }
  @available(iOS 5.0, *)
  class func animatedImageNamed(name: String, duration: NSTimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, duration: NSTimeInterval) -> UIImage?
  @available(iOS 6.0, *)
  class func animatedResizableImageNamed(name: String, capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode, duration: NSTimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  class func animatedImageWith(images: [UIImage], duration: NSTimeInterval) -> UIImage?
  @available(iOS 5.0, *)
  var images: [UIImage]? { get }
  @available(iOS 5.0, *)
  var duration: NSTimeInterval { get }
  func drawAt(point: CGPoint)
  func drawAt(point: CGPoint, blendMode: CGBlendMode, alpha: CGFloat)
  func drawIn(rect: CGRect)
  func drawIn(rect: CGRect, blendMode: CGBlendMode, alpha: CGFloat)
  func drawAsPatternIn(rect: CGRect)
  @available(iOS 5.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  func resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage
  @available(iOS 5.0, *)
  var capInsets: UIEdgeInsets { get }
  @available(iOS 6.0, *)
  var resizingMode: UIImageResizingMode { get }
  @available(iOS 6.0, *)
  func withAlignmentRectInsets(alignmentInsets: UIEdgeInsets) -> UIImage
  @available(iOS 6.0, *)
  var alignmentRectInsets: UIEdgeInsets { get }
  @available(iOS 7.0, *)
  func withRenderingMode(renderingMode: UIImageRenderingMode) -> UIImage
  @available(iOS 7.0, *)
  var renderingMode: UIImageRenderingMode { get }
  @available(iOS 8.0, *)
  @NSCopying var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  var imageAsset: UIImageAsset? { get }
  @available(iOS 9.0, *)
  func imageFlippedForRightToLeftLayoutDirection() -> UIImage
  @available(iOS 9.0, *)
  var flipsForRightToLeftLayoutDirection: Bool { get }
  init()
  @available(iOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 2.0, *)
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
extension CIImage {
  @available(iOS 5.0, *)
  init?(image: UIImage)
  @available(iOS 5.0, *)
  init?(image: UIImage, options: [NSObject : AnyObject]?)
}
func UIImagePNGRepresentation(image: UIImage) -> NSData?
func UIImageJPEGRepresentation(image: UIImage, _ compressionQuality: CGFloat) -> NSData?
@available(iOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func imageWith(traitCollection: UITraitCollection) -> UIImage
  func register(image: UIImage, withTraitCollection traitCollection: UITraitCollection)
  func unregisterImageWith(traitCollection: UITraitCollection)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
}
enum UIImagePickerControllerSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PhotoLibrary
  case Camera
  case SavedPhotosAlbum
}
enum UIImagePickerControllerQualityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TypeHigh
  case TypeMedium
  case TypeLow
  @available(iOS 4.0, *)
  case Type640x480
  @available(iOS 5.0, *)
  case TypeIFrame1280x720
  @available(iOS 5.0, *)
  case TypeIFrame960x540
}
enum UIImagePickerControllerCameraCaptureMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Photo
  case Video
}
enum UIImagePickerControllerCameraDevice : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Rear
  case Front
}
enum UIImagePickerControllerCameraFlashMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case Auto
  case On
}
let UIImagePickerControllerMediaType: String
let UIImagePickerControllerOriginalImage: String
let UIImagePickerControllerEditedImage: String
let UIImagePickerControllerCropRect: String
let UIImagePickerControllerMediaURL: String
@available(iOS 4.1, *)
let UIImagePickerControllerReferenceURL: String
@available(iOS 4.1, *)
let UIImagePickerControllerMediaMetadata: String
@available(iOS 9.1, *)
let UIImagePickerControllerLivePhoto: String
@available(iOS 2.0, *)
class UIImagePickerController : UINavigationController, NSCoding {
  class func isSourceTypeAvailable(sourceType: UIImagePickerControllerSourceType) -> Bool
  class func availableMediaTypesFor(sourceType: UIImagePickerControllerSourceType) -> [String]?
  @available(iOS 4.0, *)
  class func isCameraDeviceAvailable(cameraDevice: UIImagePickerControllerCameraDevice) -> Bool
  @available(iOS 4.0, *)
  class func isFlashAvailableFor(cameraDevice: UIImagePickerControllerCameraDevice) -> Bool
  @available(iOS 4.0, *)
  class func availableCaptureModesFor(cameraDevice: UIImagePickerControllerCameraDevice) -> [NSNumber]?
  weak var delegate: @sil_weak protocol<UIImagePickerControllerDelegate, UINavigationControllerDelegate>?
  var sourceType: UIImagePickerControllerSourceType
  var mediaTypes: [String]
  @available(iOS 3.1, *)
  var allowsEditing: Bool
  @available(iOS 3.1, *)
  var videoMaximumDuration: NSTimeInterval
  @available(iOS 3.1, *)
  var videoQuality: UIImagePickerControllerQualityType
  @available(iOS 3.1, *)
  var showsCameraControls: Bool
  @available(iOS 3.1, *)
  var cameraOverlayView: UIView?
  @available(iOS 3.1, *)
  var cameraViewTransform: CGAffineTransform
  @available(iOS 3.1, *)
  func takePicture()
  @available(iOS 4.0, *)
  func startVideoCapture() -> Bool
  @available(iOS 4.0, *)
  func stopVideoCapture()
  @available(iOS 4.0, *)
  var cameraCaptureMode: UIImagePickerControllerCameraCaptureMode
  @available(iOS 4.0, *)
  var cameraDevice: UIImagePickerControllerCameraDevice
  @available(iOS 4.0, *)
  var cameraFlashMode: UIImagePickerControllerCameraFlashMode
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIImagePickerControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
  @available(iOS 2.0, *)
  optional func imagePickerControllerDidCancel(picker: UIImagePickerController)
}
func UIImageWriteToSavedPhotosAlbum(image: UIImage, _ completionTarget: AnyObject?, _ completionSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
@available(iOS 3.1, *)
func UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(videoPath: String) -> Bool
@available(iOS 3.1, *)
func UISaveVideoAtPathToSavedPhotosAlbum(videoPath: String, _ completionTarget: AnyObject?, _ completionSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
@available(iOS 2.0, *)
class UIImageView : UIView {
  init(image: UIImage?)
  @available(iOS 3.0, *)
  init(image: UIImage?, highlightedImage: UIImage?)
  var image: UIImage?
  @available(iOS 3.0, *)
  var highlightedImage: UIImage?
  var isUserInteractionEnabled: Bool
  @available(iOS 3.0, *)
  var isHighlighted: Bool
  var animationImages: [UIImage]?
  @available(iOS 3.0, *)
  var highlightedAnimationImages: [UIImage]?
  var animationDuration: NSTimeInterval
  var animationRepeatCount: Int
  @available(iOS 7.0, *)
  var tintColor: UIColor!
  func startAnimating()
  func stopAnimating()
  func isAnimating() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
enum UIInputViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Keyboard
}
@available(iOS 7.0, *)
class UIInputView : UIView {
  var inputViewStyle: UIInputViewStyle { get }
  @available(iOS 9.0, *)
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
@available(iOS 8.0, *)
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
  @available(iOS 8.0, *)
  func selectionWillChange(textInput: UITextInput?)
  @available(iOS 8.0, *)
  func selectionDidChange(textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textWillChange(textInput: UITextInput?)
  @available(iOS 8.0, *)
  func textDidChange(textInput: UITextInput?)
}
enum UIBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Black
  static var BlackOpaque: UIBarStyle { get }
  case BlackTranslucent
}
@available(iOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Compact
  case Regular
}
extension UIColor {
  class func lightText() -> UIColor
  class func darkText() -> UIColor
  class func groupTableViewBackground() -> UIColor
}
extension UIFont {
  class func labelFontSize() -> CGFloat
  class func buttonFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func systemFontSize() -> CGFloat
}
@available(iOS 2.0, *)
class UILabel : UIView, NSCoding {
  var text: String?
  var font: UIFont!
  var textColor: UIColor!
  var shadowColor: UIColor?
  var shadowOffset: CGSize
  var textAlignment: NSTextAlignment
  var lineBreakMode: NSLineBreakMode
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var highlightedTextColor: UIColor?
  var isHighlighted: Bool
  var isUserInteractionEnabled: Bool
  var isEnabled: Bool
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var baselineAdjustment: UIBaselineAdjustment
  @available(iOS 6.0, *)
  var minimumScaleFactor: CGFloat
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool
  func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
  func drawTextIn(rect: CGRect)
  @available(iOS 6.0, *)
  var preferredMaxLayoutWidth: CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UILexiconEntry : NSObject, NSCopying {
  var documentText: String { get }
  var userInput: String { get }
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class UILexicon : NSObject, NSCopying {
  var entries: [UILexiconEntry] { get }
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.0, *)
class UILocalNotification : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  @NSCopying var fireDate: NSDate?
  @NSCopying var timeZone: NSTimeZone?
  var repeatInterval: NSCalendarUnit
  @NSCopying var repeatCalendar: NSCalendar?
  @available(iOS 8.0, *)
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  @available(iOS 8.2, *)
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [NSObject : AnyObject]?
  @available(iOS 8.0, *)
  var category: String?
  @available(iOS 4.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(iOS 4.0, *)
let UILocalNotificationDefaultSoundName: String
@available(iOS 3.0, *)
class UILocalizedIndexedCollation : NSObject {
  class func current() -> Self
  var sectionTitles: [String] { get }
  var sectionIndexTitles: [String] { get }
  func sectionForSectionIndexTitleAt(indexTitleIndex: Int) -> Int
  func sectionFor(object: AnyObject, collationStringSelector selector: Selector) -> Int
  func sortedArrayFrom(array: [AnyObject], collationStringSelector selector: Selector) -> [AnyObject]
  init()
}
@available(iOS 3.2, *)
class UILongPressGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  var minimumPressDuration: CFTimeInterval
  var allowableMovement: CGFloat
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class func persistentStoreName() -> String
  var persistentStoreOptions: [NSObject : AnyObject]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinatorFor(storeURL: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [NSObject : AnyObject]?) throws
  func persistentStoreTypeForFileType(fileType: String) -> String
  func readAdditionalContentFrom(absoluteURL: NSURL) throws
  func additionalContentFor(absoluteURL: NSURL) throws -> AnyObject
  func writeAdditionalContent(content: AnyObject, to absoluteURL: NSURL, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  init(fileURL url: NSURL)
  convenience init()
}
enum UIMenuControllerArrowDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 3.2, *)
  case Up
  @available(iOS 3.2, *)
  case Down
  @available(iOS 3.2, *)
  case Left
  @available(iOS 3.2, *)
  case Right
}
@available(iOS 3.0, *)
class UIMenuController : NSObject {
  class func shared() -> UIMenuController
  var isMenuVisible: Bool
  func setMenuVisible(menuVisible: Bool, animated: Bool)
  func setTargetRect(targetRect: CGRect, in targetView: UIView)
  @available(iOS 3.2, *)
  var arrowDirection: UIMenuControllerArrowDirection
  @available(iOS 3.2, *)
  var menuItems: [UIMenuItem]?
  func update()
  var menuFrame: CGRect { get }
  init()
}
let UIMenuControllerWillShowMenuNotification: String
let UIMenuControllerDidShowMenuNotification: String
let UIMenuControllerWillHideMenuNotification: String
let UIMenuControllerDidHideMenuNotification: String
let UIMenuControllerMenuFrameDidChangeNotification: String
@available(iOS 3.2, *)
class UIMenuItem : NSObject {
  init(title: String, action: Selector)
  var title: String
  var action: Selector
  convenience init()
}

/*! UIMotionEffect is an abstract superclass which declaratively represents a rendering
    effect that depends on the motion of the device. Given some device pose, subclassers
    provide relative values which are to be applied to the keypaths of the target's view.
 
    Subclasses must implement conformance for NSCopying and NSCoding. */
@available(iOS 7.0, *)
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
  @available(iOS 7.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
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
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  func push(item: UINavigationItem, animated: Bool)
  func popNavigationItemAnimated(animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(items: [UINavigationItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImageFor(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageFor(barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 5.0, *)
  var titleTextAttributes: [String : AnyObject]?
  @available(iOS 5.0, *)
  func setTitleVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titleVerticalPositionAdjustmentFor(barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 7.0, *)
  var backIndicatorImage: UIImage?
  @available(iOS 7.0, *)
  var backIndicatorTransitionMaskImage: UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPush item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPush item: UINavigationItem)
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPop item: UINavigationItem)
}
@available(iOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  init?(coder: NSCoder)
  var title: String?
  var titleView: UIView?
  var prompt: String?
  var backBarButtonItem: UIBarButtonItem?
  var hidesBackButton: Bool
  func setHidesBackButton(hidesBackButton: Bool, animated: Bool)
  @available(iOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  func setLeftBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  func setRightBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  var leftItemsSupplementBackButton: Bool
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  func setRightBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  convenience init()
  @available(iOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
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
@available(iOS 2.0, *)
class UINavigationController : UIViewController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(viewController: UIViewController, animated: Bool)
  func popViewControllerAnimated(animated: Bool) -> UIViewController?
  func popTo(viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(iOS 3.0, *)
  func setViewControllers(viewControllers: [UIViewController], animated: Bool)
  var isNavigationBarHidden: Bool
  func setNavigationBarHidden(hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  @available(iOS 3.0, *)
  var isToolbarHidden: Bool
  @available(iOS 3.0, *)
  func setToolbarHidden(hidden: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var toolbar: UIToolbar! { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  @available(iOS 7.0, *)
  var interactivePopGestureRecognizer: UIGestureRecognizer? { get }
  @available(iOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)

  /// When the keyboard appears, the navigation controller's navigationBar toolbar will be hidden. The bars will remain hidden when the keyboard dismisses, but a tap in the content area will show them.
  @available(iOS 8.0, *)
  var hidesBarsWhenKeyboardAppears: Bool

  /// When the user swipes, the navigation controller's navigationBar & toolbar will be hidden (on a swipe up) or shown (on a swipe down). The toolbar only participates if it has items.
  @available(iOS 8.0, *)
  var hidesBarsOnSwipe: Bool

  /// The gesture recognizer that triggers if the bars will hide or show due to a swipe. Do not change the delegate or attempt to replace this gesture by overriding this method.
  @available(iOS 8.0, *)
  var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer { get }

  /// When the UINavigationController's vertical size class is compact, hide the UINavigationBar and UIToolbar. Unhandled taps in the regions that would normally be occupied by these bars will reveal the bars.
  @available(iOS 8.0, *)
  var hidesBarsWhenVerticallyCompact: Bool

  /// When the user taps, the navigation controller's navigationBar & toolbar will be hidden or shown, depending on the hidden state of the navigationBar. The toolbar will only be shown if it has items to display.
  @available(iOS 8.0, *)
  var hidesBarsOnTap: Bool

  /// The gesture recognizer used to recognize if the bars will hide or show due to a tap in content. Do not change the delegate or attempt to replace this gesture by overriding this method.
  @available(iOS 8.0, *)
  unowned(unsafe) var barHideOnTapGestureRecognizer: @sil_unmanaged UITapGestureRecognizer { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool)
  @available(iOS 2.0, *)
  optional func navigationController(navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
  @available(iOS 7.0, *)
  optional func navigationControllerSupportedInterfaceOrientations(navigationController: UINavigationController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func navigationControllerPreferredInterfaceOrientationForPresentation(navigationController: UINavigationController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func navigationController(navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var hidesBottomBarWhenPushed: Bool
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
  @available(iOS 3.0, *)
  var toolbarItems: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  func setToolbarItems(toolbarItems: [UIBarButtonItem]?, animated: Bool)
}
@available(iOS 4.0, *)
class UINib : NSObject {
  /*not inherited*/ init(nibName name: String, bundle bundleOrNil: NSBundle?)
  /*not inherited*/ init(data: NSData, bundle bundleOrNil: NSBundle?)
  func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]?) -> [AnyObject]
  init()
}
@available(iOS 3.0, *)
let UINibExternalObjects: String
extension NSBundle {
  func loadNibNamed(name: String!, owner: AnyObject!, options: [NSObject : AnyObject]!) -> [AnyObject]!
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(iOS 8.0, *)
  class func prepareForInterfaceBuilder()
  @available(iOS 8.0, *)
  func prepareForInterfaceBuilder()
}
@available(iOS 2.0, *)
class UIPageControl : UIControl {
  var numberOfPages: Int
  var currentPage: Int
  var hidesForSinglePage: Bool
  var defersCurrentPageDisplay: Bool
  func updateCurrentPageDisplay()
  func sizeForNumberOfPages(pageCount: Int) -> CGSize
  @available(iOS 6.0, *)
  var pageIndicatorTintColor: UIColor?
  @available(iOS 6.0, *)
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
@available(iOS 6.0, *)
let UIPageViewControllerOptionInterPageSpacingKey: String
@available(iOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : AnyObject]?)
  init?(coder: NSCoder)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewControllerTransitionStyle { get }
  var navigationOrientation: UIPageViewControllerNavigationOrientation { get }
  var spineLocation: UIPageViewControllerSpineLocation { get }
  var isDoubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(viewControllers: [UIViewController]?, direction: UIPageViewControllerNavigationDirection, animated: Bool, completion: ((Bool) -> Void)? = nil)
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  convenience init()
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
  @available(iOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
  @available(iOS 5.0, *)
  optional func pageViewController(pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation
  @available(iOS 7.0, *)
  optional func pageViewControllerSupportedInterfaceOrientations(pageViewController: UIPageViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func pageViewControllerPreferredInterfaceOrientationForPresentation(pageViewController: UIPageViewController) -> UIInterfaceOrientation
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  @available(iOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
  @available(iOS 5.0, *)
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
  @available(iOS 6.0, *)
  optional func presentationCountFor(pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  optional func presentationIndexFor(pageViewController: UIPageViewController) -> Int
}
@available(iOS 3.2, *)
class UIPanGestureRecognizer : UIGestureRecognizer {
  var minimumNumberOfTouches: Int
  var maximumNumberOfTouches: Int
  func translationIn(view: UIView?) -> CGPoint
  func setTranslation(translation: CGPoint, in view: UIView?)
  func velocityIn(view: UIView?) -> CGPoint
  init(target: AnyObject?, action: Selector)
  convenience init()
}
let UIPasteboardNameGeneral: String
let UIPasteboardNameFind: String
@available(iOS 3.0, *)
class UIPasteboard : NSObject {
  class func general() -> UIPasteboard
  /*not inherited*/ init?(name pasteboardName: String, create: Bool)
  class func withUniqueName() -> UIPasteboard
  var name: String { get }
  class func removePasteboardWithName(pasteboardName: String)
  var isPersistent: Bool
  var changeCount: Int { get }
  func pasteboardTypes() -> [String]
  func containsPasteboardTypes(pasteboardTypes: [String]) -> Bool
  func dataForPasteboardType(pasteboardType: String) -> NSData?
  func valueForPasteboardType(pasteboardType: String) -> AnyObject?
  func setValue(value: AnyObject, forPasteboardType pasteboardType: String)
  func setData(data: NSData, forPasteboardType pasteboardType: String)
  var numberOfItems: Int { get }
  func pasteboardTypesForItemSet(itemSet: NSIndexSet?) -> [AnyObject]?
  func containsPasteboardTypes(pasteboardTypes: [String], inItemSet itemSet: NSIndexSet?) -> Bool
  func itemSetWithPasteboardTypes(pasteboardTypes: [AnyObject]) -> NSIndexSet?
  func valuesForPasteboardType(pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  func dataForPasteboardType(pasteboardType: String, inItemSet itemSet: NSIndexSet?) -> [AnyObject]?
  var items: [AnyObject]
  func addItems(items: [[String : AnyObject]])
  init()
}
let UIPasteboardChangedNotification: String
let UIPasteboardChangedTypesAddedKey: String
let UIPasteboardChangedTypesRemovedKey: String
let UIPasteboardRemovedNotification: String
var UIPasteboardTypeListString: NSArray
var UIPasteboardTypeListURL: NSArray
var UIPasteboardTypeListImage: NSArray
var UIPasteboardTypeListColor: NSArray
extension UIPasteboard {
  var string: String?
  var strings: [String]?
  @NSCopying var url: NSURL?
  var urLs: [NSURL]?
  @NSCopying var image: UIImage?
  var images: [UIImage]?
  @NSCopying var color: UIColor?
  var colors: [UIColor]?
}
@available(iOS 2.0, *)
class UIPickerView : UIView, NSCoding, UITableViewDataSource {
  weak var dataSource: @sil_weak UIPickerViewDataSource?
  weak var delegate: @sil_weak UIPickerViewDelegate?
  var showsSelectionIndicator: Bool
  var numberOfComponents: Int { get }
  func numberOfRowsInComponent(component: Int) -> Int
  func rowSizeForComponent(component: Int) -> CGSize
  func viewForRow(row: Int, forComponent component: Int) -> UIView?
  func reloadAllComponents()
  func reloadComponent(component: Int)
  func selectRow(row: Int, inComponent component: Int, animated: Bool)
  func selectedRowInComponent(component: Int) -> Int
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSectionsIn(tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, canMoveRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitlesFor(tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, moveRowAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
protocol UIPickerViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func numberOfComponentsIn(pickerView: UIPickerView) -> Int
  @available(iOS 2.0, *)
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
}
protocol UIPickerViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
  @available(iOS 6.0, *)
  optional func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
  @available(iOS 2.0, *)
  optional func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
}
@available(iOS 3.2, *)
class UIPinchGestureRecognizer : UIGestureRecognizer {
  var scale: CGFloat
  var velocity: CGFloat { get }
  init(target: AnyObject?, action: Selector)
  convenience init()
}
protocol UIPopoverBackgroundViewMethods {
  static func arrowBase() -> CGFloat
  static func contentViewInsets() -> UIEdgeInsets
  static func arrowHeight() -> CGFloat
}
@available(iOS 5.0, *)
class UIPopoverBackgroundView : UIView, UIPopoverBackgroundViewMethods {
  var arrowOffset: CGFloat
  var arrowDirection: UIPopoverArrowDirection
  @available(iOS 6.0, *)
  class func wantsDefaultContentAppearance() -> Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 5.0, *)
  class func arrowBase() -> CGFloat
  @available(iOS 5.0, *)
  class func contentViewInsets() -> UIEdgeInsets
  @available(iOS 5.0, *)
  class func arrowHeight() -> CGFloat
}
@available(iOS, introduced=3.2, deprecated=9.0, message="UIPopoverController is deprecated. Popovers are now implemented as UIViewController presentations. Use a modal presentation style of UIModalPresentationPopover and UIPopoverPresentationController.")
class UIPopoverController : NSObject, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentViewController(viewController: UIViewController, animated: Bool)
  var popoverContentSize: CGSize
  func setPopoverContentSize(size: CGSize, animated: Bool)
  var isPopoverVisible: Bool { get }
  var popoverArrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func presentPopoverFrom(rect: CGRect, in view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func presentPopoverFrom(item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func dismissPopoverAnimated(animated: Bool)
  @available(iOS 7.0, *)
  @NSCopying var backgroundColor: UIColor?
  @available(iOS 5.0, *)
  var popoverLayoutMargins: UIEdgeInsets
  @available(iOS 5.0, *)
  var popoverBackgroundViewClass: AnyClass?
  init()
}
protocol UIPopoverControllerDelegate : NSObjectProtocol {
  @available(iOS, introduced=3.2, deprecated=9.0)
  optional func popoverControllerShouldDismissPopover(popoverController: UIPopoverController) -> Bool
  @available(iOS, introduced=3.2, deprecated=9.0)
  optional func popoverControllerDidDismissPopover(popoverController: UIPopoverController)
  @available(iOS, introduced=7.0, deprecated=9.0)
  optional func popoverController(popoverController: UIPopoverController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView?>)
}
protocol UIPopoverPresentationControllerDelegate : UIAdaptivePresentationControllerDelegate {
  @available(iOS 8.0, *)
  optional func prepareForPopoverPresentation(popoverPresentationController: UIPopoverPresentationController)
  @available(iOS 8.0, *)
  optional func popoverPresentationControllerShouldDismissPopover(popoverPresentationController: UIPopoverPresentationController) -> Bool
  @available(iOS 8.0, *)
  optional func popoverPresentationControllerDidDismissPopover(popoverPresentationController: UIPopoverPresentationController)
  @available(iOS 8.0, *)
  optional func popoverPresentationController(popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView?>)
}
@available(iOS 8.0, *)
class UIPopoverPresentationController : UIPresentationController {
  weak var delegate: @sil_weak UIPopoverPresentationControllerDelegate?
  var permittedArrowDirections: UIPopoverArrowDirection
  var sourceView: UIView?
  var sourceRect: CGRect
  @available(iOS 9.0, *)
  var canOverlapSourceViewRect: Bool
  var barButtonItem: UIBarButtonItem?
  var arrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  @NSCopying var backgroundColor: UIColor?
  var popoverLayoutMargins: UIEdgeInsets
  var popoverBackgroundViewClass: AnyObject.Type?
  init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController)
  init()
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
  @available(iOS 3.2, *)
  var isModalInPopover: Bool
}
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func adaptivePresentationStyleFor(controller: UIPresentationController) -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  optional func adaptivePresentationStyleFor(controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(iOS 8.0, *)
  optional func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(iOS 8.3, *)
  optional func presentationController(presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
}
@available(iOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController)
  func adaptivePresentationStyle() -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  func adaptivePresentationStyleFor(traitCollection: UITraitCollection) -> UIModalPresentationStyle
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
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(iOS 9.0, *)
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(iOS 9.0, *)
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
@available(iOS 9.0, *)
enum UIPressPhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Began
  case Changed
  case Stationary
  case Ended
  case Cancelled
}
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class UIPressesEvent : UIEvent {
  func allPresses() -> Set<UIPress>
  func pressesFor(gesture: UIGestureRecognizer) -> Set<UIPress>
  init()
}
let UIPrintErrorDomain: String
var UIPrintingNotAvailableError: Int { get }
var UIPrintNoContentError: Int { get }
var UIPrintUnknownImageFormatError: Int { get }
var UIPrintJobFailedError: Int { get }
@available(iOS 4.2, *)
class UIPrintFormatter : NSObject, NSCopying {
  weak var printPageRenderer: @sil_weak UIPrintPageRenderer? { get }
  func removeFromPrintPageRenderer()
  var maximumContentHeight: CGFloat
  var maximumContentWidth: CGFloat
  var contentInsets: UIEdgeInsets
  var perPageContentInsets: UIEdgeInsets
  var startPage: Int
  var pageCount: Int { get }
  func rectForPageAt(pageIndex: Int) -> CGRect
  func drawIn(rect: CGRect, forPageAt pageIndex: Int)
  init()
  @available(iOS 4.2, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 4.2, *)
class UISimpleTextPrintFormatter : UIPrintFormatter {
  init(text: String)
  @available(iOS 7.0, *)
  init(attributedText: NSAttributedString)
  var text: String?
  @available(iOS 7.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var font: UIFont?
  var color: UIColor?
  var textAlignment: NSTextAlignment
  init()
}
@available(iOS 4.2, *)
class UIMarkupTextPrintFormatter : UIPrintFormatter {
  init(markupText: String)
  var markupText: String?
  init()
}
@available(iOS 4.2, *)
class UIViewPrintFormatter : UIPrintFormatter {
  var view: UIView { get }
  init()
}
extension UIView {
  func viewPrintFormatter() -> UIViewPrintFormatter
  func draw(rect: CGRect, forViewPrintFormatter formatter: UIViewPrintFormatter)
}
enum UIPrintInfoOutputType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case General
  case Photo
  case Grayscale
  @available(iOS 7.0, *)
  case PhotoGrayscale
}
enum UIPrintInfoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case Landscape
}
enum UIPrintInfoDuplex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case LongEdge
  case ShortEdge
}
@available(iOS 4.2, *)
class UIPrintInfo : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  class func printInfo() -> UIPrintInfo
  /*not inherited*/ init(dictionary: [NSObject : AnyObject]?)
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfoOutputType
  var orientation: UIPrintInfoOrientation
  var duplex: UIPrintInfoDuplex
  convenience init()
  @available(iOS 4.2, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 4.2, *)
  func encodeWith(aCoder: NSCoder)
}
typealias UIPrintInteractionCompletionHandler = (UIPrintInteractionController, Bool, NSError?) -> Void
@available(iOS 9.0, *)
enum UIPrinterCutterBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoCut
  case PrinterDefault
  case CutAfterEachPage
  case CutAfterEachCopy
  case CutAfterEachJob
}
@available(iOS 4.2, *)
class UIPrintInteractionController : NSObject {
  class func isPrintingAvailable() -> Bool
  class func printableUTIs() -> Set<String>
  class func canPrint(url: NSURL) -> Bool
  class func canPrint(data: NSData) -> Bool
  class func sharedPrint() -> UIPrintInteractionController
  var printInfo: UIPrintInfo?
  weak var delegate: @sil_weak UIPrintInteractionControllerDelegate?
  var showsPageRange: Bool
  @available(iOS 7.0, *)
  var showsNumberOfCopies: Bool
  @available(iOS 8.0, *)
  var showsPaperSelectionForLoadedPapers: Bool
  var printPaper: UIPrintPaper? { get }
  var printPageRenderer: UIPrintPageRenderer?
  var printFormatter: UIPrintFormatter?
  @NSCopying var printingItem: AnyObject?
  var printingItems: [AnyObject]?
  func presentAnimated(animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func presentFrom(rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func presentFrom(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool

  /*!
   * @discussion	Use to print without showing the standard print panel. Use with a
   *		UIPrinter found using the UIPrinterPickerController.
   *              The value for the duplex property on printInfo will be ignored.
   */
  func printTo(printer: UIPrinter, completionHandler completion: UIPrintInteractionCompletionHandler? = nil) -> Bool
  func dismissAnimated(animated: Bool)
  init()
}
protocol UIPrintInteractionControllerDelegate : NSObjectProtocol {
  @available(iOS 4.2, *)
  optional func printInteractionControllerParentViewController(printInteractionController: UIPrintInteractionController) -> UIViewController
  @available(iOS 4.2, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, choosePaper paperList: [UIPrintPaper]) -> UIPrintPaper
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillPresentPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidPresentPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillDismissPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidDismissPrinterOptions(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerWillStartJob(printInteractionController: UIPrintInteractionController)
  @available(iOS 4.2, *)
  optional func printInteractionControllerDidFinishJob(printInteractionController: UIPrintInteractionController)
  @available(iOS 7.0, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, cutLengthFor paper: UIPrintPaper) -> CGFloat
  @available(iOS 9.0, *)
  optional func printInteractionController(printInteractionController: UIPrintInteractionController, chooseCutterBehavior availableBehaviors: [AnyObject]) -> UIPrinterCutterBehavior
}
@available(iOS 4.2, *)
class UIPrintPageRenderer : NSObject {
  var headerHeight: CGFloat
  var footerHeight: CGFloat
  var paperRect: CGRect { get }
  var printableRect: CGRect { get }
  var printFormatters: [UIPrintFormatter]?
  func printFormattersForPageAt(pageIndex: Int) -> [UIPrintFormatter]?
  func addPrintFormatter(formatter: UIPrintFormatter, startingAtPageAt pageIndex: Int)
  func numberOfPages() -> Int
  func prepareForDrawingPages(range: NSRange)
  func drawPageAt(pageIndex: Int, in printableRect: CGRect)
  func drawPrintFormatter(printFormatter: UIPrintFormatter, forPageAt pageIndex: Int)
  func drawHeaderForPageAt(pageIndex: Int, in headerRect: CGRect)
  func drawContentForPageAt(pageIndex: Int, in contentRect: CGRect)
  func drawFooterForPageAt(pageIndex: Int, in footerRect: CGRect)
  init()
}
@available(iOS 4.2, *)
class UIPrintPaper : NSObject {
  class func bestPaperForPageSize(contentSize: CGSize, withPapersFrom paperList: [UIPrintPaper]) -> UIPrintPaper
  var paperSize: CGSize { get }
  var printableRect: CGRect { get }
  init()
}
extension UIPrintPaper {
  func printRect() -> CGRect
}
@available(iOS 8.0, *)
class UIPrinter : NSObject {

  /*!
   *  @method     printerWithURL:
   *  @abstract   Create a printer from its URL
   *  @discussion This method creates a new printer object from the printer's URL.
   *	        A UIPrinter object is returned even if the printer is not available
   *	        on the network.
   */
  /*not inherited*/ init(url: NSURL)

  /*!
   *  @abstract   Return the URL of the printer.
   *  @discussion This method returns the full URL of the printer which can be
   *	        used in future calls to printerWithURL to access the same
   *	        printer.
   */
  @NSCopying var url: NSURL { get }

  /*!
   *  @abstract   Return a human-readable printer name.
   *  @discussion This method returns the printer name suitable for displaying in the UI.
   */
  var displayName: String { get }

  /*!
   *  @abstract   Return a human-readable location.
   *  @discussion This method returns the printer's location. This is human-readable text that
   * 	        usually appears in the UI below the printer's name (such as "Front Office").
   *  	        Returns nil if the printer doesn't have a location string.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var displayLocation: String? { get }

  /*!
   *  @abstract   Returns the supported job types of this printer.
   *  @discussion This method returns a mask with all the UIPrinterJobTypes values that
   *		the printer supports.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var supportedJobTypes: UIPrinterJobTypes { get }

  /*!
   *  @abstract   Return make (manufacturer) and model of the printer.
   *  @discussion This method returns the make and model of the printer, which
   *		is usually the manufacturer, model, and model number.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var makeAndModel: String? { get }

  /*!
   *  @abstract   Return whether this printer supports color printing.
   *  @discussion This method returns YES if the printer supports full color printing, NO
   * 		otherwise.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   *
   */
  var supportsColor: Bool { get }

  /*!
   *  @abstract   Return whether this printer supports duplex (double-sided) printing.
   *  @discussion This method returns YES if the printer supports duplex (double-sided)
   *		printing, NO otherwise.
   *		This property's value is undefined until contactPrinter: has been called and
   *		completed successfully.
   */
  var supportsDuplex: Bool { get }

  /*!
   *  @method     contactPrinter:
   *  @abstract   Check if printer is reachable, and update printer information.
   *  @discussion This method checks to see if this printer is available on the network,
   * 		and sets the displayName, displayLocation, supportedJobTypes, makeAndModel,
   *		supportsColor, and supportsDuplex for the printer.
   *		The operation can take up to 30 seconds.
   */
  func contactPrinter(completionHandler: ((Bool) -> Void)? = nil)
  init()
}

/*!
 *  @enum       UIPrinterJobTypes
 *  @abstract   Job types supported by a printer.
 *  @discussion This enumeration provides the abstract job types
 *  		reported by the UIPrinter supportedJobTypes method.
 *  @constant   UIPrinterJobTypeUnknown		Unknown printer support.
 *  @constant   UIPrinterJobTypeDocument   	The printer supports standard document printing.
 *  @constant   UIPrinterJobTypeEnvelope	The printer supports printing on envelopes.
 *  @constant   UIPrinterJobTypeLabel      	The printer supports printing on cut labels.
 *  @constant   UIPrinterJobTypePhoto      	The printer supports printing with photographic print quality.
 *  @constant   UIPrinterJobTypeReceipt    	The printer supports printing receipts on continuous rolls.
 *  @constant   UIPrinterJobTypeRoll       	The printer supports printing documents or photos on continuous rolls.
 *  @constant   UIPrinterJobTypeLargeFormat     The printer supports printing larger than ISO A3 size.
 *  @constant   UIPrinterJobTypePostcard        The printer supports printing on postcards.
 */
@available(iOS 8.0, *)
struct UIPrinterJobTypes : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Unknown: UIPrinterJobTypes { get }
  static var Document: UIPrinterJobTypes { get }
  static var Envelope: UIPrinterJobTypes { get }
  static var Label: UIPrinterJobTypes { get }
  static var Photo: UIPrinterJobTypes { get }
  static var Receipt: UIPrinterJobTypes { get }
  static var Roll: UIPrinterJobTypes { get }
  static var LargeFormat: UIPrinterJobTypes { get }
  static var Postcard: UIPrinterJobTypes { get }
}
typealias UIPrinterPickerCompletionHandler = (UIPrinterPickerController, Bool, NSError?) -> Void
protocol UIPrinterPickerControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func printerPickerControllerParentViewController(printerPickerController: UIPrinterPickerController) -> UIViewController?

  /*!
   *  @method     printerPickerController:shouldShowPrinter:
   *  @discussion	Use to filter out specific printers from the printer picker.
   * 	        Evaluate the UIPrinter object and returns YES if the printer should
   * 	        be shown, NO otherwise.
   *		This delegate can assume that all UIPrinter properties are available
   *		(the contactPrinter: method need not be called).
   * 	        This method may be called from threads other than the main thread,
   * 	        and may be called simultaneously from several different threads.
   */
  @available(iOS 8.0, *)
  optional func printerPickerController(printerPickerController: UIPrinterPickerController, shouldShow printer: UIPrinter) -> Bool
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillPresent(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidPresent(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerWillDismiss(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidDismiss(printerPickerController: UIPrinterPickerController)
  @available(iOS 8.0, *)
  optional func printerPickerControllerDidSelectPrinter(printerPickerController: UIPrinterPickerController)
}
@available(iOS 8.0, *)
class UIPrinterPickerController : NSObject {

  /*!
   *  @method     printerPickerControllerWithInitiallySelectedPrinter:
   *  @discussion This method returns a printer picker controller object for showing the
   *              UI that allows the user to select a printer. This is only used with the
   *              UIPrintInteractionController's printWithoutUIToPrinter: method.
   *              If no printer should be preselected, use a value of nil for the parameter.
   */
  /*not inherited*/ init(initiallySelectedPrinter printer: UIPrinter?)

  /*!
   * @discussion	The selected printer. Set this before presenting the UI to show the currently
   * 	        selected printer. Use this to determine which printer the user selected.
   */
  var selectedPrinter: UIPrinter? { get }
  weak var delegate: @sil_weak UIPrinterPickerControllerDelegate?
  func presentAnimated(animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler? = nil) -> Bool
  func presentFrom(rect: CGRect, in view: UIView, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler? = nil) -> Bool
  func presentFrom(item: UIBarButtonItem, animated: Bool, completionHandler completion: UIPrinterPickerCompletionHandler? = nil) -> Bool
  func dismissAnimated(animated: Bool)
  init()
}
enum UIProgressViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Bar
}
@available(iOS 2.0, *)
class UIProgressView : UIView, NSCoding {
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init(progressViewStyle style: UIProgressViewStyle)
  var progressViewStyle: UIProgressViewStyle
  var progress: Float
  @available(iOS 5.0, *)
  var progressTintColor: UIColor?
  @available(iOS 5.0, *)
  var trackTintColor: UIColor?
  @available(iOS 5.0, *)
  var progressImage: UIImage?
  @available(iOS 5.0, *)
  var trackImage: UIImage?
  @available(iOS 5.0, *)
  func setProgress(progress: Float, animated: Bool)
  @available(iOS 9.0, *)
  var observedProgress: NSProgress?
  convenience init()
}
@available(iOS 7.0, *)
enum UIPushBehaviorMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Continuous
  case Instantaneous
}
@available(iOS 7.0, *)
class UIPushBehavior : UIDynamicBehavior {
  init(items: [UIDynamicItem], mode: UIPushBehaviorMode)
  func addItem(item: UIDynamicItem)
  func removeItem(item: UIDynamicItem)
  var items: [UIDynamicItem] { get }
  func targetOffsetFromCenterFor(item: UIDynamicItem) -> UIOffset
  func setTargetOffsetFromCenter(o: UIOffset, forItem item: UIDynamicItem)
  var mode: UIPushBehaviorMode { get }
  var isActive: Bool
  var angle: CGFloat
  var magnitude: CGFloat
  var pushDirection: CGVector
  func setAngle(angle: CGFloat, magnitude: CGFloat)
  convenience init()
}
@available(iOS 5.0, *)
class UIReferenceLibraryViewController : UIViewController {

  /*! Returns YES if any installed dictionary has a definition for the provided term.
   */
  class func dictionaryHasDefinitionForTerm(term: String) -> Bool

  /*! Initializes an instance of a UIReferenceLibraryViewController with the term provided.
   */
  init(term: String)
  init(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
class UIRefreshControl : UIControl {
  init()
  var isRefreshing: Bool { get }
  var tintColor: UIColor!
  var attributedTitle: NSAttributedString?
  @available(iOS 6.0, *)
  func beginRefreshing()
  @available(iOS 6.0, *)
  func endRefreshing()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class UIRegion : NSObject, NSCopying, NSCoding {

  /*! A shared infinite region
   */
  class func infinite() -> Self

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
  func inverse() -> Self

  /*! Create a new region that is the original region plus the supplied region
   */
  func byUnionWith(region: UIRegion) -> Self

  /*! Create a new region that is the original region minus the supplied region
   */
  func byDifferenceFrom(region: UIRegion) -> Self

  /*! Create a new region that is the region covered by the original region and the supplied region
   */
  func byIntersectionWith(region: UIRegion) -> Self

  /*! Test for containment
   */
  func contains(point: CGPoint) -> Bool
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 2.0, *)
class UIResponder : NSObject {
  func next() -> UIResponder?
  func canBecomeFirstResponder() -> Bool
  func becomeFirstResponder() -> Bool
  func canResignFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func isFirstResponder() -> Bool
  func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
  func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?)
  @available(iOS 9.1, *)
  func touchesEstimatedPropertiesUpdated(touches: Set<NSObject>)
  @available(iOS 9.0, *)
  func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 9.0, *)
  func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?)
  @available(iOS 3.0, *)
  func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(iOS 3.0, *)
  func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(iOS 3.0, *)
  func motionCancelled(motion: UIEventSubtype, withEvent event: UIEvent?)
  @available(iOS 4.0, *)
  func remoteControlReceivedWith(event: UIEvent?)
  @available(iOS 3.0, *)
  func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
  @available(iOS 7.0, *)
  func targetForAction(action: Selector, withSender sender: AnyObject?) -> AnyObject?
  @available(iOS 3.0, *)
  var undoManager: NSUndoManager? { get }
  init()
}
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
class UIKeyCommand : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var input: String { get }
  var modifierFlags: UIKeyModifierFlags { get }
  @available(iOS 9.0, *)
  var discoverabilityTitle: String?
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector)
  @available(iOS 9.0, *)
  /*not inherited*/ init(input: String, modifierFlags: UIKeyModifierFlags, action: Selector, discoverabilityTitle: String)
  @available(iOS 7.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: NSCoder)
}
extension UIResponder {
  @available(iOS 7.0, *)
  var keyCommands: [UIKeyCommand]? { get }
}
extension NSObject {
  @available(iOS 3.0, *)
  class func cut(sender: AnyObject?)
  @available(iOS 3.0, *)
  func cut(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func copy(sender: AnyObject?)
  @available(iOS 3.0, *)
  func copy(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func paste(sender: AnyObject?)
  @available(iOS 3.0, *)
  func paste(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func select(sender: AnyObject?)
  @available(iOS 3.0, *)
  func select(sender: AnyObject?)
  @available(iOS 3.0, *)
  class func selectAll(sender: AnyObject?)
  @available(iOS 3.0, *)
  func selectAll(sender: AnyObject?)
  @available(iOS 3.2, *)
  class func delete(sender: AnyObject?)
  @available(iOS 3.2, *)
  func delete(sender: AnyObject?)
  @available(iOS 5.0, *)
  class func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(iOS 5.0, *)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(iOS 5.0, *)
  class func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(iOS 5.0, *)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(iOS 6.0, *)
  class func toggleBoldface(sender: AnyObject?)
  @available(iOS 6.0, *)
  func toggleBoldface(sender: AnyObject?)
  @available(iOS 6.0, *)
  class func toggleItalics(sender: AnyObject?)
  @available(iOS 6.0, *)
  func toggleItalics(sender: AnyObject?)
  @available(iOS 6.0, *)
  class func toggleUnderline(sender: AnyObject?)
  @available(iOS 6.0, *)
  func toggleUnderline(sender: AnyObject?)
  @available(iOS 7.0, *)
  class func increaseSize(sender: AnyObject?)
  @available(iOS 7.0, *)
  func increaseSize(sender: AnyObject?)
  @available(iOS 7.0, *)
  class func decreaseSize(sender: AnyObject?)
  @available(iOS 7.0, *)
  func decreaseSize(sender: AnyObject?)
}
extension UIResponder {
  @available(iOS 3.2, *)
  var inputView: UIView? { get }
  @available(iOS 3.2, *)
  var inputAccessoryView: UIView? { get }

  /// This method is for clients that wish to put buttons on the Shortcuts Bar, shown on top of the keyboard.
  /// You may modify the returned inputAssistantItem to add to or replace the existing items on the bar.
  /// Modifications made to the returned UITextInputAssistantItem are reflected automatically.
  /// This method should not be overriden. Goes up the responder chain.
  @available(iOS 9.0, *)
  var inputAssistantItem: UITextInputAssistantItem { get }
  @available(iOS 8.0, *)
  var inputViewController: UIInputViewController? { get }
  @available(iOS 8.0, *)
  var inputAccessoryViewController: UIInputViewController? { get }
  @available(iOS 7.0, *)
  var textInputMode: UITextInputMode? { get }
  @available(iOS 7.0, *)
  var textInputContextIdentifier: String? { get }
  @available(iOS 7.0, *)
  class func clearTextInputContextIdentifier(identifier: String)
  @available(iOS 3.2, *)
  func reloadInputViews()
}
@available(iOS 7.0, *)
let UIKeyInputUpArrow: String
@available(iOS 7.0, *)
let UIKeyInputDownArrow: String
@available(iOS 7.0, *)
let UIKeyInputLeftArrow: String
@available(iOS 7.0, *)
let UIKeyInputRightArrow: String
@available(iOS 7.0, *)
let UIKeyInputEscape: String
extension UIResponder {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(activity: NSUserActivity)
  @available(iOS 8.0, *)
  func restoreUserActivityState(activity: NSUserActivity)
}
@available(iOS 3.2, *)
class UIRotationGestureRecognizer : UIGestureRecognizer {
  var rotation: CGFloat
  var velocity: CGFloat { get }
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(iOS 3.2, *)
let UIScreenDidConnectNotification: String
@available(iOS 3.2, *)
let UIScreenDidDisconnectNotification: String
@available(iOS 3.2, *)
let UIScreenModeDidChangeNotification: String
@available(iOS 5.0, *)
let UIScreenBrightnessDidChangeNotification: String
enum UIScreenOverscanCompensation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Scale
  case InsetBounds
  @available(iOS 9.0, *)
  case None
  @available(iOS, introduced=5.0, deprecated=9.0, message="Use UIScreenOverscanCompensationNone")
  static var InsetApplicationFrame: UIScreenOverscanCompensation { get }
}
@available(iOS 2.0, *)
class UIScreen : NSObject, UITraitEnvironment {
  @available(iOS 3.2, *)
  class func screens() -> [UIScreen]
  class func main() -> UIScreen
  var bounds: CGRect { get }
  @available(iOS 4.0, *)
  var scale: CGFloat { get }
  @available(iOS 3.2, *)
  var availableModes: [UIScreenMode] { get }
  @available(iOS 4.3, *)
  var preferredMode: UIScreenMode? { get }
  @available(iOS 3.2, *)
  var currentMode: UIScreenMode?
  @available(iOS 5.0, *)
  var overscanCompensation: UIScreenOverscanCompensation
  @available(iOS 9.0, *)
  var overscanCompensationInsets: UIEdgeInsets { get }
  @available(iOS 4.3, *)
  var mirrored: UIScreen? { get }
  @available(iOS 5.0, *)
  var brightness: CGFloat
  @available(iOS 5.0, *)
  var wantsSoftwareDimming: Bool
  @available(iOS 8.0, *)
  var coordinateSpace: UICoordinateSpace { get }
  @available(iOS 8.0, *)
  var fixedCoordinateSpace: UICoordinateSpace { get }
  @available(iOS 8.0, *)
  var nativeBounds: CGRect { get }
  @available(iOS 8.0, *)
  var nativeScale: CGFloat { get }
  @available(iOS 4.0, *)
  func displayLinkWithTarget(target: AnyObject, selector sel: Selector) -> CADisplayLink?
  @available(iOS 9.0, *)
  weak var focusedView: @sil_weak UIView? { get }
  @available(iOS 9.0, *)
  var supportsFocus: Bool { get }
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIScreen bounds]")
  var applicationFrame: CGRect { get }
  init()
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
extension UIScreen {
  @available(iOS 7.0, *)
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
}

/*! This subclass of UIPanGestureRecognizer only recognizes if the user slides their finger
    in from the bezel on the specified edge. */
@available(iOS 7.0, *)
class UIScreenEdgePanGestureRecognizer : UIPanGestureRecognizer {
  var edges: UIRectEdge
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(iOS 3.2, *)
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
@available(iOS 7.0, *)
enum UIScrollViewKeyboardDismissMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case OnDrag
  case Interactive
}
@available(iOS 3.0, *)
let UIScrollViewDecelerationRateNormal: CGFloat
@available(iOS 3.0, *)
let UIScrollViewDecelerationRateFast: CGFloat
@available(iOS 2.0, *)
class UIScrollView : UIView, NSCoding {
  var contentOffset: CGPoint
  var contentSize: CGSize
  var contentInset: UIEdgeInsets
  weak var delegate: @sil_weak UIScrollViewDelegate?
  var isDirectionalLockEnabled: Bool
  var bounces: Bool
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var isPagingEnabled: Bool
  var isScrollEnabled: Bool
  var showsHorizontalScrollIndicator: Bool
  var showsVerticalScrollIndicator: Bool
  var scrollIndicatorInsets: UIEdgeInsets
  var indicatorStyle: UIScrollViewIndicatorStyle
  @available(iOS 3.0, *)
  var decelerationRate: CGFloat
  func setContentOffset(contentOffset: CGPoint, animated: Bool)
  func scrollRectToVisible(rect: CGRect, animated: Bool)
  func flashScrollIndicators()
  var isTracking: Bool { get }
  var isDragging: Bool { get }
  var isDecelerating: Bool { get }
  var delaysContentTouches: Bool
  var canCancelContentTouches: Bool
  func touchesShouldBegin(touches: Set<UITouch>, withEvent event: UIEvent?, inContentView view: UIView) -> Bool
  func touchesShouldCancelInContentView(view: UIView) -> Bool
  var minimumZoomScale: CGFloat
  var maximumZoomScale: CGFloat
  @available(iOS 3.0, *)
  var zoomScale: CGFloat
  @available(iOS 3.0, *)
  func setZoomScale(scale: CGFloat, animated: Bool)
  @available(iOS 3.0, *)
  func zoomTo(rect: CGRect, animated: Bool)
  var bouncesZoom: Bool
  var isZooming: Bool { get }
  var isZoomBouncing: Bool { get }
  var scrollsToTop: Bool
  @available(iOS 5.0, *)
  var panGestureRecognizer: UIPanGestureRecognizer { get }
  @available(iOS 5.0, *)
  var pinchGestureRecognizer: UIPinchGestureRecognizer? { get }
  @available(iOS 7.0, *)
  var keyboardDismissMode: UIScrollViewKeyboardDismissMode
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIScrollViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  optional func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  optional func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  optional func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  optional func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  optional func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  optional func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  optional func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  optional func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
enum UISearchBarIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Search
  case Clear
  case Bookmark
  case ResultsList
}
@available(iOS 7.0, *)
enum UISearchBarStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Prominent
  case Minimal
}
@available(iOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  convenience init()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var showsBookmarkButton: Bool
  var showsCancelButton: Bool
  @available(iOS 3.2, *)
  var showsSearchResultsButton: Bool
  @available(iOS 3.2, *)
  var searchResultsButtonSelected: Bool
  @available(iOS 3.0, *)
  func setShowsCancelButton(showsCancelButton: Bool, animated: Bool)

  /// Use this method to modify the contents of the Unified Content Bar, shown on top of the keyboard when search is engaged.
  /// You may modify the returned inputAssistantItem to add to or replace the existing items on the bar.
  /// Modifications made to the returned UITextInputAssistantItem are reflected automatically.
  @available(iOS 9.0, *)
  var inputAssistantItem: UITextInputAssistantItem { get }
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  var searchBarStyle: UISearchBarStyle
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  @available(iOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(iOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(iOS 3.0, *)
  var showsScopeBar: Bool
  var inputAccessoryView: UIView?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(iOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImageFor(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setSearchFieldBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func searchFieldBackgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setImage(iconImage: UIImage?, forSearchBarIcon icon: UISearchBarIcon, state: UIControlState)
  @available(iOS 5.0, *)
  func imageFor(icon: UISearchBarIcon, state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonBackgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonDividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(attributes: [String : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func scopeBarButtonTitleTextAttributesFor(state: UIControlState) -> [String : AnyObject]?
  @available(iOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  func setPositionAdjustment(adjustment: UIOffset, forSearchBarIcon icon: UISearchBarIcon)
  @available(iOS 5.0, *)
  func positionAdjustmentFor(icon: UISearchBarIcon) -> UIOffset
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var secureTextEntry: Bool
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidBeginEditing(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidEndEditing(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBar(searchBar: UISearchBar, textDidChange searchText: String)
  @available(iOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarSearchButtonClicked(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarBookmarkButtonClicked(searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarCancelButtonClicked(searchBar: UISearchBar)
  @available(iOS 3.2, *)
  optional func searchBarResultsListButtonClicked(searchBar: UISearchBar)
  @available(iOS 3.0, *)
  optional func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
@available(iOS 9.1, *)
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func willPresent(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didPresent(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func willDismiss(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didDismiss(searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func present(searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(iOS 8.0, *)
  func updateSearchResultsFor(searchController: UISearchController)
}
@available(iOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  var dimsBackgroundDuringPresentation: Bool
  @available(iOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 8.0, *)
  func animationControllerForPresentedController(presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 8.0, *)
  func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  func presentationControllerForPresentedViewController(presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
  @available(iOS 8.0, *)
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval
  @available(iOS 8.0, *)
  func animateTransition(transitionContext: UIViewControllerContextTransitioning)
  @available(iOS 8.0, *)
  func animationEnded(transitionCompleted: Bool)
}
@available(iOS, introduced=3.0, deprecated=8.0, message="UISearchDisplayController has been replaced with UISearchController")
class UISearchDisplayController : NSObject {
  init(searchBar: UISearchBar, contentsController viewController: UIViewController)
  unowned(unsafe) var delegate: @sil_unmanaged UISearchDisplayDelegate?
  var isActive: Bool
  func setActive(visible: Bool, animated: Bool)
  var searchBar: UISearchBar { get }
  var searchContentsController: UIViewController { get }
  var searchResultsTableView: UITableView { get }
  weak var searchResultsDataSource: @sil_weak UITableViewDataSource?
  weak var searchResultsDelegate: @sil_weak UITableViewDelegate?
  @available(iOS 5.0, *)
  var searchResultsTitle: String?
  @available(iOS 7.0, *)
  var displaysSearchBarInNavigationBar: Bool
  @available(iOS 7.0, *)
  var navigationItem: UINavigationItem? { get }
  init()
}
protocol UISearchDisplayDelegate : NSObjectProtocol {
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerWillBeginSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerDidBeginSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerWillEndSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerDidEndSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, didLoadSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, willUnloadSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, willShowSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, didShowSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, willHideSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, didHideSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearch searchString: String?) -> Bool
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool
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
@available(iOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(items: [AnyObject]?)
  var isMomentary: Bool
  var numberOfSegments: Int { get }
  @available(iOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegmentWithTitle(title: String?, at segment: Int, animated: Bool)
  func insertSegmentWith(image: UIImage?, at segment: Int, animated: Bool)
  func removeSegmentAt(segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAt segment: Int)
  func titleForSegmentAt(segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAt segment: Int)
  func imageForSegmentAt(segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAt segment: Int)
  func widthForSegmentAt(segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAt segment: Int)
  func contentOffsetForSegmentAt(segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAt segment: Int)
  func isEnabledForSegmentAt(segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func dividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [NSObject : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesFor(state: UIControlState) -> [NSObject : AnyObject]?
  @available(iOS 5.0, *)
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func contentPositionAdjustmentForSegmentType(leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 2.0, *)
class UISlider : UIControl, NSCoding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var continuous: Bool
  @available(iOS 5.0, *)
  var minimumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var maximumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var thumbTintColor: UIColor?
  func setValue(value: Float, animated: Bool)
  func setThumbImage(image: UIImage?, forState state: UIControlState)
  func setMinimumTrack(image: UIImage?, forState state: UIControlState)
  func setMaximumTrack(image: UIImage?, forState state: UIControlState)
  func thumbImageFor(state: UIControlState) -> UIImage?
  func minimumTrackImageFor(state: UIControlState) -> UIImage?
  func maximumTrackImageFor(state: UIControlState) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRectForBounds(bounds: CGRect) -> CGRect
  func maximumValueImageRectForBounds(bounds: CGRect) -> CGRect
  func trackRectForBounds(bounds: CGRect) -> CGRect
  func thumbRectForBounds(bounds: CGRect, track rect: CGRect, value: Float) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
class UISnapBehavior : UIDynamicBehavior {
  init(item: UIDynamicItem, snapTo point: CGPoint)
  @available(iOS 9.0, *)
  var snapPoint: CGPoint
  var damping: CGFloat
  convenience init()
}
@available(iOS 8.0, *)
enum UISplitViewControllerDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case PrimaryHidden
  case AllVisible
  case PrimaryOverlay
}
@available(iOS 8.0, *)
let UISplitViewControllerAutomaticDimension: CGFloat
@available(iOS 3.2, *)
class UISplitViewController : UIViewController {
  var viewControllers: [UIViewController]
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(iOS 5.1, *)
  var presentsWithGesture: Bool
  @available(iOS 8.0, *)
  var isCollapsed: Bool { get }
  @available(iOS 8.0, *)
  var preferredDisplayMode: UISplitViewControllerDisplayMode
  @available(iOS 8.0, *)
  var displayMode: UISplitViewControllerDisplayMode { get }
  @available(iOS 8.0, *)
  func displayModeButtonItem() -> UIBarButtonItem
  @available(iOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(iOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
  @available(iOS 8.0, *)
  func showViewController(vc: UIViewController, sender: AnyObject?)
  @available(iOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UISplitViewControllerDelegate {
  @available(iOS 8.0, *)
  optional func splitViewController(svc: UISplitViewController, willChangeTo displayMode: UISplitViewControllerDisplayMode)
  @available(iOS 8.0, *)
  optional func targetDisplayModeForActionIn(svc: UISplitViewController) -> UISplitViewControllerDisplayMode
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, show vc: UIViewController, sender: AnyObject?) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool
  @available(iOS 8.0, *)
  optional func primaryViewControllerForCollapsing(splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func primaryViewControllerForExpanding(splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController?
  @available(iOS 7.0, *)
  optional func splitViewControllerSupportedInterfaceOrientations(splitViewController: UISplitViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func splitViewControllerPreferredInterfaceOrientationForPresentation(splitViewController: UISplitViewController) -> UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(svc: UISplitViewController, willHide aViewController: UIViewController, withBarButtonItem barButtonItem: UIBarButtonItem, forPopoverController pc: UIPopoverController)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(svc: UISplitViewController, willShow aViewController: UIViewController, invalidatingBarButtonItem barButtonItem: UIBarButtonItem)
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use splitViewController:willChangeToDisplayMode: instead")
  optional func splitViewController(svc: UISplitViewController, popoverController pc: UIPopoverController, willPresent aViewController: UIViewController)
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use preferredDisplayMode instead")
  optional func splitViewController(svc: UISplitViewController, shouldHide vc: UIViewController, in orientation: UIInterfaceOrientation) -> Bool
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(iOS 8.0, *)
  func collapseSecondaryViewController(secondaryViewController: UIViewController, forSplitViewController splitViewController: UISplitViewController)
  @available(iOS 8.0, *)
  func separateSecondaryViewControllerFor(splitViewController: UISplitViewController) -> UIViewController?
}
@available(iOS 9.0, *)
enum UIStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case FillEqually
  case FillProportionally
  case EqualSpacing
  case EqualCentering
}
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class UIStackView : UIView {
  init(arrangedSubviews views: [UIView])
  var arrangedSubviews: [UIView] { get }
  func addArrangedSubview(view: UIView)
  func removeArrangedSubview(view: UIView)
  func insertArrangedSubview(view: UIView, at stackIndex: Int)
  var axis: UILayoutConstraintAxis
  var distribution: UIStackViewDistribution
  var alignment: UIStackViewAlignment
  var spacing: CGFloat
  var isBaselineRelativeArrangement: Bool
  var layoutMarginsRelativeArrangement: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 6.0, *)
let UIStateRestorationViewControllerStoryboardKey: String
@available(iOS 6.0, *)
let UIApplicationStateRestorationBundleVersionKey: String
@available(iOS 6.0, *)
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
@available(iOS 7.0, *)
let UIApplicationStateRestorationTimestampKey: String
@available(iOS 7.0, *)
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  @available(iOS 2.0, *)
  static func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(iOS 2.0, *)
  func modelIdentifierForElementAt(idx: NSIndexPath, in view: UIView) -> String?
  @available(iOS 2.0, *)
  func indexPathForElementWithModelIdentifier(identifier: String, in view: UIView) -> NSIndexPath?
}
protocol UIStateRestoring : NSObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableStateWith(coder: NSCoder)
  optional func decodeRestorableStateWith(coder: NSCoder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func objectWithRestorationIdentifierPath(identifierComponents: [String], coder: NSCoder) -> UIStateRestoring?
}
@available(iOS 5.0, *)
class UIStepper : UIControl {
  var continuous: Bool
  var isAutorepeat: Bool
  var wraps: Bool
  var value: Double
  var minimumValue: Double
  var maximumValue: Double
  var stepValue: Double
  @available(iOS 6.0, *)
  var tintColor: UIColor!
  @available(iOS 6.0, *)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func backgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDividerImage(image: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 6.0, *)
  func dividerImageForLeftSegmentState(state: UIControlState, rightSegmentState state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setIncrementImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func incrementImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDecrementImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func decrementImageFor(state: UIControlState) -> UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 5.0, *)
class UIStoryboard : NSObject {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewControllerWithIdentifier(identifier: String) -> UIViewController
  init()
}
@available(iOS, introduced=5.0, deprecated=9.0, message="Access destinationViewController.popoverPresentationController from your segue's performHandler or override of -perform")
class UIStoryboardPopoverSegue : UIStoryboardSegue {
  var popoverController: UIPopoverController { get }
  @available(iOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
}
@available(iOS 5.0, *)
class UIStoryboardSegue : NSObject {
  @available(iOS 6.0, *)
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
@available(iOS 9.0, *)
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
@available(iOS 3.2, *)
class UISwipeGestureRecognizer : UIGestureRecognizer {
  var numberOfTouchesRequired: Int
  var direction: UISwipeGestureRecognizerDirection
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(iOS 2.0, *)
class UISwitch : UIControl, NSCoding {
  @available(iOS 5.0, *)
  var onTintColor: UIColor?
  @available(iOS 6.0, *)
  var tintColor: UIColor!
  @available(iOS 6.0, *)
  var thumbTintColor: UIColor?
  @available(iOS 6.0, *)
  var onImage: UIImage?
  @available(iOS 6.0, *)
  var offImage: UIImage?
  var isOn: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  func setOn(on: Bool, animated: Bool)
  convenience init()
}
@available(iOS 7.0, *)
enum UITabBarItemPositioning : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Fill
  case Centered
}
@available(iOS 2.0, *)
class UITabBar : UIView {
  unowned(unsafe) var delegate: @sil_unmanaged UITabBarDelegate?
  var items: [UITabBarItem]?
  unowned(unsafe) var selectedItem: @sil_unmanaged UITabBarItem?
  func setItems(items: [UITabBarItem]?, animated: Bool)
  func beginCustomizingItems(items: [UITabBarItem])
  func endCustomizingAnimated(animated: Bool) -> Bool
  func isCustomizing() -> Bool
  @available(iOS 5.0, *)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use tintColor")
  var selectedImageTintColor: UIColor?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 7.0, *)
  var itemPositioning: UITabBarItemPositioning
  @available(iOS 7.0, *)
  var itemWidth: CGFloat
  @available(iOS 7.0, *)
  var itemSpacing: CGFloat
  @available(iOS 7.0, *)
  var barStyle: UIBarStyle
  @available(iOS 7.0, *)
  var isTranslucent: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UITabBarDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didSelect item: UITabBarItem)
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool)
}
@available(iOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var moreNavigationController: UINavigationController { get }
  var customizableViewControllers: [UIViewController]?
  @available(iOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, didSelect item: UITabBarItem)
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  func tabBar(tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool)
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
  @available(iOS 2.0, *)
  optional func tabBarController(tabBarController: UITabBarController, didSelect viewController: UIViewController)
  @available(iOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, willBeginCustomizing viewControllers: [UIViewController])
  @available(iOS 3.0, *)
  optional func tabBarController(tabBarController: UITabBarController, willEndCustomizing viewControllers: [UIViewController], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBarController(tabBarController: UITabBarController, didEndCustomizing viewControllers: [UIViewController], changed: Bool)
  @available(iOS 7.0, *)
  optional func tabBarControllerSupportedInterfaceOrientations(tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func tabBarControllerPreferredInterfaceOrientationForPresentation(tabBarController: UITabBarController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func tabBarController(tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
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
@available(iOS 2.0, *)
class UITabBarItem : UIBarItem {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(title: String?, image: UIImage?, tag: Int)
  @available(iOS 7.0, *)
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarSystemItem, tag: Int)
  @available(iOS 7.0, *)
  var selectedImage: UIImage?
  var badgeValue: String?
  @available(iOS 5.0, *)
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
@available(iOS 3.0, *)
let UITableViewIndexSearch: String
@available(iOS 5.0, *)
let UITableViewAutomaticDimension: CGFloat
@available(iOS 8.0, *)
enum UITableViewRowActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  static var Destructive: UITableViewRowActionStyle { get }
  case Normal
}
@available(iOS 8.0, *)
class UITableViewRowAction : NSObject, NSCopying {
  convenience init(style: UITableViewRowActionStyle, title: String?, handler: (UITableViewRowAction, NSIndexPath) -> Void)
  var style: UITableViewRowActionStyle { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor?
  @NSCopying var backgroundEffect: UIVisualEffect?
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: NSIndexPath? { get }
  var nextFocusedIndexPath: NSIndexPath? { get }
  init()
}
protocol UITableViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, didHighlightRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  optional func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, willSelectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 3.0, *)
  optional func tableView(tableView: UITableView, willDeselectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, didSelectRowAt indexPath: NSIndexPath)
  @available(iOS 3.0, *)
  optional func tableView(tableView: UITableView, didDeselectRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, editingStyleForRowAt indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(iOS 3.0, *)
  optional func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: NSIndexPath) -> String?
  @available(iOS 8.0, *)
  optional func tableView(tableView: UITableView, editActionsForRowAt indexPath: NSIndexPath) -> [UITableViewRowAction]?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, willBeginEditingRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, didEndEditingRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: NSIndexPath) -> Int
  @available(iOS 5.0, *)
  optional func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 5.0, *)
  optional func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  optional func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 9.0, *)
  optional func tableView(tableView: UITableView, canFocusRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedViewIn(tableView: UITableView) -> NSIndexPath?
}
let UITableViewSelectionDidChangeNotification: String
@available(iOS 2.0, *)
class UITableView : UIScrollView, NSCoding {
  init(frame: CGRect, style: UITableViewStyle)
  init?(coder aDecoder: NSCoder)
  var style: UITableViewStyle { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  weak var delegate: @sil_weak UITableViewDelegate?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(iOS 3.2, *)
  var backgroundView: UIView?
  func reloadData()
  @available(iOS 3.0, *)
  func reloadSectionIndexTitles()
  var numberOfSections: Int { get }
  func numberOfRowsInSection(section: Int) -> Int
  func rectForSection(section: Int) -> CGRect
  func rectForHeaderInSection(section: Int) -> CGRect
  func rectForFooterInSection(section: Int) -> CGRect
  func rectForRowAt(indexPath: NSIndexPath) -> CGRect
  func indexPathForRowAt(point: CGPoint) -> NSIndexPath?
  func indexPathFor(cell: UITableViewCell) -> NSIndexPath?
  func indexPathsForRowsIn(rect: CGRect) -> [NSIndexPath]?
  func cellForRowAt(indexPath: NSIndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [NSIndexPath]? { get }
  @available(iOS 6.0, *)
  func headerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  func footerViewForSection(section: Int) -> UITableViewHeaderFooterView?
  func scrollToRowAt(indexPath: NSIndexPath, at scrollPosition: UITableViewScrollPosition, animated: Bool)
  func scrollToNearestSelectedRowAt(scrollPosition: UITableViewScrollPosition, animated: Bool)
  func beginUpdates()
  func endUpdates()
  func insertSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  func deleteSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 3.0, *)
  func reloadSections(sections: NSIndexSet, withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 5.0, *)
  func moveSection(section: Int, toSection newSection: Int)
  func insertRowsAt(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  func deleteRowsAt(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 3.0, *)
  func reloadRowsAt(indexPaths: [NSIndexPath], withRowAnimation animation: UITableViewRowAnimation)
  @available(iOS 5.0, *)
  func moveRowAt(indexPath: NSIndexPath, to newIndexPath: NSIndexPath)
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: NSIndexPath? { get }
  @available(iOS 5.0, *)
  var indexPathsForSelectedRows: [NSIndexPath]? { get }
  func selectRowAt(indexPath: NSIndexPath?, animated: Bool, scrollPosition: UITableViewScrollPosition)
  func deselectRowAt(indexPath: NSIndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(iOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(iOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(iOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  var separatorStyle: UITableViewCellSeparatorStyle
  var separatorColor: UIColor?
  @available(iOS 8.0, *)
  @NSCopying var separatorEffect: UIVisualEffect?
  @available(iOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCellWithIdentifier(identifier: String) -> UITableViewCell?
  @available(iOS 6.0, *)
  func dequeueReusableCellWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 6.0, *)
  func dequeueReusableHeaderFooterViewWithIdentifier(identifier: String) -> UITableViewHeaderFooterView?
  @available(iOS 5.0, *)
  func register(nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  convenience init(frame: CGRect)
  convenience init()
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  optional func numberOfSectionsIn(tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, canMoveRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func sectionIndexTitlesFor(tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  optional func tableView(tableView: UITableView, moveRowAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
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
enum UITableViewCellSeparatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case SingleLine
  case SingleLineEtched
}
enum UITableViewCellSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Blue
  case Gray
  @available(iOS 7.0, *)
  case Default
}
@available(iOS 9.0, *)
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
  case DetailDisclosureButton
  case Checkmark
  @available(iOS 7.0, *)
  case DetailButton
}
struct UITableViewCellStateMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DefaultMask: UITableViewCellStateMask { get }
  static var ShowingEditControlMask: UITableViewCellStateMask { get }
  static var ShowingDeleteConfirmationMask: UITableViewCellStateMask { get }
}
@available(iOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(iOS 3.0, *)
  init(style: UITableViewCellStyle, reuseIdentifier: String?)
  init?(coder aDecoder: NSCoder)
  @available(iOS 3.0, *)
  var imageView: UIImageView? { get }
  @available(iOS 3.0, *)
  var textLabel: UILabel? { get }
  @available(iOS 3.0, *)
  var detailTextLabel: UILabel? { get }
  var contentView: UIView { get }
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(iOS 5.0, *)
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCellSelectionStyle
  var isSelected: Bool
  var isHighlighted: Bool
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
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  var isShowingDeleteConfirmation: Bool { get }
  @available(iOS 9.0, *)
  var focusStyle: UITableViewCellFocusStyle
  @available(iOS 3.0, *)
  func willTransitionToState(state: UITableViewCellStateMask)
  @available(iOS 3.0, *)
  func didTransitionToState(state: UITableViewCellStateMask)
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 3.2, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 7.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool
  @available(iOS 3.2, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
  @available(iOS 9.0, *)
  func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool
}
extension UITableViewCell {
}
@available(iOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var tableView: UITableView!
  @available(iOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 6.0, *)
  var refreshControl: UIRefreshControl?
  convenience init()
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, heightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForRowAt indexPath: NSIndexPath) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, accessoryButtonTappedForRowWith indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, shouldHighlightRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didHighlightRowAt indexPath: NSIndexPath)
  @available(iOS 6.0, *)
  func tableView(tableView: UITableView, didUnhighlightRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, willSelectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 3.0, *)
  func tableView(tableView: UITableView, willDeselectRowAt indexPath: NSIndexPath) -> NSIndexPath?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, didSelectRowAt indexPath: NSIndexPath)
  @available(iOS 3.0, *)
  func tableView(tableView: UITableView, didDeselectRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, editingStyleForRowAt indexPath: NSIndexPath) -> UITableViewCellEditingStyle
  @available(iOS 3.0, *)
  func tableView(tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: NSIndexPath) -> String?
  @available(iOS 8.0, *)
  func tableView(tableView: UITableView, editActionsForRowAt indexPath: NSIndexPath) -> [UITableViewRowAction]?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, willBeginEditingRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, didEndEditingRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: NSIndexPath, toProposedIndexPath proposedDestinationIndexPath: NSIndexPath) -> NSIndexPath
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, indentationLevelForRowAt indexPath: NSIndexPath) -> Int
  @available(iOS 5.0, *)
  func tableView(tableView: UITableView, shouldShowMenuForRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 5.0, *)
  func tableView(tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func tableView(tableView: UITableView, performAction action: Selector, forRowAt indexPath: NSIndexPath, withSender sender: AnyObject?)
  @available(iOS 9.0, *)
  func tableView(tableView: UITableView, canFocusRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 9.0, *)
  func tableView(tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  func tableView(tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  func indexPathForPreferredFocusedViewIn(tableView: UITableView) -> NSIndexPath?
  @available(iOS 2.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSectionsIn(tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, canMoveRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitlesFor(tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(tableView: UITableView, moveRowAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
@available(iOS 6.0, *)
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
@available(iOS 3.2, *)
class UITapGestureRecognizer : UIGestureRecognizer {
  var numberOfTapsRequired: Int
  var numberOfTouchesRequired: Int
  init(target: AnyObject?, action: Selector)
  convenience init()
}
@available(iOS 3.2, *)
class UITextChecker : NSObject {
  func rangeOfMisspelledWordIn(stringToCheck: String, range: NSRange, startingAt startingOffset: Int, wrap wrapFlag: Bool, language: String) -> NSRange
  func guessesForWordRange(range: NSRange, in string: String, language: String) -> [AnyObject]?
  func completionsForPartialWordRange(range: NSRange, in string: String?, language: String) -> [AnyObject]?
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
@available(iOS 2.0, *)
class UITextField : UIControl, UITextInput, NSCoding {
  var text: String?
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var textColor: UIColor?
  var font: UIFont?
  var textAlignment: NSTextAlignment
  var borderStyle: UITextBorderStyle
  @available(iOS 7.0, *)
  var defaultTextAttributes: [String : AnyObject]
  var placeholder: String?
  @available(iOS 6.0, *)
  @NSCopying var attributedPlaceholder: NSAttributedString?
  var clearsOnBeginEditing: Bool
  var adjustsFontSizeToFitWidth: Bool
  var minimumFontSize: CGFloat
  weak var delegate: @sil_weak UITextFieldDelegate?
  var background: UIImage?
  var disabledBackground: UIImage?
  var isEditing: Bool { get }
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
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
  func drawTextIn(rect: CGRect)
  func drawPlaceholderIn(rect: CGRect)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 3.2, *)
  func textIn(range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(iOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(iOS 2.0, *)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(position: UITextPosition, to other: UITextPosition) -> NSComparisonResult
  @available(iOS 3.2, *)
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(iOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(iOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(iOS 3.2, *)
  func firstRectFor(range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRectFor(position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  @available(iOS 3.2, *)
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeAt(point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 2.0, *)
  var textInputView: UIView { get }
  @available(iOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(iOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(iOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(iOS 2.0, *)
  func dictationRecognitionFailed()
  @available(iOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(iOS 2.0, *)
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  @available(iOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(iOS 9.0, *)
  func beginFloatingCursorAt(point: CGPoint)
  @available(iOS 9.0, *)
  func updateFloatingCursorAt(point: CGPoint)
  @available(iOS 9.0, *)
  func endFloatingCursor()
  @available(iOS 2.0, *)
  func hasText() -> Bool
  @available(iOS 2.0, *)
  func insertText(text: String)
  @available(iOS 2.0, *)
  func deleteBackward()
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var secureTextEntry: Bool
}
extension UIView {
  func endEditing(force: Bool) -> Bool
}
protocol UITextFieldDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func textFieldShouldBeginEditing(textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldDidBeginEditing(textField: UITextField)
  @available(iOS 2.0, *)
  optional func textFieldShouldEndEditing(textField: UITextField) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldDidEndEditing(textField: UITextField)
  @available(iOS 2.0, *)
  optional func textField(textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
  @available(iOS 2.0, *)
  optional func textFieldShouldClear(textField: UITextField) -> Bool
  @available(iOS 2.0, *)
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
@available(iOS 5.1, *)
class UIDictationPhrase : NSObject {
  var text: String { get }
  var alternativeInterpretations: [String]? { get }
  init()
}
@available(iOS 9.0, *)
class UITextInputAssistantItem : NSObject {

  /// Default is YES, controls if the user is allowed to hide the shortcuts bar. Does not influence the built in auto-hiding logic.
  var allowsHidingShortcuts: Bool

  /// Contains UIBarButtonItemGroups that should be displayed in the leading position on the keyboard's assistant bar.
  var leadingBarButtonGroups: [UIBarButtonItemGroup]

  /// Contains UIBarButtonItemGroups that should be displayed in the trailing position on the keyboard's assistant bar.
  var trailingBarButtonGroups: [UIBarButtonItemGroup]
  init()
}
protocol UITextInput : UIKeyInput {
  @available(iOS 3.2, *)
  func textIn(range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange? { get set }
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]? { get set }
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(position: UITextPosition, to other: UITextPosition) -> NSComparisonResult
  @available(iOS 3.2, *)
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  weak var inputDelegate: @sil_weak UITextInputDelegate? { get set }
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(iOS 3.2, *)
  func firstRectFor(range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRectFor(position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  @available(iOS 3.2, *)
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeAt(point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  optional func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  optional func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  optional func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  optional func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 2.0, *)
  optional var textInputView: UIView { get }
  optional var selectionAffinity: UITextStorageDirection { get set }
  @available(iOS 5.1, *)
  optional func insertDictationResult(dictationResult: [UIDictationPhrase])
  optional func dictationRecordingDidEnd()
  optional func dictationRecognitionFailed()
  optional func insertDictationResultPlaceholder() -> AnyObject
  optional func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  optional func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(iOS 9.0, *)
  optional func beginFloatingCursorAt(point: CGPoint)
  @available(iOS 9.0, *)
  optional func updateFloatingCursorAt(point: CGPoint)
  @available(iOS 9.0, *)
  optional func endFloatingCursor()
}
@available(iOS, introduced=3.2, deprecated=8.0, message="Use NSBackgroundColorAttributeName instead")
let UITextInputTextBackgroundColorKey: String
@available(iOS, introduced=3.2, deprecated=8.0, message="Use NSForegroundColorAttributeName instead")
let UITextInputTextColorKey: String
@available(iOS, introduced=3.2, deprecated=8.0, message="Use NSFontAttributeName instead")
let UITextInputTextFontKey: String
@available(iOS 3.2, *)
class UITextPosition : NSObject {
  init()
}
@available(iOS 3.2, *)
class UITextRange : NSObject {
  var isEmpty: Bool { get }
  var start: UITextPosition { get }
  var end: UITextPosition { get }
  init()
}
@available(iOS 6.0, *)
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
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 3.2, *)
class UITextInputStringTokenizer : NSObject, UITextInputTokenizer {
  init(textInput: UIResponder)
  init()
  @available(iOS 3.2, *)
  func rangeEnclosingPosition(position: UITextPosition, withGranularity granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, atBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, toBoundary granularity: UITextGranularity, inDirection direction: UITextDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func isPosition(position: UITextPosition, withinTextUnit granularity: UITextGranularity, inDirection direction: UITextDirection) -> Bool
}
@available(iOS 4.2, *)
class UITextInputMode : NSObject, NSSecureCoding {
  var primaryLanguage: String? { get }
  class func activeInputModes() -> [String]
  init()
  @available(iOS 4.2, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.2, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 4.2, *)
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
@available(iOS 5.0, *)
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
  @available(iOS 4.1, *)
  case DecimalPad
  @available(iOS 5.0, *)
  case Twitter
  @available(iOS 7.0, *)
  case WebSearch
  static var Alphabet: UIKeyboardType { get }
}
enum UIKeyboardAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 7.0, *)
  case Dark
  @available(iOS 7.0, *)
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
  @available(iOS 9.0, *)
  case Continue
}
protocol UITextInputTraits : NSObjectProtocol {
  optional var autocapitalizationType: UITextAutocapitalizationType { get set }
  optional var autocorrectionType: UITextAutocorrectionType { get set }
  @available(iOS 5.0, *)
  optional var spellCheckingType: UITextSpellCheckingType { get set }
  optional var keyboardType: UIKeyboardType { get set }
  optional var keyboardAppearance: UIKeyboardAppearance { get set }
  optional var returnKeyType: UIReturnKeyType { get set }
  optional var enablesReturnKeyAutomatically: Bool { get set }
  optional var secureTextEntry: Bool { get set }
}
protocol UITextViewDelegate : NSObjectProtocol, UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func textViewShouldBeginEditing(textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewShouldEndEditing(textView: UITextView) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidBeginEditing(textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidEndEditing(textView: UITextView)
  @available(iOS 2.0, *)
  optional func textView(textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func textViewDidChange(textView: UITextView)
  @available(iOS 2.0, *)
  optional func textViewDidChangeSelection(textView: UITextView)
  @available(iOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWith URL: NSURL, in characterRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  optional func textView(textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool
}
@available(iOS 2.0, *)
class UITextView : UIScrollView, UITextInput {
  weak var delegate: @sil_weak UITextViewDelegate?
  var text: String!
  var font: UIFont?
  var textColor: UIColor?
  var textAlignment: NSTextAlignment
  var selectedRange: NSRange
  var isEditable: Bool
  @available(iOS 7.0, *)
  var isSelectable: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 6.0, *)
  var allowsEditingTextAttributes: Bool
  @available(iOS 6.0, *)
  @NSCopying var attributedText: NSAttributedString!
  @available(iOS 6.0, *)
  var typingAttributes: [String : AnyObject]
  func scrollRangeToVisible(range: NSRange)
  var inputView: UIView?
  var inputAccessoryView: UIView?
  @available(iOS 6.0, *)
  var clearsOnInsertion: Bool
  @available(iOS 7.0, *)
  init(frame: CGRect, textContainer: NSTextContainer?)
  init?(coder aDecoder: NSCoder)
  @available(iOS 7.0, *)
  var textContainer: NSTextContainer { get }
  @available(iOS 7.0, *)
  var textContainerInset: UIEdgeInsets
  @available(iOS 7.0, *)
  var layoutManager: NSLayoutManager { get }
  @available(iOS 7.0, *)
  var textStorage: NSTextStorage { get }
  @available(iOS 7.0, *)
  var linkTextAttributes: [String : AnyObject]!
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 3.2, *)
  func textIn(range: UITextRange) -> String?
  @available(iOS 3.2, *)
  func replace(range: UITextRange, withText text: String)
  @available(iOS 3.2, *)
  @NSCopying var selectedTextRange: UITextRange?
  @available(iOS 3.2, *)
  var markedTextRange: UITextRange? { get }
  @available(iOS 2.0, *)
  var markedTextStyle: [NSObject : AnyObject]?
  @available(iOS 2.0, *)
  func setMarkedText(markedText: String?, selectedRange: NSRange)
  @available(iOS 2.0, *)
  func unmarkText()
  @available(iOS 3.2, *)
  var beginningOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  var endOfDocument: UITextPosition { get }
  @available(iOS 3.2, *)
  func textRangeFrom(fromPosition: UITextPosition, to toPosition: UITextPosition) -> UITextRange?
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func positionFrom(position: UITextPosition, in direction: UITextLayoutDirection, offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func compare(position: UITextPosition, to other: UITextPosition) -> NSComparisonResult
  @available(iOS 3.2, *)
  func offsetFrom(from: UITextPosition, to toPosition: UITextPosition) -> Int
  @available(iOS 2.0, *)
  weak var inputDelegate: @sil_weak UITextInputDelegate?
  @available(iOS 2.0, *)
  var tokenizer: UITextInputTokenizer { get }
  @available(iOS 3.2, *)
  func positionWithin(range: UITextRange, farthestIn direction: UITextLayoutDirection) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeByExtending(position: UITextPosition, in direction: UITextLayoutDirection) -> UITextRange?
  @available(iOS 3.2, *)
  func baseWritingDirectionFor(position: UITextPosition, in direction: UITextStorageDirection) -> UITextWritingDirection
  @available(iOS 3.2, *)
  func setBaseWritingDirection(writingDirection: UITextWritingDirection, forRange range: UITextRange)
  @available(iOS 3.2, *)
  func firstRectFor(range: UITextRange) -> CGRect
  @available(iOS 3.2, *)
  func caretRectFor(position: UITextPosition) -> CGRect
  @available(iOS 6.0, *)
  func selectionRectsFor(range: UITextRange) -> [AnyObject]
  @available(iOS 3.2, *)
  func closestPositionTo(point: CGPoint) -> UITextPosition?
  @available(iOS 3.2, *)
  func closestPositionTo(point: CGPoint, within range: UITextRange) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterRangeAt(point: CGPoint) -> UITextRange?
  @available(iOS 6.0, *)
  func shouldChangeTextIn(range: UITextRange, replacementText text: String) -> Bool
  @available(iOS 3.2, *)
  func textStylingAt(position: UITextPosition, in direction: UITextStorageDirection) -> [String : AnyObject]?
  @available(iOS 3.2, *)
  func positionWithin(range: UITextRange, atCharacterOffset offset: Int) -> UITextPosition?
  @available(iOS 3.2, *)
  func characterOffsetOf(position: UITextPosition, within range: UITextRange) -> Int
  @available(iOS 2.0, *)
  var textInputView: UIView { get }
  @available(iOS 2.0, *)
  var selectionAffinity: UITextStorageDirection
  @available(iOS 5.1, *)
  func insertDictationResult(dictationResult: [UIDictationPhrase])
  @available(iOS 2.0, *)
  func dictationRecordingDidEnd()
  @available(iOS 2.0, *)
  func dictationRecognitionFailed()
  @available(iOS 2.0, *)
  func insertDictationResultPlaceholder() -> AnyObject
  @available(iOS 2.0, *)
  func frameForDictationResultPlaceholder(placeholder: AnyObject) -> CGRect
  @available(iOS 2.0, *)
  func removeDictationResultPlaceholder(placeholder: AnyObject, willInsertResult: Bool)
  @available(iOS 9.0, *)
  func beginFloatingCursorAt(point: CGPoint)
  @available(iOS 9.0, *)
  func updateFloatingCursorAt(point: CGPoint)
  @available(iOS 9.0, *)
  func endFloatingCursor()
  @available(iOS 2.0, *)
  func hasText() -> Bool
  @available(iOS 2.0, *)
  func insertText(text: String)
  @available(iOS 2.0, *)
  func deleteBackward()
  @available(iOS 2.0, *)
  var autocapitalizationType: UITextAutocapitalizationType
  @available(iOS 2.0, *)
  var autocorrectionType: UITextAutocorrectionType
  @available(iOS 5.0, *)
  var spellCheckingType: UITextSpellCheckingType
  @available(iOS 2.0, *)
  var keyboardType: UIKeyboardType
  @available(iOS 2.0, *)
  var keyboardAppearance: UIKeyboardAppearance
  @available(iOS 2.0, *)
  var returnKeyType: UIReturnKeyType
  @available(iOS 2.0, *)
  var enablesReturnKeyAutomatically: Bool
  @available(iOS 2.0, *)
  var secureTextEntry: Bool
}
let UITextViewTextDidBeginEditingNotification: String
let UITextViewTextDidChangeNotification: String
let UITextViewTextDidEndEditingNotification: String
@available(iOS 2.0, *)
class UIToolbar : UIView, UIBarPositioning {
  var barStyle: UIBarStyle
  var items: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  func setItems(items: [UIBarButtonItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForToolbarPosition(topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setShadowImage(shadowImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition)
  @available(iOS 6.0, *)
  func shadowImageForToolbarPosition(topOrBottom: UIBarPosition) -> UIImage?
  @available(iOS 7.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged UIToolbarDelegate?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIToolbarDelegate : UIBarPositioningDelegate {
}
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
@available(iOS 9.0, *)
enum UITouchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Direct
  case Indirect
  @available(iOS 9.1, *)
  case Stylus
}
@available(iOS 9.1, *)
struct UITouchProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Force: UITouchProperties { get }
  static var Azimuth: UITouchProperties { get }
  static var Altitude: UITouchProperties { get }
  static var Location: UITouchProperties { get }
}
@available(iOS 2.0, *)
class UITouch : NSObject {
  var timestamp: NSTimeInterval { get }
  var phase: UITouchPhase { get }
  var tapCount: Int { get }
  @available(iOS 9.0, *)
  var type: UITouchType { get }
  @available(iOS 8.0, *)
  var majorRadius: CGFloat { get }
  @available(iOS 8.0, *)
  var majorRadiusTolerance: CGFloat { get }
  var window: UIWindow? { get }
  var view: UIView? { get }
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]? { get }
  func locationIn(view: UIView?) -> CGPoint
  func previousLocationIn(view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func preciseLocationIn(view: UIView?) -> CGPoint
  @available(iOS 9.1, *)
  func precisePreviousLocationIn(view: UIView?) -> CGPoint
  @available(iOS 9.0, *)
  var force: CGFloat { get }
  @available(iOS 9.0, *)
  var maximumPossibleForce: CGFloat { get }
  @available(iOS 9.1, *)
  func azimuthAngleIn(view: UIView?) -> CGFloat
  @available(iOS 9.1, *)
  func azimuthUnitVectorIn(view: UIView?) -> CGVector
  @available(iOS 9.1, *)
  var altitudeAngle: CGFloat { get }
  @available(iOS 9.1, *)
  var estimationUpdateIndex: NSNumber? { get }
  @available(iOS 9.1, *)
  var estimatedProperties: UITouchProperties { get }
  @available(iOS 9.1, *)
  var estimatedPropertiesExpectingUpdates: UITouchProperties { get }
  init()
}

/*! A trait collection encapsulates the system traits of an interface's environment. */
@available(iOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  func containsTraitsIn(trait: UITraitCollection?) -> Bool

  /*! Returns a trait collection by merging the traits in `traitCollections`. The last trait along any given
   axis (e.g. interface usage) will supercede any others. */
  /*not inherited*/ init(traitsFrom traitCollections: [UITraitCollection])
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(iOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(iOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
}

/*! Trait environments expose a trait collection that describes their environment. */
protocol UITraitEnvironment : NSObjectProtocol {
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
}
@available(iOS 8.0, *)
struct UIUserNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIUserNotificationType { get }
  static var Badge: UIUserNotificationType { get }
  static var Sound: UIUserNotificationType { get }
  static var Alert: UIUserNotificationType { get }
}
@available(iOS 9.0, *)
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case TextInput
}
@available(iOS 8.0, *)
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Foreground
  case Background
}
@available(iOS 8.0, *)
enum UIUserNotificationActionContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Minimal
}
@available(iOS 9.0, *)
let UIUserNotificationTextInputActionButtonTitleKey: String
@available(iOS 9.0, *)
let UIUserNotificationActionResponseTypedTextKey: String
@available(iOS 8.0, *)
class UIUserNotificationSettings : NSObject {
  convenience init(forTypes types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
  init()
}
@available(iOS 8.0, *)
class UIUserNotificationCategory : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  func actionsFor(context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  var identifier: String?
  func setActions(actions: [UIUserNotificationAction]?, forContext context: UIUserNotificationActionContext)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIUserNotificationAction : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  var title: String? { get }
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior { get }
  @available(iOS 9.0, *)
  var parameters: [NSObject : AnyObject] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var isAuthenticationRequired: Bool { get }
  var isDestructive: Bool { get }
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationAction : UIUserNotificationAction {
  var identifier: String?
  var title: String?
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior
  @available(iOS 9.0, *)
  var parameters: [NSObject : AnyObject]
  var activationMode: UIUserNotificationActivationMode
  var isAuthenticationRequired: Bool
  var isDestructive: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 3.1, *)
class UIVideoEditorController : UINavigationController {
  @available(iOS 3.1, *)
  class func canEditVideoAtPath(videoPath: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged protocol<UINavigationControllerDelegate, UIVideoEditorControllerDelegate>?
  var videoPath: String
  var videoMaximumDuration: NSTimeInterval
  var videoQuality: UIImagePickerControllerQualityType
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UIVideoEditorControllerDelegate : NSObjectProtocol {
  @available(iOS 3.1, *)
  optional func videoEditorController(editor: UIVideoEditorController, didSaveEditedVideoToPath editedVideoPath: String)
  @available(iOS 3.1, *)
  optional func videoEditorController(editor: UIVideoEditorController, didFailWith error: NSError)
  @available(iOS 3.1, *)
  optional func videoEditorControllerDidCancel(editor: UIVideoEditorController)
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
@available(iOS 4.0, *)
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
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
enum UISystemAnimation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Delete
}
@available(iOS 7.0, *)
enum UIViewTintAdjustmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Normal
  case Dimmed
}
@available(iOS 9.0, *)
enum UISemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
@available(iOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
protocol UICoordinateSpace : NSObjectProtocol {
  @available(iOS 8.0, *)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
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
@available(iOS 2.0, *)
class UIView : UIResponder, NSCoding, UIAppearance, UIAppearanceContainer, UIDynamicItem, UITraitEnvironment, UICoordinateSpace, UIFocusEnvironment {
  class func layerClass() -> AnyClass
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  var isUserInteractionEnabled: Bool
  var tag: Int
  var layer: CALayer { get }
  @available(iOS 9.0, *)
  func canBecomeFocused() -> Bool
  @available(iOS 9.0, *)
  var isFocused: Bool { get }
  @available(iOS 9.0, *)
  class func userInterfaceLayoutDirectionFor(attribute: UISemanticContentAttribute) -> UIUserInterfaceLayoutDirection
  @available(iOS 9.0, *)
  var semanticContentAttribute: UISemanticContentAttribute
  convenience init()
  @available(iOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  @available(iOS 2.0, *)
  class func appearance() -> Self
  @available(iOS 9.0, *)
  class func appearanceWhenContainedInInstancesOfClasses(containerTypes: [AnyObject.Type]) -> Self
  @available(iOS 8.0, *)
  class func appearanceFor(trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  class func appearanceFor(trait: UITraitCollection, whenContainedInInstancesOfClasses containerTypes: [AnyObject.Type]) -> Self

  /**
   The collision type represents how the dynamics system will evaluate collisions with 
   respect to the dynamic item. defaults to UIDynamicItemCollisionBoundsTypeRectangle
   */
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }

  /**
   The path must represent a convex polygon with counter clockwise winding and no self intersection. 
   The point (0,0) in the path corresponds to the dynamic item's center.
   */
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func convert(point: CGPoint, to coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(point: CGPoint, from coordinateSpace: UICoordinateSpace) -> CGPoint
  @available(iOS 8.0, *)
  func convert(rect: CGRect, to coordinateSpace: UICoordinateSpace) -> CGRect
  @available(iOS 8.0, *)
  func convert(rect: CGRect, from coordinateSpace: UICoordinateSpace) -> CGRect

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(iOS 9.0, *)
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(iOS 9.0, *)
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
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
  @available(iOS 4.0, *)
  var contentScaleFactor: CGFloat
  var isMultipleTouchEnabled: Bool
  var isExclusiveTouch: Bool
  func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView?
  func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool
  func convert(point: CGPoint, to view: UIView?) -> CGPoint
  func convert(point: CGPoint, from view: UIView?) -> CGPoint
  func convert(rect: CGRect, to view: UIView?) -> CGRect
  func convert(rect: CGRect, from view: UIView?) -> CGRect
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
  func insertSubview(view: UIView, at index: Int)
  func exchangeSubviewAt(index1: Int, withSubviewAt index2: Int)
  func addSubview(view: UIView)
  func insertSubview(view: UIView, belowSubview siblingSubview: UIView)
  func insertSubview(view: UIView, aboveSubview siblingSubview: UIView)
  func bringSubviewToFront(view: UIView)
  func sendSubviewToBack(view: UIView)
  func didAddSubview(subview: UIView)
  func willRemoveSubview(subview: UIView)
  func willMoveToSuperview(newSuperview: UIView?)
  func didMoveToSuperview()
  func willMoveTo(newWindow: UIWindow?)
  func didMoveToWindow()
  func isDescendantOf(view: UIView) -> Bool
  func withTag(tag: Int) -> UIView?
  func setNeedsLayout()
  func layoutIfNeeded()
  func layoutSubviews()
  @available(iOS 8.0, *)
  var layoutMargins: UIEdgeInsets
  @available(iOS 8.0, *)
  var preservesSuperviewLayoutMargins: Bool
  @available(iOS 8.0, *)
  func layoutMarginsDidChange()
  @available(iOS 9.0, *)
  var layoutMarginsGuide: UILayoutGuide { get }

  /// This content guide provides a layout area that you can use to place text and related content whose width should generally be constrained to a size that is easy for the user to read. This guide provides a centered region that you can place content within to get this behavior for this view.
  @available(iOS 9.0, *)
  var readableContentGuide: UILayoutGuide { get }
}
extension UIView {
  func draw(rect: CGRect)
  func setNeedsDisplay()
  func setNeedsDisplayIn(rect: CGRect)
  var clipsToBounds: Bool
  @NSCopying var backgroundColor: UIColor?
  var alpha: CGFloat
  var isOpaque: Bool
  var clearsContextBeforeDrawing: Bool
  var isHidden: Bool
  var contentMode: UIViewContentMode
  @available(iOS 8.0, *)
  var mask: UIView?
  @available(iOS 7.0, *)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var tintAdjustmentMode: UIViewTintAdjustmentMode
  @available(iOS 7.0, *)
  func tintColorDidChange()
}
extension UIView {
  class func beginAnimations(animationID: String?, context: UnsafeMutablePointer<Void>)
  class func commitAnimations()
  class func setAnimationDelegate(delegate: AnyObject?)
  class func setAnimationWillStart(selector: Selector)
  class func setAnimationDidStop(selector: Selector)
  class func setAnimationDuration(duration: NSTimeInterval)
  class func setAnimationDelay(delay: NSTimeInterval)
  class func setAnimationStart(startDate: NSDate)
  class func setAnimationCurve(curve: UIViewAnimationCurve)
  class func setAnimationRepeatCount(repeatCount: Float)
  class func setAnimationRepeatAutoreverses(repeatAutoreverses: Bool)
  class func setAnimationBeginsFromCurrentState(fromCurrentState: Bool)
  class func setAnimationTransition(transition: UIViewAnimationTransition, forView view: UIView, cache: Bool)
  class func setAnimationsEnabled(enabled: Bool)
  class func areAnimationsEnabled() -> Bool
  @available(iOS 7.0, *)
  class func performWithoutAnimation(actionsWithoutAnimation: () -> Void)
  @available(iOS 9.0, *)
  class func inheritedAnimationDuration() -> NSTimeInterval
}
extension UIView {
  @available(iOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  @available(iOS 7.0, *)
  class func animateWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, usingSpringWithDamping dampingRatio: CGFloat, initialSpringVelocity velocity: CGFloat, options: UIViewAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transitionWith(view: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 4.0, *)
  class func transitionFrom(fromView: UIView, to toView: UIView, duration: NSTimeInterval, options: UIViewAnimationOptions = [], completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func perform(animation: UISystemAnimation, on views: [UIView], options: UIViewAnimationOptions = [], animations parallelAnimations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
}
extension UIView {
  @available(iOS 7.0, *)
  class func animateKeyframesWithDuration(duration: NSTimeInterval, delay: NSTimeInterval, options: UIViewKeyframeAnimationOptions = [], animations: () -> Void, completion: ((Bool) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func addKeyframeWithRelativeStartTime(frameStartTime: Double, relativeDuration frameDuration: Double, animations: () -> Void)
}
extension UIView {
  @available(iOS 3.2, *)
  var gestureRecognizers: [UIGestureRecognizer]?
  @available(iOS 3.2, *)
  func addGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(iOS 3.2, *)
  func removeGestureRecognizer(gestureRecognizer: UIGestureRecognizer)
  @available(iOS 6.0, *)
  func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool
}
extension UIView {

  /*! Begins applying `effect` to the receiver. The effect's emitted keyPath/value pairs will be
      applied to the view's presentation layer.
   
      Animates the transition to the motion effect's values using the present UIView animation
      context. */
  @available(iOS 7.0, *)
  func addMotionEffect(effect: UIMotionEffect)

  /*! Stops applying `effect` to the receiver. Any affected presentation values will animate to
      their post-removal values using the present UIView animation context. */
  @available(iOS 7.0, *)
  func removeMotionEffect(effect: UIMotionEffect)
  @available(iOS 7.0, *)
  var motionEffects: [UIMotionEffect]
}
enum UILayoutConstraintAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
extension UIView {
  @available(iOS 6.0, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(iOS 6.0, *)
  func addConstraint(constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func addConstraints(constraints: [NSLayoutConstraint])
  @available(iOS 6.0, *)
  func removeConstraint(constraint: NSLayoutConstraint)
  @available(iOS 6.0, *)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension UIView {
  @available(iOS 6.0, *)
  func updateConstraintsIfNeeded()
  @available(iOS 6.0, *)
  func updateConstraints()
  @available(iOS 6.0, *)
  func needsUpdateConstraints() -> Bool
  @available(iOS 6.0, *)
  func setNeedsUpdateConstraints()
}
extension UIView {
  @available(iOS 6.0, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(iOS 6.0, *)
  class func requiresConstraintBasedLayout() -> Bool
}
extension UIView {
  @available(iOS 6.0, *)
  func alignmentRectForFrame(frame: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func frameForAlignmentRect(alignmentRect: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func alignmentRectInsets() -> UIEdgeInsets
  @available(iOS, introduced=6.0, deprecated=9.0, message="Override -viewForFirstBaselineLayout or -viewForLastBaselineLayout as appropriate, instead")
  func forBaselineLayout() -> UIView
  @available(iOS 9.0, *)
  var forFirstBaselineLayout: UIView { get }
  @available(iOS 9.0, *)
  var forLastBaselineLayout: UIView { get }
  @available(iOS 6.0, *)
  func intrinsicContentSize() -> CGSize
  @available(iOS 6.0, *)
  func invalidateIntrinsicContentSize()
  @available(iOS 6.0, *)
  func contentHuggingPriorityFor(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentHuggingPriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
  @available(iOS 6.0, *)
  func contentCompressionResistancePriorityFor(axis: UILayoutConstraintAxis) -> UILayoutPriority
  @available(iOS 6.0, *)
  func setContentCompressionResistancePriority(priority: UILayoutPriority, forAxis axis: UILayoutConstraintAxis)
}
@available(iOS 6.0, *)
let UIViewNoIntrinsicMetric: CGFloat
@available(iOS 6.0, *)
let UILayoutFittingCompressedSize: CGSize
@available(iOS 6.0, *)
let UILayoutFittingExpandedSize: CGSize
extension UIView {
  @available(iOS 6.0, *)
  func systemLayoutSizeFitting(targetSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func systemLayoutSizeFitting(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize
}
extension UIView {
  @available(iOS 9.0, *)
  var layoutGuides: [UILayoutGuide] { get }
  @available(iOS 9.0, *)
  func addLayoutGuide(layoutGuide: UILayoutGuide)
  @available(iOS 9.0, *)
  func removeLayoutGuide(layoutGuide: UILayoutGuide)
}
extension UIView {
  @available(iOS 9.0, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(iOS 9.0, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(iOS 9.0, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(iOS 9.0, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(iOS 9.0, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
}
extension UIView {
  @available(iOS 6.0, *)
  func constraintsAffectingLayoutFor(axis: UILayoutConstraintAxis) -> [NSLayoutConstraint]
  @available(iOS 6.0, *)
  func hasAmbiguousLayout() -> Bool
  @available(iOS 6.0, *)
  func exerciseAmbiguityInLayout()
}
extension UIView {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  func encodeRestorableStateWith(coder: NSCoder)
  @available(iOS 6.0, *)
  func decodeRestorableStateWith(coder: NSCoder)
}
extension UIView {
  @available(iOS 7.0, *)
  func snapshotViewAfterScreenUpdates(afterUpdates: Bool) -> UIView
  @available(iOS 7.0, *)
  func resizableSnapshotViewFrom(rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView
  @available(iOS 7.0, *)
  func drawViewHierarchyIn(rect: CGRect, afterScreenUpdates afterUpdates: Bool) -> Bool
}
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CoverVertical
  case FlipHorizontal
  case CrossDissolve
  @available(iOS 3.2, *)
  case PartialCurl
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FullScreen
  @available(iOS 3.2, *)
  case PageSheet
  @available(iOS 3.2, *)
  case FormSheet
  @available(iOS 3.2, *)
  case CurrentContext
  @available(iOS 7.0, *)
  case Custom
  @available(iOS 8.0, *)
  case OverFullScreen
  @available(iOS 8.0, *)
  case OverCurrentContext
  @available(iOS 8.0, *)
  case Popover
  @available(iOS 7.0, *)
  case None
}
protocol UIContentContainer : NSObjectProtocol {
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
}
@available(iOS 8.0, *)
let UIViewControllerShowDetailTargetDidChangeNotification: String
@available(iOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  var view: UIView!
  func loadView()
  @available(iOS 9.0, *)
  func loadViewIfNeeded()
  @available(iOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(iOS 3.0, *)
  func isViewLoaded() -> Bool
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  @available(iOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(iOS 5.0, *)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(iOS 6.0, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  @available(iOS 5.0, *)
  func prepareFor(segue: UIStoryboardSegue, sender: AnyObject?)
  @available(iOS 6.0, *)
  func canPerformUnwindSegueAction(action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject) -> Bool
  @available(iOS 9.0, *)
  func allowedChildViewControllersForUnwindingFrom(source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  func childViewControllerContaining(source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS, introduced=6.0, deprecated=9.0)
  func forUnwindSegueAction(action: Selector, from fromViewController: UIViewController, withSender sender: AnyObject?) -> UIViewController?
  @available(iOS 9.0, *)
  func unwindFor(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController)
  @available(iOS, introduced=6.0, deprecated=9.0)
  func segueForUnwindingTo(toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
  @available(iOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(iOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  @available(iOS 5.0, *)
  var presented: UIViewController? { get }
  @available(iOS 5.0, *)
  var presenting: UIViewController? { get }
  @available(iOS 5.0, *)
  var definesPresentationContext: Bool
  @available(iOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(iOS 5.0, *)
  func isBeingPresented() -> Bool
  @available(iOS 5.0, *)
  func isBeingDismissed() -> Bool
  @available(iOS 5.0, *)
  func isMovingToParentViewController() -> Bool
  @available(iOS 5.0, *)
  func isMovingFromParentViewController() -> Bool
  @available(iOS 5.0, *)
  func present(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(iOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(iOS 7.0, *)
  var modalPresentationCapturesStatusBarAppearance: Bool
  @available(iOS 4.3, *)
  func disablesAutomaticKeyboardDismissal() -> Bool
  @available(iOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(iOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(iOS 7.0, *)
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(iOS 7.0, *)
  var preferredContentSize: CGSize
  @available(iOS 7.0, *)
  func preferredStatusBarStyle() -> UIStatusBarStyle
  @available(iOS 7.0, *)
  func prefersStatusBarHidden() -> Bool
  @available(iOS 7.0, *)
  func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation
  @available(iOS 7.0, *)
  func setNeedsStatusBarAppearanceUpdate()
  @available(iOS 8.0, *)
  func targetViewControllerForAction(action: Selector, sender: AnyObject?) -> UIViewController?
  @available(iOS 8.0, *)
  func show(vc: UIViewController, sender: AnyObject?)
  @available(iOS 8.0, *)
  func showDetailViewController(vc: UIViewController, sender: AnyObject?)
  convenience init()
  @available(iOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }

  /*! To be overridden as needed to provide custom behavior when the environment's traits change. */
  @available(iOS 8.0, *)
  func traitCollectionDidChange(previousTraitCollection: UITraitCollection?)
  @available(iOS 8.0, *)
  func preferredContentSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChangeForChildContentContainer(container: UIContentContainer)
  @available(iOS 8.0, *)
  func sizeForChildContentContainer(container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransitionTo(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransitionTo(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)

  /// The preferred focused view is the view that will be focused when focus is updated programmatically. This includes setting initial focus and forcing updates via -updateFocusIfNeeded. May be self in the case of UIView instances.
  @available(iOS 9.0, *)
  weak var preferredFocusedView: @sil_weak UIView? { get }

  /// Marks this environment as needing a focus update, which if accepted will reset focus to the preferred focused view on the next update cycle. If this environment does not currently contain the focused view, then calling this method has no effect. If a parent of this environment is also requesting focus, then that parent's preferred focused view is used instead.
  @available(iOS 9.0, *)
  func setNeedsFocusUpdate()

  /// Forces focus to be updated immediately. If there is an environment that has requested a focus update via -setNeedsFocusUpdate, and the request was accepted, then focus will be updated to that environment's preferred focused view.
  @available(iOS 9.0, *)
  func updateFocusIfNeeded()

  /// Asks whether the system should allow a focus update to occur.
  @available(iOS 9.0, *)
  func shouldUpdateFocusIn(context: UIFocusUpdateContext) -> Bool

  /// Called when the screen’s focusedView has been updated to a new view. Use the animation coordinator to schedule focus-related animations in response to the update.
  @available(iOS 9.0, *)
  func didUpdateFocusIn(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator)
}
extension UIViewController {
  @available(iOS 5.0, *)
  class func attemptRotationToDeviceOrientation()
  @available(iOS 6.0, *)
  func shouldAutorotate() -> Bool
  @available(iOS 6.0, *)
  func supportedInterfaceOrientations() -> UIInterfaceOrientationMask
  @available(iOS 6.0, *)
  func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=8.0, message="Header views are animated along with the rest of the view hierarchy")
  func rotatingHeaderView() -> UIView?
  @available(iOS, introduced=2.0, deprecated=8.0, message="Footer views are animated along with the rest of the view hierarchy")
  func rotatingFooterView() -> UIView?
  @available(iOS, introduced=2.0, deprecated=8.0)
  var interfaceOrientation: UIInterfaceOrientation { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willRotateTo(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
  @available(iOS, introduced=2.0, deprecated=8.0)
  func didRotateFrom(fromInterfaceOrientation: UIInterfaceOrientation)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willAnimateRotationTo(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval)
}
extension UIViewController {
  var isEditing: Bool
  func setEditing(editing: Bool, animated: Bool)
  func editButtonItem() -> UIBarButtonItem
}
extension UIViewController {
  @available(iOS, introduced=3.0, deprecated=8.0)
  var searchDisplayController: UISearchDisplayController? { get }
}
@available(iOS 5.0, *)
let UIViewControllerHierarchyInconsistencyException: String
extension UIViewController {
  @available(iOS 5.0, *)
  var childViewControllers: [UIViewController] { get }
  @available(iOS 5.0, *)
  func addChildViewController(childController: UIViewController)
  @available(iOS 5.0, *)
  func removeFromParentViewController()
  @available(iOS 5.0, *)
  func transitionFrom(fromViewController: UIViewController, to toViewController: UIViewController, duration: NSTimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 5.0, *)
  func beginAppearanceTransition(isAppearing: Bool, animated: Bool)
  @available(iOS 5.0, *)
  func endAppearanceTransition()
  @available(iOS 7.0, *)
  func childViewControllerForStatusBarStyle() -> UIViewController?
  @available(iOS 7.0, *)
  func childViewControllerForStatusBarHidden() -> UIViewController?
  @available(iOS 8.0, *)
  func setOverrideTraitCollection(collection: UITraitCollection?, forChildViewController childViewController: UIViewController)
  @available(iOS 8.0, *)
  func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(iOS, introduced=6.0, deprecated=8.0, message="Manually forward viewWillTransitionToSize:withTransitionCoordinator: if necessary")
  func shouldAutomaticallyForwardRotationMethods() -> Bool
  @available(iOS 6.0, *)
  func shouldAutomaticallyForwardAppearanceMethods() -> Bool
  @available(iOS 5.0, *)
  func willMoveToParentViewController(parent: UIViewController?)
  @available(iOS 5.0, *)
  func didMoveToParentViewController(parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  var restorationClass: AnyObject.Type?
  @available(iOS 6.0, *)
  func encodeRestorableStateWith(coder: NSCoder)
  @available(iOS 6.0, *)
  func decodeRestorableStateWith(coder: NSCoder)
  @available(iOS 7.0, *)
  func applicationFinishedRestoringState()
  var restorationParent: UIStateRestoring? { get }
  var objectRestorationClass: AnyObject.Type? { get }
}
extension UIViewController {
  @available(iOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(iOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(iOS 7.0, *)
  var topLayoutGuide: UILayoutSupport { get }
  @available(iOS 7.0, *)
  var bottomLayoutGuide: UILayoutSupport { get }
}
extension UIViewController {
  @available(iOS 9.0, *)
  func addKeyCommand(keyCommand: UIKeyCommand)
  @available(iOS 9.0, *)
  func removeKeyCommand(keyCommand: UIKeyCommand)
}
extension UIViewController : NSExtensionRequestHandling {
  @available(iOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
  @available(iOS 8.0, *)
  func beginRequestWith(context: NSExtensionContext)
}
extension UIViewController {
  @available(iOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(iOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(iOS 9.0, *)
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(iOS 9.0, *)
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(iOS 9.0, *)
  var sourceView: UIView { get }
  @available(iOS 9.0, *)
  var sourceRect: CGRect { get set }
}
@available(iOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(iOS 9.0, *)
  func previewingContext(previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(iOS 9.0, *)
  func registerForPreviewingWith(delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(iOS 9.0, *)
  func unregisterForPreviewingWithContext(previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(iOS 9.0, *)
  func previewActionItems() -> [UIPreviewActionItem]
}
@available(iOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
@available(iOS 9.0, *)
enum UIPreviewActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Selected
  case Destructive
}
@available(iOS 9.0, *)
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewActionStyle, handler: (UIPreviewAction, UIViewController) -> Void)
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  var title: String { get }
}
@available(iOS 9.0, *)
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewActionStyle, actions: [UIPreviewAction])
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
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
  @available(iOS 2.0, *)
  func viewControllerForKey(key: String) -> UIViewController?
  @available(iOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(iOS 2.0, *)
  func containerView() -> UIView
  @available(iOS 8.0, *)
  func targetTransform() -> CGAffineTransform
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animateAlongsideTransition(animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(iOS 2.0, *)
  func animateAlongsideTransitionIn(view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  func notifyWhenInteractionEndsUsing(handler: (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(iOS 7.0, *)
  func transitionCoordinator() -> UIViewControllerTransitionCoordinator?
}
@available(iOS 7.0, *)
let UITransitionContextFromViewControllerKey: String
@available(iOS 7.0, *)
let UITransitionContextToViewControllerKey: String
@available(iOS 8.0, *)
let UITransitionContextFromViewKey: String
@available(iOS 8.0, *)
let UITransitionContextToViewKey: String
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  @available(iOS 2.0, *)
  func containerView() -> UIView?
  func isAnimated() -> Bool
  func isInteractive() -> Bool
  func transitionWasCancelled() -> Bool
  func presentationStyle() -> UIModalPresentationStyle
  func updateInteractiveTransition(percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  func completeTransition(didComplete: Bool)
  @available(iOS 2.0, *)
  func viewControllerForKey(key: String) -> UIViewController?
  @available(iOS 8.0, *)
  func viewForKey(key: String) -> UIView?
  @available(iOS 8.0, *)
  func targetTransform() -> CGAffineTransform
  @available(iOS 2.0, *)
  func initialFrameFor(vc: UIViewController) -> CGRect
  @available(iOS 2.0, *)
  func finalFrameFor(vc: UIViewController) -> CGRect
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
  @available(iOS 2.0, *)
  optional func animationControllerForPresentedController(presented: UIViewController, presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(iOS 2.0, *)
  optional func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 8.0, *)
  optional func presentationControllerForPresentedViewController(presented: UIViewController, presenting: UIViewController, sourceViewController source: UIViewController) -> UIPresentationController?
}
@available(iOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  var completionSpeed: CGFloat
  var completionCurve: UIViewAnimationCurve
  func updateInteractiveTransition(percentComplete: CGFloat)
  func cancelInteractiveTransition()
  func finishInteractiveTransition()
  init()
  @available(iOS 7.0, *)
  func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning)
}
@available(iOS 8.0, *)
enum UIBlurEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ExtraLight
  case Light
  case Dark
}
@available(iOS 8.0, *)
class UIVisualEffect : NSObject, NSCopying, NSSecureCoding {
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffectStyle)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(forBlurEffect blurEffect: UIBlurEffect)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIVisualEffectView : UIView, NSSecureCoding {
  var contentView: UIView { get }
  @NSCopying var effect: UIVisualEffect?
  init(effect: UIVisualEffect?)
  init?(coder aDecoder: NSCoder)
  convenience init(frame: CGRect)
  convenience init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
}
enum UIWebViewNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
enum UIWebPaginationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unpaginated
  case LeftToRight
  case TopToBottom
  case BottomToTop
  case RightToLeft
}
enum UIWebPaginationBreakingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Page
  case Column
}
@available(iOS 2.0, *)
class UIWebView : UIView, NSCoding, UIScrollViewDelegate {
  unowned(unsafe) var delegate: @sil_unmanaged UIWebViewDelegate?
  @available(iOS 5.0, *)
  var scrollView: UIScrollView { get }
  func loadRequest(request: NSURLRequest)
  func loadHTMLString(string: String, baseURL: NSURL?)
  func load(data: NSData, mimeType MIMEType: String, textEncodingName: String, baseURL: NSURL)
  var request: NSURLRequest? { get }
  func reload()
  func stopLoading()
  func goBack()
  func goForward()
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  var isLoading: Bool { get }
  func stringByEvaluatingJavaScriptFrom(script: String) -> String?
  var scalesPageToFit: Bool
  @available(iOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(iOS 4.0, *)
  var allowsInlineMediaPlayback: Bool
  @available(iOS 4.0, *)
  var mediaPlaybackRequiresUserAction: Bool
  @available(iOS 5.0, *)
  var mediaPlaybackAllowsAirPlay: Bool
  @available(iOS 6.0, *)
  var suppressesIncrementalRendering: Bool
  @available(iOS 6.0, *)
  var keyboardDisplayRequiresUserAction: Bool
  @available(iOS 7.0, *)
  var paginationMode: UIWebPaginationMode
  @available(iOS 7.0, *)
  var paginationBreakingMode: UIWebPaginationBreakingMode
  @available(iOS 7.0, *)
  var pageLength: CGFloat
  @available(iOS 7.0, *)
  var gapBetweenPages: CGFloat
  @available(iOS 7.0, *)
  var pageCount: Int { get }
  @available(iOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  func scrollViewDidScroll(scrollView: UIScrollView)
  @available(iOS 3.2, *)
  func scrollViewDidZoom(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDragging(scrollView: UIScrollView)
  @available(iOS 5.0, *)
  func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
  @available(iOS 2.0, *)
  func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool)
  @available(iOS 2.0, *)
  func scrollViewWillBeginDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndDecelerating(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView)
  @available(iOS 2.0, *)
  func viewForZoomingIn(scrollView: UIScrollView) -> UIView?
  @available(iOS 3.2, *)
  func scrollViewWillBeginZooming(scrollView: UIScrollView, withView view: UIView?)
  @available(iOS 2.0, *)
  func scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat)
  @available(iOS 2.0, *)
  func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool
  @available(iOS 2.0, *)
  func scrollViewDidScrollToTop(scrollView: UIScrollView)
}
protocol UIWebViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func webView(webView: UIWebView, shouldStartLoadWith request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool
  @available(iOS 2.0, *)
  optional func webViewDidStartLoad(webView: UIWebView)
  @available(iOS 2.0, *)
  optional func webViewDidFinishLoad(webView: UIWebView)
  @available(iOS 2.0, *)
  optional func webView(webView: UIWebView, didFailLoadWith error: NSError?)
}
typealias UIWindowLevel = CGFloat
@available(iOS 2.0, *)
class UIWindow : UIView {
  @available(iOS 3.2, *)
  var screen: UIScreen
  var windowLevel: UIWindowLevel
  var isKeyWindow: Bool { get }
  func becomeKeyWindow()
  func resignKeyWindow()
  func makeKeyWindow()
  func makeKeyAndVisible()
  @available(iOS 4.0, *)
  var rootViewController: UIViewController?
  func send(event: UIEvent)
  func convert(point: CGPoint, to window: UIWindow?) -> CGPoint
  func convert(point: CGPoint, from window: UIWindow?) -> CGPoint
  func convert(rect: CGRect, to window: UIWindow?) -> CGRect
  func convert(rect: CGRect, from window: UIWindow?) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
let UIWindowLevelNormal: UIWindowLevel
let UIWindowLevelAlert: UIWindowLevel
let UIWindowLevelStatusBar: UIWindowLevel
let UIWindowDidBecomeVisibleNotification: String
let UIWindowDidBecomeHiddenNotification: String
let UIWindowDidBecomeKeyNotification: String
let UIWindowDidResignKeyNotification: String
let UIKeyboardWillShowNotification: String
let UIKeyboardDidShowNotification: String
let UIKeyboardWillHideNotification: String
let UIKeyboardDidHideNotification: String
@available(iOS 3.2, *)
let UIKeyboardFrameBeginUserInfoKey: String
@available(iOS 3.2, *)
let UIKeyboardFrameEndUserInfoKey: String
@available(iOS 3.0, *)
let UIKeyboardAnimationDurationUserInfoKey: String
@available(iOS 3.0, *)
let UIKeyboardAnimationCurveUserInfoKey: String
@available(iOS 9.0, *)
let UIKeyboardIsLocalUserInfoKey: String
@available(iOS 5.0, *)
let UIKeyboardWillChangeFrameNotification: String
@available(iOS 5.0, *)
let UIKeyboardDidChangeFrameNotification: String
