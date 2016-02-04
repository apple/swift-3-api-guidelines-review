
@available(OSX 10.7, *)
enum NSTextLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(OSX 10.11, *)
enum NSGlyphProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
@available(OSX 10.11, *)
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
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
enum NSTypesetterBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LatestBehavior
  case OriginalBehavior
  case Behavior_10_2_WithCompatibility
  case Behavior_10_2
  case Behavior_10_3
  case Behavior_10_4
}
@available(OSX 10.0, *)
class NSLayoutManager : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  func replaceTextStorage(newTextStorage: NSTextStorage)
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(index: Int)
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
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX 10.5, *)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  @available(OSX 10.11, *)
  func processEditingForTextStorage(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForTextContainer(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: NSRect, inTextContainer container: NSTextContainer)
  @available(OSX 10.11, *)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func CGGlyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func CGGlyphAtIndex(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  @available(OSX 10.5, *)
  func propertyForGlyphAtIndex(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAtIndex(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAtIndex(charIndex: Int) -> Int
  @available(OSX 10.5, *)
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect)
  func setExtraLineFragmentRect(fragmentRect: NSRect, usedRect: NSRect, textContainer container: NSTextContainer)
  func setLocation(location: NSPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(OSX 10.0, *)
  func textContainerForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectForTextContainer(container: NSTextContainer) -> NSRect
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentUsedRectForGlyphAtIndex(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  var extraLineFragmentRect: NSRect { get }
  var extraLineFragmentUsedRect: NSRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAtIndex(glyphIndex: Int) -> NSPoint
  func notShownAttributeForGlyphAtIndex(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAtIndex(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAtIndex(glyphIndex: Int) -> NSSize
  @available(OSX 10.11, *)
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(glyphIndex: Int) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForTextContainer(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContainingIndex(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, inTextContainer container: NSTextContainer) -> NSRect
  func glyphRangeForBoundingRect(bounds: NSRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: NSRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndexForPoint(point: NSPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexForPoint(point: NSPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphForPoint(point: NSPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndexForPoint(point: NSPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAtIndex(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(OSX 10.11, *)
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (NSRect, NSRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: (NSRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, atPoint origin: NSPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, atPoint origin: NSPoint)
  @available(OSX 10.7, *)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<NSPoint>, count glyphCount: Int, font: NSFont, matrix textMatrix: NSAffineTransform, attributes: [String : AnyObject], inContext graphicsContext: NSGraphicsContext)
  @available(OSX 10.6, *)
  func fillBackgroundRectArray(rectArray: UnsafePointer<NSRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: NSColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func showAttachmentCell(cell: NSCell, inRect rect: NSRect, characterIndex attachmentIndex: Int)
  func setLayoutRect(rect: NSRect, forTextBlock block: NSTextBlock, glyphRange: NSRange)
  func setBoundsRect(rect: NSRect, forTextBlock block: NSTextBlock, glyphRange: NSRange)
  func layoutRectForTextBlock(block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func boundsRectForTextBlock(block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func layoutRectForTextBlock(block: NSTextBlock, atIndex glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func boundsRectForTextBlock(block: NSTextBlock, atIndex glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func temporaryAttributesAtCharacterIndex(charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]
  func setTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func addTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func removeTemporaryAttribute(attrName: String, forCharacterRange charRange: NSRange)
  @available(OSX 10.5, *)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttributesAtCharacterIndex(location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  @available(OSX 10.5, *)
  func addTemporaryAttribute(attrName: String, value: AnyObject, forCharacterRange charRange: NSRange)
  func defaultLineHeightForFont(theFont: NSFont) -> CGFloat
  func defaultBaselineOffsetForFont(theFont: NSFont) -> CGFloat
  @available(OSX 10.0, *)
  func encodeWithCoder(aCoder: NSCoder)
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
  func rulerMarkersForTextView(view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]
  func rulerAccessoryViewForTextView(view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView, enabled isEnabled: Bool) -> NSView?
  func layoutManagerOwnsFirstResponderInWindow(window: NSWindow) -> Bool
  unowned(unsafe) var firstTextView: @sil_unmanaged NSTextView? { get }
  unowned(unsafe) var textViewForBeginningOfSelection: @sil_unmanaged NSTextView? { get }
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange) -> Int
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseAction action: NSControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSControlCharacterAction
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<NSRect>, lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(OSX 10.0, *)
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  @available(OSX 10.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: NSSize)
  @available(OSX 10.5, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldUseTemporaryAttributes attrs: [String : AnyObject], forDrawingToScreen toScreen: Bool, atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]?
}
var NSGlyphAttributeSoft: Int { get }
var NSGlyphAttributeElastic: Int { get }
var NSGlyphAttributeBidiLevel: Int { get }
var NSGlyphAttributeInscribe: Int { get }
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSGlyphProperty instead")
enum NSGlyphInscription : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case InscribeBase
  case InscribeBelow
  case InscribeAbove
  case InscribeOverstrike
  case InscribeOverBelow
}
extension NSLayoutManager {
  func glyphAtIndex(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> NSGlyph
  func glyphAtIndex(glyphIndex: Int) -> NSGlyph
  func rectArrayForCharacterRange(charRange: NSRange, withinSelectedCharacterRange selCharRange: NSRange, inTextContainer container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  func rectArrayForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selGlyphRange: NSRange, inTextContainer container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  @available(OSX, introduced=10.0, deprecated=10.11)
  var usesScreenFonts: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func substituteFontForFont(originalFont: NSFont) -> NSFont
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAtIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func replaceGlyphAtIndex(glyphIndex: Int, withGlyph newGlyph: NSGlyph)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func deleteGlyphsInRange(glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setCharacterIndex(charIndex: Int, forGlyphAtIndex glyphIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAtIndex glyphIndex: Int)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func invalidateGlyphsOnLayoutInvalidationForGlyphRange(glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func intAttribute(attributeTag: Int, forGlyphAtIndex glyphIndex: Int) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsInRange(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(glyphArray: UnsafeMutablePointer<NSGlyph>, range glyphRange: NSRange) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -invalidateLayoutForCharacterRange:actualCharacterRange: instead")
  func invalidateLayoutForCharacterRange(charRange: NSRange, isSoft flag: Bool, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -processEditingForTextStorage:edited:range:changeInLength:invalidatedRange: instead")
  func textStorage(str: NSTextStorage, edited editedMask: NSTextStorageEditedOptions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setLocation:forStartOfGlyphRange: instead")
  func setLocations(locations: NSPointArray, startingGlyphIndexes glyphIndexes: UnsafeMutablePointer<Int>, count: Int, forGlyphRange glyphRange: NSRange)
}
