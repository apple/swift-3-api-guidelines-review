
@available(OSX 10.7, *)
enum NSTextLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case horizontal
  case vertical
}
@available(OSX 10.11, *)
enum NSGlyphProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case null
  case controlCharacter
  case elastic
  case nonBaseCharacter
}
@available(OSX 10.11, *)
enum NSControlCharacterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case zeroAdvancement
  case whitespace
  case horizontalTab
  case lineBreak
  case paragraphBreak
  case containerBreak
}
protocol NSTextLayoutOrientationProvider {
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
enum NSTypesetterBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case latestBehavior
  case originalBehavior
  case behavior_10_2_WithCompatibility
  case behavior_10_2
  case behavior_10_3
  case behavior_10_4
}
@available(OSX 10.0, *)
class NSLayoutManager : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  func replaceTextStorage(newTextStorage: NSTextStorage)
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, at index: Int)
  func removeTextContainer(at index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)
  func textContainerChangedTextView(container: NSTextContainer)
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: Float
  var usesFontLeading: Bool
  @available(OSX 10.5, *)
  var allowsNonContiguousLayout: Bool
  @available(OSX 10.5, *)
  var hasNonContiguousLayout: Bool { get }
  var backgroundLayoutEnabled: Bool
  var defaultAttachmentScaling: NSImageScaling
  var typesetter: NSTypesetter
  var typesetterBehavior: NSTypesetterBehavior
  func invalidateGlyphs(forCharacterRange charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX 10.5, *)
  func invalidateLayout(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplay(forCharacterRange charRange: NSRange)
  func invalidateDisplay(forGlyphRange glyphRange: NSRange)
  @available(OSX 10.11, *)
  func processEditing(for textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphs(forCharacterRange charRange: NSRange)
  func ensureGlyphs(forGlyphRange glyphRange: NSRange)
  func ensureLayout(forCharacterRange charRange: NSRange)
  func ensureLayout(forGlyphRange glyphRange: NSRange)
  func ensureLayout(for container: NSTextContainer)
  func ensureLayout(forBoundingRect bounds: NSRect, in container: NSTextContainer)
  @available(OSX 10.11, *)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func cgGlyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func cgGlyph(at glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  @available(OSX 10.5, *)
  func propertyForGlyph(at glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyph(at glyphIndex: Int) -> Int
  func glyphIndexForCharacter(at charIndex: Int) -> Int
  @available(OSX 10.5, *)
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect)
  func setExtraLineFragmentRect(fragmentRect: NSRect, usedRect: NSRect, textContainer container: NSTextContainer)
  func setLocation(location: NSPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAt glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAt glyphIndex: Int)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyph(at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(OSX 10.0, *)
  func textContainerForGlyph(at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRect(for container: NSTextContainer) -> NSRect
  func lineFragmentRectForGlyph(at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentRectForGlyph(at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  func lineFragmentUsedRectForGlyph(at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentUsedRectForGlyph(at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  var extraLineFragmentRect: NSRect { get }
  var extraLineFragmentUsedRect: NSRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyph(at glyphIndex: Int) -> NSPoint
  func notShownAttributeForGlyph(at glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyph(at glyphIndex: Int) -> Bool
  func attachmentSizeForGlyph(at glyphIndex: Int) -> NSSize
  @available(OSX 10.11, *)
  func truncatedGlyphRangeInLineFragmentForGlyph(at glyphIndex: Int) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRange(for container: NSTextContainer) -> NSRange
  func rangeOf(nominallySpacedGlyphsContaining glyphIndex: Int) -> NSRange
  func boundingRect(forGlyphRange glyphRange: NSRange, in container: NSTextContainer) -> NSRect
  func glyphRange(forBoundingRect bounds: NSRect, in container: NSTextContainer) -> NSRange
  func glyphRange(forBoundingRectWithoutAdditionalLayout bounds: NSRect, in container: NSTextContainer) -> NSRange
  func glyphIndex(for point: NSPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndex(for point: NSPoint, in container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyph(for point: NSPoint, in container: NSTextContainer) -> CGFloat
  func characterIndex(for point: NSPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacter(at charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(OSX 10.11, *)
  func enumerateLineFragments(forGlyphRange glyphRange: NSRange, using block: (NSRect, NSRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  func enumerateEnclosingRects(forGlyphRange glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, using block: (NSRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackground(forGlyphRange glyphsToShow: NSRange, at origin: NSPoint)
  func drawGlyphs(forGlyphRange glyphsToShow: NSRange, at origin: NSPoint)
  @available(OSX 10.7, *)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<NSPoint>, count glyphCount: Int, font: NSFont, matrix textMatrix: NSAffineTransform, attributes: [String : AnyObject] = [:], in graphicsContext: NSGraphicsContext)
  @available(OSX 10.6, *)
  func fillBackgroundRectArray(rectArray: UnsafePointer<NSRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: NSColor)
  func drawUnderline(forGlyphRange glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func drawStrikethrough(forGlyphRange glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func showAttachmentCell(cell: NSCell, in rect: NSRect, characterIndex attachmentIndex: Int)
  func setLayoutRect(rect: NSRect, for block: NSTextBlock, glyphRange: NSRange)
  func setBoundsRect(rect: NSRect, for block: NSTextBlock, glyphRange: NSRange)
  func layoutRect(for block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func boundsRect(for block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func layoutRect(for block: NSTextBlock, at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func boundsRect(for block: NSTextBlock, at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func temporaryAttributes(atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]
  func setTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func addTemporaryAttributes(attrs: [String : AnyObject] = [:], forCharacterRange charRange: NSRange)
  func removeTemporaryAttribute(attrName: String, forCharacterRange charRange: NSRange)
  @available(OSX 10.5, *)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttributes(atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  @available(OSX 10.5, *)
  func addTemporaryAttribute(attrName: String, value: AnyObject, forCharacterRange charRange: NSRange)
  func defaultLineHeight(for theFont: NSFont) -> CGFloat
  func defaultBaselineOffset(for theFont: NSFont) -> CGFloat
  @available(OSX 10.0, *)
  func encode(with aCoder: NSCoder)
}
struct __lmFlags {
  var containersAreFull: UInt32
  var glyphsMightDrawOutsideLines: UInt32
  var backgroundLayoutEnabled: UInt32
  var resizingInProgress: UInt32
  var allowScreenFonts: UInt32
  var cachedRectArrayInUse: UInt32
  var displayInvalidationInProgress: UInt32
  var insertionPointNeedsUpdate: UInt32
  var layoutManagerInDirtyList: UInt32
  var originalFontOverride: UInt32
  var showInvisibleCharacters: UInt32
  var showControlCharacters: UInt32
  var delegateRespondsToDidInvalidate: UInt32
  var delegateRespondsToDidComplete: UInt32
  var glyphFormat: UInt32
  var textStorageRespondsToIsEditing: UInt32
  var notifyEditedInProgress: UInt32
  var containersChanged: UInt32
  var isGeneratingGlyphs: UInt32
  var hasNonGeneratedGlyphData: UInt32
  var inBackgroundLayout: UInt32
  var syncAlignmentToDirection: UInt32
  var defaultAttachmentScaling: UInt32
  var usesFontLeading: UInt32
  var seenRightToLeft: UInt32
  var ignoresViewTransformations: UInt32
  var needToFlushGlyph: UInt32
  var flipsIfNeeded: UInt32
  var allowNonContig: UInt32
  var useNonContig: UInt32
  init()
  init(containersAreFull: UInt32, glyphsMightDrawOutsideLines: UInt32, backgroundLayoutEnabled: UInt32, resizingInProgress: UInt32, allowScreenFonts: UInt32, cachedRectArrayInUse: UInt32, displayInvalidationInProgress: UInt32, insertionPointNeedsUpdate: UInt32, layoutManagerInDirtyList: UInt32, originalFontOverride: UInt32, showInvisibleCharacters: UInt32, showControlCharacters: UInt32, delegateRespondsToDidInvalidate: UInt32, delegateRespondsToDidComplete: UInt32, glyphFormat: UInt32, textStorageRespondsToIsEditing: UInt32, notifyEditedInProgress: UInt32, containersChanged: UInt32, isGeneratingGlyphs: UInt32, hasNonGeneratedGlyphData: UInt32, inBackgroundLayout: UInt32, syncAlignmentToDirection: UInt32, defaultAttachmentScaling: UInt32, usesFontLeading: UInt32, seenRightToLeft: UInt32, ignoresViewTransformations: UInt32, needToFlushGlyph: UInt32, flipsIfNeeded: UInt32, allowNonContig: UInt32, useNonContig: UInt32)
}
extension NSLayoutManager : NSGlyphStorage {
  var glyphGenerator: NSGlyphGenerator
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  @available(OSX 10.0, *)
  func layoutOptions() -> Int
}
extension NSLayoutManager {
  func rulerMarkers(for view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]
  func rulerAccessoryView(for view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView, enabled isEnabled: Bool) -> NSView?
  func layoutManagerOwnsFirstResponder(in window: NSWindow) -> Bool
  unowned(unsafe) var firstTextView: @sil_unmanaged NSTextView? { get }
  unowned(unsafe) var textViewForBeginningOfSelection: @sil_unmanaged NSTextView? { get }
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange) -> Int
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUse action: NSControlCharacterAction, forControlCharacterAt charIndex: Int) -> NSControlCharacterAction
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAt charIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<NSRect>, lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(OSX 10.0, *)
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  @available(OSX 10.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: NSSize)
  @available(OSX 10.5, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseTemporaryAttributes attrs: [String : AnyObject] = [:], forDrawingToScreen toScreen: Bool, atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]?
}
var NSGlyphAttributeSoft: Int { get }
var NSGlyphAttributeElastic: Int { get }
var NSGlyphAttributeBidiLevel: Int { get }
var NSGlyphAttributeInscribe: Int { get }
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSGlyphProperty instead")
enum NSGlyphInscription : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case inscribeBase
  case inscribeBelow
  case inscribeAbove
  case inscribeOverstrike
  case inscribeOverBelow
}
extension NSLayoutManager {
  func glyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> NSGlyph
  func glyph(at glyphIndex: Int) -> NSGlyph
  func rectArray(forCharacterRange charRange: NSRange, withinSelectedCharacterRange selCharRange: NSRange, in container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  func rectArray(forGlyphRange glyphRange: NSRange, withinSelectedGlyphRange selGlyphRange: NSRange, in container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  @available(OSX, introduced=10.0, deprecated=10.11)
  var usesScreenFonts: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func substituteFont(for originalFont: NSFont) -> NSFont
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAt glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func replaceGlyph(at glyphIndex: Int, withGlyph newGlyph: NSGlyph)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func deleteGlyphs(in glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setCharacterIndex(charIndex: Int, forGlyphAt glyphIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAt glyphIndex: Int)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func invalidateGlyphsOnLayoutInvalidation(forGlyphRange glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func intAttribute(attributeTag: Int, forGlyphAt glyphIndex: Int) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(glyphArray: UnsafeMutablePointer<NSGlyph>, range glyphRange: NSRange) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -invalidateLayoutForCharacterRange:actualCharacterRange: instead")
  func invalidateLayout(forCharacterRange charRange: NSRange, isSoft flag: Bool, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -processEditingForTextStorage:edited:range:changeInLength:invalidatedRange: instead")
  func textStorage(str: NSTextStorage, edited editedMask: NSTextStorageEditedOptions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setLocation:forStartOfGlyphRange: instead")
  func setLocations(locations: NSPointArray, startingGlyphIndexes glyphIndexes: UnsafeMutablePointer<Int>, count: Int, forGlyphRange glyphRange: NSRange)
}
