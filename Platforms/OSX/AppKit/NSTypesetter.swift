
struct NSTypesetterControlCharacterAction : OptionSetType {
  init(rawValue rawValue: UInt)
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
  func substituteFontForFont(_ originalFont: NSFont) -> NSFont
  func textTabForGlyphLocation(_ glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(_ paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraphAtPoint(_ lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyphAtIndex(_ glyphIndex: Int)
  func endLineWithGlyphRange(_ lineGlyphRange: NSRange)
  func lineSpacingAfterGlyphAtIndex(_ glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAtIndex(_ glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAtIndex(_ glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(_ lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacterAtIndex(_ charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphsInLayoutManager(_ layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(OSX 10.5, *)
  func layoutCharactersInRange(_ characterRange: NSRange, forLayoutManager layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustmentInLayoutManager(_ layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffsetInLayoutManager(_ layoutMgr: NSLayoutManager, glyphIndex glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetterForBehavior(_ theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
}
extension NSTypesetter {
  func willSetLineFragmentRect(_ lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect usedRect: NSRectPointer, baselineOffset baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAtIndex(_ charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAtIndex(_ charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAtIndex(_ glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAtIndex(_ glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAtIndex(_ glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRangeForGlyphRange(_ glyphRange: NSRange, actualGlyphRange actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsInRange(_ glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(_ lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, remainingRect remainingRect: NSRectPointer, forStartingGlyphAtIndex startingGlyphIndex: Int, proposedRect proposedRect: NSRect, lineSpacing lineSpacing: CGFloat, paragraphSpacingBefore paragraphSpacingBefore: CGFloat, paragraphSpacingAfter paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(_ fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect usedRect: NSRect, baselineOffset baselineOffset: CGFloat)
  func substituteGlyphsInRange(_ glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(_ glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex characterIndex: Int)
  func deleteGlyphsInRange(_ glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(_ location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(_ attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(_ levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
