
@available(iOS 7.0, *)
enum NSTextLayoutOrientation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(iOS 7.0, *)
enum NSGlyphProperty : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
@available(iOS 7.0, *)
enum NSControlCharacterAction : Int {
  init?(rawValue rawValue: Int)
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
  init?(coder coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(_ container: NSTextContainer)
  func insertTextContainer(_ container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(_ index: Int)
  func textContainerChangedGeometry(_ container: NSTextContainer)
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: CGFloat
  var usesFontLeading: Bool
  @available(iOS 7.0, *)
  var allowsNonContiguousLayout: Bool
  @available(iOS 7.0, *)
  var hasNonContiguousLayout: Bool { get }
  func invalidateGlyphsForCharacterRange(_ charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(iOS 7.0, *)
  func invalidateLayoutForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(_ charRange: NSRange)
  func invalidateDisplayForGlyphRange(_ glyphRange: NSRange)
  @available(iOS 7.0, *)
  func processEditingForTextStorage(_ textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(_ charRange: NSRange)
  func ensureGlyphsForGlyphRange(_ glyphRange: NSRange)
  func ensureLayoutForCharacterRange(_ charRange: NSRange)
  func ensureLayoutForGlyphRange(_ glyphRange: NSRange)
  func ensureLayoutForTextContainer(_ container: NSTextContainer)
  func ensureLayoutForBoundingRect(_ bounds: CGRect, inTextContainer container: NSTextContainer)
  @available(iOS 7.0, *)
  func setGlyphs(_ glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func CGGlyphAtIndex(_ glyphIndex: Int, isValidIndex isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func CGGlyphAtIndex(_ glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(_ glyphIndex: Int) -> Bool
  @available(iOS 7.0, *)
  func propertyForGlyphAtIndex(_ glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAtIndex(_ glyphIndex: Int) -> Int
  func glyphIndexForCharacterAtIndex(_ charIndex: Int) -> Int
  @available(iOS 7.0, *)
  func getGlyphsInRange(_ glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(_ container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(_ fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect usedRect: CGRect)
  func setExtraLineFragmentRect(_ fragmentRect: CGRect, usedRect usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(_ location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(_ attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(_ charIndex: UnsafeMutablePointer<Int>, glyphIndex glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(iOS 9.0, *)
  func textContainerForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectForTextContainer(_ container: NSTextContainer) -> CGRect
  func lineFragmentRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentUsedRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAtIndex(_ glyphIndex: Int) -> CGPoint
  func notShownAttributeForGlyphAtIndex(_ glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAtIndex(_ glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAtIndex(_ glyphIndex: Int) -> CGSize
  @available(iOS 7.0, *)
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(_ glyphIndex: Int) -> NSRange
  func glyphRangeForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(_ glyphRange: NSRange, actualGlyphRange actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForTextContainer(_ container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContainingIndex(_ glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(_ glyphRange: NSRange, inTextContainer container: NSTextContainer) -> CGRect
  func glyphRangeForBoundingRect(_ bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(_ bounds: CGRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndexForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndexForPoint(_ point: CGPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAtIndex(_ charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(iOS 7.0, *)
  func enumerateLineFragmentsForGlyphRange(_ glyphRange: NSRange, usingBlock block: (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  func enumerateEnclosingRectsForGlyphRange(_ glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackgroundForGlyphRange(_ glyphsToShow: NSRange, atPoint origin: CGPoint)
  func drawGlyphsForGlyphRange(_ glyphsToShow: NSRange, atPoint origin: CGPoint)
  @available(iOS 7.0, *)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions positions: UnsafePointer<CGPoint>, count glyphCount: Int, font font: UIFont, matrix textMatrix: CGAffineTransform, attributes attributes: [String : AnyObject], inContext graphicsContext: CGContext)
  @available(iOS 7.0, *)
  func fillBackgroundRectArray(_ rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color color: UIColor)
  func drawUnderlineForGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: CGPoint)
  func underlineGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: CGPoint)
  func drawStrikethroughForGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: CGPoint)
  func strikethroughGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: CGPoint)
  @available(iOS 7.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUseAction action: NSControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSControlCharacterAction
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 9.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManagerDidInvalidateLayout(_ sender: NSLayoutManager)
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, textContainer textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: CGSize)
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
  func glyphAtIndex(_ glyphIndex: Int, isValidIndex isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func glyphAtIndex(_ glyphIndex: Int) -> CGGlyph
}
