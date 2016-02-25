
@available(OSX 10.7, *)
enum NSTextLayoutOrientation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(OSX 10.11, *)
enum NSGlyphProperty : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Null
  case ControlCharacter
  case Elastic
  case NonBaseCharacter
}
@available(OSX 10.11, *)
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
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
enum NSTypesetterBehavior : Int {
  init?(rawValue rawValue: Int)
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
  init?(coder coder: NSCoder)
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  func replaceTextStorage(_ newTextStorage: NSTextStorage)
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(_ container: NSTextContainer)
  func insertTextContainer(_ container: NSTextContainer, atIndex index: Int)
  func removeTextContainerAtIndex(_ index: Int)
  func textContainerChangedGeometry(_ container: NSTextContainer)
  func textContainerChangedTextView(_ container: NSTextContainer)
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
  func invalidateGlyphsForCharacterRange(_ charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX 10.5, *)
  func invalidateLayoutForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(_ charRange: NSRange)
  func invalidateDisplayForGlyphRange(_ glyphRange: NSRange)
  @available(OSX 10.11, *)
  func processEditingForTextStorage(_ textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphsForCharacterRange(_ charRange: NSRange)
  func ensureGlyphsForGlyphRange(_ glyphRange: NSRange)
  func ensureLayoutForCharacterRange(_ charRange: NSRange)
  func ensureLayoutForGlyphRange(_ glyphRange: NSRange)
  func ensureLayoutForTextContainer(_ container: NSTextContainer)
  func ensureLayoutForBoundingRect(_ bounds: NSRect, inTextContainer container: NSTextContainer)
  @available(OSX 10.11, *)
  func setGlyphs(_ glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  func CGGlyphAtIndex(_ glyphIndex: Int, isValidIndex isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func CGGlyphAtIndex(_ glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(_ glyphIndex: Int) -> Bool
  @available(OSX 10.5, *)
  func propertyForGlyphAtIndex(_ glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAtIndex(_ glyphIndex: Int) -> Int
  func glyphIndexForCharacterAtIndex(_ charIndex: Int) -> Int
  @available(OSX 10.5, *)
  func getGlyphsInRange(_ glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(_ container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(_ fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect usedRect: NSRect)
  func setExtraLineFragmentRect(_ fragmentRect: NSRect, usedRect usedRect: NSRect, textContainer container: NSTextContainer)
  func setLocation(_ location: NSPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphAtIndex glyphIndex: Int)
  func setAttachmentSize(_ attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(_ charIndex: UnsafeMutablePointer<Int>, glyphIndex glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(OSX 10.0, *)
  func textContainerForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectForTextContainer(_ container: NSTextContainer) -> NSRect
  func lineFragmentRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  func lineFragmentUsedRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentUsedRectForGlyphAtIndex(_ glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  var extraLineFragmentRect: NSRect { get }
  var extraLineFragmentUsedRect: NSRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAtIndex(_ glyphIndex: Int) -> NSPoint
  func notShownAttributeForGlyphAtIndex(_ glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAtIndex(_ glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAtIndex(_ glyphIndex: Int) -> NSSize
  @available(OSX 10.11, *)
  func truncatedGlyphRangeInLineFragmentForGlyphAtIndex(_ glyphIndex: Int) -> NSRange
  func glyphRangeForCharacterRange(_ charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(_ glyphRange: NSRange, actualGlyphRange actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForTextContainer(_ container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContainingIndex(_ glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(_ glyphRange: NSRange, inTextContainer container: NSTextContainer) -> NSRect
  func glyphRangeForBoundingRect(_ bounds: NSRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(_ bounds: NSRect, inTextContainer container: NSTextContainer) -> NSRange
  func glyphIndexForPoint(_ point: NSPoint, inTextContainer container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexForPoint(_ point: NSPoint, inTextContainer container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphForPoint(_ point: NSPoint, inTextContainer container: NSTextContainer) -> CGFloat
  func characterIndexForPoint(_ point: NSPoint, inTextContainer container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAtIndex(_ charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(OSX 10.11, *)
  func enumerateLineFragmentsForGlyphRange(_ glyphRange: NSRange, usingBlock block: (NSRect, NSRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  func enumerateEnclosingRectsForGlyphRange(_ glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, inTextContainer textContainer: NSTextContainer, usingBlock block: (NSRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackgroundForGlyphRange(_ glyphsToShow: NSRange, atPoint origin: NSPoint)
  func drawGlyphsForGlyphRange(_ glyphsToShow: NSRange, atPoint origin: NSPoint)
  @available(OSX 10.7, *)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions positions: UnsafePointer<NSPoint>, count glyphCount: Int, font font: NSFont, matrix textMatrix: NSAffineTransform, attributes attributes: [String : AnyObject], inContext graphicsContext: NSGraphicsContext)
  @available(OSX 10.6, *)
  func fillBackgroundRectArray(_ rectArray: UnsafePointer<NSRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color color: NSColor)
  func drawUnderlineForGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: NSPoint)
  func underlineGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: NSPoint)
  func drawStrikethroughForGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: NSPoint)
  func strikethroughGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin containerOrigin: NSPoint)
  func showAttachmentCell(_ cell: NSCell, inRect rect: NSRect, characterIndex attachmentIndex: Int)
  func setLayoutRect(_ rect: NSRect, forTextBlock block: NSTextBlock, glyphRange glyphRange: NSRange)
  func setBoundsRect(_ rect: NSRect, forTextBlock block: NSTextBlock, glyphRange glyphRange: NSRange)
  func layoutRectForTextBlock(_ block: NSTextBlock, glyphRange glyphRange: NSRange) -> NSRect
  func boundsRectForTextBlock(_ block: NSTextBlock, glyphRange glyphRange: NSRange) -> NSRect
  func layoutRectForTextBlock(_ block: NSTextBlock, atIndex glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func boundsRectForTextBlock(_ block: NSTextBlock, atIndex glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func temporaryAttributesAtCharacterIndex(_ charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]
  func setTemporaryAttributes(_ attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func addTemporaryAttributes(_ attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func removeTemporaryAttribute(_ attrName: String, forCharacterRange charRange: NSRange)
  @available(OSX 10.5, *)
  func temporaryAttribute(_ attrName: String, atCharacterIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttribute(_ attrName: String, atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttributesAtCharacterIndex(_ location: Int, longestEffectiveRange range: NSRangePointer, inRange rangeLimit: NSRange) -> [String : AnyObject]
  @available(OSX 10.5, *)
  func addTemporaryAttribute(_ attrName: String, value value: AnyObject, forCharacterRange charRange: NSRange)
  func defaultLineHeightForFont(_ theFont: NSFont) -> CGFloat
  func defaultBaselineOffsetForFont(_ theFont: NSFont) -> CGFloat
  @available(OSX 10.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
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
  init(containersAreFull containersAreFull: UInt32, glyphsMightDrawOutsideLines glyphsMightDrawOutsideLines: UInt32, backgroundLayoutEnabled backgroundLayoutEnabled: UInt32, resizingInProgress resizingInProgress: UInt32, allowScreenFonts allowScreenFonts: UInt32, cachedRectArrayInUse cachedRectArrayInUse: UInt32, displayInvalidationInProgress displayInvalidationInProgress: UInt32, insertionPointNeedsUpdate insertionPointNeedsUpdate: UInt32, layoutManagerInDirtyList layoutManagerInDirtyList: UInt32, originalFontOverride originalFontOverride: UInt32, showInvisibleCharacters showInvisibleCharacters: UInt32, showControlCharacters showControlCharacters: UInt32, delegateRespondsToDidInvalidate delegateRespondsToDidInvalidate: UInt32, delegateRespondsToDidComplete delegateRespondsToDidComplete: UInt32, glyphFormat glyphFormat: UInt32, textStorageRespondsToIsEditing textStorageRespondsToIsEditing: UInt32, notifyEditedInProgress notifyEditedInProgress: UInt32, containersChanged containersChanged: UInt32, isGeneratingGlyphs isGeneratingGlyphs: UInt32, hasNonGeneratedGlyphData hasNonGeneratedGlyphData: UInt32, inBackgroundLayout inBackgroundLayout: UInt32, syncAlignmentToDirection syncAlignmentToDirection: UInt32, defaultAttachmentScaling defaultAttachmentScaling: UInt32, usesFontLeading usesFontLeading: UInt32, seenRightToLeft seenRightToLeft: UInt32, ignoresViewTransformations ignoresViewTransformations: UInt32, needToFlushGlyph needToFlushGlyph: UInt32, flipsIfNeeded flipsIfNeeded: UInt32, allowNonContig allowNonContig: UInt32, useNonContig useNonContig: UInt32)
}
extension NSLayoutManager : NSGlyphStorage {
  var glyphGenerator: NSGlyphGenerator
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  @available(OSX 10.0, *)
  func layoutOptions() -> Int
}
extension NSLayoutManager {
  func rulerMarkersForTextView(_ view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler ruler: NSRulerView) -> [NSRulerMarker]
  func rulerAccessoryViewForTextView(_ view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler ruler: NSRulerView, enabled isEnabled: Bool) -> NSView?
  func layoutManagerOwnsFirstResponderInWindow(_ window: NSWindow) -> Bool
  unowned(unsafe) var firstTextView: @sil_unmanaged NSTextView? { get }
  unowned(unsafe) var textViewForBeginningOfSelection: @sil_unmanaged NSTextView? { get }
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange) -> Int
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, lineSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAtIndex glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUseAction action: NSControlCharacterAction, forControlCharacterAtIndex charIndex: Int) -> NSControlCharacterAction
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAtIndex charIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, boundingBoxForControlGlyphAtIndex glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<NSRect>, lineFragmentUsedRect lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, baselineOffset baselineOffset: UnsafeMutablePointer<CGFloat>, inTextContainer textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(OSX 10.0, *)
  optional func layoutManagerDidInvalidateLayout(_ sender: NSLayoutManager)
  @available(OSX 10.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutForTextContainer textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(OSX 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, textContainer textContainer: NSTextContainer, didChangeGeometryFromSize oldSize: NSSize)
  @available(OSX 10.5, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUseTemporaryAttributes attrs: [String : AnyObject], forDrawingToScreen toScreen: Bool, atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]?
}
var NSGlyphAttributeSoft: Int { get }
var NSGlyphAttributeElastic: Int { get }
var NSGlyphAttributeBidiLevel: Int { get }
var NSGlyphAttributeInscribe: Int { get }
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSGlyphProperty instead")
enum NSGlyphInscription : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case InscribeBase
  case InscribeBelow
  case InscribeAbove
  case InscribeOverstrike
  case InscribeOverBelow
}
extension NSLayoutManager {
  func glyphAtIndex(_ glyphIndex: Int, isValidIndex isValidIndex: UnsafeMutablePointer<ObjCBool>) -> NSGlyph
  func glyphAtIndex(_ glyphIndex: Int) -> NSGlyph
  func rectArrayForCharacterRange(_ charRange: NSRange, withinSelectedCharacterRange selCharRange: NSRange, inTextContainer container: NSTextContainer, rectCount rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  func rectArrayForGlyphRange(_ glyphRange: NSRange, withinSelectedGlyphRange selGlyphRange: NSRange, inTextContainer container: NSTextContainer, rectCount rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  @available(OSX, introduced=10.0, deprecated=10.11)
  var usesScreenFonts: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func substituteFontForFont(_ originalFont: NSFont) -> NSFont
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyphs(_ glyphs: UnsafePointer<NSGlyph>, length length: Int, forStartingGlyphAtIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyph(_ glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func replaceGlyphAtIndex(_ glyphIndex: Int, withGlyph newGlyph: NSGlyph)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func deleteGlyphsInRange(_ glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setCharacterIndex(_ charIndex: Int, forGlyphAtIndex glyphIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setIntAttribute(_ attributeTag: Int, value val: Int, forGlyphAtIndex glyphIndex: Int)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func invalidateGlyphsOnLayoutInvalidationForGlyphRange(_ glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func intAttribute(_ attributeTag: Int, forGlyphAtIndex glyphIndex: Int) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsInRange(_ glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsInRange(_ glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(_ glyphArray: UnsafeMutablePointer<NSGlyph>, range glyphRange: NSRange) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -invalidateLayoutForCharacterRange:actualCharacterRange: instead")
  func invalidateLayoutForCharacterRange(_ charRange: NSRange, isSoft flag: Bool, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -processEditingForTextStorage:edited:range:changeInLength:invalidatedRange: instead")
  func textStorage(_ str: NSTextStorage, edited editedMask: NSTextStorageEditedOptions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setLocation:forStartOfGlyphRange: instead")
  func setLocations(_ locations: NSPointArray, startingGlyphIndexes glyphIndexes: UnsafeMutablePointer<Int>, count count: Int, forGlyphRange glyphRange: NSRange)
}
