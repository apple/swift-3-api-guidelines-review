
struct NSTypesetterControlCharacterAction : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var zeroAdvancementAction: NSTypesetterControlCharacterAction { get }
  static var whitespaceAction: NSTypesetterControlCharacterAction { get }
  static var horizontalTabAction: NSTypesetterControlCharacterAction { get }
  static var lineBreakAction: NSTypesetterControlCharacterAction { get }
  static var paragraphBreakAction: NSTypesetterControlCharacterAction { get }
  static var containerBreakAction: NSTypesetterControlCharacterAction { get }
}
class NSTypesetter : NSObject {
  var usesFontLeading: Bool
  var typesetterBehavior: NSTypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFont(for originalFont: NSFont) -> NSFont
  func textTab(forGlyphLocation glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(_ paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraph(at lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyph(at glyphIndex: Int)
  func endLine(withGlyphRange lineGlyphRange: NSRange)
  func lineSpacingAfterGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(_ lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacter(at charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphs(in layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(OSX 10.5, *)
  func layoutCharacters(in characterRange: NSRange, for layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustment(in layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffset(in layoutMgr: NSLayoutManager, glyphIndex glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetter(for theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
}
extension NSTypesetter {
  func willSetLineFragmentRect(_ lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect usedRect: NSRectPointer, baselineOffset baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacter(at charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacter(at charIndex: Int) -> Bool
  func hyphenationFactorForGlyph(at glyphIndex: Int) -> Float
  func hyphenCharacterForGlyph(at glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyph(at glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsIn(_ glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(_ lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, remaining remainingRect: NSRectPointer, forStartingGlyphAt startingGlyphIndex: Int, proposedRect proposedRect: NSRect, lineSpacing lineSpacing: CGFloat, paragraphSpacingBefore paragraphSpacingBefore: CGFloat, paragraphSpacingAfter paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(_ fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect usedRect: NSRect, baselineOffset baselineOffset: CGFloat)
  func substituteGlyphs(in glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(_ glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex characterIndex: Int)
  func deleteGlyphs(in glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(_ location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(_ attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(_ levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
