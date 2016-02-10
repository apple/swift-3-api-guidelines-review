
class NSATSTypesetter : NSTypesetter {
  class func shared() -> NSATSTypesetter
  init()
}
extension NSATSTypesetter {
}
extension NSATSTypesetter {
  var usesFontLeading: Bool
  var typesetterBehavior: NSTypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFont(forFont originalFont: NSFont) -> NSFont
  func textTab(forGlyphLocation glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged AttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  func layoutParagraph(at lineFragmentOrigin: UnsafeMutablePointer<Point>) -> Int
  func lineSpacingAfterGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: Rect) -> CGFloat
  func paragraphSpacingBeforeGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: Rect) -> CGFloat
  func paragraphSpacingAfterGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: Rect) -> CGFloat
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func getLineFragmentRect(lineFragmentRect: UnsafeMutablePointer<Rect>, usedRect lineFragmentUsedRect: UnsafeMutablePointer<Rect>, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: Point)
}
extension NSATSTypesetter {
  func willSetLineFragmentRect(lineRect: UnsafeMutablePointer<Rect>, forGlyphRange glyphRange: NSRange, usedRect: UnsafeMutablePointer<Rect>, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacter(at charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacter(at charIndex: Int) -> Bool
  func hyphenationFactorForGlyph(at glyphIndex: Int) -> Float
  func hyphenCharacterForGlyph(at glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyph(at glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: Rect, glyphPosition: Point, characterIndex charIndex: Int) -> Rect
}
extension NSATSTypesetter {
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: RangePointer) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: RangePointer) -> NSRange
  func getGlyphsIn(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  func setLineFragmentRect(fragmentRect: Rect, forGlyphRange glyphRange: NSRange, usedRect: Rect, baselineOffset: CGFloat)
  func substituteGlyphs(in glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphs(in glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: Point, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: Size, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
