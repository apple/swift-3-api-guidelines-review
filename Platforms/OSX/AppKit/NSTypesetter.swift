
struct NSTypesetterControlCharacterAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ZeroAdvancementAction: NSTypesetterControlCharacterAction { get }
  static var WhitespaceAction: NSTypesetterControlCharacterAction { get }
  static var HorizontalTabAction: NSTypesetterControlCharacterAction { get }
  static var LineBreakAction: NSTypesetterControlCharacterAction { get }
  static var ParagraphBreakAction: NSTypesetterControlCharacterAction { get }
  static var ContainerBreakAction: NSTypesetterControlCharacterAction { get }
}
class NSTypesetter : NSObject {
  var usesFontLeading: Bool
  var typesetterBehavior: NSTypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFontForFont(originalFont: NSFont) -> NSFont
  func textTabForGlyphLocation(glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraphAtPoint(lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyphAtIndex(glyphIndex: Int)
  func endLineWithGlyphRange(lineGlyphRange: NSRange)
  func lineSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacterAtIndex(charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphsInLayoutManager(layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(OSX 10.5, *)
  func layoutCharactersInRange(characterRange: NSRange, forLayoutManager layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustmentInLayoutManager(layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffsetInLayoutManager(layoutMgr: NSLayoutManager, glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetterForBehavior(theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
  init()
}
extension NSTypesetter {
  func willSetLineFragmentRect(lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect: NSRectPointer, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAtIndex(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAtIndex(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAtIndex(glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsInRange(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, remainingRect: NSRectPointer, forStartingGlyphAtIndex startingGlyphIndex: Int, proposedRect: NSRect, lineSpacing: CGFloat, paragraphSpacingBefore: CGFloat, paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func substituteGlyphsInRange(glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphsInRange(glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
