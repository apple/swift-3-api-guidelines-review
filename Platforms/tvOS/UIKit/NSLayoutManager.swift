
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
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: CGFloat
  var usesFontLeading: Bool
  @available(tvOS 7.0, *)
  var allowsNonContiguousLayout: Bool
  @available(tvOS 7.0, *)
  var hasNonContiguousLayout: Bool { get }
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(tvOS 7.0, *)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  @available(tvOS 7.0, *)
  func processEditingForTextStorage(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForTextContainer(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: CGRect, inTextContainer container: NSTextContainer)
  @available(tvOS 7.0, *)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)
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
  @available(tvOS 7.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int
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
