
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
class NSTypesetter : Object {
  var usesFontLeading: Bool
  var typesetterBehavior: NSTypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFontFor(originalFont: NSFont) -> NSFont
  func textTabFor(glyphLocation glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged AttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraphAt(lineFragmentOrigin: PointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyphAt(glyphIndex: Int)
  func endLine(glyphRange lineGlyphRange: NSRange)
  func lineSpacingAfterGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: Rect) -> CGFloat
  func paragraphSpacingBeforeGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: Rect) -> CGFloat
  func paragraphSpacingAfterGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: Rect) -> CGFloat
  func getLineFragmentRect(lineFragmentRect: RectPointer, usedRect lineFragmentUsedRect: RectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: Point)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacterAt(charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphs(in layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(OSX 10.5, *)
  func layoutCharacters(in characterRange: NSRange, forLayoutManager layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustment(in layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> Size
  func baselineOffsetIn(layoutMgr: NSLayoutManager, glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetterFor(theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
  init()
}
extension NSTypesetter {
  func willSetLineFragmentRect(lineRect: RectPointer, forGlyphRange glyphRange: NSRange, usedRect: RectPointer, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAt(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAt(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAt(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAt(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyph(at glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: Rect, glyphPosition: Point, characterIndex charIndex: Int) -> Rect
}
extension NSTypesetter {
  func characterRangeFor(glyphRange glyphRange: NSRange, actualGlyphRange: RangePointer) -> NSRange
  func glyphRangeFor(characterRange charRange: NSRange, actualCharacterRange actualCharRange: RangePointer) -> NSRange
  func getGlyphsIn(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(lineFragmentRect: RectPointer, usedRect lineFragmentUsedRect: RectPointer, remaining remainingRect: RectPointer, forStartingGlyphAt startingGlyphIndex: Int, proposedRect: Rect, lineSpacing: CGFloat, paragraphSpacingBefore: CGFloat, paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(fragmentRect: Rect, forGlyphRange glyphRange: NSRange, usedRect: Rect, baselineOffset: CGFloat)
  func substituteGlyphsIn(glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphsIn(glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: Point, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: Size, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
