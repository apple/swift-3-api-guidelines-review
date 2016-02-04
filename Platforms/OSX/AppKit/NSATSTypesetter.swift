
class NSATSTypesetter : NSTypesetter {
  class func sharedTypesetter() -> NSATSTypesetter
  init()
}
extension NSATSTypesetter {
}
extension NSATSTypesetter {
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
  func layoutParagraphAtPoint(lineFragmentOrigin: UnsafeMutablePointer<NSPoint>) -> Int
  func lineSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAtIndex(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func getLineFragmentRect(lineFragmentRect: UnsafeMutablePointer<NSRect>, usedRect lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
}
extension NSATSTypesetter {
  func willSetLineFragmentRect(lineRect: UnsafeMutablePointer<NSRect>, forGlyphRange glyphRange: NSRange, usedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAtIndex(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAtIndex(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAtIndex(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAtIndex(glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSATSTypesetter {
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsInRange(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
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
