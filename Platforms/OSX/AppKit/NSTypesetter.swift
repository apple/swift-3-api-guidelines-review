
struct NSTypesetterControlCharacterAction : OptionSetType {
  init(rawValue: UInt)
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
  func textTab(forGlyphLocation glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraph(at lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyph(at glyphIndex: Int)
  func endLine(glyphRange lineGlyphRange: NSRange)
  func lineSpacingAfterGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyph(at glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacter(at charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphs(in layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(OSX 10.5, *)
  func layoutCharacters(in characterRange: NSRange, for layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustment(in layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffset(in layoutMgr: NSLayoutManager, glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetter(for theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
  init()
}
extension NSTypesetter {
  func willSetLineFragmentRect(lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect: NSRectPointer, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacter(at charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacter(at charIndex: Int) -> Bool
  func hyphenationFactorForGlyph(at glyphIndex: Int) -> Float
  func hyphenCharacterForGlyph(at glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyph(at glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsIn(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, remaining remainingRect: NSRectPointer, forStartingGlyphAt startingGlyphIndex: Int, proposedRect: NSRect, lineSpacing: CGFloat, paragraphSpacingBefore: CGFloat, paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func substituteGlyphs(in glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphs(in glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
