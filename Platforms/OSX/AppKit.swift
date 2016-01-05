
var NSTextReadInapplicableDocumentTypeError: Int { get }
var NSTextWriteInapplicableDocumentTypeError: Int { get }
var NSTextReadWriteErrorMinimum: Int { get }
var NSTextReadWriteErrorMaximum: Int { get }
var NSServiceApplicationNotFoundError: Int { get }
var NSServiceApplicationLaunchFailedError: Int { get }
var NSServiceRequestTimedOutError: Int { get }
var NSServiceInvalidPasteboardDataError: Int { get }
var NSServiceMalformedServiceDictionaryError: Int { get }
var NSServiceMiscellaneousError: Int { get }
var NSServiceErrorMinimum: Int { get }
var NSServiceErrorMaximum: Int { get }
var NSSharingServiceNotConfiguredError: Int { get }
var NSSharingServiceErrorMinimum: Int { get }
var NSSharingServiceErrorMaximum: Int { get }
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
  func substituteFontFor(originalFont: NSFont) -> NSFont
  func textTabForGlyphLocation(glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var isBidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  func layoutParagraphAt(lineFragmentOrigin: UnsafeMutablePointer<NSPoint>) -> Int
  func lineSpacingAfterGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func getLineFragmentRect(lineFragmentRect: UnsafeMutablePointer<NSRect>, usedRect lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
}
extension NSATSTypesetter {
  func willSetLineFragmentRect(lineRect: UnsafeMutablePointer<NSRect>, forGlyphRange glyphRange: NSRange, usedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAt(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAt(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAt(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAt(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAt(glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSATSTypesetter {
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsIn(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func substituteGlyphsIn(glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphsIn(glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}

/*** Accessibility Informal Protocol ***/
extension NSObject {
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(attribute: String) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(attribute: String) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityIsAttributeSettable(attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityIsAttributeSettable(attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetValue(value: AnyObject?, forAttribute attribute: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetValue(value: AnyObject?, forAttribute attribute: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityParameterizedAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityParameterizedAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionDescription(action: String) -> String?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionDescription(action: String) -> String?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityPerformAction(action: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityPerformAction(action: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use isAccessibilityElement instead")
  class func accessibilityIsIgnored() -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use isAccessibilityElement instead")
  func accessibilityIsIgnored() -> Bool
  class func accessibilityHitTest(point: NSPoint) -> AnyObject?
  func accessibilityHitTest(point: NSPoint) -> AnyObject?
  var accessibilityFocusedUIElement: AnyObject? { get }
  class func accessibilityIndexOfChild(child: AnyObject) -> Int
  func accessibilityIndexOfChild(child: AnyObject) -> Int
  class func accessibilityArrayAttributeCount(attribute: String) -> Int
  func accessibilityArrayAttributeCount(attribute: String) -> Int
  class func accessibilityArrayAttributeValues(attribute: String, index: Int, maxCount: Int) -> [AnyObject]
  func accessibilityArrayAttributeValues(attribute: String, index: Int, maxCount: Int) -> [AnyObject]
  @available(OSX 10.9, *)
  var accessibilityNotifiesWhenDestroyed: Bool { get }
  class func accessibilityFocusedUIElement() -> AnyObject?
  class func accessibilityNotifiesWhenDestroyed() -> Bool
}
extension NSWorkspace {
  @available(OSX 10.10, *)
  var accessibilityDisplayShouldIncreaseContrast: Bool { get }
  @available(OSX 10.10, *)
  var accessibilityDisplayShouldDifferentiateWithoutColor: Bool { get }
  @available(OSX 10.10, *)
  var accessibilityDisplayShouldReduceTransparency: Bool { get }
}
@available(OSX 10.10, *)
let NSWorkspaceAccessibilityDisplayOptionsDidChangeNotification: String

/*** Accessibility Related Methods ***/
extension NSObject {
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetOverrideValue(value: AnyObject?, forAttribute attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetOverrideValue(value: AnyObject?, forAttribute attribute: String) -> Bool
}
@available(OSX 10.10, *)
func NSAccessibilityFrameInView(parentView: NSView, _ frame: NSRect) -> NSRect
@available(OSX 10.10, *)
func NSAccessibilityPointInView(parentView: NSView, _ point: NSPoint) -> NSPoint
func NSAccessibilitySetMayContainProtectedContent(flag: Bool) -> Bool
func NSAccessibilityRoleDescription(role: String, _ subrole: String?) -> String?
func NSAccessibilityRoleDescriptionForUIElement(element: AnyObject) -> String?
func NSAccessibilityActionDescription(action: String) -> String?
@available(OSX, introduced=10.1, deprecated=10.11, message="Exceptions are no longer appropriate for indicating errors in accessibility API. Unexpected values should be handled through appropriate type checking.")
func NSAccessibilityRaiseBadArgumentException(element: AnyObject!, _ attribute: String!, _ value: AnyObject!)

/*** Ignored UIElements Utilities ***/
func NSAccessibilityUnignoredAncestor(element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredDescendant(element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredChildren(originalChildren: [AnyObject]) -> [AnyObject]
func NSAccessibilityUnignoredChildrenForOnlyChild(originalChild: AnyObject) -> [AnyObject]

/*** Posting Notifications ***/
func NSAccessibilityPostNotification(element: AnyObject, _ notification: String)
let NSAccessibilityErrorCodeExceptionInfo: String

/*** Accessibility Constants ***/
let NSAccessibilityRoleAttribute: String
let NSAccessibilityRoleDescriptionAttribute: String
let NSAccessibilitySubroleAttribute: String
let NSAccessibilityHelpAttribute: String
let NSAccessibilityValueAttribute: String
let NSAccessibilityMinValueAttribute: String
let NSAccessibilityMaxValueAttribute: String
let NSAccessibilityEnabledAttribute: String
let NSAccessibilityFocusedAttribute: String
let NSAccessibilityParentAttribute: String
let NSAccessibilityChildrenAttribute: String
let NSAccessibilityWindowAttribute: String
let NSAccessibilityTopLevelUIElementAttribute: String
let NSAccessibilitySelectedChildrenAttribute: String
let NSAccessibilityVisibleChildrenAttribute: String
let NSAccessibilityPositionAttribute: String
let NSAccessibilitySizeAttribute: String
let NSAccessibilityContentsAttribute: String
let NSAccessibilityTitleAttribute: String
let NSAccessibilityDescriptionAttribute: String
let NSAccessibilityShownMenuAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityValueDescriptionAttribute: String
@available(OSX 10.10, *)
let NSAccessibilitySharedFocusElementsAttribute: String
let NSAccessibilityPreviousContentsAttribute: String
let NSAccessibilityNextContentsAttribute: String
let NSAccessibilityHeaderAttribute: String
let NSAccessibilityEditedAttribute: String
let NSAccessibilityTabsAttribute: String
let NSAccessibilityHorizontalScrollBarAttribute: String
let NSAccessibilityVerticalScrollBarAttribute: String
let NSAccessibilityOverflowButtonAttribute: String
let NSAccessibilityIncrementButtonAttribute: String
let NSAccessibilityDecrementButtonAttribute: String
let NSAccessibilityFilenameAttribute: String
let NSAccessibilityExpandedAttribute: String
let NSAccessibilitySelectedAttribute: String
let NSAccessibilitySplittersAttribute: String
let NSAccessibilityDocumentAttribute: String
let NSAccessibilityActivationPointAttribute: String
let NSAccessibilityURLAttribute: String
let NSAccessibilityIndexAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityRowCountAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityColumnCountAttribute: String
@available(OSX 10.5, *)
let NSAccessibilityOrderedByRowAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityWarningValueAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityCriticalValueAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityPlaceholderValueAttribute: String
@available(OSX 10.9, *)
let NSAccessibilityContainsProtectedContentAttribute: String
@available(OSX 10.10, *)
let NSAccessibilityAlternateUIVisibleAttribute: String
let NSAccessibilityTitleUIElementAttribute: String
let NSAccessibilityServesAsTitleForUIElementsAttribute: String
let NSAccessibilityLinkedUIElementsAttribute: String
let NSAccessibilitySelectedTextAttribute: String
let NSAccessibilitySelectedTextRangeAttribute: String
let NSAccessibilityNumberOfCharactersAttribute: String
let NSAccessibilityVisibleCharacterRangeAttribute: String
let NSAccessibilitySharedTextUIElementsAttribute: String
let NSAccessibilitySharedCharacterRangeAttribute: String
let NSAccessibilityInsertionPointLineNumberAttribute: String
@available(OSX 10.5, *)
let NSAccessibilitySelectedTextRangesAttribute: String
let NSAccessibilityLineForIndexParameterizedAttribute: String
let NSAccessibilityRangeForLineParameterizedAttribute: String
let NSAccessibilityStringForRangeParameterizedAttribute: String
let NSAccessibilityRangeForPositionParameterizedAttribute: String
let NSAccessibilityRangeForIndexParameterizedAttribute: String
let NSAccessibilityBoundsForRangeParameterizedAttribute: String
let NSAccessibilityRTFForRangeParameterizedAttribute: String
let NSAccessibilityStyleRangeForIndexParameterizedAttribute: String
let NSAccessibilityAttributedStringForRangeParameterizedAttribute: String
let NSAccessibilityFontTextAttribute: String
let NSAccessibilityForegroundColorTextAttribute: String
let NSAccessibilityBackgroundColorTextAttribute: String
let NSAccessibilityUnderlineColorTextAttribute: String
let NSAccessibilityStrikethroughColorTextAttribute: String
let NSAccessibilityUnderlineTextAttribute: String
let NSAccessibilitySuperscriptTextAttribute: String
let NSAccessibilityStrikethroughTextAttribute: String
let NSAccessibilityShadowTextAttribute: String
let NSAccessibilityAttachmentTextAttribute: String
let NSAccessibilityLinkTextAttribute: String
@available(OSX 10.7, *)
let NSAccessibilityAutocorrectedTextAttribute: String
@available(OSX 10.11, *)
let NSAccessibilityListItemPrefixTextAttribute: String
@available(OSX 10.11, *)
let NSAccessibilityListItemIndexTextAttribute: String
@available(OSX 10.11, *)
let NSAccessibilityListItemLevelTextAttribute: String
let NSAccessibilityMisspelledTextAttribute: String
@available(OSX 10.4, *)
let NSAccessibilityMarkedMisspelledTextAttribute: String
let NSAccessibilityFontNameKey: String
let NSAccessibilityFontFamilyKey: String
let NSAccessibilityVisibleNameKey: String
let NSAccessibilityFontSizeKey: String
let NSAccessibilityMainAttribute: String
let NSAccessibilityMinimizedAttribute: String
let NSAccessibilityCloseButtonAttribute: String
let NSAccessibilityZoomButtonAttribute: String
let NSAccessibilityMinimizeButtonAttribute: String
let NSAccessibilityToolbarButtonAttribute: String
let NSAccessibilityProxyAttribute: String
let NSAccessibilityGrowAreaAttribute: String
let NSAccessibilityModalAttribute: String
let NSAccessibilityDefaultButtonAttribute: String
let NSAccessibilityCancelButtonAttribute: String
@available(OSX 10.7, *)
let NSAccessibilityFullScreenButtonAttribute: String
let NSAccessibilityMenuBarAttribute: String
let NSAccessibilityWindowsAttribute: String
let NSAccessibilityFrontmostAttribute: String
let NSAccessibilityHiddenAttribute: String
let NSAccessibilityMainWindowAttribute: String
let NSAccessibilityFocusedWindowAttribute: String
let NSAccessibilityFocusedUIElementAttribute: String
@available(OSX 10.8, *)
let NSAccessibilityExtrasMenuBarAttribute: String
@available(OSX 10.10, *)
enum NSAccessibilityOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Vertical
  case Horizontal
}
let NSAccessibilityOrientationAttribute: String
let NSAccessibilityVerticalOrientationValue: String
let NSAccessibilityHorizontalOrientationValue: String
let NSAccessibilityUnknownOrientationValue: String
let NSAccessibilityColumnTitlesAttribute: String
let NSAccessibilitySearchButtonAttribute: String
let NSAccessibilitySearchMenuAttribute: String
let NSAccessibilityClearButtonAttribute: String
let NSAccessibilityRowsAttribute: String
let NSAccessibilityVisibleRowsAttribute: String
let NSAccessibilitySelectedRowsAttribute: String
let NSAccessibilityColumnsAttribute: String
let NSAccessibilityVisibleColumnsAttribute: String
let NSAccessibilitySelectedColumnsAttribute: String
let NSAccessibilitySortDirectionAttribute: String
@available(OSX 10.6, *)
let NSAccessibilitySelectedCellsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityVisibleCellsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityRowHeaderUIElementsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityColumnHeaderUIElementsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityCellForColumnAndRowParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityRowIndexRangeAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityColumnIndexRangeAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityHorizontalUnitsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityVerticalUnitsAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityHorizontalUnitDescriptionAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityVerticalUnitDescriptionAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutPointForScreenPointParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutSizeForScreenSizeParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityScreenPointForLayoutPointParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityScreenSizeForLayoutSizeParameterizedAttribute: String
@available(OSX 10.6, *)
let NSAccessibilityHandlesAttribute: String
let NSAccessibilityAscendingSortDirectionValue: String
let NSAccessibilityDescendingSortDirectionValue: String
let NSAccessibilityUnknownSortDirectionValue: String
@available(OSX 10.10, *)
enum NSAccessibilitySortDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Ascending
  case Descending
}
let NSAccessibilityDisclosingAttribute: String
let NSAccessibilityDisclosedRowsAttribute: String
let NSAccessibilityDisclosedByRowAttribute: String
let NSAccessibilityDisclosureLevelAttribute: String
let NSAccessibilityAllowedValuesAttribute: String
let NSAccessibilityLabelUIElementsAttribute: String
let NSAccessibilityLabelValueAttribute: String
@available(OSX, introduced=10.1, deprecated=10.10)
let NSAccessibilityMatteHoleAttribute: String
@available(OSX, introduced=10.1, deprecated=10.10)
let NSAccessibilityMatteContentUIElementAttribute: String
let NSAccessibilityMarkerUIElementsAttribute: String
let NSAccessibilityMarkerValuesAttribute: String
let NSAccessibilityMarkerGroupUIElementAttribute: String
let NSAccessibilityUnitsAttribute: String
let NSAccessibilityUnitDescriptionAttribute: String
let NSAccessibilityMarkerTypeAttribute: String
let NSAccessibilityMarkerTypeDescriptionAttribute: String
@available(OSX 10.7, *)
let NSAccessibilityIdentifierAttribute: String
let NSAccessibilityLeftTabStopMarkerTypeValue: String
let NSAccessibilityRightTabStopMarkerTypeValue: String
let NSAccessibilityCenterTabStopMarkerTypeValue: String
let NSAccessibilityDecimalTabStopMarkerTypeValue: String
let NSAccessibilityHeadIndentMarkerTypeValue: String
let NSAccessibilityTailIndentMarkerTypeValue: String
let NSAccessibilityFirstLineIndentMarkerTypeValue: String
let NSAccessibilityUnknownMarkerTypeValue: String
@available(OSX 10.10, *)
enum NSAccessibilityRulerMarkerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case TabStopLeft
  case TabStopRight
  case TabStopCenter
  case TabStopDecimal
  case IndentHead
  case IndentTail
  case IndentFirstLine
}
let NSAccessibilityInchesUnitValue: String
let NSAccessibilityCentimetersUnitValue: String
let NSAccessibilityPointsUnitValue: String
let NSAccessibilityPicasUnitValue: String
let NSAccessibilityUnknownUnitValue: String
@available(OSX 10.10, *)
enum NSAccessibilityUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Inches
  case Centimeters
  case Points
  case Picas
}
let NSAccessibilityPressAction: String
let NSAccessibilityIncrementAction: String
let NSAccessibilityDecrementAction: String
let NSAccessibilityConfirmAction: String
let NSAccessibilityPickAction: String
let NSAccessibilityCancelAction: String
let NSAccessibilityRaiseAction: String
let NSAccessibilityShowMenuAction: String
let NSAccessibilityDeleteAction: String
@available(OSX 10.9, *)
let NSAccessibilityShowAlternateUIAction: String
@available(OSX 10.9, *)
let NSAccessibilityShowDefaultUIAction: String
let NSAccessibilityMainWindowChangedNotification: String
let NSAccessibilityFocusedWindowChangedNotification: String
let NSAccessibilityFocusedUIElementChangedNotification: String
let NSAccessibilityApplicationActivatedNotification: String
let NSAccessibilityApplicationDeactivatedNotification: String
let NSAccessibilityApplicationHiddenNotification: String
let NSAccessibilityApplicationShownNotification: String
let NSAccessibilityWindowCreatedNotification: String
let NSAccessibilityWindowMovedNotification: String
let NSAccessibilityWindowResizedNotification: String
let NSAccessibilityWindowMiniaturizedNotification: String
let NSAccessibilityWindowDeminiaturizedNotification: String
let NSAccessibilityDrawerCreatedNotification: String
let NSAccessibilitySheetCreatedNotification: String
let NSAccessibilityUIElementDestroyedNotification: String
let NSAccessibilityValueChangedNotification: String
let NSAccessibilityTitleChangedNotification: String
let NSAccessibilityResizedNotification: String
let NSAccessibilityMovedNotification: String
let NSAccessibilityCreatedNotification: String
@available(OSX 10.9, *)
let NSAccessibilityLayoutChangedNotification: String
let NSAccessibilityHelpTagCreatedNotification: String
let NSAccessibilitySelectedTextChangedNotification: String
let NSAccessibilityRowCountChangedNotification: String
let NSAccessibilitySelectedChildrenChangedNotification: String
let NSAccessibilitySelectedRowsChangedNotification: String
let NSAccessibilitySelectedColumnsChangedNotification: String
@available(OSX 10.6, *)
let NSAccessibilityRowExpandedNotification: String
@available(OSX 10.6, *)
let NSAccessibilityRowCollapsedNotification: String
@available(OSX 10.6, *)
let NSAccessibilitySelectedCellsChangedNotification: String
@available(OSX 10.6, *)
let NSAccessibilityUnitsChangedNotification: String
@available(OSX 10.6, *)
let NSAccessibilitySelectedChildrenMovedNotification: String
@available(OSX 10.7, *)
let NSAccessibilityAnnouncementRequestedNotification: String
let NSAccessibilityUnknownRole: String
let NSAccessibilityButtonRole: String
let NSAccessibilityRadioButtonRole: String
let NSAccessibilityCheckBoxRole: String
let NSAccessibilitySliderRole: String
let NSAccessibilityTabGroupRole: String
let NSAccessibilityTextFieldRole: String
let NSAccessibilityStaticTextRole: String
let NSAccessibilityTextAreaRole: String
let NSAccessibilityScrollAreaRole: String
let NSAccessibilityPopUpButtonRole: String
let NSAccessibilityMenuButtonRole: String
let NSAccessibilityTableRole: String
let NSAccessibilityApplicationRole: String
let NSAccessibilityGroupRole: String
let NSAccessibilityRadioGroupRole: String
let NSAccessibilityListRole: String
let NSAccessibilityScrollBarRole: String
let NSAccessibilityValueIndicatorRole: String
let NSAccessibilityImageRole: String
let NSAccessibilityMenuBarRole: String
let NSAccessibilityMenuRole: String
let NSAccessibilityMenuItemRole: String
let NSAccessibilityColumnRole: String
let NSAccessibilityRowRole: String
let NSAccessibilityToolbarRole: String
let NSAccessibilityBusyIndicatorRole: String
let NSAccessibilityProgressIndicatorRole: String
let NSAccessibilityWindowRole: String
let NSAccessibilityDrawerRole: String
let NSAccessibilitySystemWideRole: String
let NSAccessibilityOutlineRole: String
let NSAccessibilityIncrementorRole: String
let NSAccessibilityBrowserRole: String
let NSAccessibilityComboBoxRole: String
let NSAccessibilitySplitGroupRole: String
let NSAccessibilitySplitterRole: String
let NSAccessibilityColorWellRole: String
let NSAccessibilityGrowAreaRole: String
let NSAccessibilitySheetRole: String
let NSAccessibilityHelpTagRole: String
let NSAccessibilityMatteRole: String
let NSAccessibilityRulerRole: String
let NSAccessibilityRulerMarkerRole: String
let NSAccessibilityLinkRole: String
@available(OSX 10.5, *)
let NSAccessibilityDisclosureTriangleRole: String
@available(OSX 10.5, *)
let NSAccessibilityGridRole: String
let NSAccessibilityRelevanceIndicatorRole: String
@available(OSX 10.6, *)
let NSAccessibilityLevelIndicatorRole: String
@available(OSX 10.6, *)
let NSAccessibilityCellRole: String
@available(OSX 10.7, *)
let NSAccessibilityPopoverRole: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutAreaRole: String
@available(OSX 10.6, *)
let NSAccessibilityLayoutItemRole: String
@available(OSX 10.6, *)
let NSAccessibilityHandleRole: String
let NSAccessibilityUnknownSubrole: String
let NSAccessibilityCloseButtonSubrole: String
let NSAccessibilityZoomButtonSubrole: String
let NSAccessibilityMinimizeButtonSubrole: String
let NSAccessibilityToolbarButtonSubrole: String
let NSAccessibilityTableRowSubrole: String
let NSAccessibilityOutlineRowSubrole: String
let NSAccessibilitySecureTextFieldSubrole: String
let NSAccessibilityStandardWindowSubrole: String
let NSAccessibilityDialogSubrole: String
let NSAccessibilitySystemDialogSubrole: String
let NSAccessibilityFloatingWindowSubrole: String
let NSAccessibilitySystemFloatingWindowSubrole: String
let NSAccessibilityIncrementArrowSubrole: String
let NSAccessibilityDecrementArrowSubrole: String
let NSAccessibilityIncrementPageSubrole: String
let NSAccessibilityDecrementPageSubrole: String
let NSAccessibilitySearchFieldSubrole: String
let NSAccessibilityTextAttachmentSubrole: String
let NSAccessibilityTextLinkSubrole: String
@available(OSX 10.5, *)
let NSAccessibilityTimelineSubrole: String
@available(OSX 10.6, *)
let NSAccessibilitySortButtonSubrole: String
@available(OSX 10.6, *)
let NSAccessibilityRatingIndicatorSubrole: String
@available(OSX 10.6, *)
let NSAccessibilityContentListSubrole: String
@available(OSX 10.6, *)
let NSAccessibilityDefinitionListSubrole: String
@available(OSX 10.7, *)
let NSAccessibilityFullScreenButtonSubrole: String
@available(OSX 10.9, *)
let NSAccessibilityToggleSubrole: String
@available(OSX 10.9, *)
let NSAccessibilitySwitchSubrole: String
@available(OSX 10.9, *)
let NSAccessibilityDescriptionListSubrole: String
@available(OSX 10.7, *)
func NSAccessibilityPostNotificationWithUserInfo(element: AnyObject, _ notification: String, _ userInfo: [NSObject : AnyObject])
@available(OSX 10.9, *)
let NSAccessibilityUIElementsKey: String
@available(OSX 10.9, *)
let NSAccessibilityPriorityKey: String
@available(OSX 10.7, *)
let NSAccessibilityAnnouncementKey: String
@available(OSX 10.9, *)
enum NSAccessibilityPriorityLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(OSX 10.10, *)
class NSAccessibilityElement : NSObject, NSAccessibility {
  class func accessibilityElementWithRole(role: String, frame: NSRect, label: String?, parent: AnyObject?) -> AnyObject
  func accessibilityAddChildElement(childElement: NSAccessibilityElement)
  func accessibilityFrameInParentSpace() -> NSRect
  func setAccessibilityFrameInParentSpace(accessibilityFrameInParentSpace: NSRect)
  init()
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func accessibilityFrame() -> NSRect
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func isAccessibilityFocused() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityParent() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIdentifier() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
protocol NSAccessibilityElementProtocol : NSObjectProtocol {
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  optional func isAccessibilityFocused() -> Bool
  optional func accessibilityIdentifier() -> String
}
protocol NSAccessibilityGroup : NSAccessibilityElementProtocol {
}
protocol NSAccessibilityButton : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityPerformPress() -> Bool
}
protocol NSAccessibilitySwitch : NSAccessibilityButton {
  func accessibilityValue() -> String?
  optional func accessibilityPerformIncrement() -> Bool
  optional func accessibilityPerformDecrement() -> Bool
}
protocol NSAccessibilityRadioButton : NSAccessibilityButton {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityCheckBox : NSAccessibilityButton {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityStaticText : NSAccessibilityElementProtocol {
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  optional func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  optional func accessibilityVisibleCharacterRange() -> NSRange
}
protocol NSAccessibilityNavigableStaticText : NSAccessibilityStaticText {
  func accessibilityStringFor(range: NSRange) -> String?
  func accessibilityLineFor(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameFor(range: NSRange) -> NSRect
}
protocol NSAccessibilityProgressIndicator : NSAccessibilityGroup {
  func accessibilityValue() -> NSNumber?
}
protocol NSAccessibilityStepper : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
  optional func accessibilityValue() -> AnyObject?
}
protocol NSAccessibilitySlider : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
  func accessibilityValue() -> AnyObject?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
}
protocol NSAccessibilityImage : NSAccessibilityElementProtocol {
  func accessibilityLabel() -> String?
}
protocol NSAccessibilityContainsTransientUI : NSAccessibilityElementProtocol {
  func accessibilityPerformShowAlternateUI() -> Bool
  func accessibilityPerformShowDefaultUI() -> Bool
  func isAccessibilityAlternateUIVisible() -> Bool
}
protocol NSAccessibilityTable : NSAccessibilityGroup {
  func accessibilityLabel() -> String?
  func accessibilityRows() -> [NSAccessibilityRow]?
  optional func accessibilitySelectedRows() -> [NSAccessibilityRow]?
  optional func setAccessibilitySelectedRows(selectedRows: [NSAccessibilityRow])
  optional func accessibilityVisibleRows() -> [NSAccessibilityRow]?
  optional func accessibilityColumns() -> [AnyObject]?
  optional func accessibilityVisibleColumns() -> [AnyObject]?
  optional func accessibilitySelectedColumns() -> [AnyObject]?
  optional func accessibilityHeaderGroup() -> String?
  optional func accessibilitySelectedCells() -> [AnyObject]?
  optional func accessibilityVisibleCells() -> [AnyObject]?
  optional func accessibilityRowHeaderUIElements() -> [AnyObject]?
  optional func accessibilityColumnHeaderUIElements() -> [AnyObject]?
}
protocol NSAccessibilityOutline : NSAccessibilityTable {
}
protocol NSAccessibilityList : NSAccessibilityTable {
}
protocol NSAccessibilityRow : NSAccessibilityGroup {
  func accessibilityIndex() -> Int
  optional func accessibilityDisclosureLevel() -> Int
}
protocol NSAccessibilityLayoutArea : NSAccessibilityGroup {
  func accessibilityLabel() -> String
  func accessibilityChildren() -> [AnyObject]?
  func accessibilitySelectedChildren() -> [AnyObject]?
  func accessibilityFocusedUIElement() -> AnyObject
}
protocol NSAccessibilityLayoutItem : NSAccessibilityGroup {
  optional func setAccessibilityFrame(frame: NSRect)
}
protocol NSAccessibility : NSObjectProtocol {
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func accessibilityFrame() -> NSRect
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func isAccessibilityFocused() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityParent() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIdentifier() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
class NSActionCell : NSCell {
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSAffineTransform {
  func transform(aPath: NSBezierPath) -> NSBezierPath
  func set()
  func concat()
}
enum NSAlertStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case WarningAlertStyle
  case InformationalAlertStyle
  case CriticalAlertStyle
}
class NSAlert : NSObject {
  /*not inherited*/ init(error: NSError)
  var messageText: String
  var informativeText: String
  var icon: NSImage!
  func addButtonWithTitle(title: String) -> NSButton
  var buttons: [NSButton] { get }
  var showsHelp: Bool
  var helpAnchor: String?
  var alertStyle: NSAlertStyle
  unowned(unsafe) var delegate: @sil_unmanaged NSAlertDelegate?
  @available(OSX 10.5, *)
  var showsSuppressionButton: Bool
  @available(OSX 10.5, *)
  var suppressionButton: NSButton? { get }
  @available(OSX 10.5, *)
  var accessoryView: NSView?
  @available(OSX 10.5, *)
  func layout()
  func runModal() -> NSModalResponse
  @available(OSX, introduced=10.3, deprecated=10.10, message="Use -beginSheetModalForWindow:completionHandler: instead")
  func beginSheetModalFor(window: NSWindow, modalDelegate delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  func beginSheetModalFor(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)? = nil)
  var window: NSWindow { get }
  init()
}
var NSAlertFirstButtonReturn: Int { get }
var NSAlertSecondButtonReturn: Int { get }
var NSAlertThirdButtonReturn: Int { get }
protocol NSAlertDelegate : NSObjectProtocol {
  optional func alertShowHelp(alert: NSAlert) -> Bool
}
protocol NSAlignmentFeedbackToken : NSObjectProtocol {
}
@available(OSX 10.11, *)
class NSAlignmentFeedbackFilter : NSObject {
  class func inputEventMask() -> NSEventMask
  func updateWith(event: NSEvent)
  func updateWithPanRecognizer(panRecognizer: NSPanGestureRecognizer)
  func alignmentFeedbackTokenForMovementIn(view: NSView?, previousPoint: NSPoint, alignedPoint: NSPoint, defaultPoint: NSPoint) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForHorizontalMovementIn(view: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?
  func alignmentFeedbackTokenForVerticalMovementIn(view: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?
  func performFeedback(alignmentFeedbackTokens: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackPerformanceTime)
  init()
}
enum NSAnimationCurve : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case EaseInOut
  case EaseIn
  case EaseOut
  case Linear
}
enum NSAnimationBlockingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Blocking
  case Nonblocking
  case NonblockingThreaded
}
typealias NSAnimationProgress = Float
let NSAnimationProgressMarkNotification: String
let NSAnimationProgressMark: String
class NSAnimation : NSObject, NSCopying, NSCoding {
  init(duration: NSTimeInterval, animationCurve: NSAnimationCurve)
  func startAnimation()
  func stopAnimation()
  var isAnimating: Bool { get }
  var currentProgress: NSAnimationProgress
  var duration: NSTimeInterval
  var animationBlockingMode: NSAnimationBlockingMode
  var frameRate: Float
  var animationCurve: NSAnimationCurve
  var currentValue: Float { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSAnimationDelegate?
  var progressMarks: [NSNumber]
  func addProgressMark(progressMark: NSAnimationProgress)
  func removeProgressMark(progressMark: NSAnimationProgress)
  func startWhenAnimation(animation: NSAnimation, reachesProgress startProgress: NSAnimationProgress)
  func stopWhenAnimation(animation: NSAnimation, reachesProgress stopProgress: NSAnimationProgress)
  func clearStartAnimation()
  func clearStopAnimation()
  var runLoopModesForAnimating: [String]? { get }
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __aFlags {
  var delegateAnimationShouldStart: UInt32
  var delegateAnimationDidStop: UInt32
  var delegateAnimationDidEnd: UInt32
  var delegateAnimationValueForProgress: UInt32
  var delegateAnimationDidReachProgressMark: UInt32
  var animating: UInt32
  var blocking: UInt32
  var sendProgressAllTheTime: UInt32
  var reserved: UInt32
  init()
  init(delegateAnimationShouldStart: UInt32, delegateAnimationDidStop: UInt32, delegateAnimationDidEnd: UInt32, delegateAnimationValueForProgress: UInt32, delegateAnimationDidReachProgressMark: UInt32, animating: UInt32, blocking: UInt32, sendProgressAllTheTime: UInt32, reserved: UInt32)
}
struct __aSettings {
  var animationCurve: UInt32
  var animationBlockingMode: UInt32
  var reserved: UInt32
  init()
  init(animationCurve: UInt32, animationBlockingMode: UInt32, reserved: UInt32)
}
protocol NSAnimationDelegate : NSObjectProtocol {
  optional func animationShouldStart(animation: NSAnimation) -> Bool
  optional func animationDidStop(animation: NSAnimation)
  optional func animationDidEnd(animation: NSAnimation)
  optional func animation(animation: NSAnimation, valueForProgress progress: NSAnimationProgress) -> Float
  optional func animation(animation: NSAnimation, didReachProgressMark progress: NSAnimationProgress)
}
let NSViewAnimationTargetKey: String
let NSViewAnimationStartFrameKey: String
let NSViewAnimationEndFrameKey: String
let NSViewAnimationEffectKey: String
let NSViewAnimationFadeInEffect: String
let NSViewAnimationFadeOutEffect: String
class NSViewAnimation : NSAnimation {
  init(viewAnimations: [[String : AnyObject]])
  var viewAnimations: [[String : AnyObject]]
  init(duration: NSTimeInterval, animationCurve: NSAnimationCurve)
  init()
  init?(coder aDecoder: NSCoder)
}
struct __vaFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
protocol NSAnimatablePropertyContainer {
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject] { get set }
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  static func defaultAnimationForKey(key: String) -> AnyObject?
}
@available(OSX 10.5, *)
let NSAnimationTriggerOrderIn: String
@available(OSX 10.5, *)
let NSAnimationTriggerOrderOut: String
@available(OSX 10.5, *)
class NSAnimationContext : NSObject {
  @available(OSX 10.7, *)
  class func runAnimationGroup(changes: (NSAnimationContext) -> Void, completionHandler: (() -> Void)? = nil)
  class func beginGrouping()
  class func endGrouping()
  class func current() -> NSAnimationContext
  var duration: NSTimeInterval
  @available(OSX 10.7, *)
  var timingFunction: CAMediaTimingFunction?
  @available(OSX 10.7, *)
  var completionHandler: (() -> Void)?
  @available(OSX 10.8, *)
  var allowsImplicitAnimation: Bool
  init()
}
@available(OSX 10.9, *)
class NSAppearance : NSObject, NSCoding {
  @available(OSX 10.9, *)
  var name: String { get }
  class func current() -> NSAppearance
  class func setCurrentAppearance(appearance: NSAppearance?)
  /*not inherited*/ init?(named name: String)
  init?(appearanceNamed name: String, bundle: NSBundle?)
  @available(OSX 10.10, *)
  var allowsVibrancy: Bool { get }
  init()
  @available(OSX 10.9, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
let NSAppearanceNameAqua: String
@available(OSX, introduced=10.9, deprecated=10.10, message="Light content should use the default Aqua apppearance.")
let NSAppearanceNameLightContent: String
@available(OSX 10.10, *)
let NSAppearanceNameVibrantDark: String
@available(OSX 10.10, *)
let NSAppearanceNameVibrantLight: String
protocol NSAppearanceCustomization : NSObjectProtocol {
  @available(OSX 10.9, *)
  var appearance: NSAppearance? { get set }
  @available(OSX 10.9, *)
  var effectiveAppearance: NSAppearance { get }
}
extension NSAppleScript {
  var richTextSource: NSAttributedString? { get }
}
let NSAppKitVersionNumber: Double
var NSAppKitVersionNumber10_0: Int32 { get }
var NSAppKitVersionNumber10_1: Int32 { get }
var NSAppKitVersionNumber10_2: Int32 { get }
var NSAppKitVersionNumber10_2_3: Double { get }
var NSAppKitVersionNumber10_3: Int32 { get }
var NSAppKitVersionNumber10_3_2: Double { get }
var NSAppKitVersionNumber10_3_3: Double { get }
var NSAppKitVersionNumber10_3_5: Double { get }
var NSAppKitVersionNumber10_3_7: Double { get }
var NSAppKitVersionNumber10_3_9: Double { get }
var NSAppKitVersionNumber10_4: Int32 { get }
var NSAppKitVersionNumber10_4_1: Double { get }
var NSAppKitVersionNumber10_4_3: Double { get }
var NSAppKitVersionNumber10_4_4: Double { get }
var NSAppKitVersionNumber10_4_7: Double { get }
var NSAppKitVersionNumber10_5: Int32 { get }
var NSAppKitVersionNumber10_5_2: Double { get }
var NSAppKitVersionNumber10_5_3: Double { get }
var NSAppKitVersionNumber10_6: Int32 { get }
var NSAppKitVersionNumber10_7: Int32 { get }
var NSAppKitVersionNumber10_7_2: Double { get }
var NSAppKitVersionNumber10_7_3: Double { get }
var NSAppKitVersionNumber10_7_4: Double { get }
var NSAppKitVersionNumber10_8: Int32 { get }
var NSAppKitVersionNumber10_9: Int32 { get }
var NSAppKitVersionNumber10_10: Int32 { get }
var NSAppKitVersionNumber10_10_2: Int32 { get }
var NSAppKitVersionNumber10_10_3: Int32 { get }
var NSAppKitVersionNumber10_10_4: Int32 { get }
var NSAppKitVersionNumber10_10_5: Int32 { get }
var NSAppKitVersionNumber10_10_Max: Int32 { get }
let NSModalPanelRunLoopMode: String
let NSEventTrackingRunLoopMode: String
var NSModalResponseStop: Int { get }
var NSModalResponseAbort: Int { get }
var NSModalResponseContinue: Int { get }
@available(OSX 10.9, *)
typealias NSModalResponse = Int
var NSUpdateWindowsRunLoopOrdering: Int { get }
@available(OSX 10.6, *)
struct NSApplicationPresentationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Default: NSApplicationPresentationOptions { get }
  static var AutoHideDock: NSApplicationPresentationOptions { get }
  static var HideDock: NSApplicationPresentationOptions { get }
  static var AutoHideMenuBar: NSApplicationPresentationOptions { get }
  static var HideMenuBar: NSApplicationPresentationOptions { get }
  static var DisableAppleMenu: NSApplicationPresentationOptions { get }
  static var DisableProcessSwitching: NSApplicationPresentationOptions { get }
  static var DisableForceQuit: NSApplicationPresentationOptions { get }
  static var DisableSessionTermination: NSApplicationPresentationOptions { get }
  static var DisableHideApplication: NSApplicationPresentationOptions { get }
  static var DisableMenuBarTransparency: NSApplicationPresentationOptions { get }
  @available(OSX 10.7, *)
  static var FullScreen: NSApplicationPresentationOptions { get }
  @available(OSX 10.7, *)
  static var AutoHideToolbar: NSApplicationPresentationOptions { get }
  @available(OSX 10.11.2, *)
  static var DisableCursorLocationAssistance: NSApplicationPresentationOptions { get }
}
@available(OSX 10.9, *)
struct NSApplicationOcclusionState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Visible: NSApplicationOcclusionState { get }
}
typealias NSModalSession = COpaquePointer
class NSApplication : NSResponder, NSUserInterfaceValidations, NSAccessibilityElementProtocol, NSAccessibility {
  class func shared() -> NSApplication
  unowned(unsafe) var delegate: @sil_unmanaged NSApplicationDelegate?
  var context: NSGraphicsContext? { get }
  func hide(sender: AnyObject?)
  func unhide(sender: AnyObject?)
  func unhideWithoutActivation()
  func windowWithWindowNumber(windowNum: Int) -> NSWindow?
  unowned(unsafe) var mainWindow: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var keyWindow: @sil_unmanaged NSWindow? { get }
  var isActive: Bool { get }
  var isHidden: Bool { get }
  var isRunning: Bool { get }
  func deactivate()
  func activateIgnoringOtherApps(flag: Bool)
  func hideOtherApplications(sender: AnyObject?)
  func unhideAllApplications(sender: AnyObject?)
  func finishLaunching()
  func run()
  func runModalFor(theWindow: NSWindow) -> Int
  func stop(sender: AnyObject?)
  func stopModal()
  func stopModalWithCode(returnCode: Int)
  func abortModal()
  var modalWindow: NSWindow? { get }
  func beginModalSessionFor(theWindow: NSWindow) -> NSModalSession
  func run(session: NSModalSession) -> Int
  func end(session: NSModalSession)
  func terminate(sender: AnyObject?)
  func requestUserAttention(requestType: NSRequestUserAttentionType) -> Int
  func cancelUserAttentionRequest(request: Int)
  func nextEventMatchingMask(mask: Int, until expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEventsMatchingMask(mask: Int, before lastEvent: NSEvent?)
  func post(event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  func send(theEvent: NSEvent)
  func preventWindowOrdering()
  func makeWindowsPerform(aSelector: Selector, inOrder flag: Bool) -> NSWindow?
  var windows: [NSWindow] { get }
  func setWindowsNeedUpdate(needUpdate: Bool)
  func updateWindows()
  var mainMenu: NSMenu?
  @available(OSX 10.6, *)
  var helpMenu: NSMenu?
  var applicationIconImage: NSImage!
  @available(OSX 10.6, *)
  func activationPolicy() -> NSApplicationActivationPolicy
  @available(OSX 10.6, *)
  func setActivationPolicy(activationPolicy: NSApplicationActivationPolicy) -> Bool
  @available(OSX 10.5, *)
  var dockTile: NSDockTile { get }
  func sendAction(theAction: Selector, to theTarget: AnyObject?, from sender: AnyObject?) -> Bool
  func targetForAction(theAction: Selector) -> AnyObject?
  func targetForAction(theAction: Selector, to theTarget: AnyObject?, from sender: AnyObject?) -> AnyObject?
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func report(theException: NSException)
  class func detachDrawingThread(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  func replyToApplicationShouldTerminate(shouldTerminate: Bool)
  func replyToOpenOrPrint(reply: NSApplicationDelegateReply)
  func orderFrontCharacterPalette(sender: AnyObject?)
  @available(OSX 10.6, *)
  var presentationOptions: NSApplicationPresentationOptions
  @available(OSX 10.6, *)
  var currentSystemPresentationOptions: NSApplicationPresentationOptions { get }
  @available(OSX 10.9, *)
  var occlusionState: NSApplicationOcclusionState { get }
  init()
  init?(coder: NSCoder)
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
struct __appFlags {
  var _hidden: UInt32
  var _appleEventActivationInProgress: UInt32
  var _active: UInt32
  var _hasBeenRun: UInt32
  var _doingUnhide: UInt32
  var _delegateReturnsValidRequestor: UInt32
  var _deactPending: UInt32
  var _invalidState: UInt32
  var _invalidEvent: UInt32
  var _postedWindowsNeedUpdateNote: UInt32
  var _wantsToActivate: UInt32
  var _doingHide: UInt32
  var _dontSendShouldTerminate: UInt32
  var _ignoresFullScreen: UInt32
  var _finishedLaunching: UInt32
  var _hasEventDelegate: UInt32
  var _appDying: UInt32
  var _didNSOpenOrPrint: UInt32
  var _inDealloc: UInt32
  var _pendingDidFinish: UInt32
  var _hasKeyFocus: UInt32
  var _panelsNonactivating: UInt32
  var _hiddenOnLaunch: UInt32
  var _openStatus: UInt32
  var _batchOrdering: UInt32
  var _waitingForTerminationReply: UInt32
  var _windowMoveDisabled: UInt32
  var _enumeratingMemoryPressureHandlers: UInt32
  var _didTryRestoringPersistentState: UInt32
  var _reservedN: UInt32
  var _mightBeSwitching: UInt32
  init()
  init(_hidden: UInt32, _appleEventActivationInProgress: UInt32, _active: UInt32, _hasBeenRun: UInt32, _doingUnhide: UInt32, _delegateReturnsValidRequestor: UInt32, _deactPending: UInt32, _invalidState: UInt32, _invalidEvent: UInt32, _postedWindowsNeedUpdateNote: UInt32, _wantsToActivate: UInt32, _doingHide: UInt32, _dontSendShouldTerminate: UInt32, _ignoresFullScreen: UInt32, _finishedLaunching: UInt32, _hasEventDelegate: UInt32, _appDying: UInt32, _didNSOpenOrPrint: UInt32, _inDealloc: UInt32, _pendingDidFinish: UInt32, _hasKeyFocus: UInt32, _panelsNonactivating: UInt32, _hiddenOnLaunch: UInt32, _openStatus: UInt32, _batchOrdering: UInt32, _waitingForTerminationReply: UInt32, _windowMoveDisabled: UInt32, _enumeratingMemoryPressureHandlers: UInt32, _didTryRestoringPersistentState: UInt32, _reservedN: UInt32, _mightBeSwitching: UInt32)
}
var NSApp: NSApplication!
enum NSRequestUserAttentionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CriticalRequest
  case InformationalRequest
}
enum NSApplicationDelegateReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Success
  case Cancel
  case Failure
}
extension NSApplication {
  var windowsMenu: NSMenu?
  func arrangeInFront(sender: AnyObject?)
  func removeWindowsItem(win: NSWindow)
  func addWindowsItem(win: NSWindow, title aString: String, filename isFilename: Bool)
  func changeWindowsItem(win: NSWindow, title aString: String, filename isFilename: Bool)
  func updateWindowsItem(win: NSWindow)
  func miniaturizeAll(sender: AnyObject?)
}
extension NSApplication {
  @available(OSX 10.6, *)
  var fullKeyboardAccessEnabled: Bool { get }
}
enum NSApplicationTerminateReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TerminateCancel
  case TerminateNow
  case TerminateLater
}
enum NSApplicationPrintReply : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PrintingCancelled
  case PrintingSuccess
  case PrintingFailure
  case PrintingReplyLater
}
protocol NSApplicationDelegate : NSObjectProtocol {
  optional func applicationShouldTerminate(sender: NSApplication) -> NSApplicationTerminateReply
  optional func application(sender: NSApplication, openFile filename: String) -> Bool
  optional func application(sender: NSApplication, openFiles filenames: [String])
  optional func application(sender: NSApplication, openTempFile filename: String) -> Bool
  optional func applicationShouldOpenUntitledFile(sender: NSApplication) -> Bool
  optional func applicationOpenUntitledFile(sender: NSApplication) -> Bool
  optional func application(sender: AnyObject, openFileWithoutUI filename: String) -> Bool
  optional func application(sender: NSApplication, printFile filename: String) -> Bool
  optional func application(application: NSApplication, printFiles fileNames: [String], withSettings printSettings: [String : AnyObject], showPrintPanels: Bool) -> NSApplicationPrintReply
  optional func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool
  optional func applicationShouldHandleReopen(sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool
  optional func applicationDockMenu(sender: NSApplication) -> NSMenu?
  optional func application(application: NSApplication, willPresent error: NSError) -> NSError
  @available(OSX 10.7, *)
  optional func application(application: NSApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(OSX 10.7, *)
  optional func application(application: NSApplication, didFailToRegisterForRemoteNotificationsWith error: NSError)
  @available(OSX 10.7, *)
  optional func application(application: NSApplication, didReceiveRemoteNotification userInfo: [String : AnyObject])
  @available(OSX 10.7, *)
  optional func application(app: NSApplication, willEncodeRestorableState coder: NSCoder)
  @available(OSX 10.7, *)
  optional func application(app: NSApplication, didDecodeRestorableState coder: NSCoder)
  @available(OSX 10.10, *)
  optional func application(application: NSApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(OSX 10.10, *)
  optional func application(application: NSApplication, continue userActivity: NSUserActivity, restorationHandler: ([AnyObject]) -> Void) -> Bool
  @available(OSX 10.10, *)
  optional func application(application: NSApplication, didFailToContinueUserActivityWithType userActivityType: String, error: NSError)
  @available(OSX 10.10, *)
  optional func application(application: NSApplication, didUpdateUserActivity userActivity: NSUserActivity)
  optional func applicationWillFinishLaunching(notification: NSNotification)
  optional func applicationDidFinishLaunching(notification: NSNotification)
  optional func applicationWillHide(notification: NSNotification)
  optional func applicationDidHide(notification: NSNotification)
  optional func applicationWillUnhide(notification: NSNotification)
  optional func applicationDidUnhide(notification: NSNotification)
  optional func applicationWillBecomeActive(notification: NSNotification)
  optional func applicationDidBecomeActive(notification: NSNotification)
  optional func applicationWillResignActive(notification: NSNotification)
  optional func applicationDidResignActive(notification: NSNotification)
  optional func applicationWillUpdate(notification: NSNotification)
  optional func applicationDidUpdate(notification: NSNotification)
  optional func applicationWillTerminate(notification: NSNotification)
  optional func applicationDidChangeScreenParameters(notification: NSNotification)
  @available(OSX 10.9, *)
  optional func applicationDidChangeOcclusionState(notification: NSNotification)
}
extension NSApplication {
  var servicesMenu: NSMenu?
  func registerServicesMenuSendTypes(sendTypes: [String], returnTypes: [String])
}
protocol NSServicesMenuRequestor : NSObjectProtocol {
  optional func writeSelectionTo(pboard: NSPasteboard, types: [String]) -> Bool
  optional func readSelectionFrom(pboard: NSPasteboard) -> Bool
}
extension NSApplication {
  var servicesProvider: AnyObject?
}
extension NSApplication {
  func orderFrontStandardAboutPanel(sender: AnyObject?)
  func orderFrontStandardAboutPanelWithOptions(optionsDictionary: [String : AnyObject])
}
extension NSApplication {
  @available(OSX 10.6, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { get }
}
extension NSApplication {
  @available(OSX 10.7, *)
  func disableRelaunchOnLogin()
  @available(OSX 10.7, *)
  func enableRelaunchOnLogin()
}
struct NSRemoteNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.7, *)
  static var None: NSRemoteNotificationType { get }
  @available(OSX 10.7, *)
  static var Badge: NSRemoteNotificationType { get }
  @available(OSX 10.8, *)
  static var Sound: NSRemoteNotificationType { get }
  @available(OSX 10.8, *)
  static var Alert: NSRemoteNotificationType { get }
}
extension NSApplication {
  @available(OSX 10.7, *)
  func registerForRemoteNotificationTypes(types: NSRemoteNotificationType)
  @available(OSX 10.7, *)
  func unregisterForRemoteNotifications()
  @available(OSX 10.7, *)
  var enabledRemoteNotificationTypes: NSRemoteNotificationType { get }
}
func NSApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func NSApplicationLoad() -> Bool
func NSShowsServicesMenuItem(itemName: String) -> Bool
func NSSetShowsServicesMenuItem(itemName: String, _ enabled: Bool) -> Int
func NSUpdateDynamicServices()
func NSPerformService(itemName: String, _ pboard: NSPasteboard?) -> Bool
func NSRegisterServicesProvider(provider: AnyObject?, _ name: String)
func NSUnregisterServicesProvider(name: String)
let NSApplicationDidBecomeActiveNotification: String
let NSApplicationDidHideNotification: String
let NSApplicationDidFinishLaunchingNotification: String
let NSApplicationDidResignActiveNotification: String
let NSApplicationDidUnhideNotification: String
let NSApplicationDidUpdateNotification: String
let NSApplicationWillBecomeActiveNotification: String
let NSApplicationWillHideNotification: String
let NSApplicationWillFinishLaunchingNotification: String
let NSApplicationWillResignActiveNotification: String
let NSApplicationWillUnhideNotification: String
let NSApplicationWillUpdateNotification: String
let NSApplicationWillTerminateNotification: String
let NSApplicationDidChangeScreenParametersNotification: String
@available(OSX 10.7, *)
let NSApplicationLaunchIsDefaultLaunchKey: String
@available(OSX 10.8, *)
let NSApplicationLaunchUserNotificationKey: String
@available(OSX 10.9, *)
let NSApplicationDidChangeOcclusionStateNotification: String
extension NSApplication {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -[NSWindow beginSheet:completionHandler:] instead")
  func beginSheet(sheet: NSWindow, modalFor docWindow: NSWindow, modalDelegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -[NSWindow endSheet:] instead")
  func endSheet(sheet: NSWindow)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -[NSWindow endSheet:returnCode:] instead")
  func endSheet(sheet: NSWindow, returnCode: Int)
}
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseStop instead")
var NSRunStoppedResponse: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseAbort instead")
var NSRunAbortedResponse: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseContinue instead")
var NSRunContinuesResponse: Int { get }
extension NSApplication {
  var orderedDocuments: [NSDocument] { get }
  var orderedWindows: [NSWindow] { get }
}
extension NSObject {
  class func application(sender: NSApplication, delegateHandlesKey key: String) -> Bool
  func application(sender: NSApplication, delegateHandlesKey key: String) -> Bool
}
class NSArrayController : NSObjectController {
  func rearrangeObjects()
  @available(OSX 10.5, *)
  var automaticallyRearrangesObjects: Bool
  @available(OSX 10.5, *)
  var automaticRearrangementKeyPaths: [String]? { get }
  @available(OSX 10.5, *)
  func didChangeArrangementCriteria()
  var sortDescriptors: [NSSortDescriptor]
  var filterPredicate: NSPredicate?
  var clearsFilterPredicateOnInsertion: Bool
  func arrange(objects: [AnyObject]) -> [AnyObject]
  var arrangedObjects: AnyObject { get }
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  func setSelectionIndexes(indexes: NSIndexSet) -> Bool
  @NSCopying var selectionIndexes: NSIndexSet { get }
  func setSelectionIndex(index: Int) -> Bool
  var selectionIndex: Int { get }
  func addSelectionIndexes(indexes: NSIndexSet) -> Bool
  func removeSelectionIndexes(indexes: NSIndexSet) -> Bool
  func setSelectedObjects(objects: [AnyObject]) -> Bool
  var selectedObjects: [AnyObject]! { get }
  func addSelectedObjects(objects: [AnyObject]) -> Bool
  func removeSelectedObjects(objects: [AnyObject]) -> Bool
  func add(sender: AnyObject?)
  func remove(sender: AnyObject?)
  func insert(sender: AnyObject?)
  var canInsert: Bool { get }
  func selectNext(sender: AnyObject?)
  func selectPrevious(sender: AnyObject?)
  var canSelectNext: Bool { get }
  var canSelectPrevious: Bool { get }
  func add(object: AnyObject)
  func add(objects: [AnyObject])
  func insert(object: AnyObject, atArrangedObjectIndex index: Int)
  func insert(objects: [AnyObject], atArrangedObjectIndexes indexes: NSIndexSet)
  func removeObjectAtArrangedObjectIndex(index: Int)
  func removeObjectsAtArrangedObjectIndexes(indexes: NSIndexSet)
  func remove(object: AnyObject)
  func remove(objects: [AnyObject])
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __arrayControllerFlags {
  var _avoidsEmptySelection: UInt32
  var _preservesSelection: UInt32
  var _selectsInsertedObjects: UInt32
  var _alwaysUsesMultipleValuesMarker: UInt32
  var _refreshesAllModelObjects: UInt32
  var _filterRestrictsInsertion: UInt32
  var _overridesArrangeObjects: UInt32
  var _overridesDidChangeArrangementCriteria: UInt32
  var _explicitlyCannotInsert: UInt32
  var _generatedEmptyArray: UInt32
  var _isObservingKeyPathsThroughArrangedObjects: UInt32
  var _arrangedObjectsIsMutable: UInt32
  var _clearsFilterPredicateOnInsertion: UInt32
  var _skipSortingAfterFetch: UInt32
  var _automaticallyRearrangesObjects: UInt32
  var _reservedArrayController: UInt32
  init()
  init(_avoidsEmptySelection: UInt32, _preservesSelection: UInt32, _selectsInsertedObjects: UInt32, _alwaysUsesMultipleValuesMarker: UInt32, _refreshesAllModelObjects: UInt32, _filterRestrictsInsertion: UInt32, _overridesArrangeObjects: UInt32, _overridesDidChangeArrangementCriteria: UInt32, _explicitlyCannotInsert: UInt32, _generatedEmptyArray: UInt32, _isObservingKeyPathsThroughArrangedObjects: UInt32, _arrangedObjectsIsMutable: UInt32, _clearsFilterPredicateOnInsertion: UInt32, _skipSortingAfterFetch: UInt32, _automaticallyRearrangesObjects: UInt32, _reservedArrayController: UInt32)
}

/************************ Attributes ************************/
@available(OSX 10.0, *)
let NSFontAttributeName: String
@available(OSX 10.0, *)
let NSParagraphStyleAttributeName: String
@available(OSX 10.0, *)
let NSForegroundColorAttributeName: String
@available(OSX 10.0, *)
let NSBackgroundColorAttributeName: String
@available(OSX 10.0, *)
let NSLigatureAttributeName: String
@available(OSX 10.0, *)
let NSKernAttributeName: String
@available(OSX 10.0, *)
let NSStrikethroughStyleAttributeName: String
@available(OSX 10.0, *)
let NSUnderlineStyleAttributeName: String
@available(OSX 10.0, *)
let NSStrokeColorAttributeName: String
@available(OSX 10.0, *)
let NSStrokeWidthAttributeName: String
@available(OSX 10.0, *)
let NSShadowAttributeName: String
@available(OSX 10.10, *)
let NSTextEffectAttributeName: String
@available(OSX 10.0, *)
let NSAttachmentAttributeName: String
@available(OSX 10.0, *)
let NSLinkAttributeName: String
@available(OSX 10.0, *)
let NSBaselineOffsetAttributeName: String
@available(OSX 10.0, *)
let NSUnderlineColorAttributeName: String
@available(OSX 10.0, *)
let NSStrikethroughColorAttributeName: String
@available(OSX 10.0, *)
let NSObliquenessAttributeName: String
@available(OSX 10.0, *)
let NSExpansionAttributeName: String
@available(OSX 10.6, *)
let NSWritingDirectionAttributeName: String
@available(OSX 10.7, *)
let NSVerticalGlyphFormAttributeName: String
let NSCursorAttributeName: String
let NSToolTipAttributeName: String
let NSMarkedClauseSegmentAttributeName: String
@available(OSX 10.8, *)
let NSTextAlternativesAttributeName: String
let NSSpellingStateAttributeName: String
let NSSuperscriptAttributeName: String
let NSGlyphInfoAttributeName: String

/************************ Attribute values ************************/
@available(OSX 10.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(OSX 10.0, *)
  case StyleThick
  @available(OSX 10.0, *)
  case StyleDouble
  @available(OSX 10.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(OSX 10.0, *)
  case PatternDot
  @available(OSX 10.0, *)
  case PatternDash
  @available(OSX 10.0, *)
  case PatternDashDot
  @available(OSX 10.0, *)
  case PatternDashDotDot
  @available(OSX 10.0, *)
  case ByWord
}
@available(OSX 10.11, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(OSX 10.10, *)
let NSTextEffectLetterpressStyle: String
@available(OSX 10.5, *)
var NSSpellingStateSpellingFlag: Int { get }
@available(OSX 10.5, *)
var NSSpellingStateGrammarFlag: Int { get }

/************************ Attribute fixing ************************/
extension NSMutableAttributedString {
  @available(OSX 10.0, *)
  func fixAttributesIn(range: NSRange)
  func fixFontAttributeIn(range: NSRange)
  func fixParagraphStyleAttributeIn(range: NSRange)
  func fixAttachmentAttributeIn(range: NSRange)
}

/************************ Document formats ************************/
@available(OSX 10.0, *)
let NSPlainTextDocumentType: String
@available(OSX 10.0, *)
let NSRTFTextDocumentType: String
@available(OSX 10.0, *)
let NSRTFDTextDocumentType: String
@available(OSX 10.0, *)
let NSHTMLTextDocumentType: String
let NSMacSimpleTextDocumentType: String
let NSDocFormatTextDocumentType: String
let NSWordMLTextDocumentType: String
let NSWebArchiveTextDocumentType: String
@available(OSX 10.5, *)
let NSOfficeOpenXMLTextDocumentType: String
@available(OSX 10.5, *)
let NSOpenDocumentTextDocumentType: String
@available(OSX 10.7, *)
let NSTextLayoutSectionOrientation: String
@available(OSX 10.7, *)
let NSTextLayoutSectionRange: String
@available(OSX 10.0, *)
let NSDocumentTypeDocumentAttribute: String
let NSConvertedDocumentAttribute: String
let NSCocoaVersionDocumentAttribute: String
@available(OSX 10.6, *)
let NSFileTypeDocumentAttribute: String
let NSTitleDocumentAttribute: String
let NSCompanyDocumentAttribute: String
let NSCopyrightDocumentAttribute: String
let NSSubjectDocumentAttribute: String
let NSAuthorDocumentAttribute: String
let NSKeywordsDocumentAttribute: String
let NSCommentDocumentAttribute: String
let NSEditorDocumentAttribute: String
let NSCreationTimeDocumentAttribute: String
let NSModificationTimeDocumentAttribute: String
@available(OSX 10.5, *)
let NSManagerDocumentAttribute: String
@available(OSX 10.6, *)
let NSCategoryDocumentAttribute: String
@available(OSX 10.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(OSX 10.11, *)
let NSDefaultAttributesDocumentAttribute: String
@available(OSX 10.0, *)
let NSPaperSizeDocumentAttribute: String
let NSLeftMarginDocumentAttribute: String
let NSRightMarginDocumentAttribute: String
let NSTopMarginDocumentAttribute: String
let NSBottomMarginDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewSizeDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewZoomDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewModeDocumentAttribute: String
@available(OSX 10.0, *)
let NSReadOnlyDocumentAttribute: String
@available(OSX 10.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(OSX 10.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(OSX 10.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(OSX 10.7, *)
let NSTextLayoutSectionsAttribute: String
let NSExcludedElementsDocumentAttribute: String
let NSTextEncodingNameDocumentAttribute: String
let NSPrefixSpacesDocumentAttribute: String
let NSDocumentTypeDocumentOption: String
let NSDefaultAttributesDocumentOption: String
let NSCharacterEncodingDocumentOption: String
let NSTextEncodingNameDocumentOption: String
let NSBaseURLDocumentOption: String
let NSTimeoutDocumentOption: String
let NSWebPreferencesDocumentOption: String
let NSWebResourceLoadDelegateDocumentOption: String
let NSTextSizeMultiplierDocumentOption: String
@available(OSX 10.6, *)
let NSFileTypeDocumentOption: String
extension NSAttributedString {
  @available(OSX 10.11, *)
  init(url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSData
  @available(OSX 10.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) throws -> NSFileWrapper
  init?(rtf data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfd data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, baseURL base: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfdFileWrapper wrapper: NSFileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  func rtfFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
  func rtfdFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
  func rtfdFileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSFileWrapper?
  func docFormatFrom(range: NSRange, documentAttributes dict: [String : AnyObject]) -> NSData?
}
extension NSMutableAttributedString {
  @available(OSX 10.11, *)
  func readFrom(url: NSURL, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
  @available(OSX 10.0, *)
  func readFrom(data: NSData, options opts: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
}

/************************ Misc methods ************************/
extension NSAttributedString {
  func fontAttributesIn(range: NSRange) -> [String : AnyObject]
  func rulerAttributesIn(range: NSRange) -> [String : AnyObject]
  @available(OSX 10.11, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
  func lineBreakBefore(location: Int, within aRange: NSRange) -> Int
  func lineBreakByHyphenatingBefore(location: Int, within aRange: NSRange) -> Int
  func doubleClickAt(location: Int) -> NSRange
  func nextWordFrom(location: Int, forward isForward: Bool) -> Int
  func rangeOf(block: NSTextBlock, at location: Int) -> NSRange
  func rangeOf(table: NSTextTable, at location: Int) -> NSRange
  func rangeOf(list: NSTextList, at location: Int) -> NSRange
  func itemNumberIn(list: NSTextList, at location: Int) -> Int
}
extension NSAttributedString : NSPasteboardReading, NSPasteboardWriting {
  @available(OSX 10.5, *)
  class func textTypes() -> [String]
  @available(OSX 10.5, *)
  class func textUnfilteredTypes() -> [String]
  @available(OSX 10.0, *)
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  @available(OSX 10.0, *)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.0, *)
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSMutableAttributedString {
  func superscriptRange(range: NSRange)
  func subscriptRange(range: NSRange)
  func unscriptRange(range: NSRange)
  func applyFontTraits(traitMask: NSFontTraitMask, range: NSRange)
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)
}

/************************ Deprecated ************************/
@available(OSX, introduced=10.0, deprecated=10.11, message="This attribute is bound to a specific implementation of ATS feature and not generically supported by wide range of fonts. The majority of characters accessed through this API are now encoded in the Unicode standard. Use the CTFont feature API for fine control over character shape choices.")
let NSCharacterShapeAttributeName: String
@available(OSX, introduced=10.8, deprecated=10.11)
let NSUsesScreenFontsDocumentAttribute: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSUnderlineByWord instead")
var NSUnderlineByWordMask: Int
extension NSAttributedString {
  var containsAttachments: Bool { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(url: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSDataDetector instead")
  func urlAt(location: Int, effectiveRange: NSRangePointer) -> NSURL?
}
extension NSMutableAttributedString {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFrom(url: NSURL, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -readFromData:options:documentAttributes:error: instead")
  func readFrom(data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
}
enum NSLineCapStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ButtLineCapStyle
  case RoundLineCapStyle
  case SquareLineCapStyle
}
enum NSLineJoinStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MiterLineJoinStyle
  case RoundLineJoinStyle
  case BevelLineJoinStyle
}
enum NSWindingRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NonZeroWindingRule
  case EvenOddWindingRule
}
enum NSBezierPathElement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MoveToBezierPathElement
  case LineToBezierPathElement
  case CurveToBezierPathElement
  case ClosePathBezierPathElement
}
class NSBezierPath : NSObject, NSCopying, NSCoding {
  /*not inherited*/ init(rect: NSRect)
  /*not inherited*/ init(ovalIn rect: NSRect)
  @available(OSX 10.5, *)
  /*not inherited*/ init(roundedRect rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  class func fill(rect: NSRect)
  class func stroke(rect: NSRect)
  class func clip(rect: NSRect)
  class func strokeLineFrom(point1: NSPoint, to point2: NSPoint)
  class func drawPackedGlyphs(packedGlyphs: UnsafePointer<Int8>, at point: NSPoint)
  class func setDefaultMiterLimit(limit: CGFloat)
  class func defaultMiterLimit() -> CGFloat
  class func setDefaultFlatness(flatness: CGFloat)
  class func defaultFlatness() -> CGFloat
  class func setDefaultWindingRule(windingRule: NSWindingRule)
  class func defaultWindingRule() -> NSWindingRule
  class func setDefaultLineCapStyle(lineCapStyle: NSLineCapStyle)
  class func defaultLineCapStyle() -> NSLineCapStyle
  class func setDefaultLineJoinStyle(lineJoinStyle: NSLineJoinStyle)
  class func defaultLineJoinStyle() -> NSLineJoinStyle
  class func setDefaultLineWidth(lineWidth: CGFloat)
  class func defaultLineWidth() -> CGFloat
  func moveTo(point: NSPoint)
  func lineTo(point: NSPoint)
  func curveTo(endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  func closePath()
  func removeAllPoints()
  func relativeMoveTo(point: NSPoint)
  func relativeLineTo(point: NSPoint)
  func relativeCurveTo(endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  var lineWidth: CGFloat
  var lineCapStyle: NSLineCapStyle
  var lineJoinStyle: NSLineJoinStyle
  var windingRule: NSWindingRule
  var miterLimit: CGFloat
  var flatness: CGFloat
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func stroke()
  func fill()
  func addClip()
  func setClip()
  @NSCopying var flattening: NSBezierPath { get }
  @NSCopying var reversing: NSBezierPath { get }
  func transformUsing(transform: NSAffineTransform)
  var isEmpty: Bool { get }
  var currentPoint: NSPoint { get }
  var controlPointBounds: NSRect { get }
  var bounds: NSRect { get }
  var elementCount: Int { get }
  func elementAt(index: Int, associatedPoints points: NSPointArray) -> NSBezierPathElement
  func elementAt(index: Int) -> NSBezierPathElement
  func setAssociatedPoints(points: NSPointArray, at index: Int)
  func append(path: NSBezierPath)
  func appendBezierPathWith(rect: NSRect)
  func appendBezierPathWithPoints(points: NSPointArray, count: Int)
  func appendBezierPathWithOvalIn(rect: NSRect)
  func appendBezierPathWithArcWithCenter(center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func appendBezierPathWithArcWithCenter(center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)
  func appendBezierPathWithArcFrom(point1: NSPoint, to point2: NSPoint, radius: CGFloat)
  func appendBezierPathWithGlyph(glyph: NSGlyph, in font: NSFont)
  func appendBezierPathWithGlyphs(glyphs: UnsafeMutablePointer<NSGlyph>, count: Int, in font: NSFont)
  func appendBezierPathWithPackedGlyphs(packedGlyphs: UnsafePointer<Int8>)
  @available(OSX 10.5, *)
  func appendBezierPathWithRoundedRect(rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  func contains(point: NSPoint) -> Bool
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSBezierPath {
}
enum NSTIFFCompression : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case CCITTFAX3
  case CCITTFAX4
  case LZW
  case JPEG
  case NEXT
  case PackBits
  case OldJPEG
}
enum NSBitmapImageFileType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NSTIFFFileType
  case NSBMPFileType
  case NSGIFFileType
  case NSJPEGFileType
  case NSPNGFileType
  case NSJPEG2000FileType
}
enum NSImageRepLoadStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownType
  case ReadingHeader
  case WillNeedAllData
  case InvalidData
  case UnexpectedEOF
  case Completed
}
struct NSBitmapFormat : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NSAlphaFirstBitmapFormat: NSBitmapFormat { get }
  static var NSAlphaNonpremultipliedBitmapFormat: NSBitmapFormat { get }
  static var NSFloatingPointSamplesBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS16BitLittleEndianBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS32BitLittleEndianBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS16BitBigEndianBitmapFormat: NSBitmapFormat { get }
  @available(OSX 10.10, *)
  static var NS32BitBigEndianBitmapFormat: NSBitmapFormat { get }
}
let NSImageCompressionMethod: String
let NSImageCompressionFactor: String
let NSImageDitherTransparency: String
let NSImageRGBColorTable: String
let NSImageInterlaced: String
let NSImageColorSyncProfileData: String
let NSImageFrameCount: String
let NSImageCurrentFrame: String
let NSImageCurrentFrameDuration: String
let NSImageLoopCount: String
let NSImageGamma: String
let NSImageProgressive: String
let NSImageEXIFData: String
@available(OSX 10.5, *)
let NSImageFallbackBackgroundColor: String
class NSBitmapImageRep : NSImageRep, NSSecureCoding {
  init?(focusedViewRect rect: NSRect)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: String, bitmapFormat: NSBitmapFormat, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  @available(OSX 10.5, *)
  init(cgImage: CGImage)
  @available(OSX 10.5, *)
  init(ciImage: CIImage)
  class func imageRepsWith(data: NSData) -> [NSImageRep]
  init?(data: NSData)
  var bitmapData: UnsafeMutablePointer<UInt8> { get }
  func getBitmapDataPlanes(data: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>)
  var isPlanar: Bool { get }
  var samplesPerPixel: Int { get }
  var bitsPerPixel: Int { get }
  var bytesPerRow: Int { get }
  var bytesPerPlane: Int { get }
  var numberOfPlanes: Int { get }
  var bitmapFormat: NSBitmapFormat { get }
  func getCompression(compression: UnsafeMutablePointer<NSTIFFCompression>, factor: UnsafeMutablePointer<Float>)
  func setCompression(compression: NSTIFFCompression, factor: Float)
  @NSCopying var tiffRepresentation: NSData? { get }
  func tiffRepresentationUsing(comp: NSTIFFCompression, factor: Float) -> NSData?
  class func tiffRepresentationOfImageRepsIn(array: [NSImageRep]) -> NSData?
  class func tiffRepresentationOfImageRepsIn(array: [NSImageRep], usingCompression comp: NSTIFFCompression, factor: Float) -> NSData?
  class func getTIFFCompressionTypes(list: UnsafeMutablePointer<UnsafePointer<NSTIFFCompression>>, count numTypes: UnsafeMutablePointer<Int>)
  class func localizedNameForTIFFCompressionType(compression: NSTIFFCompression) -> String?
  func canBeCompressedUsing(compression: NSTIFFCompression) -> Bool
  func colorizeByMappingGray(midPoint: CGFloat, to midPointColor: NSColor?, blackMapping shadowColor: NSColor?, whiteMapping lightColor: NSColor?)
  init(forIncrementalLoad: ())
  func incrementalLoadFrom(data: NSData, complete: Bool) -> Int
  func setColor(color: NSColor, atX x: Int, y: Int)
  func colorAtX(x: Int, y: Int) -> NSColor?
  func getPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  func setPixel(p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  @available(OSX 10.5, *)
  var cgImage: CGImage? { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace { get }
  @available(OSX 10.6, *)
  func convertingTo(targetSpace: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?
  @available(OSX 10.6, *)
  func byRetaggingWith(newSpace: NSColorSpace) -> NSBitmapImageRep?
  init()
  init?(coder: NSCoder)
  class func supportsSecureCoding() -> Bool
}
struct __bitmapRepFlags {
  var bitsPerPixel: UInt32
  var isPlanar: UInt32
  var explicitPlanes: UInt32
  var imageSourceIsIndexed: UInt32
  var dataLoaded: UInt32
  var colorModel: UInt32
  var tierTwoInfoIsLoaded: UInt32
  var respectO: UInt32
  var compressionFactor: UInt32
  var imageNumber: UInt32
  var bitmapFormat: UInt32
  var cgImageIsPrimary: UInt32
  var compression: UInt32
  init()
  init(bitsPerPixel: UInt32, isPlanar: UInt32, explicitPlanes: UInt32, imageSourceIsIndexed: UInt32, dataLoaded: UInt32, colorModel: UInt32, tierTwoInfoIsLoaded: UInt32, respectO: UInt32, compressionFactor: UInt32, imageNumber: UInt32, bitmapFormat: UInt32, cgImageIsPrimary: UInt32, compression: UInt32)
}
extension NSBitmapImageRep {
  class func representationOfImageRepsIn(imageReps: [NSImageRep], usingType storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> NSData?
  func representationUsing(storageType: NSBitmapImageFileType, properties: [String : AnyObject]) -> NSData?
  func setProperty(property: String, withValue value: AnyObject?)
  func valueForProperty(property: String) -> AnyObject?
}
enum NSTitlePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoTitle
  case AboveTop
  case AtTop
  case BelowTop
  case AboveBottom
  case AtBottom
  case BelowBottom
}
enum NSBoxType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Primary
  case Secondary
  case Separator
  case OldStyle
  @available(OSX 10.5, *)
  case Custom
}
class NSBox : NSView {
  var borderType: NSBorderType
  var titlePosition: NSTitlePosition
  var boxType: NSBoxType
  var title: String
  var titleFont: NSFont
  var borderRect: NSRect { get }
  var titleRect: NSRect { get }
  var titleCell: AnyObject { get }
  func sizeToFit()
  var contentViewMargins: NSSize
  func setFrameFromContentFrame(contentFrame: NSRect)
  unowned(unsafe) var contentView: @sil_unmanaged NSView?
  @available(OSX 10.5, *)
  var isTransparent: Bool
  @available(OSX 10.5, *)
  var borderWidth: CGFloat
  @available(OSX 10.5, *)
  var cornerRadius: CGFloat
  @available(OSX 10.5, *)
  @NSCopying var borderColor: NSColor
  @available(OSX 10.5, *)
  @NSCopying var fillColor: NSColor
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __bFlags {
  var borderType: NSBorderType
  var titlePosition: NSTitlePosition
  var backgroundTransparent: UInt32
  var orientation: UInt32
  var needsTile: UInt32
  var transparent: UInt32
  var colorAltInterpretation: UInt32
  var boxType: UInt32
  var useSuperAddSubview: UInt32
  var _RESERVED: UInt32
  init()
  init(borderType: NSBorderType, titlePosition: NSTitlePosition, backgroundTransparent: UInt32, orientation: UInt32, needsTile: UInt32, transparent: UInt32, colorAltInterpretation: UInt32, boxType: UInt32, useSuperAddSubview: UInt32, _RESERVED: UInt32)
}
extension NSBox {
}
var NSAppKitVersionNumberWithContinuousScrollingBrowser: Double { get }
var NSAppKitVersionNumberWithColumnResizingBrowser: Double { get }
struct __Brflags {
  var firstVisibleCalculationDisabled: UInt32
  var prefersAllColumnUserResizing: UInt32
  var usesSmallScrollers: UInt32
  var usesSmallSizeTitleFont: UInt32
  var actionNeedsToBeSent: UInt32
  var acceptsFirstMouse: UInt32
  var refusesFirstResponder: UInt32
  var disableCompositing: UInt32
  var delegateSelectsCellsByRow: UInt32
  var allowsIncrementalSearching: UInt32
  var time: UInt32
  var hasHorizontalScroller: UInt32
  var prohibitEmptySel: UInt32
  var sendActionOnArrowKeys: UInt32
  var dontDrawTitles: UInt32
  var acceptArrowKeys: UInt32
  var delegateValidatesColumns: UInt32
  var delegateDoesNotCreateRowsInMatrix: UInt32
  var delegateSelectsCellsByString: UInt32
  var delegateSetsTitles: UInt32
  var delegateImplementsWillDisplayCell: UInt32
  var separateColumns: UInt32
  var titleFromPrevious: UInt32
  var isTitled: UInt32
  var reuseColumns: UInt32
  var allowsBranchSelection: UInt32
  var allowsMultipleSelection: UInt32
  init()
  init(firstVisibleCalculationDisabled: UInt32, prefersAllColumnUserResizing: UInt32, usesSmallScrollers: UInt32, usesSmallSizeTitleFont: UInt32, actionNeedsToBeSent: UInt32, acceptsFirstMouse: UInt32, refusesFirstResponder: UInt32, disableCompositing: UInt32, delegateSelectsCellsByRow: UInt32, allowsIncrementalSearching: UInt32, time: UInt32, hasHorizontalScroller: UInt32, prohibitEmptySel: UInt32, sendActionOnArrowKeys: UInt32, dontDrawTitles: UInt32, acceptArrowKeys: UInt32, delegateValidatesColumns: UInt32, delegateDoesNotCreateRowsInMatrix: UInt32, delegateSelectsCellsByString: UInt32, delegateSetsTitles: UInt32, delegateImplementsWillDisplayCell: UInt32, separateColumns: UInt32, titleFromPrevious: UInt32, isTitled: UInt32, reuseColumns: UInt32, allowsBranchSelection: UInt32, allowsMultipleSelection: UInt32)
}
typealias _Brflags = __Brflags
enum NSBrowserColumnResizingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnResizing
  case AutoColumnResizing
  case UserColumnResizing
}
@available(OSX 10.5, *)
enum NSBrowserDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
class NSBrowser : NSControl {
  class func cellClass() -> AnyClass
  func loadColumnZero()
  var isLoaded: Bool { get }
  var doubleAction: Selector
  func setCellClass(factoryId: AnyClass)
  var cellPrototype: AnyObject!
  unowned(unsafe) var delegate: @sil_unmanaged NSBrowserDelegate?
  var reusesColumns: Bool
  var hasHorizontalScroller: Bool
  @available(OSX 10.6, *)
  var autohidesScroller: Bool
  var separatesColumns: Bool
  var isTitled: Bool
  var minColumnWidth: CGFloat
  var maxVisibleColumns: Int
  var allowsMultipleSelection: Bool
  var allowsBranchSelection: Bool
  var allowsEmptySelection: Bool
  var takesTitleFromPreviousColumn: Bool
  var sendsActionOnArrowKeys: Bool
  @available(OSX 10.6, *)
  func itemAt(indexPath: NSIndexPath) -> AnyObject?
  @available(OSX 10.6, *)
  func itemAtRow(row: Int, inColumn column: Int) -> AnyObject?
  @available(OSX 10.6, *)
  func indexPathForColumn(column: Int) -> NSIndexPath
  @available(OSX 10.6, *)
  func isLeafItem(item: AnyObject?) -> Bool
  @available(OSX 10.6, *)
  func reloadDataForRowIndexes(rowIndexes: NSIndexSet, inColumn column: Int)
  @available(OSX 10.6, *)
  func parentForItemsInColumn(column: Int) -> AnyObject?
  @available(OSX 10.6, *)
  func scrollRowToVisible(row: Int, inColumn column: Int)
  func setTitle(aString: String, ofColumn column: Int)
  func titleOfColumn(column: Int) -> String?
  var pathSeparator: String
  func setPath(path: String) -> Bool
  func path() -> String
  func pathToColumn(column: Int) -> String
  @available(OSX 10.6, *)
  var clickedColumn: Int { get }
  @available(OSX 10.6, *)
  var clickedRow: Int { get }
  var selectedColumn: Int { get }
  func selectedCellInColumn(column: Int) -> AnyObject?
  var selectedCells: [NSCell]? { get }
  func selectRow(row: Int, inColumn column: Int)
  func selectedRowInColumn(column: Int) -> Int
  @available(OSX 10.6, *)
  @NSCopying var selectionIndexPath: NSIndexPath
  @available(OSX 10.6, *)
  var selectionIndexPaths: [NSIndexPath]
  @available(OSX 10.5, *)
  func selectRowIndexes(indexes: NSIndexSet, inColumn column: Int)
  @available(OSX 10.5, *)
  func selectedRowIndexesInColumn(column: Int) -> NSIndexSet?
  func reloadColumn(column: Int)
  func validateVisibleColumns()
  func scrollColumnsRightBy(shiftAmount: Int)
  func scrollColumnsLeftBy(shiftAmount: Int)
  func scrollColumnToVisible(column: Int)
  var lastColumn: Int
  func addColumn()
  var numberOfVisibleColumns: Int { get }
  var firstVisibleColumn: Int { get }
  var lastVisibleColumn: Int { get }
  func loadedCellAtRow(row: Int, column col: Int) -> AnyObject?
  func selectAll(sender: AnyObject?)
  func tile()
  func doClick(sender: AnyObject?)
  func doDoubleClick(sender: AnyObject?)
  func sendAction() -> Bool
  func titleFrameOfColumn(column: Int) -> NSRect
  func drawTitleOfColumn(column: Int, in aRect: NSRect)
  var titleHeight: CGFloat { get }
  func frameOfColumn(column: Int) -> NSRect
  func frameOfInsideOfColumn(column: Int) -> NSRect
  @available(OSX 10.6, *)
  func frameOfRow(row: Int, inColumn column: Int) -> NSRect
  @available(OSX 10.6, *)
  func getRow(row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, forPoint point: NSPoint) -> Bool
  func columnWidthForColumnContentWidth(columnContentWidth: CGFloat) -> CGFloat
  func columnContentWidthForColumnWidth(columnWidth: CGFloat) -> CGFloat
  var columnResizingType: NSBrowserColumnResizingType
  var prefersAllColumnUserResizing: Bool
  func setWidth(columnWidth: CGFloat, ofColumn columnIndex: Int)
  func widthOfColumn(column: Int) -> CGFloat
  @available(OSX 10.6, *)
  var rowHeight: CGFloat
  @available(OSX 10.6, *)
  func noteHeightOfRowsWithIndexesChanged(indexSet: NSIndexSet, inColumn columnIndex: Int)
  @available(OSX 10.6, *)
  func setDefaultColumnWidth(columnWidth: CGFloat)
  @available(OSX 10.6, *)
  func defaultColumnWidth() -> CGFloat
  var columnsAutosaveName: String
  class func removeSavedColumnsWithAutosaveName(name: String)
  @available(OSX 10.5, *)
  func canDragRowsWith(rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  @available(OSX 10.5, *)
  func draggingImageForRowsWith(rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  @available(OSX 10.5, *)
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  @available(OSX 10.5, *)
  var allowsTypeSelect: Bool
  @available(OSX 10.5, *)
  var backgroundColor: NSColor
  @available(OSX 10.6, *)
  func editItemAt(indexPath: NSIndexPath, withEvent theEvent: NSEvent, select: Bool)
  func selectedCell() -> AnyObject?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
let NSBrowserColumnConfigurationDidChangeNotification: String
protocol NSBrowserDelegate : NSObjectProtocol {
  optional func browser(sender: NSBrowser, numberOfRowsInColumn column: Int) -> Int
  optional func browser(sender: NSBrowser, createRowsForColumn column: Int, in matrix: NSMatrix)
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, numberOfChildrenOfItem item: AnyObject?) -> Int
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, child index: Int, ofItem item: AnyObject?) -> AnyObject
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, isLeafItem item: AnyObject?) -> Bool
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, objectValueForItem item: AnyObject?) -> AnyObject?
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, heightOfRow row: Int, inColumn columnIndex: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func rootItemFor(browser: NSBrowser) -> AnyObject?
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, setObjectValue object: AnyObject?, forItem item: AnyObject?)
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, shouldEditItem item: AnyObject?) -> Bool
  optional func browser(sender: NSBrowser, willDisplayCell cell: AnyObject, atRow row: Int, column: Int)
  optional func browser(sender: NSBrowser, titleOfColumn column: Int) -> String?
  optional func browser(sender: NSBrowser, selectCellWith title: String, inColumn column: Int) -> Bool
  optional func browser(sender: NSBrowser, selectRow row: Int, inColumn column: Int) -> Bool
  optional func browser(sender: NSBrowser, isColumnValid column: Int) -> Bool
  optional func browserWillScroll(sender: NSBrowser)
  optional func browserDidScroll(sender: NSBrowser)
  optional func browser(browser: NSBrowser, shouldSizeColumn columnIndex: Int, forUserResize: Bool, toWidth suggestedWidth: CGFloat) -> CGFloat
  optional func browser(browser: NSBrowser, sizeToFitWidthOfColumn columnIndex: Int) -> CGFloat
  optional func browserColumnConfigurationDidChange(notification: NSNotification)
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, shouldShowCellExpansionForRow row: Int, column: Int) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, writeRowsWith rowIndexes: NSIndexSet, inColumn column: Int, to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWith rowIndexes: NSIndexSet, inColumn column: Int) -> [String]
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, canDragRowsWith rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, draggingImageForRowsWith rowIndexes: NSIndexSet, inColumn column: Int, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, validateDrop info: NSDraggingInfo, proposedRow row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, dropOperation: UnsafeMutablePointer<NSBrowserDropOperation>) -> NSDragOperation
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, acceptDrop info: NSDraggingInfo, atRow row: Int, column: Int, dropOperation: NSBrowserDropOperation) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, typeSelectStringForRow row: Int, inColumn column: Int) -> String
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func browser(browser: NSBrowser, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, inColumn column: Int, forString searchString: String?) -> Int
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, previewViewControllerForLeafItem item: AnyObject) -> NSViewController?
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, headerViewControllerForItem item: AnyObject?) -> NSViewController?
  optional func browser(browser: NSBrowser, didChangeLastColumn oldLastColumn: Int, toColumn column: Int)
  @available(OSX 10.6, *)
  optional func browser(browser: NSBrowser, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet, inColumn column: Int) -> NSIndexSet
}
extension NSBrowser {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func setMatrixClass(factoryId: AnyClass)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func matrixClass() -> AnyClass
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func columnOf(matrix: NSMatrix) -> Int
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use the item based NSBrowser instead")
  func matrixInColumn(column: Int) -> NSMatrix?
}
class NSBrowserCell : NSCell {
  class func branchImage() -> NSImage?
  class func highlightedBranchImage() -> NSImage?
  func highlightColorIn(controlView: NSView) -> NSColor?
  var isLeaf: Bool
  var isLoaded: Bool
  func reset()
  func set()
  var image: NSImage?
  var alternateImage: NSImage?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSButton : NSControl, NSUserInterfaceValidations, NSAccessibilityButton {
  var title: String
  var alternateTitle: String
  var image: NSImage?
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  func setButtonType(aType: NSButtonType)
  var state: Int
  var isBordered: Bool
  var isTransparent: Bool
  func setPeriodicDelay(delay: Float, interval: Float)
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  func highlight(flag: Bool)
  func performKeyEquivalent(key: NSEvent) -> Bool
  @available(OSX 10.10.3, *)
  var isSpringLoaded: Bool
  @available(OSX 10.10.3, *)
  var maxAcceleratorLevel: Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityLabel() -> String?
  func accessibilityPerformPress() -> Bool
}
extension NSButton {
  @NSCopying var attributedTitle: NSAttributedString
  @NSCopying var attributedAlternateTitle: NSAttributedString
}
extension NSButton {
  var bezelStyle: NSBezelStyle
}
extension NSButton {
  var allowsMixedState: Bool
  func setNextState()
}
extension NSButton {
  var showsBorderOnlyWhileMouseInside: Bool
}
extension NSButton {
  var sound: NSSound?
}
extension NSButton {
}
enum NSButtonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MomentaryLightButton
  case PushOnPushOffButton
  case ToggleButton
  case SwitchButton
  case RadioButton
  case MomentaryChangeButton
  case OnOffButton
  case MomentaryPushInButton
  @available(OSX 10.10.3, *)
  case AcceleratorButton
  @available(OSX 10.10.3, *)
  case MultiLevelAcceleratorButton
}
enum NSBezelStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundedBezelStyle
  case RegularSquareBezelStyle
  case ThickSquareBezelStyle
  case ThickerSquareBezelStyle
  case DisclosureBezelStyle
  case ShadowlessSquareBezelStyle
  case CircularBezelStyle
  case TexturedSquareBezelStyle
  case HelpButtonBezelStyle
  case SmallSquareBezelStyle
  case TexturedRoundedBezelStyle
  case RoundRectBezelStyle
  case RecessedBezelStyle
  case RoundedDisclosureBezelStyle
  @available(OSX 10.7, *)
  case InlineBezelStyle
}
struct __BCFlags {
  var __reserved: UInt32
  var allowTitleTightening: UInt32
  var isDrawingFocus: UInt32
  var useButtonImageSource: UInt32
  var hasTitleTextField: UInt32
  var isDrawingDisclosure: UInt32
  var suppressAXValueChangeNote: UInt32
  var doesNotDimImage: UInt32
  var inset: UInt32
  var transparent: UInt32
  var inIntermediateDisclosure: UInt32
  var hasKeyEquivalentInsteadOfImage: UInt32
  var imageSizeDiff: UInt32
  var imageAndText: UInt32
  var bottomOrLeft: UInt32
  var horizontal: UInt32
  var imageOverlaps: UInt32
  var bordered: UInt32
  var drawing: UInt32
  var lightByGray: UInt32
  var lightByBackground: UInt32
  var lightByContents: UInt32
  var changeGray: UInt32
  var changeBackground: UInt32
  var changeContents: UInt32
  var pushIn: UInt32
  init()
  init(__reserved: UInt32, allowTitleTightening: UInt32, isDrawingFocus: UInt32, useButtonImageSource: UInt32, hasTitleTextField: UInt32, isDrawingDisclosure: UInt32, suppressAXValueChangeNote: UInt32, doesNotDimImage: UInt32, inset: UInt32, transparent: UInt32, inIntermediateDisclosure: UInt32, hasKeyEquivalentInsteadOfImage: UInt32, imageSizeDiff: UInt32, imageAndText: UInt32, bottomOrLeft: UInt32, horizontal: UInt32, imageOverlaps: UInt32, bordered: UInt32, drawing: UInt32, lightByGray: UInt32, lightByBackground: UInt32, lightByContents: UInt32, changeGray: UInt32, changeBackground: UInt32, changeContents: UInt32, pushIn: UInt32)
}
typealias _BCFlags = __BCFlags
struct __BCFlags2 {
  var bezelStyle: UInt32
  var showsBorderOnlyWhileMouseInside: UInt32
  var mouseInside: UInt32
  var bezelStyle2: UInt32
  var imageScaling: UInt32
  var keyEquivalentModifierMask: UInt32
  init()
  init(bezelStyle: UInt32, showsBorderOnlyWhileMouseInside: UInt32, mouseInside: UInt32, bezelStyle2: UInt32, imageScaling: UInt32, keyEquivalentModifierMask: UInt32)
}
typealias _BCFlags2 = __BCFlags2
class NSButtonCell : NSActionCell {
  var title: String!
  var alternateTitle: String
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  @available(OSX 10.5, *)
  var imageScaling: NSImageScaling
  var highlightsBy: NSCellStyleMask
  var showsStateBy: NSCellStyleMask
  func setButtonType(aType: NSButtonType)
  var isOpaque: Bool { get }
  var isTransparent: Bool
  func setPeriodicDelay(delay: Float, interval: Float)
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  var keyEquivalentFont: NSFont?
  func setKeyEquivalentFont(fontName: String, size fontSize: CGFloat)
  func performClick(sender: AnyObject?)
  func drawImage(image: NSImage, withFrame frame: NSRect, in controlView: NSView)
  func drawTitle(title: NSAttributedString, withFrame frame: NSRect, in controlView: NSView) -> NSRect
  func drawBezelWithFrame(frame: NSRect, in controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
enum NSGradientType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ConcaveWeak
  case ConcaveStrong
  case ConvexWeak
  case ConvexStrong
}
extension NSButtonCell {
  var gradientType: NSGradientType
  var imageDimsWhenDisabled: Bool
  var showsBorderOnlyWhileMouseInside: Bool
  func mouseEntered(event: NSEvent)
  func mouseExited(event: NSEvent)
  @NSCopying var backgroundColor: NSColor?
}
extension NSButtonCell {
  @NSCopying var attributedTitle: NSAttributedString
  @NSCopying var attributedAlternateTitle: NSAttributedString
}
extension NSButtonCell {
  var bezelStyle: NSBezelStyle
}
extension NSButtonCell {
  var sound: NSSound?
}
extension NSButtonCell {
}
class NSCIImageRep : NSImageRep {
  init(ciImage image: CIImage)
  var ciImage: CIImage { get }
  init()
  init?(coder: NSCoder)
}
extension CIImage {
  init?(bitmapImageRep: NSBitmapImageRep)
  func drawIn(rect: NSRect, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawAt(point: NSPoint, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
}
enum NSCellType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NullCellType
  case TextCellType
  case ImageCellType
}
enum NSCellAttribute : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CellDisabled
  case CellState
  case PushInCell
  case CellEditable
  case ChangeGrayCell
  case CellHighlighted
  case CellLightsByContents
  case CellLightsByGray
  case ChangeBackgroundCell
  case CellLightsByBackground
  case CellIsBordered
  case CellHasOverlappingImage
  case CellHasImageHorizontal
  case CellHasImageOnLeftOrBottom
  case CellChangesContents
  case CellIsInsetButton
  case CellAllowsMixedState
}
enum NSCellImagePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoImage
  case ImageOnly
  case ImageLeft
  case ImageRight
  case ImageBelow
  case ImageAbove
  case ImageOverlaps
}
@available(OSX 10.5, *)
enum NSImageScaling : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ScaleProportionallyDown
  case ScaleAxesIndependently
  case ScaleNone
  case ScaleProportionallyUpOrDown
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use NSImageScaleProportionallyDown instead")
  static var NSScaleProportionally: NSImageScaling { get }
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use NSImageScaleAxesIndependently instead")
  static var NSScaleToFit: NSImageScaling { get }
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use NSImageScaleNone instead")
  static var NSScaleNone: NSImageScaling { get }
}
var NSMixedState: Int { get }
var NSOffState: Int { get }
var NSOnState: Int { get }
typealias NSCellStateValue = Int
struct NSCellStyleMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCellMask: NSCellStyleMask { get }
  static var ContentsCellMask: NSCellStyleMask { get }
  static var PushInCellMask: NSCellStyleMask { get }
  static var ChangeGrayCellMask: NSCellStyleMask { get }
  static var ChangeBackgroundCellMask: NSCellStyleMask { get }
}
enum NSControlTint : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultControlTint
  case BlueControlTint
  case GraphiteControlTint
  case ClearControlTint
}
enum NSControlSize : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RegularControlSize
  case SmallControlSize
  case MiniControlSize
}
struct __CFlags {
  var state: UInt32
  var highlighted: UInt32
  var disabled: UInt32
  var editable: UInt32
  var type: NSCellType
  var vCentered: UInt32
  var hCentered: UInt32
  var bordered: UInt32
  var bezeled: UInt32
  var selectable: UInt32
  var scrollable: UInt32
  var continuous: UInt32
  var actOnMouseDown: UInt32
  var isLeaf: UInt32
  var invalidObjectValue: UInt32
  var invalidFont: UInt32
  var lineBreakMode: NSLineBreakMode
  var weakTargetHelperFlag: UInt32
  var allowsAppearanceEffects: UInt32
  var singleLineMode: UInt32
  var actOnMouseDragged: UInt32
  var isLoaded: UInt32
  var truncateLastLine: UInt32
  var dontActOnMouseUp: UInt32
  var isWhite: UInt32
  var useUserKeyEquivalent: UInt32
  var showsFirstResponder: UInt32
  var focusRingType: UInt32
  var wasSelectable: UInt32
  var hasInvalidObject: UInt32
  var allowsEditingTextAttributes: UInt32
  var importsGraphics: UInt32
  var alignment: NSTextAlignment
  var layoutDirectionRTL: UInt32
  var backgroundStyle: UInt32
  var cellReserved2: UInt32
  var refusesFirstResponder: UInt32
  var needsHighlightedText: UInt32
  var dontAllowsUndo: UInt32
  var currentlyEditing: UInt32
  var allowsMixedState: UInt32
  var inMixedState: UInt32
  var sendsActionOnEndEditing: UInt32
  var inSendAction: UInt32
  var menuWasSet: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var branchImageDisabled: UInt32
  var drawingInRevealover: UInt32
  var needsHighlightedTextHint: UInt32
  init()
  init(state: UInt32, highlighted: UInt32, disabled: UInt32, editable: UInt32, type: NSCellType, vCentered: UInt32, hCentered: UInt32, bordered: UInt32, bezeled: UInt32, selectable: UInt32, scrollable: UInt32, continuous: UInt32, actOnMouseDown: UInt32, isLeaf: UInt32, invalidObjectValue: UInt32, invalidFont: UInt32, lineBreakMode: NSLineBreakMode, weakTargetHelperFlag: UInt32, allowsAppearanceEffects: UInt32, singleLineMode: UInt32, actOnMouseDragged: UInt32, isLoaded: UInt32, truncateLastLine: UInt32, dontActOnMouseUp: UInt32, isWhite: UInt32, useUserKeyEquivalent: UInt32, showsFirstResponder: UInt32, focusRingType: UInt32, wasSelectable: UInt32, hasInvalidObject: UInt32, allowsEditingTextAttributes: UInt32, importsGraphics: UInt32, alignment: NSTextAlignment, layoutDirectionRTL: UInt32, backgroundStyle: UInt32, cellReserved2: UInt32, refusesFirstResponder: UInt32, needsHighlightedText: UInt32, dontAllowsUndo: UInt32, currentlyEditing: UInt32, allowsMixedState: UInt32, inMixedState: UInt32, sendsActionOnEndEditing: UInt32, inSendAction: UInt32, menuWasSet: UInt32, controlTint: UInt32, controlSize: UInt32, branchImageDisabled: UInt32, drawingInRevealover: UInt32, needsHighlightedTextHint: UInt32)
}
typealias _CFlags = __CFlags
class NSCell : NSObject, NSCopying, NSCoding, NSUserInterfaceItemIdentification, NSAccessibilityElementProtocol, NSAccessibility {
  class func prefersTrackingUntilMouseUp() -> Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  unowned(unsafe) var controlView: @sil_unmanaged NSView?
  var type: NSCellType
  var state: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var title: String
  var isOpaque: Bool { get }
  var isEnabled: Bool
  func sendActionOn(mask: Int) -> Int
  var continuous: Bool
  var isEditable: Bool
  var isSelectable: Bool
  var isBordered: Bool
  var isBezeled: Bool
  var isScrollable: Bool
  var isHighlighted: Bool
  var alignment: NSTextAlignment
  var wraps: Bool
  var font: NSFont?
  var keyEquivalent: String { get }
  var formatter: NSFormatter?
  @NSCopying var objectValue: AnyObject?
  var hasValidObjectValue: Bool { get }
  var stringValue: String
  func compare(otherCell: AnyObject) -> NSComparisonResult
  var intValue: Int32
  var floatValue: Float
  var doubleValue: Double
  func takeIntValueFrom(sender: AnyObject?)
  func takeFloatValueFrom(sender: AnyObject?)
  func takeDoubleValueFrom(sender: AnyObject?)
  func takeStringValueFrom(sender: AnyObject?)
  func takeObjectValueFrom(sender: AnyObject?)
  var image: NSImage?
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  var representedObject: AnyObject?
  func cellAttribute(aParameter: NSCellAttribute) -> Int
  func setCellAttribute(aParameter: NSCellAttribute, to value: Int)
  func imageRectForBounds(theRect: NSRect) -> NSRect
  func titleRectForBounds(theRect: NSRect) -> NSRect
  func drawingRectForBounds(theRect: NSRect) -> NSRect
  var cellSize: NSSize { get }
  func cellSizeForBounds(aRect: NSRect) -> NSSize
  func highlightColorWithFrame(cellFrame: NSRect, in controlView: NSView) -> NSColor
  func calcDrawInfo(aRect: NSRect)
  func setUpFieldEditorAttributes(textObj: NSText) -> NSText
  func drawInteriorWithFrame(cellFrame: NSRect, in controlView: NSView)
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView)
  func highlight(flag: Bool, withFrame cellFrame: NSRect, in controlView: NSView)
  var mouseDownFlags: Int { get }
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  func startTrackingAt(startPoint: NSPoint, in controlView: NSView) -> Bool
  func continueTracking(lastPoint: NSPoint, at currentPoint: NSPoint, in controlView: NSView) -> Bool
  func stopTracking(lastPoint: NSPoint, at stopPoint: NSPoint, in controlView: NSView, mouseIsUp flag: Bool)
  func trackMouse(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView, untilMouseUp flag: Bool) -> Bool
  func editWithFrame(aRect: NSRect, in controlView: NSView, editor textObj: NSText, delegate anObject: AnyObject?, event theEvent: NSEvent)
  func selectWithFrame(aRect: NSRect, in controlView: NSView, editor textObj: NSText, delegate anObject: AnyObject?, start selStart: Int, length selLength: Int)
  func endEditing(textObj: NSText)
  func resetCursorRect(cellFrame: NSRect, in controlView: NSView)
  var menu: NSMenu?
  func menuFor(event: NSEvent, in cellFrame: NSRect, of view: NSView) -> NSMenu?
  class func defaultMenu() -> NSMenu?
  var sendsActionOnEndEditing: Bool
  var baseWritingDirection: NSWritingDirection
  var lineBreakMode: NSLineBreakMode
  var allowsUndo: Bool
  @available(OSX 10.5, *)
  var integerValue: Int
  @available(OSX 10.5, *)
  func takeIntegerValueFrom(sender: AnyObject?)
  @available(OSX 10.5, *)
  var truncatesLastVisibleLine: Bool
  @available(OSX 10.6, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(OSX 10.6, *)
  func fieldEditorFor(aControlView: NSView) -> NSTextView?
  @available(OSX 10.6, *)
  var usesSingleLineMode: Bool
  @available(OSX 10.7, *)
  func draggingImageComponentsWithFrame(frame: NSRect, in view: NSView) -> [NSDraggingImageComponent]
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  var identifier: String?
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
extension NSCell {
  var refusesFirstResponder: Bool
  var acceptsFirstResponder: Bool { get }
  var showsFirstResponder: Bool
  func performClick(sender: AnyObject?)
  var focusRingType: NSFocusRingType
  class func defaultFocusRingType() -> NSFocusRingType
  @available(OSX 10.7, *)
  func drawFocusRingMaskWithFrame(cellFrame: NSRect, in controlView: NSView)
  @available(OSX 10.7, *)
  func focusRingMaskBoundsForFrame(cellFrame: NSRect, in controlView: NSView) -> NSRect
  var wantsNotificationForMarkedText: Bool { get }
}
extension NSCell {
  @NSCopying var attributedStringValue: NSAttributedString
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
extension NSCell {
  var allowsMixedState: Bool
  var nextState: Int { get }
  func setNextState()
}
let NSControlTintDidChangeNotification: String
@available(OSX 10.5, *)
struct NSCellHitResult : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSCellHitResult { get }
  static var ContentArea: NSCellHitResult { get }
  static var EditableTextArea: NSCellHitResult { get }
  static var TrackableArea: NSCellHitResult { get }
}
extension NSCell {
  @available(OSX 10.5, *)
  func hitTestFor(event: NSEvent, in cellFrame: NSRect, of controlView: NSView) -> NSCellHitResult
}
extension NSCell {
  @available(OSX 10.5, *)
  func expansionFrameWithFrame(cellFrame: NSRect, in view: NSView) -> NSRect
  @available(OSX 10.5, *)
  func drawWithExpansionFrame(cellFrame: NSRect, in view: NSView)
}
@available(OSX 10.5, *)
enum NSBackgroundStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Light
  case Dark
  case Raised
  case Lowered
}
extension NSCell {
  @available(OSX 10.5, *)
  var backgroundStyle: NSBackgroundStyle
  @available(OSX 10.5, *)
  var interiorBackgroundStyle: NSBackgroundStyle { get }
}
extension NSCell {
}
@available(OSX 10.5, *)
func NSDrawThreePartImage(frame: NSRect, _ startCap: NSImage?, _ centerFill: NSImage?, _ endCap: NSImage?, _ vertical: Bool, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
@available(OSX 10.5, *)
func NSDrawNinePartImage(frame: NSRect, _ topLeftCorner: NSImage, _ topEdgeFill: NSImage, _ topRightCorner: NSImage, _ leftEdgeFill: NSImage, _ centerFill: NSImage, _ rightEdgeFill: NSImage, _ bottomLeftCorner: NSImage, _ bottomEdgeFill: NSImage, _ bottomRightCorner: NSImage, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
var NSAnyType: Int { get }
var NSIntType: Int { get }
var NSPositiveIntType: Int { get }
var NSFloatType: Int { get }
var NSPositiveFloatType: Int { get }
var NSDoubleType: Int { get }
var NSPositiveDoubleType: Int { get }
class NSClipView : NSView {
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  unowned(unsafe) var documentView: @sil_unmanaged AnyObject?
  var documentRect: NSRect { get }
  var documentCursor: NSCursor?
  var documentVisibleRect: NSRect { get }
  func viewFrameChanged(notification: NSNotification)
  func viewBoundsChanged(notification: NSNotification)
  var copiesOnScroll: Bool
  func autoscroll(theEvent: NSEvent) -> Bool
  func scrollTo(newOrigin: NSPoint)
  @available(OSX 10.9, *)
  func constrainBoundsRect(proposedBounds: NSRect) -> NSRect
  @available(OSX 10.10, *)
  var contentInsets: NSEdgeInsets
  @available(OSX 10.10, *)
  var automaticallyAdjustsContentInsets: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __cvFlags {
  var onlyUncovered: UInt32
  var reflectScroll: UInt32
  var usedByCell: UInt32
  var scrollClipTo: UInt32
  var noCopyOnScroll: UInt32
  var drawsBackground: UInt32
  var scrollInProgress: UInt32
  var skipRemoveSuperviewCheck: UInt32
  var animateCurrentScroll: UInt32
  var canAnimateScrolls: UInt32
  var nextScrollRelativeToCurrentPosition: UInt32
  var viewBoundsChangedOverridden: UInt32
  var viewFrameChangedOverridden: UInt32
  var documentViewAlignment: UInt32
  var redrawnWhileScrolling: UInt32
  var dontConstrainScroll: UInt32
  var lastAtEdgesState: UInt32
  var showOverlayScrollersForScrollStep: UInt32
  var scrollerKnobFlashSpecifier: UInt32
  var drawsContentShadow: UInt32
  var dontConstrainBoundsChange: UInt32
  var isScrollDueToUserAction: UInt32
  var hasOverlappingViews: UInt32
  var automaticallyCalculateContentSize: UInt32
  init()
  init(onlyUncovered: UInt32, reflectScroll: UInt32, usedByCell: UInt32, scrollClipTo: UInt32, noCopyOnScroll: UInt32, drawsBackground: UInt32, scrollInProgress: UInt32, skipRemoveSuperviewCheck: UInt32, animateCurrentScroll: UInt32, canAnimateScrolls: UInt32, nextScrollRelativeToCurrentPosition: UInt32, viewBoundsChangedOverridden: UInt32, viewFrameChangedOverridden: UInt32, documentViewAlignment: UInt32, redrawnWhileScrolling: UInt32, dontConstrainScroll: UInt32, lastAtEdgesState: UInt32, showOverlayScrollersForScrollStep: UInt32, scrollerKnobFlashSpecifier: UInt32, drawsContentShadow: UInt32, dontConstrainBoundsChange: UInt32, isScrollDueToUserAction: UInt32, hasOverlappingViews: UInt32, automaticallyCalculateContentSize: UInt32)
}
extension NSClipView {
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -constrainBoundsRect: instead")
  func constrainScroll(newOrigin: NSPoint) -> NSPoint
}
extension NSView {
  func reflectScrolledClipView(aClipView: NSClipView)
  func scroll(aClipView: NSClipView, to aPoint: NSPoint)
}
@available(OSX 10.6, *)
enum NSCollectionViewDropOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case On
  case Before
}
@available(OSX 10.11, *)
enum NSCollectionViewItemHighlightState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ForSelection
  case ForDeselection
  case AsDropTarget
}
struct NSCollectionViewScrollPosition : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSCollectionViewScrollPosition { get }
  static var Top: NSCollectionViewScrollPosition { get }
  static var CenteredVertically: NSCollectionViewScrollPosition { get }
  static var Bottom: NSCollectionViewScrollPosition { get }
  static var NearestHorizontalEdge: NSCollectionViewScrollPosition { get }
  static var Left: NSCollectionViewScrollPosition { get }
  static var CenteredHorizontally: NSCollectionViewScrollPosition { get }
  static var Right: NSCollectionViewScrollPosition { get }
  static var LeadingEdge: NSCollectionViewScrollPosition { get }
  static var TrailingEdge: NSCollectionViewScrollPosition { get }
  static var NearestVerticalEdge: NSCollectionViewScrollPosition { get }
}
protocol NSCollectionViewElement : NSObjectProtocol, NSUserInterfaceItemIdentification {
  @available(OSX 10.11, *)
  optional func prepareForReuse()
  @available(OSX 10.11, *)
  optional func apply(layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(OSX 10.11, *)
  optional func willTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  optional func didTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  optional func preferredLayoutAttributesFitting(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
@available(OSX 10.5, *)
class NSCollectionViewItem : NSViewController, NSCopying, NSCollectionViewElement {
  var collectionView: NSCollectionView { get }
  var isSelected: Bool
  @available(OSX 10.11, *)
  var highlightState: NSCollectionViewItemHighlightState
  @available(OSX 10.7, *)
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  @available(OSX 10.7, *)
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  @available(OSX 10.7, *)
  var draggingImageComponents: [NSDraggingImageComponent] { get }
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func prepareForReuse()
  @available(OSX 10.11, *)
  func apply(layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(OSX 10.11, *)
  func willTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  func didTransitionFrom(oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(OSX 10.11, *)
  func preferredLayoutAttributesFitting(layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
@available(OSX 10.5, *)
class NSCollectionView : NSView, NSDraggingSource, NSDraggingDestination {
  @available(OSX 10.11, *)
  weak var dataSource: @sil_weak NSCollectionViewDataSource?
  var content: [AnyObject]
  @available(OSX 10.11, *)
  func reloadData()
  unowned(unsafe) var delegate: @sil_unmanaged NSCollectionViewDelegate?
  @available(OSX 10.11, *)
  var backgroundView: NSView?
  @available(OSX 10.11, *)
  var collectionViewLayout: NSCollectionViewLayout?
  @available(OSX 10.11, *)
  func layoutAttributesForItemAt(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  @available(OSX 10.11, *)
  func layoutAttributesForSupplementaryElementOfKind(kind: String, at indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  @available(OSX 10.6, *)
  func frameForItemAt(index: Int) -> NSRect
  @available(OSX 10.7, *)
  func frameForItemAt(index: Int, withNumberOfItems numberOfItems: Int) -> NSRect
  var maxNumberOfRows: Int
  var maxNumberOfColumns: Int
  var minItemSize: NSSize
  var maxItemSize: NSSize
  var backgroundColors: [NSColor]!
  @available(OSX 10.11, *)
  var numberOfSections: Int { get }
  @available(OSX 10.11, *)
  func numberOfItemsInSection(section: Int) -> Int
  var isFirstResponder: Bool { get }
  var isSelectable: Bool
  @available(OSX 10.11, *)
  var allowsEmptySelection: Bool
  var allowsMultipleSelection: Bool
  @NSCopying var selectionIndexes: NSIndexSet
  @available(OSX 10.11, *)
  var selectionIndexPaths: Set<NSIndexPath>
  @available(OSX 10.11, *)
  func selectItemsAt(indexPaths: Set<NSIndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  @available(OSX 10.11, *)
  func deselectItemsAt(indexPaths: Set<NSIndexPath>)
  @IBAction func selectAll(sender: AnyObject?)
  @IBAction func deselectAll(sender: AnyObject?)
  @available(OSX 10.11, *)
  func register(itemClass: AnyClass?, forItemWithIdentifier identifier: String)
  @available(OSX 10.11, *)
  func register(nib: NSNib?, forItemWithIdentifier identifier: String)
  @available(OSX 10.11, *)
  func register(viewClass: AnyClass?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  @available(OSX 10.11, *)
  func register(nib: NSNib?, forSupplementaryViewOfKind kind: String, withIdentifier identifier: String)
  @available(OSX 10.11, *)
  func makeItemWithIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem
  @available(OSX 10.11, *)
  func makeSupplementaryViewOfKind(elementKind: String, withIdentifier identifier: String, forIndexPath indexPath: NSIndexPath) -> NSView
  func newItemForRepresentedObject(object: AnyObject) -> NSCollectionViewItem
  var itemPrototype: NSCollectionViewItem?
  @available(OSX 10.6, *)
  func itemAt(index: Int) -> NSCollectionViewItem?
  @available(OSX 10.11, *)
  func itemAt(indexPath: NSIndexPath) -> NSCollectionViewItem?
  @available(OSX 10.11, *)
  func visibleItems() -> [NSCollectionViewItem]
  @available(OSX 10.11, *)
  func indexPathsForVisibleItems() -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  func indexPathFor(item: NSCollectionViewItem) -> NSIndexPath?
  @available(OSX 10.11, *)
  func indexPathForItemAt(point: NSPoint) -> NSIndexPath?
  @available(OSX 10.11, *)
  func supplementaryViewForElementKind(elementKind: String, at indexPath: NSIndexPath) -> NSView?
  @available(OSX 10.11, *)
  func visibleSupplementaryViewsOfKind(elementKind: String) -> [NSView]
  @available(OSX 10.11, *)
  func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  func insertSections(sections: NSIndexSet)
  @available(OSX 10.11, *)
  func deleteSections(sections: NSIndexSet)
  @available(OSX 10.11, *)
  func reloadSections(sections: NSIndexSet)
  @available(OSX 10.11, *)
  func moveSection(section: Int, toSection newSection: Int)
  @available(OSX 10.11, *)
  func insertItemsAt(indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  func deleteItemsAt(indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  func reloadItemsAt(indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  func moveItemAt(indexPath: NSIndexPath, to newIndexPath: NSIndexPath)
  @available(OSX 10.11, *)
  func performBatchUpdates(updates: (() -> Void)?, completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.11, *)
  func scrollToItemsAt(indexPaths: Set<NSIndexPath>, scrollPosition: NSCollectionViewScrollPosition)
  @available(OSX 10.6, *)
  func setDraggingSourceOperationMask(dragOperationMask: NSDragOperation, forLocal localDestination: Bool)
  @available(OSX 10.11, *)
  func draggingImageForItemsAt(indexPaths: Set<NSIndexPath>, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(OSX 10.6, *)
  func draggingImageForItemsAt(indexes: NSIndexSet, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
}
protocol NSCollectionViewDataSource : NSObjectProtocol {
  @available(OSX 10.11, *)
  func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
  @available(OSX 10.11, *)
  func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: NSIndexPath) -> NSCollectionViewItem
  @available(OSX 10.11, *)
  optional func numberOfSectionsIn(collectionView: NSCollectionView) -> Int
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: NSIndexPath) -> NSView
}
protocol NSCollectionViewDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAt indexPaths: Set<NSIndexPath>, withEvent event: NSEvent) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, canDragItemsAt indexes: NSIndexSet, withEvent event: NSEvent) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, writeItemsAt indexPaths: Set<NSIndexPath>, to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, writeItemsAt indexes: NSIndexSet, to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: NSURL, forDraggedItemsAt indexPaths: Set<NSIndexPath>) -> [String]
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: NSURL, forDraggedItemsAt indexes: NSIndexSet) -> [String]
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAt indexPaths: Set<NSIndexPath>, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, draggingImageForItemsAt indexes: NSIndexSet, withEvent event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndexPath proposedDropIndexPath: AutoreleasingUnsafeMutablePointer<NSIndexPath?>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndex proposedDropIndex: UnsafeMutablePointer<Int>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionViewDropOperation>) -> NSDragOperation
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, indexPath: NSIndexPath, dropOperation: NSCollectionViewDropOperation) -> Bool
  @available(OSX 10.6, *)
  optional func collectionView(collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, index: Int, dropOperation: NSCollectionViewDropOperation) -> Bool
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAt indexPath: NSIndexPath) -> NSPasteboardWriting?
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, pasteboardWriterForItemAt index: Int) -> NSPasteboardWriting?
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forItemsAt indexPaths: Set<NSIndexPath>)
  @available(OSX 10.7, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forItemsAt indexes: NSIndexSet)
  @available(OSX 10.7, *)
  optional func collectionView(collectionView: NSCollectionView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, dragOperation operation: NSDragOperation)
  @available(OSX 10.5, *)
  optional func collectionView(collectionView: NSCollectionView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldChangeItemsAt indexPaths: Set<NSIndexPath>, to highlightState: NSCollectionViewItemHighlightState) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didChangeItemsAt indexPaths: Set<NSIndexPath>, to highlightState: NSCollectionViewItemHighlightState)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldSelectItemsAt indexPaths: Set<NSIndexPath>) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, shouldDeselectItemsAt indexPaths: Set<NSIndexPath>) -> Set<NSIndexPath>
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didDeselectItemsAt indexPaths: Set<NSIndexPath>)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, willDisplay item: NSCollectionViewItem, forRepresentedObjectAt indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, willDisplaySupplementaryView view: NSView, forElementKind elementKind: String, at indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplaying item: NSCollectionViewItem, forRepresentedObjectAt indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, didEndDisplayingSupplementaryView view: NSView, forElementOfKind elementKind: String, at indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, transitionLayoutForOldLayout fromLayout: NSCollectionViewLayout, newLayout toLayout: NSCollectionViewLayout) -> NSCollectionViewTransitionLayout
}
extension NSIndexPath {
  @available(OSX 10.11, *)
  /*not inherited*/ init(forItem item: Int, inSection section: Int)
  @available(OSX 10.11, *)
  var item: Int { get }
  @available(OSX 10.11, *)
  var section: Int { get }
}
extension NSSet {
  @available(OSX 10.11, *)
  convenience init(collectionViewIndexPath indexPath: NSIndexPath)
  @available(OSX 10.11, *)
  convenience init(collectionViewIndexPaths indexPaths: [NSIndexPath])
  @available(OSX 10.11, *)
  func enumerateIndexPaths(options opts: NSEnumerationOptions = [], usingBlock block: (NSIndexPath, UnsafeMutablePointer<ObjCBool>) -> Void)
}
@available(OSX 10.11, *)
enum NSCollectionViewScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Vertical
  case Horizontal
}
@available(OSX 10.11, *)
let NSCollectionElementKindSectionHeader: String
@available(OSX 10.11, *)
let NSCollectionElementKindSectionFooter: String
@available(OSX 10.11, *)
class NSCollectionViewFlowLayoutInvalidationContext : NSCollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
  init()
}
protocol NSCollectionViewDelegateFlowLayout : NSCollectionViewDelegate {
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: NSIndexPath) -> NSSize
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, insetForSectionAt section: Int) -> NSEdgeInsets
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> NSSize
  @available(OSX 10.11, *)
  optional func collectionView(collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForFooterInSection section: Int) -> NSSize
}
@available(OSX 10.11, *)
class NSCollectionViewFlowLayout : NSCollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: NSSize
  var estimatedItemSize: NSSize
  var scrollDirection: NSCollectionViewScrollDirection
  var headerReferenceSize: NSSize
  var footerReferenceSize: NSSize
  var sectionInset: NSEdgeInsets
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
class NSCollectionViewGridLayout : NSCollectionViewLayout {
  var margins: NSEdgeInsets
  var minimumInteritemSpacing: CGFloat
  var minimumLineSpacing: CGFloat
  var maximumNumberOfRows: Int
  var maximumNumberOfColumns: Int
  var minimumItemSize: NSSize
  var maximumItemSize: NSSize
  var backgroundColors: [NSColor]!
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
enum NSCollectionElementCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Item
  case SupplementaryView
  case DecorationView
  case InterItemGap
}
@available(OSX 10.11, *)
let NSCollectionElementKindInterItemGapIndicator: String
@available(OSX 10.11, *)
class NSCollectionViewLayoutAttributes : NSObject, NSCopying {
  var frame: NSRect
  var size: NSSize
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: NSIndexPath?
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forItemWith indexPath: NSIndexPath)
  convenience init(forInterItemGapBefore indexPath: NSIndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, withIndexPath indexPath: NSIndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, withIndexPath indexPath: NSIndexPath)
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
enum NSCollectionUpdateAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Insert
  case Delete
  case Reload
  case Move
  case None
}
@available(OSX 10.11, *)
class NSCollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: NSIndexPath? { get }
  var indexPathAfterUpdate: NSIndexPath? { get }
  var updateAction: NSCollectionUpdateAction { get }
  init()
}
@available(OSX 10.11, *)
class NSCollectionViewLayoutInvalidationContext : NSObject {
  var isInvalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItemsAt(indexPaths: Set<NSIndexPath>)
  func invalidateSupplementaryElementsOfKind(elementKind: String, at indexPaths: Set<NSIndexPath>)
  func invalidateDecorationElementsOfKind(elementKind: String, at indexPaths: Set<NSIndexPath>)
  var invalidatedItemIndexPaths: Set<NSIndexPath>? { get }
  var invalidatedSupplementaryIndexPaths: [String : Set<NSIndexPath>]? { get }
  var invalidatedDecorationIndexPaths: [String : Set<NSIndexPath>]? { get }
  var contentOffsetAdjustment: NSPoint
  var contentSizeAdjustment: NSSize
  init()
}
@available(OSX 10.11, *)
class NSCollectionViewLayout : NSObject, NSCoding {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  func invalidateLayout()
  func invalidateLayoutWith(context: NSCollectionViewLayoutInvalidationContext)
  func register(viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(nib: NSNib?, forDecorationViewOfKind elementKind: String)
  init()
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSCollectionViewLayout {
  class func layoutAttributesClass() -> AnyClass
  class func invalidationContextClass() -> AnyClass
  func prepareLayout()
  func layoutAttributesForElementsIn(rect: NSRect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItemAt(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryViewOfKind(elementKind: String, at indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationViewOfKind(elementKind: String, at indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTargetAt(pointInCollectionView: NSPoint) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGapBefore(indexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayoutForBoundsChange(newBounds: NSRect) -> Bool
  func invalidationContextForBoundsChange(newBounds: NSRect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayoutForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContextForPreferredLayoutAttributes(preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: NSPoint, withScrollingVelocity velocity: NSPoint) -> NSPoint
  func targetContentOffsetForProposedContentOffset(proposedContentOffset: NSPoint) -> NSPoint
  var collectionViewContentSize: NSSize { get }
}
extension NSCollectionViewLayout {
  func prepareForCollectionViewUpdates(updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepareForAnimatedBoundsChange(oldBounds: NSRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransitionTo(newLayout: NSCollectionViewLayout)
  func prepareForTransitionFrom(oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItemAt(itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItemAt(itemIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElementOfKind(elementKind: String, at elementIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElementOfKind(elementKind: String, at decorationIndexPath: NSIndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToDeleteForDecorationViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForSupplementaryViewOfKind(elementKind: String) -> Set<NSIndexPath>
  func indexPathsToInsertForDecorationViewOfKind(elementKind: String) -> Set<NSIndexPath>
}
@available(OSX 10.11, *)
class NSCollectionViewTransitionLayout : NSCollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: NSCollectionViewLayout { get }
  var nextLayout: NSCollectionViewLayout { get }
  init(currentLayout: NSCollectionViewLayout, nextLayout newLayout: NSCollectionViewLayout)
  func updateValue(value: CGFloat, forAnimatedKey key: String)
  func valueForAnimatedKey(key: String) -> CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
var NSAppKitVersionNumberWithPatternColorLeakFix: Double { get }
class NSColor : NSObject, NSCopying, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  init()
  init?(coder: NSCoder)
  /*not inherited*/ init(calibratedWhite white: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceWhite white: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  /*not inherited*/ init?(catalogName listName: String, colorName: String)
  /*not inherited*/ init(colorSpace space: NSColorSpace, components: UnsafePointer<CGFloat>, count numberOfComponents: Int)
  @available(OSX 10.7, *)
  /*not inherited*/ init(genericGamma22White white: CGFloat, alpha: CGFloat)
  @available(OSX 10.7, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(white: CGFloat, alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(OSX 10.9, *)
  /*not inherited*/ init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  class func black() -> NSColor
  class func darkGray() -> NSColor
  class func lightGray() -> NSColor
  class func white() -> NSColor
  class func gray() -> NSColor
  class func red() -> NSColor
  class func green() -> NSColor
  class func blue() -> NSColor
  class func cyan() -> NSColor
  class func yellow() -> NSColor
  class func magenta() -> NSColor
  class func orange() -> NSColor
  class func purple() -> NSColor
  class func brown() -> NSColor
  class func clear() -> NSColor
  class func controlShadow() -> NSColor
  class func controlDarkShadow() -> NSColor
  class func control() -> NSColor
  class func controlHighlight() -> NSColor
  class func controlLightHighlight() -> NSColor
  class func controlText() -> NSColor
  class func controlBackground() -> NSColor
  class func selectedControl() -> NSColor
  class func secondarySelectedControl() -> NSColor
  class func selectedControlText() -> NSColor
  class func disabledControlText() -> NSColor
  class func text() -> NSColor
  class func textBackground() -> NSColor
  class func selectedText() -> NSColor
  class func selectedTextBackground() -> NSColor
  class func grid() -> NSColor
  class func keyboardFocusIndicator() -> NSColor
  class func windowBackground() -> NSColor
  @available(OSX 10.8, *)
  class func underPageBackground() -> NSColor
  @available(OSX 10.10, *)
  class func label() -> NSColor
  @available(OSX 10.10, *)
  class func secondaryLabel() -> NSColor
  @available(OSX 10.10, *)
  class func tertiaryLabel() -> NSColor
  @available(OSX 10.10, *)
  class func quaternaryLabel() -> NSColor
  class func scrollBar() -> NSColor
  class func knob() -> NSColor
  class func selectedKnob() -> NSColor
  class func windowFrame() -> NSColor
  class func windowFrameText() -> NSColor
  class func selectedMenuItem() -> NSColor
  class func selectedMenuItemText() -> NSColor
  class func highlight() -> NSColor
  class func shadow() -> NSColor
  class func header() -> NSColor
  class func headerText() -> NSColor
  class func alternateSelectedControl() -> NSColor
  class func alternateSelectedControlText() -> NSColor
  class func controlAlternatingRowBackgroundColors() -> [NSColor]
  func highlightWithLevel(val: CGFloat) -> NSColor?
  func shadowWithLevel(val: CGFloat) -> NSColor?
  /*not inherited*/ init(forControlTint controlTint: NSControlTint)
  class func currentControlTint() -> NSControlTint
  func set()
  func setFill()
  func setStroke()
  var colorSpaceName: String { get }
  func usingColorSpaceName(colorSpace: String) -> NSColor?
  func usingColorSpaceName(colorSpace: String?, device deviceDescription: [String : AnyObject]?) -> NSColor?
  func usingColorSpace(space: NSColorSpace) -> NSColor?
  func blendedColorWithFraction(fraction: CGFloat, of color: NSColor) -> NSColor?
  func withAlphaComponent(alpha: CGFloat) -> NSColor

  /*** Methods to get various components of colors. Not all of the methods apply to all colors; if called, they raise. ***/
  var catalogNameComponent: String { get }
  var colorNameComponent: String { get }
  var localizedCatalogNameComponent: String { get }
  var localizedColorNameComponent: String { get }
  var redComponent: CGFloat { get }
  var greenComponent: CGFloat { get }
  var blueComponent: CGFloat { get }
  func getRed(red: UnsafeMutablePointer<CGFloat>, green: UnsafeMutablePointer<CGFloat>, blue: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var hueComponent: CGFloat { get }
  var saturationComponent: CGFloat { get }
  var brightnessComponent: CGFloat { get }
  func getHue(hue: UnsafeMutablePointer<CGFloat>, saturation: UnsafeMutablePointer<CGFloat>, brightness: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var whiteComponent: CGFloat { get }
  func getWhite(white: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var cyanComponent: CGFloat { get }
  var magentaComponent: CGFloat { get }
  var yellowComponent: CGFloat { get }
  var blackComponent: CGFloat { get }
  func getCyan(cyan: UnsafeMutablePointer<CGFloat>, magenta: UnsafeMutablePointer<CGFloat>, yellow: UnsafeMutablePointer<CGFloat>, black: UnsafeMutablePointer<CGFloat>, alpha: UnsafeMutablePointer<CGFloat>)
  var colorSpace: NSColorSpace { get }
  var numberOfComponents: Int { get }
  func getComponents(components: UnsafeMutablePointer<CGFloat>)
  var alphaComponent: CGFloat { get }
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func writeTo(pasteBoard: NSPasteboard)
  /*not inherited*/ init(patternImage image: NSImage)
  var patternImage: NSImage { get }
  func drawSwatchIn(rect: NSRect)
  @available(OSX 10.8, *)
  /*not inherited*/ init?(cgColor: CGColor)
  @available(OSX 10.8, *)
  var cgColor: CGColor { get }
  class func setIgnoresAlpha(flag: Bool)
  class func ignoresAlpha() -> Bool
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}

extension NSColor : _ColorLiteralConvertible {
  required convenience init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}
extension NSColor {
  /*not inherited*/ init(ciColor color: CIColor)
}
extension CIColor {
  convenience init?(color: NSColor)
}
extension NSCoder {
}
let NSSystemColorsDidChangeNotification: String
class NSColorList : NSObject, NSSecureCoding {
  class func availableColorLists() -> [NSColorList]
  /*not inherited*/ init?(named name: String)
  init(name: String)
  init?(name: String, fromFile path: String?)
  var name: String? { get }
  func setColor(color: NSColor, forKey key: String)
  func insert(color: NSColor, key: String, at loc: Int)
  func removeColorWithKey(key: String)
  func colorWithKey(key: String) -> NSColor?
  var allKeys: [String] { get }
  var isEditable: Bool { get }
  func writeToFile(path: String?) -> Bool
  func removeFile()
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct _colorListFlags {
  var colorsLoaded: UInt32
  var editable: UInt32
  var hasDeviceSpecificLists: UInt32
  var dirty: UInt32
  var hasFrozen: UInt32
  var notificationsDisabled: UInt32
  var hasAttemptedLoadingBundleForDirectory: UInt32
  var isProfileBased: UInt32
  init()
  init(colorsLoaded: UInt32, editable: UInt32, hasDeviceSpecificLists: UInt32, dirty: UInt32, hasFrozen: UInt32, notificationsDisabled: UInt32, hasAttemptedLoadingBundleForDirectory: UInt32, isProfileBased: UInt32)
}
let NSColorListDidChangeNotification: String
enum NSColorPanelMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.5, *)
  case NSNoModeColorPanel
  case NSGrayModeColorPanel
  case NSRGBModeColorPanel
  case NSCMYKModeColorPanel
  case NSHSBModeColorPanel
  case NSCustomPaletteModeColorPanel
  case NSColorListModeColorPanel
  case NSWheelModeColorPanel
  case NSCrayonModeColorPanel
}
struct NSColorPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var GrayModeMask: NSColorPanelOptions { get }
  static var RGBModeMask: NSColorPanelOptions { get }
  static var CMYKModeMask: NSColorPanelOptions { get }
  static var HSBModeMask: NSColorPanelOptions { get }
  static var CustomPaletteModeMask: NSColorPanelOptions { get }
  static var ColorListModeMask: NSColorPanelOptions { get }
  static var WheelModeMask: NSColorPanelOptions { get }
  static var CrayonModeMask: NSColorPanelOptions { get }
  static var AllModesMask: NSColorPanelOptions { get }
}
class NSColorPanel : NSPanel {
  class func shared() -> NSColorPanel
  class func sharedColorPanelExists() -> Bool
  class func drag(color: NSColor, withEvent theEvent: NSEvent, from sourceView: NSView) -> Bool
  class func setPickerMask(mask: NSColorPanelOptions)
  class func setPickerMode(mode: NSColorPanelMode)
  var accessoryView: NSView?
  var continuous: Bool
  var showsAlpha: Bool
  var mode: NSColorPanelMode
  @NSCopying var color: NSColor
  var alpha: CGFloat { get }
  func setAction(aSelector: Selector)
  func setTarget(anObject: AnyObject?)
  func attach(colorList: NSColorList)
  func detach(colorList: NSColorList)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSApplication {
  func orderFrontColorPanel(sender: AnyObject?)
}
extension NSObject {
  class func changeColor(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
}
let NSColorPanelColorDidChangeNotification: String
class NSColorPicker : NSObject, NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  var colorPanel: NSColorPanel { get }
  var provideNewButtonImage: NSImage { get }
  func insertNewButtonImage(newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(sender: AnyObject?)
  func attach(colorList: NSColorList)
  func detach(colorList: NSColorList)
  func setMode(mode: NSColorPanelMode)
  var buttonToolTip: String { get }
  var minContentSize: NSSize { get }
  init()
  func alphaControlAddedOrRemoved(sender: AnyObject?)
}
protocol NSColorPickingDefault {
  init?(pickerMask mask: Int, colorPanel owningColorPanel: NSColorPanel)
  func provideNewButtonImage() -> NSImage
  func insertNewButtonImage(newButtonImage: NSImage, in buttonCell: NSButtonCell)
  func viewSizeChanged(sender: AnyObject?)
  func alphaControlAddedOrRemoved(sender: AnyObject?)
  func attach(colorList: NSColorList)
  func detach(colorList: NSColorList)
  func setMode(mode: NSColorPanelMode)
  @available(OSX 10.5, *)
  func buttonToolTip() -> String
  @available(OSX 10.5, *)
  func minContentSize() -> NSSize
}
protocol NSColorPickingCustom : NSColorPickingDefault {
  func supportsMode(mode: NSColorPanelMode) -> Bool
  func currentMode() -> NSColorPanelMode
  func provideNewView(initialRequest: Bool) -> NSView
  func setColor(newColor: NSColor)
}
enum NSColorSpaceModel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NSUnknownColorSpaceModel
  case NSGrayColorSpaceModel
  case NSRGBColorSpaceModel
  case NSCMYKColorSpaceModel
  case NSLABColorSpaceModel
  case NSDeviceNColorSpaceModel
  case NSIndexedColorSpaceModel
  case NSPatternColorSpaceModel
}
class NSColorSpace : NSObject, NSSecureCoding {
  init?(iccProfileData iccData: NSData)
  var iccProfileData: NSData? { get }
  init?(colorSyncProfile prof: UnsafeMutablePointer<Void>)
  var colorSyncProfile: UnsafeMutablePointer<Void> { get }
  @available(OSX 10.5, *)
  init?(cgColorSpace: CGColorSpace)
  @available(OSX 10.5, *)
  var cgColorSpace: CGColorSpace? { get }
  var numberOfColorComponents: Int { get }
  var colorSpaceModel: NSColorSpaceModel { get }
  var localizedName: String? { get }
  class func genericRGB() -> NSColorSpace
  class func genericGray() -> NSColorSpace
  class func genericCMYK() -> NSColorSpace
  class func deviceRGB() -> NSColorSpace
  class func deviceGray() -> NSColorSpace
  class func deviceCMYK() -> NSColorSpace
  @available(OSX 10.5, *)
  class func sRGB() -> NSColorSpace
  @available(OSX 10.6, *)
  class func genericGamma22Gray() -> NSColorSpace
  @available(OSX 10.5, *)
  class func adobeRGB1998() -> NSColorSpace
  @available(OSX 10.6, *)
  class func availableColorSpacesWith(model: NSColorSpaceModel) -> [NSColorSpace]
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSColorWell : NSControl {
  func deactivate()
  func activate(exclusive: Bool)
  var isActive: Bool { get }
  func drawWellInside(insideRect: NSRect)
  var isBordered: Bool
  func takeColorFrom(sender: AnyObject?)
  @NSCopying var color: NSColor
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __cwFlags {
  var isActive: UInt32
  var isBordered: UInt32
  var cantDraw: UInt32
  var isNotContinuous: UInt32
  var refusesFR: UInt32
  var reservedColorWell: UInt32
  init()
  init(isActive: UInt32, isBordered: UInt32, cantDraw: UInt32, isNotContinuous: UInt32, refusesFR: UInt32, reservedColorWell: UInt32)
}
let NSComboBoxWillPopUpNotification: String
let NSComboBoxWillDismissNotification: String
let NSComboBoxSelectionDidChangeNotification: String
let NSComboBoxSelectionIsChangingNotification: String
class NSComboBox : NSTextField {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var isButtonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItemAt(index: Int)
  func deselectItemAt(index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func delegate() -> NSComboBoxDelegate?
  func setDelegate(anObject: NSComboBoxDelegate?)
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxDataSource?
  func addItemWithObjectValue(object: AnyObject)
  func addItemsWithObjectValues(objects: [AnyObject])
  func insertItemWithObjectValue(object: AnyObject, at index: Int)
  func removeItemWithObjectValue(object: AnyObject)
  func removeItemAt(index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(object: AnyObject?)
  func itemObjectValueAt(index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSComboBoxDataSource : NSObjectProtocol {
  optional func numberOfItemsIn(aComboBox: NSComboBox) -> Int
  optional func comboBox(aComboBox: NSComboBox, objectValueForItemAt index: Int) -> AnyObject
  optional func comboBox(aComboBox: NSComboBox, indexOfItemWithStringValue string: String) -> Int
  optional func comboBox(aComboBox: NSComboBox, completedString string: String) -> String?
}
protocol NSComboBoxDelegate : NSTextFieldDelegate {
  optional func comboBoxWillPopUp(notification: NSNotification)
  optional func comboBoxWillDismiss(notification: NSNotification)
  optional func comboBoxSelectionDidChange(notification: NSNotification)
  optional func comboBoxSelectionIsChanging(notification: NSNotification)
}
class NSComboBoxCell : NSTextFieldCell {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var isButtonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItemAt(index: Int)
  func deselectItemAt(index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func completedString(string: String) -> String?
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxCellDataSource?
  func addItemWithObjectValue(object: AnyObject)
  func addItemsWithObjectValues(objects: [AnyObject])
  func insertItemWithObjectValue(object: AnyObject, at index: Int)
  func removeItemWithObjectValue(object: AnyObject)
  func removeItemAt(index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(object: AnyObject?)
  func itemObjectValueAt(index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __cbcFlags {
  var usesDataSource: UInt32
  var completes: UInt32
  var buttonBordered: UInt32
  var popUpIsUp: UInt32
  var filteringEvents: UInt32
  var drawing: UInt32
  var synchronizingSelection: UInt32
  var reserved: UInt32
  var visibleItems: UInt32
  init()
  init(usesDataSource: UInt32, completes: UInt32, buttonBordered: UInt32, popUpIsUp: UInt32, filteringEvents: UInt32, drawing: UInt32, synchronizingSelection: UInt32, reserved: UInt32, visibleItems: UInt32)
}
protocol NSComboBoxCellDataSource : NSObjectProtocol {
  optional func numberOfItemsIn(comboBoxCell: NSComboBoxCell) -> Int
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, objectValueForItemAt index: Int) -> AnyObject
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, indexOfItemWithStringValue string: String) -> Int
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, completedString uncompletedString: String) -> String?
}
class NSControl : NSView {
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var ignoresMultiClick: Bool
  var continuous: Bool
  var isEnabled: Bool
  var refusesFirstResponder: Bool
  @available(OSX 10.10, *)
  var isHighlighted: Bool
  @available(OSX 10.10, *)
  var controlSize: NSControlSize
  var formatter: NSFormatter?
  var stringValue: String
  @NSCopying var attributedStringValue: NSAttributedString
  @NSCopying var objectValue: AnyObject?
  var intValue: Int32
  var integerValue: Int
  var floatValue: Float
  var doubleValue: Double
  @available(OSX 10.10, *)
  func sizeThatFits(size: NSSize) -> NSSize
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  func sizeToFit()
  func sendActionOn(mask: Int) -> Int
  func sendAction(theAction: Selector, to theTarget: AnyObject?) -> Bool
  func takeIntValueFrom(sender: AnyObject?)
  func takeFloatValueFrom(sender: AnyObject?)
  func takeDoubleValueFrom(sender: AnyObject?)
  func takeStringValueFrom(sender: AnyObject?)
  func takeObjectValueFrom(sender: AnyObject?)
  @available(OSX 10.5, *)
  func takeIntegerValueFrom(sender: AnyObject?)
  func mouseDown(theEvent: NSEvent)
  convenience init()
}
struct __conFlags {
  var enabled: UInt32
  var ignoreMultiClick: UInt32
  var calcSize: UInt32
  var drawingAncestor: UInt32
  var ibReserved: UInt32
  var updateCellFocus: UInt32
  var allowsLogicalLayoutDirection: UInt32
  var asmlwidth: UInt32
  var hsmlwidth: UInt32
  var dontValidate: UInt32
  var reserved: UInt32
  init()
  init(enabled: UInt32, ignoreMultiClick: UInt32, calcSize: UInt32, drawingAncestor: UInt32, ibReserved: UInt32, updateCellFocus: UInt32, allowsLogicalLayoutDirection: UInt32, asmlwidth: UInt32, hsmlwidth: UInt32, dontValidate: UInt32, reserved: UInt32)
}
extension NSControl {
  func performClick(sender: AnyObject?)
}
extension NSControl {
  var alignment: NSTextAlignment
  @NSCopying var font: NSFont?
  @available(OSX 10.10, *)
  var lineBreakMode: NSLineBreakMode
  @available(OSX 10.10, *)
  var usesSingleLineMode: Bool
  var baseWritingDirection: NSWritingDirection
  @available(OSX 10.8, *)
  var allowsExpansionToolTips: Bool
  @available(OSX 10.10, *)
  func expansionFrameWithFrame(contentFrame: NSRect) -> NSRect
  @available(OSX 10.10, *)
  func drawWithExpansionFrame(contentFrame: NSRect, in view: NSView)
}
extension NSControl {
  func currentEditor() -> NSText?
  func abortEditing() -> Bool
  func validateEditing()
  @available(OSX 10.10, *)
  func editWithFrame(aRect: NSRect, editor textObj: NSText, delegate anObject: AnyObject?, event theEvent: NSEvent)
  @available(OSX 10.10, *)
  func selectWithFrame(aRect: NSRect, editor textObj: NSText, delegate anObject: AnyObject?, start selStart: Int, length selLength: Int)
  @available(OSX 10.10, *)
  func endEditing(textObj: NSText)
}
extension NSObject {
  class func controlTextDidBeginEditing(obj: NSNotification)
  func controlTextDidBeginEditing(obj: NSNotification)
  class func controlTextDidEndEditing(obj: NSNotification)
  func controlTextDidEndEditing(obj: NSNotification)
  class func controlTextDidChange(obj: NSNotification)
  func controlTextDidChange(obj: NSNotification)
}
protocol NSControlTextEditingDelegate : NSObjectProtocol {
  optional func control(control: NSControl, textShouldBeginEditing fieldEditor: NSText) -> Bool
  optional func control(control: NSControl, textShouldEndEditing fieldEditor: NSText) -> Bool
  optional func control(control: NSControl, didFailToFormatString string: String, errorDescription error: String?) -> Bool
  optional func control(control: NSControl, didFailToValidatePartialString string: String, errorDescription error: String?)
  optional func control(control: NSControl, isValidObject obj: AnyObject) -> Bool
  optional func control(control: NSControl, textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  optional func control(control: NSControl, textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
}
let NSControlTextDidBeginEditingNotification: String
let NSControlTextDidEndEditingNotification: String
let NSControlTextDidChangeNotification: String
extension NSControl {
  class func setCellClass(factoryId: AnyClass?)
  class func cellClass() -> AnyClass?
  var cell: NSCell?
  func selectedCell() -> NSCell?
  func selectedTag() -> Int
  func setNeedsDisplay()
  func calcSize()
  func updateCell(aCell: NSCell)
  func updateCellInside(aCell: NSCell)
  func drawCellInside(aCell: NSCell)
  func drawCell(aCell: NSCell)
  func selectCell(aCell: NSCell)
}
class NSController : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  func objectDidBeginEditing(editor: AnyObject)
  func objectDidEndEditing(editor: AnyObject)
  func discardEditing()
  func commitEditing() -> Bool
  func commitEditingWithDelegate(delegate: AnyObject?, didCommit didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var isEditing: Bool { get }
  func encodeWith(aCoder: NSCoder)
}
struct __bindingsControllerFlags {
  var _alwaysPresentsApplicationModalAlerts: UInt32
  var _refreshesAllModelKeys: UInt32
  var _multipleObservedModelObjects: UInt32
  var _isEditing: UInt32
  var _reservedController: UInt32
  init()
  init(_alwaysPresentsApplicationModalAlerts: UInt32, _refreshesAllModelKeys: UInt32, _multipleObservedModelObjects: UInt32, _isEditing: UInt32, _reservedController: UInt32)
}
var NSAppKitVersionNumberWithCursorSizeSupport: Double { get }
class NSCursor : NSObject, NSCoding {
  class func current() -> NSCursor
  @available(OSX 10.6, *)
  class func currentSystem() -> NSCursor?
  class func arrow() -> NSCursor
  class func iBeam() -> NSCursor
  class func pointingHand() -> NSCursor
  class func closedHand() -> NSCursor
  class func openHand() -> NSCursor
  class func resizeLeft() -> NSCursor
  class func resizeRight() -> NSCursor
  class func resizeLeftRight() -> NSCursor
  class func resizeUp() -> NSCursor
  class func resizeDown() -> NSCursor
  class func resizeUpDown() -> NSCursor
  class func crosshair() -> NSCursor
  class func disappearingItem() -> NSCursor
  @available(OSX 10.5, *)
  class func operationNotAllowed() -> NSCursor
  @available(OSX 10.6, *)
  class func dragLink() -> NSCursor
  @available(OSX 10.6, *)
  class func dragCopy() -> NSCursor
  @available(OSX 10.6, *)
  class func contextualMenu() -> NSCursor
  @available(OSX 10.7, *)
  class func iBeamCursorForVerticalLayout() -> NSCursor
  init(image newImage: NSImage, hotSpot aPoint: NSPoint)
  convenience init(image newImage: NSImage, foregroundColorHint fg: NSColor?, backgroundColorHint bg: NSColor?, hotSpot: NSPoint)
  class func hide()
  class func unhide()
  class func setHiddenUntilMouseMoves(flag: Bool)
  class func pop()
  var image: NSImage { get }
  var hotSpot: NSPoint { get }
  func push()
  func pop()
  func set()
  func setOnMouseExited(flag: Bool)
  func setOnMouseEntered(flag: Bool)
  var isSetOnMouseExited: Bool { get }
  var isSetOnMouseEntered: Bool { get }
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  convenience init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSCursor : _Reflectable {
  func _getMirror() -> _MirrorType
}
struct _cursorFlags {
  var onMouseExited: UInt32
  var onMouseEntered: UInt32
  var cursorType: UInt32
  init()
  init(onMouseExited: UInt32, onMouseEntered: UInt32, cursorType: UInt32)
}
class NSCustomImageRep : NSImageRep {
  @available(OSX 10.8, *)
  init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (NSRect) -> Bool)
  @available(OSX 10.8, *)
  var drawingHandler: ((NSRect) -> Bool)? { get }
  init(draw aMethod: Selector, delegate anObject: AnyObject)
  var drawSelector: Selector { get }
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject? { get }
  init()
  init?(coder: NSCoder)
}
@available(OSX 10.11, *)
class NSDataAsset : NSObject, NSCopying {

  /// Equivalent to -initWithName:name bundle:[NSBundle mainBundle];
  convenience init?(name: String)

  /// Create a data asset with the given name from the given bundle. Returns nil if the asset was not found.
  init?(name: String, bundle: NSBundle)

  /// The name used to reference the data asset
  var name: String { get }

  /// The data for this asset, as stored in the asset catalog
  @NSCopying var data: NSData { get }

  /// The Uniform Type Identifier for this data object.
  var typeIdentifier: String { get }
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class NSDatePicker : NSControl {
  var datePickerStyle: NSDatePickerStyle
  var isBezeled: Bool
  var isBordered: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: NSCalendar?
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone?
  @NSCopying var dateValue: NSDate
  var timeInterval: NSTimeInterval
  @NSCopying var minDate: NSDate?
  @NSCopying var maxDate: NSDate?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
enum NSDatePickerStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TextFieldAndStepperDatePickerStyle
  case ClockAndCalendarDatePickerStyle
  case TextFieldDatePickerStyle
}
enum NSDatePickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SingleDateMode
  case RangeDateMode
}
struct NSDatePickerElementFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var HourMinuteDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var HourMinuteSecondDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var TimeZoneDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDayDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var EraDatePickerElementFlag: NSDatePickerElementFlags { get }
}
class NSDatePickerCell : NSActionCell {
  var datePickerStyle: NSDatePickerStyle
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: NSCalendar?
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone?
  @NSCopying var dateValue: NSDate
  var timeInterval: NSTimeInterval
  @NSCopying var minDate: NSDate?
  @NSCopying var maxDate: NSDate?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __dateCellFlags {
  var elements: UInt32
  var controlStyle: UInt32
  var controlMode: UInt32
  var trackingHand: UInt32
  var reserved2: UInt32
  var drawsBackground: UInt32
  var digitsEntered: UInt32
  var forcesLeadingZeroes: UInt32
  var wrapsDateComponentArithmetic: UInt32
  init()
  init(elements: UInt32, controlStyle: UInt32, controlMode: UInt32, trackingHand: UInt32, reserved2: UInt32, drawsBackground: UInt32, digitsEntered: UInt32, forcesLeadingZeroes: UInt32, wrapsDateComponentArithmetic: UInt32)
}
protocol NSDatePickerCellDelegate : NSObjectProtocol {
  optional func datePickerCell(aDatePickerCell: NSDatePickerCell, validateProposedDateValue proposedDateValue: AutoreleasingUnsafeMutablePointer<NSDate?>, timeInterval proposedTimeInterval: UnsafeMutablePointer<NSTimeInterval>)
}
@available(OSX 10.11, *)
class NSDictionaryControllerKeyValuePair : NSObject {
  var key: String?
  var value: AnyObject?
  var localizedKey: String?
  var isExplicitlyIncluded: Bool { get }
}
@available(OSX 10.5, *)
class NSDictionaryController : NSArrayController {
  func newObject() -> NSDictionaryControllerKeyValuePair
  var initialKey: String
  var initialValue: AnyObject
  var includedKeys: [String]
  var excludedKeys: [String]
  var localizedKeyDictionary: [String : String]
  var localizedKeyTable: String?
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __dictionaryControllerFlags {
  var _deepCopiesValues: UInt32
  var _suppressBuildingDictionary: UInt32
  var _reservedDictionaryController: UInt32
  init()
  init(_deepCopiesValues: UInt32, _suppressBuildingDictionary: UInt32, _reservedDictionaryController: UInt32)
}
var NSAppKitVersionNumberWithDockTilePlugInSupport: Double { get }
@available(OSX 10.5, *)
class NSDockTile : NSObject {
  var size: NSSize { get }
  var contentView: NSView?
  func display()
  var showsApplicationBadge: Bool
  var badgeLabel: String?
  unowned(unsafe) var owner: @sil_unmanaged AnyObject { get }
  init()
}
protocol NSDockTilePlugIn : NSObjectProtocol {
  @available(OSX 10.5, *)
  func setDockTile(dockTile: NSDockTile?)
  optional func dockMenu() -> NSMenu?
}
enum NSDocumentChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ChangeDone
  case ChangeUndone
  @available(OSX 10.5, *)
  case ChangeRedone
  case ChangeCleared
  case ChangeReadOtherContents
  case ChangeAutosaved
  @available(OSX 10.7, *)
  case ChangeDiscardable
}
enum NSSaveOperationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SaveOperation
  case SaveAsOperation
  case SaveToOperation
  @available(OSX 10.7, *)
  case AutosaveInPlaceOperation
  @available(OSX 10.7, *)
  case AutosaveElsewhereOperation
  @available(OSX 10.8, *)
  case AutosaveAsOperation
}
class NSDocument : NSObject, NSFilePresenter, NSUserInterfaceValidations {
  init()
  convenience init(type typeName: String) throws
  @available(OSX 10.6, *)
  class func canConcurrentlyReadDocumentsOfType(typeName: String) -> Bool
  convenience init(contentsOf url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws
  var fileType: String?
  @NSCopying var fileURL: NSURL?
  @NSCopying var fileModificationDate: NSDate?
  @available(OSX 10.8, *)
  var isDraft: Bool
  @available(OSX 10.7, *)
  func performActivityWithSynchronousWaiting(waitSynchronously: Bool, usingBlock block: (() -> Void) -> Void)
  @available(OSX 10.7, *)
  func continueActivityUsing(block: () -> Void)
  @available(OSX 10.7, *)
  func continueAsynchronousWorkOnMainThreadUsing(block: () -> Void)
  @available(OSX 10.7, *)
  func performSynchronousFileAccessUsing(block: () -> Void)
  @available(OSX 10.7, *)
  func performAsynchronousFileAccessUsing(block: (() -> Void) -> Void)
  @IBAction func revertDocumentToSaved(sender: AnyObject?)
  func revertToContentsOf(url: NSURL, ofType typeName: String) throws
  func readFrom(url: NSURL, ofType typeName: String) throws
  func readFrom(fileWrapper: NSFileWrapper, ofType typeName: String) throws
  func readFrom(data: NSData, ofType typeName: String) throws
  @available(OSX 10.7, *)
  var isEntireFileLoaded: Bool { get }
  func writeTo(url: NSURL, ofType typeName: String) throws
  func fileWrapperOfType(typeName: String) throws -> NSFileWrapper
  func dataOfType(typeName: String) throws -> NSData
  @available(OSX 10.7, *)
  func unblockUserInteraction()
  @available(OSX 10.7, *)
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafelyTo(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) throws
  func writeTo(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func fileAttributesToWriteTo(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws -> [String : AnyObject]
  var isKeepBackupFile: Bool { get }
  @available(OSX 10.8, *)
  @NSCopying var backupFileURL: NSURL? { get }
  @IBAction func saveDocument(sender: AnyObject?)
  @IBAction func saveDocumentAs(sender: AnyObject?)
  @IBAction func saveDocumentTo(sender: AnyObject?)
  func saveDocumentWithDelegate(delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalSavePanelFor(saveOperation: NSSaveOperationType, delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepare(savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func saveTo(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, delegate: AnyObject?, didSave didSaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func saveTo(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  func canAsynchronouslyWriteTo(url: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType) -> Bool
  @available(OSX 10.7, *)
  func checkAutosavingSafety() throws
  @available(OSX 10.7, *)
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosaveDocumentWithDelegate(delegate: AnyObject?, didAutosaveSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func autosaveWithImplicitCancellability(autosavingIsImplicitlyCancellable: Bool, completionHandler: (NSError?) -> Void)
  @available(OSX 10.7, *)
  class func autosavesInPlace() -> Bool
  @available(OSX 10.7, *)
  class func preservesVersions() -> Bool
  @available(OSX 10.8, *)
  @IBAction func browseDocumentVersions(sender: AnyObject?)
  @available(OSX 10.8, *)
  class func autosavesDrafts() -> Bool
  var autosavingFileType: String? { get }
  @NSCopying var autosavedContentsFileURL: NSURL?
  func canCloseDocumentWithDelegate(delegate: AnyObject, shouldClose shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func close()
  @available(OSX 10.7, *)
  @IBAction func duplicateDocument(sender: AnyObject?)
  @available(OSX 10.7, *)
  func duplicateDocumentWithDelegate(delegate: AnyObject?, didDuplicate didDuplicateSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicate() throws -> NSDocument
  @available(OSX 10.8, *)
  @IBAction func renameDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveDocumentToUbiquityContainer(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func moveDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  func moveDocument(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func moveTo(url: NSURL, completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  @IBAction func lockDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  @IBAction func unlockDocument(sender: AnyObject?)
  @available(OSX 10.8, *)
  func lockDocument(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func lock(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  func unlockDocument(completionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(OSX 10.8, *)
  func unlock(completionHandler completionHandler: ((NSError?) -> Void)? = nil)
  @available(OSX 10.8, *)
  var isLocked: Bool { get }
  @IBAction func runPageLayout(sender: AnyObject?)
  func runModalPageLayoutWith(printInfo: NSPrintInfo, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func prepare(pageLayout: NSPageLayout) -> Bool
  func shouldChangePrintInfo(newPrintInfo: NSPrintInfo) -> Bool
  @NSCopying var printInfo: NSPrintInfo
  @IBAction func printDocument(sender: AnyObject?)
  func printDocumentWithSettings(printSettings: [String : AnyObject], showPrintPanel: Bool, delegate: AnyObject?, didPrint didPrintSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func printOperationWithSettings(printSettings: [String : AnyObject]) throws -> NSPrintOperation
  func runModalPrintOperation(printOperation: NSPrintOperation, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.9, *)
  @IBAction func saveDocumentToPDF(sender: AnyObject?)
  @available(OSX 10.9, *)
  var pdfPrintOperation: NSPrintOperation { get }
  var isDocumentEdited: Bool { get }
  @available(OSX 10.7, *)
  var isInViewingMode: Bool { get }
  func updateChangeCount(change: NSDocumentChangeType)
  @available(OSX 10.7, *)
  func changeCountTokenFor(saveOperation: NSSaveOperationType) -> AnyObject
  @available(OSX 10.7, *)
  func updateChangeCountWithToken(changeCountToken: AnyObject, forSaveOperation saveOperation: NSSaveOperationType)
  var undoManager: NSUndoManager?
  var hasUndoManager: Bool
  func present(error: NSError, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func present(error: NSError) -> Bool
  func willPresent(error: NSError) -> NSError
  @available(OSX 10.7, *)
  func willNotPresent(error: NSError)
  func makeWindowControllers()
  var windowNibName: String? { get }
  func windowControllerWillLoadNib(windowController: NSWindowController)
  func windowControllerDidLoadNib(windowController: NSWindowController)
  func setWindow(window: NSWindow?)
  func addWindowController(windowController: NSWindowController)
  func removeWindowController(windowController: NSWindowController)
  func showWindows()
  var windowControllers: [NSWindowController] { get }
  func shouldCloseWindowController(windowController: NSWindowController, delegate: AnyObject?, shouldClose shouldCloseSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func setDisplayName(displayNameOrNil: String?)
  var displayName: String { get }
  @available(OSX 10.8, *)
  func defaultDraftName() -> String
  var windowForSheet: NSWindow? { get }
  class func readableTypes() -> [String]
  class func writableTypes() -> [String]
  class func isNativeType(type: String) -> Bool
  func writableTypesFor(saveOperation: NSSaveOperationType) -> [String]
  @available(OSX 10.5, *)
  func fileNameExtensionForType(typeName: String, saveOperation: NSSaveOperationType) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  @available(OSX 10.8, *)
  class func usesUbiquitousStorage() -> Bool
  @NSCopying var presentedItemURL: NSURL? { get }
  @available(OSX 10.5, *)
  var presentedItemOperationQueue: NSOperationQueue { get }
  @available(OSX 10.8, *)
  @NSCopying var primaryPresentedItemURL: NSURL? { get }
  func relinquishPresentedItemToReader(reader: ((() -> Void)?) -> Void)
  func relinquishPresentedItemToWriter(writer: ((() -> Void)?) -> Void)
  func savePresentedItemChangesWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func accommodatePresentedItemDeletionWithCompletionHandler(completionHandler: (NSError?) -> Void)
  func presentedItemDidMoveTo(newURL: NSURL)
  func presentedItemDidChange()
  @available(OSX 10.7, *)
  func presentedItemDidGainVersion(version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidLose(version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedItemDidResolveConflictVersion(version: NSFileVersion)
  func accommodatePresentedSubitemDeletionAt(url: NSURL, completionHandler: (NSError?) -> Void)
  func presentedSubitemDidAppearAt(url: NSURL)
  func presentedSubitemAt(oldURL: NSURL, didMoveTo newURL: NSURL)
  func presentedSubitemDidChangeAt(url: NSURL)
  @available(OSX 10.7, *)
  func presentedSubitemAt(url: NSURL, didGainVersion version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAt(url: NSURL, didLose version: NSFileVersion)
  @available(OSX 10.7, *)
  func presentedSubitemAt(url: NSURL, didResolveConflictVersion version: NSFileVersion)
}
struct __docFlags {
  var inClose: UInt32
  var hasUndoManager: UInt32
  var unused: UInt32
  var reconciledToFileName: UInt32
  var checkingDisplayName: UInt32
  var hasInvalidRestorableState: UInt32
  var hasEverHadInvalidRestorableState: UInt32
  var RESERVED: UInt32
  init()
  init(inClose: UInt32, hasUndoManager: UInt32, unused: UInt32, reconciledToFileName: UInt32, checkingDisplayName: UInt32, hasInvalidRestorableState: UInt32, hasEverHadInvalidRestorableState: UInt32, RESERVED: UInt32)
}
extension NSDocument {
}
class NSDocumentController : NSObject, NSCoding, NSUserInterfaceValidations {
  class func shared() -> NSDocumentController
  init()
  init?(coder: NSCoder)
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func documentFor(url: NSURL) -> NSDocument?
  func documentFor(window: NSWindow) -> NSDocument?
  func addDocument(document: NSDocument)
  func removeDocument(document: NSDocument)
  @IBAction func newDocument(sender: AnyObject?)
  func openUntitledDocumentAndDisplay(displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocumentOfType(typeName: String) throws -> NSDocument
  @IBAction func openDocument(sender: AnyObject?)
  func urLsFromRunningOpenPanel() -> [NSURL]?
  func runModalOpenPanel(openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(OSX 10.8, *)
  func beginOpenPanelWithCompletionHandler(completionHandler: ([NSURL]?) -> Void)
  @available(OSX 10.8, *)
  func begin(openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: (Int) -> Void)
  @available(OSX 10.7, *)
  func openDocumentWithContentsOf(url: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentWithContentsOf(url: NSURL, ofType typeName: String) throws -> NSDocument
  @available(OSX 10.7, *)
  func reopenDocumentFor(urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, display displayDocument: Bool, completionHandler: (NSDocument?, Bool, NSError?) -> Void)
  func makeDocumentFor(urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: NSTimeInterval
  @IBAction func saveAllDocuments(sender: AnyObject?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocumentsWithAlertTitle(title: String?, cancellable: Bool, delegate: AnyObject?, didReviewAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func closeAllDocumentsWithDelegate(delegate: AnyObject?, didCloseAllSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  func duplicateDocumentWithContentsOf(url: NSURL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  func present(error: NSError, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func present(error: NSError) -> Bool
  func willPresent(error: NSError) -> NSError
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(sender: AnyObject?)
  func noteNewRecentDocument(document: NSDocument)
  func noteNewRecentDocumentURL(url: NSURL)
  var recentDocumentURLs: [NSURL] { get }
  var defaultType: String? { get }
  func typeForContentsOf(url: NSURL) throws -> String
  var documentClassNames: [String] { get }
  func documentClassForType(typeName: String) -> AnyClass?
  func displayNameForType(typeName: String) -> String?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func encodeWith(aCoder: NSCoder)
}
extension NSDocumentController {
}
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSave(command: NSScriptCommand) -> AnyObject?
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrint(command: NSScriptCommand) -> AnyObject?
  var objectSpecifier: NSScriptObjectSpecifier { get }
}
struct NSDragOperation : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSDragOperation { get }
  static var Copy: NSDragOperation { get }
  static var Link: NSDragOperation { get }
  static var Generic: NSDragOperation { get }
  static var Private: NSDragOperation { get }
  static var Move: NSDragOperation { get }
  static var Delete: NSDragOperation { get }
  static var Every: NSDragOperation { get }
  @available(OSX, introduced=10.0, deprecated=10.10)
  static var All_Obsolete: NSDragOperation { get }
  @available(OSX, introduced=10.0, deprecated=10.10)
  static var All: NSDragOperation { get }
}
@available(OSX 10.7, *)
enum NSDraggingFormation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case Pile
  case List
  case Stack
}
@available(OSX 10.7, *)
enum NSDraggingContext : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OutsideApplication
  case WithinApplication
}
@available(OSX 10.7, *)
struct NSDraggingItemEnumerationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Concurrent: NSDraggingItemEnumerationOptions { get }
  static var ClearNonenumeratedImages: NSDraggingItemEnumerationOptions { get }
}
@available(OSX 10.11, *)
enum NSSpringLoadingHighlight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Standard
  case Emphasized
}
protocol NSDraggingInfo : NSObjectProtocol {
  func draggingDestinationWindow() -> NSWindow?
  func draggingSourceOperationMask() -> NSDragOperation
  func draggingLocation() -> NSPoint
  func draggedImageLocation() -> NSPoint
  func draggedImage() -> NSImage?
  func draggingPasteboard() -> NSPasteboard
  func draggingSource() -> AnyObject?
  func draggingSequenceNumber() -> Int
  func slideDraggedImageTo(screenPoint: NSPoint)
  func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
  @available(OSX 10.7, *)
  var draggingFormation: NSDraggingFormation { get set }
  @available(OSX 10.7, *)
  var animatesToDestination: Bool { get set }
  @available(OSX 10.7, *)
  var numberOfValidItemsForDrop: Int { get set }
  @available(OSX 10.7, *)
  func enumerateDraggingItems(options enumOpts: NSDraggingItemEnumerationOptions = [], forView view: NSView, classes classArray: [AnyClass], searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  var springLoadingHighlight: NSSpringLoadingHighlight { get }
  @available(OSX 10.11, *)
  func resetSpringLoading()
}
protocol NSDraggingDestination : NSObjectProtocol {
  optional func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  optional func draggingExited(sender: NSDraggingInfo?)
  optional func prepareForDragOperation(sender: NSDraggingInfo) -> Bool
  optional func performDragOperation(sender: NSDraggingInfo) -> Bool
  optional func concludeDragOperation(sender: NSDraggingInfo?)
  optional func draggingEnded(sender: NSDraggingInfo?)
  optional func wantsPeriodicDraggingUpdates() -> Bool
  @available(OSX 10.7, *)
  optional func updateDraggingItemsForDrag(sender: NSDraggingInfo?)
}
protocol NSDraggingSource : NSObjectProtocol {
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  optional func draggingSession(session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
}
@available(OSX 10.11, *)
struct NSSpringLoadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Disabled: NSSpringLoadingOptions { get }
  static var Enabled: NSSpringLoadingOptions { get }
  static var ContinuousActivation: NSSpringLoadingOptions { get }
  static var NoHover: NSSpringLoadingOptions { get }
}
protocol NSSpringLoadingDestination : NSObjectProtocol {
  @available(OSX 10.11, *)
  func springLoadingActivated(activated: Bool, draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  func springLoadingHighlightChanged(draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func springLoadingEntered(draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(OSX 10.11, *)
  optional func springLoadingUpdated(draggingInfo: NSDraggingInfo) -> NSSpringLoadingOptions
  @available(OSX 10.11, *)
  optional func springLoadingExited(draggingInfo: NSDraggingInfo)
  @available(OSX 10.11, *)
  optional func draggingEnded(draggingInfo: NSDraggingInfo)
}
extension NSObject {
  class func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
  func namesOfPromisedFilesDroppedAtDestination(dropDestination: NSURL) -> [String]?
}
@available(OSX 10.7, *)
let NSDraggingImageComponentIconKey: String
@available(OSX 10.7, *)
let NSDraggingImageComponentLabelKey: String
@available(OSX 10.7, *)
class NSDraggingImageComponent : NSObject {
  init(key: String)
  var key: String
  var contents: AnyObject?
  var frame: NSRect
  convenience init()
}
@available(OSX 10.7, *)
class NSDraggingItem : NSObject {
  init(pasteboardWriter: NSPasteboardWriting)
  var item: AnyObject { get }
  var draggingFrame: NSRect
  var imageComponentsProvider: (() -> [NSDraggingImageComponent])?
  func setDraggingFrame(frame: NSRect, contents: AnyObject)
  var imageComponents: [NSDraggingImageComponent]? { get }
  convenience init()
}
@available(OSX 10.7, *)
class NSDraggingSession : NSObject {
  var draggingFormation: NSDraggingFormation
  var animatesToStartingPositionsOnCancelOrFail: Bool
  var draggingLeaderIndex: Int
  var draggingPasteboard: NSPasteboard { get }
  var draggingSequenceNumber: Int { get }
  var draggingLocation: NSPoint { get }
  func enumerateDraggingItems(options enumOpts: NSDraggingItemEnumerationOptions = [], forView view: NSView?, classes classArray: [AnyClass], searchOptions: [String : AnyObject], usingBlock block: (NSDraggingItem, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
}
enum NSDrawerState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ClosedState
  case OpeningState
  case OpenState
  case ClosingState
}
class NSDrawer : NSResponder, NSAccessibilityElementProtocol, NSAccessibility {
  init(contentSize: NSSize, preferredEdge edge: NSRectEdge)
  unowned(unsafe) var parentWindow: @sil_unmanaged NSWindow?
  var contentView: NSView?
  var preferredEdge: NSRectEdge
  unowned(unsafe) var delegate: @sil_unmanaged NSDrawerDelegate?
  func open()
  func openOn(edge: NSRectEdge)
  func close()
  func open(sender: AnyObject?)
  func close(sender: AnyObject?)
  func toggle(sender: AnyObject?)
  var state: Int { get }
  var edge: NSRectEdge { get }
  var contentSize: NSSize
  var minContentSize: NSSize
  var maxContentSize: NSSize
  var leadingOffset: CGFloat
  var trailingOffset: CGFloat
  init()
  init?(coder: NSCoder)
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
extension NSWindow {
  var drawers: [NSDrawer]? { get }
}
protocol NSDrawerDelegate : NSObjectProtocol {
  optional func drawerShouldOpen(sender: NSDrawer) -> Bool
  optional func drawerShouldClose(sender: NSDrawer) -> Bool
  optional func drawerWillResizeContents(sender: NSDrawer, to contentSize: NSSize) -> NSSize
  optional func drawerWillOpen(notification: NSNotification)
  optional func drawerDidOpen(notification: NSNotification)
  optional func drawerWillClose(notification: NSNotification)
  optional func drawerDidClose(notification: NSNotification)
}
let NSDrawerWillOpenNotification: String
let NSDrawerDidOpenNotification: String
let NSDrawerWillCloseNotification: String
let NSDrawerDidCloseNotification: String
class NSEPSImageRep : NSImageRep {
  init?(data epsData: NSData)
  @available(OSX, introduced=10.0, deprecated=10.10)
  func prepareGState()
  @NSCopying var epsRepresentation: NSData { get }
  var boundingBox: NSRect { get }
  init()
  init?(coder: NSCoder)
}
let NSTextLineTooLongException: String
let NSTextNoSelectionException: String
let NSWordTablesWriteException: String
let NSWordTablesReadException: String
let NSTextReadException: String
let NSTextWriteException: String
let NSPasteboardCommunicationException: String
let NSPrintingCommunicationException: String
let NSAbortModalException: String
let NSAbortPrintingException: String
let NSIllegalSelectorException: String
let NSAppKitVirtualMemoryException: String
let NSBadRTFDirectiveException: String
let NSBadRTFFontTableException: String
let NSBadRTFStyleSheetException: String
let NSTypedStreamVersionException: String
let NSTIFFException: String
let NSPrintPackageException: String
let NSBadRTFColorTableException: String
let NSDraggingException: String
let NSColorListIOException: String
let NSColorListNotEditableException: String
let NSBadBitmapParametersException: String
let NSWindowServerCommunicationException: String
let NSFontUnavailableException: String
let NSPPDIncludeNotFoundException: String
let NSPPDParseException: String
let NSPPDIncludeStackOverflowException: String
let NSPPDIncludeStackUnderflowException: String
let NSRTFPropertyStackOverflowException: String
let NSAppKitIgnoredException: String
let NSBadComparisonException: String
let NSImageCacheException: String
let NSNibLoadingException: String
let NSBrowserIllegalDelegateException: String
@available(OSX, introduced=10.1, deprecated=10.11, message="Exceptions are no longer appropriate for indicating errors in accessibility API. Unexpected values should be handled through appropriate type checking.")
let NSAccessibilityException: String
enum NSEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LeftMouseDown
  case LeftMouseUp
  case RightMouseDown
  case RightMouseUp
  case MouseMoved
  case LeftMouseDragged
  case RightMouseDragged
  case MouseEntered
  case MouseExited
  case KeyDown
  case KeyUp
  case FlagsChanged
  case AppKitDefined
  case SystemDefined
  case ApplicationDefined
  case Periodic
  case CursorUpdate
  case ScrollWheel
  case TabletPoint
  case TabletProximity
  case OtherMouseDown
  case OtherMouseUp
  case OtherMouseDragged
  @available(OSX 10.5, *)
  case EventTypeGesture
  @available(OSX 10.5, *)
  case EventTypeMagnify
  @available(OSX 10.5, *)
  case EventTypeSwipe
  @available(OSX 10.5, *)
  case EventTypeRotate
  @available(OSX 10.5, *)
  case EventTypeBeginGesture
  @available(OSX 10.5, *)
  case EventTypeEndGesture
  @available(OSX 10.8, *)
  case EventTypeSmartMagnify
  @available(OSX 10.8, *)
  case EventTypeQuickLook
  @available(OSX 10.10.3, *)
  case EventTypePressure
}
struct NSEventMask : OptionSetType {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var LeftMouseDownMask: NSEventMask { get }
  static var LeftMouseUpMask: NSEventMask { get }
  static var RightMouseDownMask: NSEventMask { get }
  static var RightMouseUpMask: NSEventMask { get }
  static var MouseMovedMask: NSEventMask { get }
  static var LeftMouseDraggedMask: NSEventMask { get }
  static var RightMouseDraggedMask: NSEventMask { get }
  static var MouseEnteredMask: NSEventMask { get }
  static var MouseExitedMask: NSEventMask { get }
  static var KeyDownMask: NSEventMask { get }
  static var KeyUpMask: NSEventMask { get }
  static var FlagsChangedMask: NSEventMask { get }
  static var AppKitDefinedMask: NSEventMask { get }
  static var SystemDefinedMask: NSEventMask { get }
  static var ApplicationDefinedMask: NSEventMask { get }
  static var PeriodicMask: NSEventMask { get }
  static var CursorUpdateMask: NSEventMask { get }
  static var ScrollWheelMask: NSEventMask { get }
  static var TabletPointMask: NSEventMask { get }
  static var TabletProximityMask: NSEventMask { get }
  static var OtherMouseDownMask: NSEventMask { get }
  static var OtherMouseUpMask: NSEventMask { get }
  static var OtherMouseDraggedMask: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskGesture: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskMagnify: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskSwipe: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskRotate: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskBeginGesture: NSEventMask { get }
  @available(OSX 10.5, *)
  static var EventMaskEndGesture: NSEventMask { get }
  @available(OSX 10.8, *)
  static var EventMaskSmartMagnify: NSEventMask { get }
  @available(OSX 10.10.3, *)
  static var EventMaskPressure: NSEventMask { get }
  static var AnyEventMask: NSEventMask { get }
}
func NSEventMaskFromType(type: NSEventType) -> NSEventMask
struct NSEventModifierFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlphaShiftKeyMask: NSEventModifierFlags { get }
  static var ShiftKeyMask: NSEventModifierFlags { get }
  static var ControlKeyMask: NSEventModifierFlags { get }
  static var AlternateKeyMask: NSEventModifierFlags { get }
  static var CommandKeyMask: NSEventModifierFlags { get }
  static var NumericPadKeyMask: NSEventModifierFlags { get }
  static var HelpKeyMask: NSEventModifierFlags { get }
  static var FunctionKeyMask: NSEventModifierFlags { get }
  static var DeviceIndependentModifierFlagsMask: NSEventModifierFlags { get }
}
enum NSPointingDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnknownPointingDevice
  case PenPointingDevice
  case CursorPointingDevice
  case EraserPointingDevice
}
struct NSEventButtonMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PenTipMask: NSEventButtonMask { get }
  static var PenLowerSideMask: NSEventButtonMask { get }
  static var PenUpperSideMask: NSEventButtonMask { get }
}
@available(OSX 10.7, *)
struct NSEventPhase : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSEventPhase { get }
  static var Began: NSEventPhase { get }
  static var Stationary: NSEventPhase { get }
  static var Changed: NSEventPhase { get }
  static var Ended: NSEventPhase { get }
  static var Cancelled: NSEventPhase { get }
  static var MayBegin: NSEventPhase { get }
}
@available(OSX 10.7, *)
enum NSEventGestureAxis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Horizontal
  case Vertical
}
@available(OSX 10.7, *)
struct NSEventSwipeTrackingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var LockDirection: NSEventSwipeTrackingOptions { get }
  static var ClampGestureAmount: NSEventSwipeTrackingOptions { get }
}
enum NSEventSubtype : Int16 {
  init?(rawValue: Int16)
  var rawValue: Int16 { get }
  case NSWindowExposedEventType
  case NSApplicationActivatedEventType
  case NSApplicationDeactivatedEventType
  case NSWindowMovedEventType
  case NSScreenChangedEventType
  case NSAWTEventType
  static var NSPowerOffEventType: NSEventSubtype { get }
  static var NSMouseEventSubtype: NSEventSubtype { get }
  static var NSTabletPointEventSubtype: NSEventSubtype { get }
  static var NSTabletProximityEventSubtype: NSEventSubtype { get }
  @available(OSX 10.6, *)
  case NSTouchEventSubtype
}
@available(OSX 10.10.3, *)
enum NSPressureBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case PrimaryDefault
  case PrimaryClick
  case PrimaryGeneric
  case PrimaryAccelerator
  case PrimaryDeepClick
  case PrimaryDeepDrag
}
class NSEvent : NSObject, NSCopying, NSCoding {
  var type: NSEventType { get }
  var modifierFlags: NSEventModifierFlags { get }
  var timestamp: NSTimeInterval { get }
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  var windowNumber: Int { get }
  var context: NSGraphicsContext? { get }
  var clickCount: Int { get }
  var buttonNumber: Int { get }
  var eventNumber: Int { get }
  var pressure: Float { get }
  var locationInWindow: NSPoint { get }
  var deltaX: CGFloat { get }
  var deltaY: CGFloat { get }
  var deltaZ: CGFloat { get }
  @available(OSX 10.7, *)
  var hasPreciseScrollingDeltas: Bool { get }
  @available(OSX 10.7, *)
  var scrollingDeltaX: CGFloat { get }
  @available(OSX 10.7, *)
  var scrollingDeltaY: CGFloat { get }
  @available(OSX 10.7, *)
  var momentumPhase: NSEventPhase { get }
  @available(OSX 10.7, *)
  var isDirectionInvertedFromDevice: Bool { get }
  var characters: String? { get }
  var charactersIgnoringModifiers: String? { get }
  var isARepeat: Bool { get }
  var keyCode: UInt16 { get }
  var trackingNumber: Int { get }
  var userData: UnsafeMutablePointer<Void> { get }
  @available(OSX 10.5, *)
  var trackingArea: NSTrackingArea? { get }
  var subtype: NSEventSubtype { get }
  var data1: Int { get }
  var data2: Int { get }
  @available(OSX 10.5, *)
  var eventRef: UnsafePointer<Void> { get }
  @available(OSX 10.5, *)
  /*not inherited*/ init?(eventRef: UnsafePointer<Void>)
  @available(OSX 10.5, *)
  var cgEvent: CGEvent? { get }
  @available(OSX 10.5, *)
  /*not inherited*/ init?(cgEvent: CGEvent)
  @available(OSX 10.5, *)
  class func setMouseCoalescingEnabled(flag: Bool)
  @available(OSX 10.5, *)
  class func isMouseCoalescingEnabled() -> Bool
  @available(OSX 10.5, *)
  var magnification: CGFloat { get }
  var deviceID: Int { get }
  var rotation: Float { get }
  var absoluteX: Int { get }
  var absoluteY: Int { get }
  var absoluteZ: Int { get }
  var buttonMask: NSEventButtonMask { get }
  var tilt: NSPoint { get }
  var tangentialPressure: Float { get }
  var vendorDefined: AnyObject { get }
  var vendorID: Int { get }
  var tabletID: Int { get }
  var pointingDeviceID: Int { get }
  var systemTabletID: Int { get }
  var vendorPointingDeviceType: Int { get }
  var pointingDeviceSerialNumber: Int { get }
  var uniqueID: UInt64 { get }
  var capabilityMask: Int { get }
  var pointingDeviceType: NSPointingDeviceType { get }
  var isEnteringProximity: Bool { get }
  @available(OSX 10.6, *)
  func touchesMatching(phase: NSTouchPhase, in view: NSView?) -> Set<NSTouch>
  @available(OSX 10.7, *)
  var phase: NSEventPhase { get }
  @available(OSX 10.10.3, *)
  var stage: Int { get }
  @available(OSX 10.10.3, *)
  var stageTransition: CGFloat { get }
  @available(OSX 10.10.3, *)
  var associatedEventsMask: NSEventMask { get }
  @available(OSX 10.11, *)
  var pressureBehavior: NSPressureBehavior { get }
  @available(OSX 10.7, *)
  class func isSwipeTrackingFromScrollEventsEnabled() -> Bool
  @available(OSX 10.7, *)
  func trackSwipeEvent(options options: NSEventSwipeTrackingOptions = [], dampenAmountThresholdMin minDampenThreshold: CGFloat, max maxDampenThreshold: CGFloat, usingHandler trackingHandler: (CGFloat, NSEventPhase, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  class func startPeriodicEventsAfterDelay(delay: NSTimeInterval, withPeriod period: NSTimeInterval)
  class func stopPeriodicEvents()
  class func mouseEventWith(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, eventNumber eNum: Int, clickCount cNum: Int, pressure: Float) -> NSEvent?
  class func keyEventWith(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, characters keys: String, charactersIgnoringModifiers ukeys: String, isARepeat flag: Bool, keyCode code: UInt16) -> NSEvent?
  class func enterExitEventWith(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, eventNumber eNum: Int, trackingNumber tNum: Int, userData data: UnsafeMutablePointer<Void>) -> NSEvent?
  class func otherEventWith(type: NSEventType, location: NSPoint, modifierFlags flags: NSEventModifierFlags, timestamp time: NSTimeInterval, windowNumber wNum: Int, context: NSGraphicsContext?, subtype: Int16, data1 d1: Int, data2 d2: Int) -> NSEvent?
  class func mouseLocation() -> NSPoint
  @available(OSX 10.6, *)
  class func modifierFlags() -> NSEventModifierFlags
  @available(OSX 10.6, *)
  class func pressedMouseButtons() -> Int
  @available(OSX 10.6, *)
  class func doubleClickInterval() -> NSTimeInterval
  @available(OSX 10.6, *)
  class func keyRepeatDelay() -> NSTimeInterval
  @available(OSX 10.6, *)
  class func keyRepeatInterval() -> NSTimeInterval
  @available(OSX 10.6, *)
  class func addGlobalMonitorForEventsMatching(mask: NSEventMask, handler block: (NSEvent) -> Void) -> AnyObject?
  @available(OSX 10.6, *)
  class func addLocalMonitorForEventsMatching(mask: NSEventMask, handler block: (NSEvent) -> NSEvent?) -> AnyObject?
  @available(OSX 10.6, *)
  class func removeMonitor(eventMonitor: AnyObject)
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var NSUpArrowFunctionKey: Int { get }
var NSDownArrowFunctionKey: Int { get }
var NSLeftArrowFunctionKey: Int { get }
var NSRightArrowFunctionKey: Int { get }
var NSF1FunctionKey: Int { get }
var NSF2FunctionKey: Int { get }
var NSF3FunctionKey: Int { get }
var NSF4FunctionKey: Int { get }
var NSF5FunctionKey: Int { get }
var NSF6FunctionKey: Int { get }
var NSF7FunctionKey: Int { get }
var NSF8FunctionKey: Int { get }
var NSF9FunctionKey: Int { get }
var NSF10FunctionKey: Int { get }
var NSF11FunctionKey: Int { get }
var NSF12FunctionKey: Int { get }
var NSF13FunctionKey: Int { get }
var NSF14FunctionKey: Int { get }
var NSF15FunctionKey: Int { get }
var NSF16FunctionKey: Int { get }
var NSF17FunctionKey: Int { get }
var NSF18FunctionKey: Int { get }
var NSF19FunctionKey: Int { get }
var NSF20FunctionKey: Int { get }
var NSF21FunctionKey: Int { get }
var NSF22FunctionKey: Int { get }
var NSF23FunctionKey: Int { get }
var NSF24FunctionKey: Int { get }
var NSF25FunctionKey: Int { get }
var NSF26FunctionKey: Int { get }
var NSF27FunctionKey: Int { get }
var NSF28FunctionKey: Int { get }
var NSF29FunctionKey: Int { get }
var NSF30FunctionKey: Int { get }
var NSF31FunctionKey: Int { get }
var NSF32FunctionKey: Int { get }
var NSF33FunctionKey: Int { get }
var NSF34FunctionKey: Int { get }
var NSF35FunctionKey: Int { get }
var NSInsertFunctionKey: Int { get }
var NSDeleteFunctionKey: Int { get }
var NSHomeFunctionKey: Int { get }
var NSBeginFunctionKey: Int { get }
var NSEndFunctionKey: Int { get }
var NSPageUpFunctionKey: Int { get }
var NSPageDownFunctionKey: Int { get }
var NSPrintScreenFunctionKey: Int { get }
var NSScrollLockFunctionKey: Int { get }
var NSPauseFunctionKey: Int { get }
var NSSysReqFunctionKey: Int { get }
var NSBreakFunctionKey: Int { get }
var NSResetFunctionKey: Int { get }
var NSStopFunctionKey: Int { get }
var NSMenuFunctionKey: Int { get }
var NSUserFunctionKey: Int { get }
var NSSystemFunctionKey: Int { get }
var NSPrintFunctionKey: Int { get }
var NSClearLineFunctionKey: Int { get }
var NSClearDisplayFunctionKey: Int { get }
var NSInsertLineFunctionKey: Int { get }
var NSDeleteLineFunctionKey: Int { get }
var NSInsertCharFunctionKey: Int { get }
var NSDeleteCharFunctionKey: Int { get }
var NSPrevFunctionKey: Int { get }
var NSNextFunctionKey: Int { get }
var NSSelectFunctionKey: Int { get }
var NSExecuteFunctionKey: Int { get }
var NSUndoFunctionKey: Int { get }
var NSRedoFunctionKey: Int { get }
var NSFindFunctionKey: Int { get }
var NSHelpFunctionKey: Int { get }
var NSModeSwitchFunctionKey: Int { get }
extension NSFileWrapper {
  var icon: NSImage?
}

/********* NSGlyph *********/
typealias NSGlyph = UInt32
var NSControlGlyph: Int { get }
var NSNullGlyph: Int { get }

/********* Font Matrix *********/
var NSFontIdentityMatrix: UnsafePointer<CGFloat>

/********* Glyph packing *********/
enum NSMultibyteGlyphPacking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NativeShortGlyphPacking
}

/********* Screen Font Rendering Mode *********/
enum NSFontRenderingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultRenderingMode
  case AntialiasedRenderingMode
  case IntegerAdvancementsRenderingMode
  case AntialiasedIntegerAdvancementsRenderingMode
}
class NSFont : NSObject, NSCopying, NSSecureCoding {

  /********* Factory *********/
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  /*not inherited*/ init?(name fontName: String, matrix fontMatrix: UnsafePointer<CGFloat>)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, size fontSize: CGFloat)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, textTransform: NSAffineTransform?)

  /********* Meta Font *********/
  class func userFontOfSize(fontSize: CGFloat) -> NSFont?
  class func userFixedPitchFontOfSize(fontSize: CGFloat) -> NSFont?
  class func setUserFont(aFont: NSFont?)
  class func setUserFixedPitchFont(aFont: NSFont?)
  class func systemFontOfSize(fontSize: CGFloat) -> NSFont
  class func boldSystemFontOfSize(fontSize: CGFloat) -> NSFont
  class func labelFontOfSize(fontSize: CGFloat) -> NSFont
  class func titleBarFontOfSize(fontSize: CGFloat) -> NSFont
  class func menuFontOfSize(fontSize: CGFloat) -> NSFont
  class func menuBarFontOfSize(fontSize: CGFloat) -> NSFont
  class func messageFontOfSize(fontSize: CGFloat) -> NSFont
  class func paletteFontOfSize(fontSize: CGFloat) -> NSFont
  class func toolTipsFontOfSize(fontSize: CGFloat) -> NSFont
  class func controlContentFontOfSize(fontSize: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func systemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> NSFont
  @available(OSX 10.11, *)
  class func monospacedDigitSystemFontOfSize(fontSize: CGFloat, weight: CGFloat) -> NSFont
  class func systemFontSize() -> CGFloat
  class func smallSystemFontSize() -> CGFloat
  class func labelFontSize() -> CGFloat
  class func systemFontSizeFor(controlSize: NSControlSize) -> CGFloat

  /********* Core font attribute *********/
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var matrix: UnsafePointer<CGFloat> { get }
  var familyName: String? { get }
  var displayName: String? { get }
  var fontDescriptor: NSFontDescriptor { get }
  @NSCopying var textTransform: NSAffineTransform { get }

  /********* Glyph coverage *********/
  var numberOfGlyphs: Int { get }
  var mostCompatibleStringEncoding: UInt { get }
  func glyphWithName(aName: String) -> NSGlyph
  var coveredCharacterSet: NSCharacterSet { get }
  var boundingRectForFont: NSRect { get }
  var maximumAdvancement: NSSize { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var leading: CGFloat { get }
  var underlinePosition: CGFloat { get }
  var underlineThickness: CGFloat { get }
  var italicAngle: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  var isFixedPitch: Bool { get }

  /********* Glyph metrics *********/
  func boundingRectForGlyph(aGlyph: NSGlyph) -> NSRect
  func advancementForGlyph(ag: NSGlyph) -> NSSize
  func getBoundingRects(bounds: NSRectArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(advancements: NSSizeArray, forPackedGlyphs packedGlyphs: UnsafePointer<Void>, length: Int)

  /********* NSGraphicsContext-related *********/
  func set()
  func setIn(graphicsContext: NSGraphicsContext)

  /********* Rendering mode *********/
  @NSCopying var printer: NSFont { get }
  @NSCopying var screen: NSFont { get }
  func screenFontWith(renderingMode: NSFontRenderingMode) -> NSFont
  var renderingMode: NSFontRenderingMode { get }

  /********* Vertical mode *********/
  @available(OSX 10.7, *)
  @NSCopying var vertical: NSFont { get }
  @available(OSX 10.7, *)
  var isVertical: Bool { get }
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __fFlags {
  var _isScreenFont: UInt32
  var _systemFontType: UInt32
  var _reserved1: UInt32
  var _matrixIsIdentity: UInt32
  var _renderingMode: UInt32
  var _inInstanceCache: UInt32
  var _reserved2: UInt32
  init()
  init(_isScreenFont: UInt32, _systemFontType: UInt32, _reserved1: UInt32, _matrixIsIdentity: UInt32, _renderingMode: UInt32, _inInstanceCache: UInt32, _reserved2: UInt32)
}

/********* Glyph packing *********/
func NSConvertGlyphsToPackedGlyphs(glBuf: UnsafeMutablePointer<NSGlyph>, _ count: Int, _ packing: NSMultibyteGlyphPacking, _ packedGlyphs: UnsafeMutablePointer<Int8>) -> Int

/********* Notifications *********/
let NSAntialiasThresholdChangedNotification: String
let NSFontSetChangedNotification: String
struct NSFontCollectionVisibility : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Process: NSFontCollectionVisibility { get }
  static var User: NSFontCollectionVisibility { get }
  static var Computer: NSFontCollectionVisibility { get }
}
@available(OSX 10.7, *)
class NSFontCollection : NSObject, NSCopying, NSMutableCopying, NSCoding {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func withAllAvailableDescriptors() -> NSFontCollection
  /*not inherited*/ init?(locale: NSLocale)
  class func show(collection: NSFontCollection, withName name: String, visibility: NSFontCollectionVisibility) throws
  class func hideFontCollectionWithName(name: String, visibility: NSFontCollectionVisibility) throws
  class func renameFontCollectionWithName(name: String, visibility: NSFontCollectionVisibility, toName name: String) throws
  class func allFontCollectionNames() -> [String]
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]? { get }
  var exclusionDescriptors: [NSFontDescriptor]? { get }
  var matchingDescriptors: [NSFontDescriptor]? { get }
  func matchingDescriptorsWithOptions(options: [String : NSNumber]?) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(family: String) -> [NSFontDescriptor]?
  func matchingDescriptorsForFamily(family: String, options: [String : NSNumber]?) -> [NSFontDescriptor]?
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
class NSMutableFontCollection : NSFontCollection {
  /*not inherited*/ init(descriptors queryDescriptors: [NSFontDescriptor])
  class func withAllAvailableDescriptors() -> NSMutableFontCollection
  /*not inherited*/ init(locale: NSLocale)
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(name: String, visibility: NSFontCollectionVisibility)
  var queryDescriptors: [NSFontDescriptor]?
  var exclusionDescriptors: [NSFontDescriptor]?
  func addQueryFor(descriptors: [NSFontDescriptor])
  func removeQueryFor(descriptors: [NSFontDescriptor])
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.7, *)
let NSFontCollectionIncludeDisabledFontsOption: String
@available(OSX 10.7, *)
let NSFontCollectionRemoveDuplicatesOption: String
@available(OSX 10.7, *)
let NSFontCollectionDisallowAutoActivationOption: String
@available(OSX 10.7, *)
let NSFontCollectionDidChangeNotification: String
@available(OSX 10.7, *)
let NSFontCollectionActionKey: String
@available(OSX 10.7, *)
let NSFontCollectionNameKey: String
@available(OSX 10.7, *)
let NSFontCollectionOldNameKey: String
@available(OSX 10.7, *)
let NSFontCollectionVisibilityKey: String
@available(OSX 10.7, *)
let NSFontCollectionWasShown: String
@available(OSX 10.7, *)
let NSFontCollectionWasHidden: String
@available(OSX 10.7, *)
let NSFontCollectionWasRenamed: String
@available(OSX 10.7, *)
let NSFontCollectionAllFonts: String
@available(OSX 10.7, *)
let NSFontCollectionUser: String
@available(OSX 10.7, *)
let NSFontCollectionFavorites: String
@available(OSX 10.7, *)
let NSFontCollectionRecentlyUsed: String

/*!
    @enum NSFontSymbolicTraits
    @abstract Symbolic representation of stylistic font attributes.
    @discussion NSFontSymbolicTraits symbolically describes stylistic aspects of a font. The upper 16 bits is used to describe appearance of the font whereas the lower 16 bits for typeface. The font appearance information represented by the upper 16 bits can be used for stylistic font matching. The symbolic traits supersedes the existing NSFontTraitMask type used by NSFontManager. The corresponding values are kept compatible between NSFontTraitMask and NSFontSymbolicTraits.
*/
typealias NSFontSymbolicTraits = UInt32
var NSFontUnknownClass: Int { get }
var NSFontOldStyleSerifsClass: Int { get }
var NSFontTransitionalSerifsClass: Int { get }
var NSFontModernSerifsClass: Int { get }
var NSFontClarendonSerifsClass: Int { get }
var NSFontSlabSerifsClass: Int { get }
var NSFontFreeformSerifsClass: Int { get }
var NSFontSansSerifClass: Int { get }
var NSFontOrnamentalsClass: Int { get }
var NSFontScriptsClass: Int { get }
var NSFontSymbolicClass: Int { get }
typealias NSFontFamilyClass = UInt32
var NSFontFamilyClassMask: UInt32 { get }
var NSFontItalicTrait: Int { get }
var NSFontBoldTrait: Int { get }
var NSFontExpandedTrait: Int { get }
var NSFontCondensedTrait: Int { get }
var NSFontMonoSpaceTrait: Int { get }
var NSFontVerticalTrait: Int { get }
var NSFontUIOptimizedTrait: Int { get }
class NSFontDescriptor : NSObject, NSCopying, NSSecureCoding {
  var postscriptName: String? { get }
  var pointSize: CGFloat { get }
  @NSCopying var matrix: NSAffineTransform? { get }
  var symbolicTraits: NSFontSymbolicTraits { get }
  func objectForKey(anAttribute: String) -> AnyObject?
  var fontAttributes: [String : AnyObject] { get }
  /*not inherited*/ init(name fontName: String, size: CGFloat)
  /*not inherited*/ init(name fontName: String, matrix: NSAffineTransform)
  init(fontAttributes attributes: [String : AnyObject]?)
  func matchingFontDescriptorsWithMandatoryKeys(mandatoryKeys: Set<String>?) -> [NSFontDescriptor]
  @available(OSX 10.5, *)
  func matchingFontDescriptorWithMandatoryKeys(mandatoryKeys: Set<String>?) -> NSFontDescriptor?
  func addingAttributes(attributes: [String : AnyObject]) -> NSFontDescriptor
  func withSymbolicTraits(symbolicTraits: NSFontSymbolicTraits) -> NSFontDescriptor
  func withSize(newPointSize: CGFloat) -> NSFontDescriptor
  func withMatrix(matrix: NSAffineTransform) -> NSFontDescriptor
  func withFace(newFace: String) -> NSFontDescriptor
  func withFamily(newFamily: String) -> NSFontDescriptor
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let NSFontFamilyAttribute: String
let NSFontNameAttribute: String
let NSFontFaceAttribute: String
let NSFontSizeAttribute: String
let NSFontVisibleNameAttribute: String
let NSFontMatrixAttribute: String
let NSFontVariationAttribute: String
let NSFontCharacterSetAttribute: String
let NSFontCascadeListAttribute: String
let NSFontTraitsAttribute: String
let NSFontFixedAdvanceAttribute: String
@available(OSX 10.5, *)
let NSFontFeatureSettingsAttribute: String
let NSFontSymbolicTrait: String
let NSFontWeightTrait: String
let NSFontWidthTrait: String
let NSFontSlantTrait: String
let NSFontVariationAxisIdentifierKey: String
let NSFontVariationAxisMinimumValueKey: String
let NSFontVariationAxisMaximumValueKey: String
let NSFontVariationAxisDefaultValueKey: String
let NSFontVariationAxisNameKey: String
@available(OSX 10.5, *)
let NSFontFeatureTypeIdentifierKey: String
@available(OSX 10.5, *)
let NSFontFeatureSelectorIdentifierKey: String
@available(OSX 10.11, *)
let NSFontWeightUltraLight: CGFloat
@available(OSX 10.11, *)
let NSFontWeightThin: CGFloat
@available(OSX 10.11, *)
let NSFontWeightLight: CGFloat
@available(OSX 10.11, *)
let NSFontWeightRegular: CGFloat
@available(OSX 10.11, *)
let NSFontWeightMedium: CGFloat
@available(OSX 10.11, *)
let NSFontWeightSemibold: CGFloat
@available(OSX 10.11, *)
let NSFontWeightBold: CGFloat
@available(OSX 10.11, *)
let NSFontWeightHeavy: CGFloat
@available(OSX 10.11, *)
let NSFontWeightBlack: CGFloat
struct NSFontTraitMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ItalicFontMask: NSFontTraitMask { get }
  static var BoldFontMask: NSFontTraitMask { get }
  static var UnboldFontMask: NSFontTraitMask { get }
  static var NonStandardCharacterSetFontMask: NSFontTraitMask { get }
  static var NarrowFontMask: NSFontTraitMask { get }
  static var ExpandedFontMask: NSFontTraitMask { get }
  static var CondensedFontMask: NSFontTraitMask { get }
  static var SmallCapsFontMask: NSFontTraitMask { get }
  static var PosterFontMask: NSFontTraitMask { get }
  static var CompressedFontMask: NSFontTraitMask { get }
  static var FixedPitchFontMask: NSFontTraitMask { get }
  static var UnitalicFontMask: NSFontTraitMask { get }
}
struct NSFontCollectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ApplicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoFontChangeAction
  case ViaPanelFontAction
  case AddTraitFontAction
  case SizeUpFontAction
  case SizeDownFontAction
  case HeavierFontAction
  case LighterFontAction
  case RemoveTraitFontAction
}
class NSFontManager : NSObject {
  class func setFontPanelFactory(factoryId: AnyClass?)
  class func setFontManagerFactory(factoryId: AnyClass?)
  class func shared() -> NSFontManager
  var isMultiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(newMenu: NSMenu)
  func fontMenu(create: Bool) -> NSMenu?
  func fontPanel(create: Bool) -> NSFontPanel?
  func fontWithFamily(family: String, traits: NSFontTraitMask, weight: Int, size: CGFloat) -> NSFont?
  func traitsOf(fontObj: NSFont) -> NSFontTraitMask
  func weightOf(fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembersOfFontFamily(fam: String) -> [[AnyObject]]?
  func convert(fontObj: NSFont) -> NSFont
  func convert(fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convert(fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convert(fontObj: NSFont, toFamily family: String) -> NSFont
  func convert(fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convert(fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(upFlag: Bool, of fontObj: NSFont) -> NSFont
  var isEnabled: Bool
  var action: Selector
  @available(OSX, introduced=10.0, deprecated=10.11, message="NSFontManager doesn't have any delegate method. This property should not be used.")
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedNameForFamily(family: String, face faceKey: String?) -> String
  func setSelectedAttributes(attributes: [String : AnyObject], isMultiple flag: Bool)
  func convertAttributes(attributes: [String : AnyObject]) -> [String : AnyObject]
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontDescriptor matchingFontDescriptorsWithMandatoryKeys:] instead")
  func availableFontNamesMatching(descriptor: NSFontDescriptor) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection allFontCollectionNames] instead")
  var collectionNames: [AnyObject] { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontCollection matchingDescriptors] instead")
  func fontDescriptorsInCollection(collectionNames: String) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection showFontCollection:withName:visibility:name:] instead")
  func addCollection(collectionName: String, options collectionOptions: NSFontCollectionOptions = []) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection hideFontCollectionWithName:visibility:error:] instead")
  func removeCollection(collectionName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection addQueryForDescriptors:] instead")
  func addFontDescriptors(descriptors: [AnyObject], toCollection collectionName: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection removeQueryForDescriptors:] instead")
  func remove(descriptor: NSFontDescriptor, fromCollection collection: String)
  @available(OSX 10.5, *)
  var currentFontAction: NSFontAction { get }
  @available(OSX 10.5, *)
  func convertFontTraits(traits: NSFontTraitMask) -> NSFontTraitMask
  @available(OSX 10.5, *)
  weak var target: @sil_weak AnyObject?
  init()
}
struct _fmFlags {
  var multipleFont: UInt32
  var disabled: UInt32
  var senderTagMode: UInt32
  var _RESERVED: UInt32
  init()
  init(multipleFont: UInt32, disabled: UInt32, senderTagMode: UInt32, _RESERVED: UInt32)
}
extension NSFontManager {
  func fontNamed(fName: String, hasTraits someTraits: NSFontTraitMask) -> Bool
  func availableFontNamesWithTraits(someTraits: NSFontTraitMask) -> [String]?
  func addFontTrait(sender: AnyObject?)
  func removeFontTrait(sender: AnyObject?)
  func modifyFontViaPanel(sender: AnyObject?)
  func modifyFont(sender: AnyObject?)
  func orderFrontFontPanel(sender: AnyObject?)
  func orderFrontStylesPanel(sender: AnyObject?)
}
extension NSObject {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  class func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
}
extension NSObject {
  class func changeFont(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
}
extension NSObject {
  class func validModesFor(fontPanel: NSFontPanel) -> Int
  func validModesFor(fontPanel: NSFontPanel) -> Int
}
class NSFontPanel : NSPanel {
  class func shared() -> NSFontPanel
  class func sharedFontPanelExists() -> Bool
  var accessoryView: NSView?
  func setPanelFont(fontObj: NSFont, isMultiple flag: Bool)
  func panelConvert(fontObj: NSFont) -> NSFont
  var worksWhenModal: Bool
  var isEnabled: Bool
  func reloadDefaultFontFamilies()
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
struct __fpFlags {
  var setFontChange: UInt32
  var setFontAttributeChange: UInt32
  var _delRespFamily: UInt32
  var _delRespFace: UInt32
  var _delRespSize: UInt32
  var _delRespColl: UInt32
  var _collectionDisabled: UInt32
  var _sizeDisabled: UInt32
  var _faceDisabled: UInt32
  var showEffects: UInt32
  var _uiMode: UInt32
  var _miniMode: UInt32
  var _reserved: UInt32
  init()
  init(setFontChange: UInt32, setFontAttributeChange: UInt32, _delRespFamily: UInt32, _delRespFace: UInt32, _delRespSize: UInt32, _delRespColl: UInt32, _collectionDisabled: UInt32, _sizeDisabled: UInt32, _faceDisabled: UInt32, showEffects: UInt32, _uiMode: UInt32, _miniMode: UInt32, _reserved: UInt32)
}
var NSFontPanelFaceModeMask: UInt32 { get }
var NSFontPanelSizeModeMask: UInt32 { get }
var NSFontPanelCollectionModeMask: UInt32 { get }
var NSFontPanelUnderlineEffectModeMask: UInt32 { get }
var NSFontPanelStrikethroughEffectModeMask: UInt32 { get }
var NSFontPanelTextColorEffectModeMask: UInt32 { get }
var NSFontPanelDocumentColorEffectModeMask: UInt32 { get }
var NSFontPanelShadowEffectModeMask: UInt32 { get }
var NSFontPanelAllEffectsModeMask: UInt32 { get }
var NSFontPanelStandardModesMask: UInt32 { get }
var NSFontPanelAllModesMask: UInt32 { get }
var NSFPPreviewButton: Int { get }
var NSFPRevertButton: Int { get }
var NSFPSetButton: Int { get }
var NSFPPreviewField: Int { get }
var NSFPSizeField: Int { get }
var NSFPSizeTitle: Int { get }
var NSFPCurrentField: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSTextField directly instead, and consider NSStackView for layout assistance")
class NSForm : NSMatrix {
  func indexOfSelectedItem() -> Int
  func setEntryWidth(width: CGFloat)
  func setInterlineSpacing(spacing: CGFloat)
  func setBordered(flag: Bool)
  func setBezeled(flag: Bool)
  func setTitleAlignment(mode: NSTextAlignment)
  func setTextAlignment(mode: NSTextAlignment)
  func setTitleFont(fontObj: NSFont)
  func setTextFont(fontObj: NSFont)
  func cellAt(index: Int) -> AnyObject!
  func drawCellAt(index: Int)
  func addEntry(title: String) -> NSFormCell
  func insertEntry(title: String, at index: Int) -> NSFormCell!
  func removeEntryAt(index: Int)
  func indexOfCellWithTag(aTag: Int) -> Int
  func selectTextAt(index: Int)
  func setFrame(newSize: NSSize)
  func setTitleBaseWritingDirection(writingDirection: NSWritingDirection)
  func setTextBaseWritingDirection(writingDirection: NSWritingDirection)
  @available(OSX 10.8, *)
  func setPreferredTextFieldWidth(preferredWidth: CGFloat)
  @available(OSX 10.8, *)
  func preferredTextFieldWidth() -> CGFloat
  convenience init(frame frameRect: NSRect)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init?(coder: NSCoder)
  convenience init()
}
class NSFormCell : NSActionCell {
  init(textCell aString: String?)
  func titleWidth(aSize: NSSize) -> CGFloat
  var titleWidth: CGFloat
  var title: String
  var titleFont: NSFont
  var titleAlignment: NSTextAlignment
  var isOpaque: Bool { get }
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  var titleBaseWritingDirection: NSWritingDirection
  @available(OSX 10.8, *)
  var preferredTextFieldWidth: CGFloat
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSFormCell {
}
extension NSFormCell {
  @NSCopying var attributedTitle: NSAttributedString
}
var NSShowControlGlyphs: Int { get }
var NSShowInvisibleGlyphs: Int { get }
var NSWantsBidiLevels: Int { get }
protocol NSGlyphStorage {
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAt glyphIndex: Int, characterIndex charIndex: Int)
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAt glyphIndex: Int)
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func layoutOptions() -> Int
}
class NSGlyphGenerator : NSObject {
  func generateGlyphsFor(glyphStorage: NSGlyphStorage, desiredNumberOfCharacters nChars: Int, glyphIndex: UnsafeMutablePointer<Int>, characterIndex charIndex: UnsafeMutablePointer<Int>)
  class func shared() -> NSGlyphGenerator
  init()
}
enum NSCharacterCollection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IdentityMappingCharacterCollection
  case AdobeCNS1CharacterCollection
  case AdobeGB1CharacterCollection
  case AdobeJapan1CharacterCollection
  case AdobeJapan2CharacterCollection
  case AdobeKorea1CharacterCollection
}
class NSGlyphInfo : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(glyphName: String, forFont font: NSFont, baseString theString: String)
  /*not inherited*/ init?(glyph: NSGlyph, forFont font: NSFont, baseString theString: String)
  /*not inherited*/ init?(characterIdentifier cid: Int, collection characterCollection: NSCharacterCollection, baseString theString: String)
  var glyphName: String? { get }
  var characterIdentifier: Int { get }
  var characterCollection: NSCharacterCollection { get }
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
@available(OSX 10.5, *)
class NSGradient : NSObject, NSCopying, NSCoding {
  convenience init?(starting startingColor: NSColor, ending endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace: NSColorSpace)
  func drawFrom(startingPoint: NSPoint, to endingPoint: NSPoint, options: NSGradientDrawingOptions)
  func drawIn(rect: NSRect, angle: CGFloat)
  func drawIn(path: NSBezierPath, angle: CGFloat)
  func drawFromCenter(startCenter: NSPoint, radius startRadius: CGFloat, toCenter endCenter: NSPoint, radius endRadius: CGFloat, options: NSGradientDrawingOptions)
  func drawIn(rect: NSRect, relativeCenterPosition: NSPoint)
  func drawIn(path: NSBezierPath, relativeCenterPosition: NSPoint)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(color: AutoreleasingUnsafeMutablePointer<NSColor?>, location: UnsafeMutablePointer<CGFloat>, at index: Int)
  func interpolatedColorAtLocation(location: CGFloat) -> NSColor
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
enum NSCompositingOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CompositeClear
  case CompositeCopy
  case CompositeSourceOver
  case CompositeSourceIn
  case CompositeSourceOut
  case CompositeSourceAtop
  case CompositeDestinationOver
  case CompositeDestinationIn
  case CompositeDestinationOut
  case CompositeDestinationAtop
  case CompositeXOR
  case CompositePlusDarker
  case CompositePlusLighter
  @available(OSX 10.10, *)
  case CompositeMultiply
  @available(OSX 10.10, *)
  case CompositeScreen
  @available(OSX 10.10, *)
  case CompositeOverlay
  @available(OSX 10.10, *)
  case CompositeDarken
  @available(OSX 10.10, *)
  case CompositeLighten
  @available(OSX 10.10, *)
  case CompositeColorDodge
  @available(OSX 10.10, *)
  case CompositeColorBurn
  @available(OSX 10.10, *)
  case CompositeSoftLight
  @available(OSX 10.10, *)
  case CompositeHardLight
  @available(OSX 10.10, *)
  case CompositeDifference
  @available(OSX 10.10, *)
  case CompositeExclusion
  @available(OSX 10.10, *)
  case CompositeHue
  @available(OSX 10.10, *)
  case CompositeSaturation
  @available(OSX 10.10, *)
  case CompositeColor
  @available(OSX 10.10, *)
  case CompositeLuminosity
}
enum NSBackingStoreType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Retained
  case Nonretained
  case Buffered
}
enum NSWindowOrderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Above
  case Below
  case Out
}
enum NSFocusRingPlacement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Only
  case Below
  case Above
}
enum NSFocusRingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Exterior
}
@available(OSX 10.5, *)
enum NSColorRenderingIntent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case AbsoluteColorimetric
  case RelativeColorimetric
  case Perceptual
  case Saturation
}
let NSCalibratedWhiteColorSpace: String
let NSCalibratedRGBColorSpace: String
let NSDeviceWhiteColorSpace: String
let NSDeviceRGBColorSpace: String
let NSDeviceCMYKColorSpace: String
let NSNamedColorSpace: String
let NSPatternColorSpace: String
let NSCustomColorSpace: String
var NSWindowDepthTwentyfourBitRGB: Int { get }
var NSWindowDepthSixtyfourBitRGB: Int { get }
var NSWindowDepthOnehundredtwentyeightBitRGB: Int { get }
typealias NSWindowDepth = Int32
func NSBestDepth(colorSpace: String, _ bps: Int, _ bpp: Int, _ planar: Bool, _ exactMatch: UnsafeMutablePointer<ObjCBool>) -> NSWindowDepth
func NSPlanarFromDepth(depth: NSWindowDepth) -> Bool
func NSColorSpaceFromDepth(depth: NSWindowDepth) -> String?
func NSBitsPerSampleFromDepth(depth: NSWindowDepth) -> Int
func NSBitsPerPixelFromDepth(depth: NSWindowDepth) -> Int
func NSNumberOfColorComponents(colorSpaceName: String) -> Int
func NSAvailableWindowDepths() -> UnsafePointer<NSWindowDepth>
let NSWhite: CGFloat
let NSLightGray: CGFloat
let NSDarkGray: CGFloat
let NSBlack: CGFloat
let NSDeviceResolution: String
let NSDeviceColorSpaceName: String
let NSDeviceBitsPerSample: String
let NSDeviceIsScreen: String
let NSDeviceIsPrinter: String
let NSDeviceSize: String
func NSRectFill(aRect: NSRect)
func NSRectFillList(rects: UnsafePointer<NSRect>, _ count: Int)
func NSRectFillListWithGrays(rects: UnsafePointer<NSRect>, _ grays: UnsafePointer<CGFloat>, _ num: Int)
func NSRectFillListWithColors(rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor?>, _ num: Int)
func NSRectFillUsingOperation(aRect: NSRect, _ op: NSCompositingOperation)
func NSRectFillListUsingOperation(rects: UnsafePointer<NSRect>, _ count: Int, _ op: NSCompositingOperation)
func NSRectFillListWithColorsUsingOperation(rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor?>, _ num: Int, _ op: NSCompositingOperation)
func NSFrameRect(aRect: NSRect)
func NSFrameRectWithWidth(aRect: NSRect, _ frameWidth: CGFloat)
func NSFrameRectWithWidthUsingOperation(aRect: NSRect, _ frameWidth: CGFloat, _ op: NSCompositingOperation)
func NSRectClip(aRect: NSRect)
func NSRectClipList(rects: UnsafePointer<NSRect>, _ count: Int)
func NSDrawTiledRects(boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ grays: UnsafePointer<CGFloat>, _ count: Int) -> NSRect
func NSDrawGrayBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawGroove(aRect: NSRect, _ clipRect: NSRect)
func NSDrawWhiteBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawButton(aRect: NSRect, _ clipRect: NSRect)
func NSEraseRect(aRect: NSRect)
func NSReadPixel(passedPoint: NSPoint) -> NSColor?
func NSDrawBitmap(rect: NSRect, _ width: Int, _ height: Int, _ bps: Int, _ spp: Int, _ bpp: Int, _ bpr: Int, _ isPlanar: Bool, _ hasAlpha: Bool, _ colorSpaceName: String, _ data: UnsafePointer<UnsafePointer<UInt8>>)
func NSBeep()
func NSGetWindowServerMemory(context: Int, _ virtualMemory: UnsafeMutablePointer<Int>, _ windowBackingMemory: UnsafeMutablePointer<Int>, _ windowDumpString: AutoreleasingUnsafeMutablePointer<NSString?>) -> Int
func NSDrawColorTiledRects(boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ colors: AutoreleasingUnsafeMutablePointer<NSColor?>, _ count: Int) -> NSRect
func NSDrawDarkBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawLightBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDottedFrameRect(aRect: NSRect)
func NSDrawWindowBackground(aRect: NSRect)
func NSSetFocusRingStyle(placement: NSFocusRingPlacement)
func NSDisableScreenUpdates()
func NSEnableScreenUpdates()
enum NSAnimationEffect : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DisappearingItemDefault
  case Poof
}
func NSShowAnimationEffect(animationEffect: NSAnimationEffect, _ centerLocation: NSPoint, _ size: NSSize, _ animationDelegate: AnyObject?, _ didEndSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
@available(OSX, introduced=10.0, deprecated=10.10)
func NSCopyBits(srcGState: Int, _ srcRect: NSRect, _ destPoint: NSPoint)
let NSGraphicsContextDestinationAttributeName: String
let NSGraphicsContextRepresentationFormatAttributeName: String
let NSGraphicsContextPSFormat: String
let NSGraphicsContextPDFFormat: String
enum NSImageInterpolation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Low
  @available(OSX 10.6, *)
  case Medium
  case High
}
class NSGraphicsContext : NSObject {
  /*not inherited*/ init?(attributes: [String : AnyObject])
  /*not inherited*/ init(window: NSWindow)
  /*not inherited*/ init?(bitmapImageRep bitmapRep: NSBitmapImageRep)
  @available(OSX 10.10, *)
  /*not inherited*/ init(cgContext graphicsPort: CGContext, flipped initialFlippedState: Bool)
  class func current() -> NSGraphicsContext?
  class func setCurrentContext(context: NSGraphicsContext?)
  class func currentContextDrawingToScreen() -> Bool
  class func saveGraphicsState()
  class func restoreGraphicsState()
  var attributes: [String : AnyObject]? { get }
  var isDrawingToScreen: Bool { get }
  func saveGraphicsState()
  func restoreGraphicsState()
  func flushGraphics()
  @available(OSX 10.10, *)
  var cgContext: CGContext { get }
  var isFlipped: Bool { get }
  init()
}
extension NSGraphicsContext {
  var shouldAntialias: Bool
  var imageInterpolation: NSImageInterpolation
  var patternPhase: NSPoint
  var compositingOperation: NSCompositingOperation
  @available(OSX 10.5, *)
  var colorRenderingIntent: NSColorRenderingIntent
}
extension NSGraphicsContext {
  var ciContext: CIContext? { get }
}
extension NSGraphicsContext {
  @available(OSX, introduced=10.0, deprecated=10.10)
  class func setGraphicsState(gState: Int)
  /*not inherited*/ init(graphicsPort: UnsafeMutablePointer<Void>, flipped initialFlippedState: Bool)
  var graphicsPort: UnsafeMutablePointer<Void> { get }
}
@available(OSX 10.11, *)
enum NSHapticFeedbackPattern : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Generic
  case Alignment
  case LevelChange
}
@available(OSX 10.11, *)
enum NSHapticFeedbackPerformanceTime : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Now
  case DrawCompleted
}
protocol NSHapticFeedbackPerformer : NSObjectProtocol {
  @available(OSX 10.11, *)
  func perform(pattern: NSHapticFeedbackPattern, performanceTime: NSHapticFeedbackPerformanceTime)
}
@available(OSX 10.11, *)
class NSHapticFeedbackManager : NSObject {
  class func defaultPerformer() -> NSHapticFeedbackPerformer
  init()
}
class NSHelpManager : NSObject {
  class func shared() -> NSHelpManager
  class func setContextHelpModeActive(active: Bool)
  class func isContextHelpModeActive() -> Bool
  func setContextHelp(attrString: NSAttributedString, forObject object: AnyObject)
  func removeContextHelpFor(object: AnyObject)
  func contextHelpFor(object: AnyObject) -> NSAttributedString?
  func showContextHelpFor(object: AnyObject, locationHint pt: NSPoint) -> Bool
  func openHelpAnchor(anchor: String, inBook book: String?)
  func find(query: String, inBook book: String?)
  @available(OSX 10.6, *)
  func registerBooksIn(bundle: NSBundle) -> Bool
  init()
}
let NSContextHelpModeDidActivateNotification: String
let NSContextHelpModeDidDeactivateNotification: String
extension NSBundle {
  func contextHelpForKey(key: String) -> NSAttributedString?
}
extension NSApplication {
  func activateContextHelpMode(sender: AnyObject?)
  func showHelp(sender: AnyObject?)
}
enum NSImageLoadStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Completed
  case Cancelled
  case InvalidData
  case UnexpectedEOF
  case ReadError
}
enum NSImageCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Always
  case BySize
  case Never
}
@available(OSX 10.10, *)
enum NSImageResizingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stretch
  case Tile
}
class NSImage : NSObject, NSCopying, NSCoding, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init(size aSize: NSSize)
  init?(data: NSData)
  init?(contentsOfFile fileName: String)
  init?(contentsOf url: NSURL)
  init?(byReferencingFile fileName: String)
  init(byReferencingURL url: NSURL)
  @available(OSX 10.5, *)
  init(iconRef: IconRef)
  init?(pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  init?(dataIgnoringOrientation data: NSData)
  @available(OSX 10.8, *)
  /*not inherited*/ init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (NSRect) -> Bool)
  var size: NSSize
  func setName(string: String?) -> Bool
  func name() -> String?
  @NSCopying var backgroundColor: NSColor
  var usesEPSOnResolutionMismatch: Bool
  var prefersColorMatch: Bool
  var matchesOnMultipleResolution: Bool
  @available(OSX 10.7, *)
  var matchesOnlyOnBestFittingAxis: Bool
  func drawAt(point: NSPoint, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func drawIn(rect: NSRect, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  @available(OSX 10.6, *)
  func drawIn(dstSpacePortionRect: NSRect, from srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?)
  func drawRepresentation(imageRep: NSImageRep, in rect: NSRect) -> Bool
  @available(OSX 10.9, *)
  func drawIn(rect: NSRect)
  func recache()
  var tiffRepresentation: NSData? { get }
  func tiffRepresentationUsing(comp: NSTIFFCompression, factor aFloat: Float) -> NSData?
  var representations: [NSImageRep] { get }
  func addRepresentations(imageReps: [NSImageRep])
  func addRepresentation(imageRep: NSImageRep)
  func removeRepresentation(imageRep: NSImageRep)
  var isValid: Bool { get }
  func lockFocus()
  @available(OSX 10.6, *)
  func lockFocusFlipped(flipped: Bool)
  func unlockFocus()
  unowned(unsafe) var delegate: @sil_unmanaged NSImageDelegate?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredPasteboardTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imageFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imagePasteboardTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageUnfilteredTypes() -> [String]
  class func canInitWith(pasteboard: NSPasteboard) -> Bool
  func cancelIncrementalLoad()
  var cacheMode: NSImageCacheMode
  @available(OSX 10.5, *)
  var alignmentRect: NSRect
  var isTemplate: Bool
  @available(OSX 10.6, *)
  var accessibilityDescription: String?
  @available(OSX 10.6, *)
  init(cgImage: CGImage, size: NSSize)
  @available(OSX 10.6, *)
  func cgImageForProposedRect(proposedDestRect: UnsafeMutablePointer<NSRect>, context referenceContext: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  @available(OSX 10.6, *)
  func bestRepresentationFor(rect: NSRect, context referenceContext: NSGraphicsContext?, hints: [String : AnyObject]?) -> NSImageRep?
  @available(OSX 10.6, *)
  func hitTest(testRectDestSpace: NSRect, withImageDestinationRect imageRectDestSpace: NSRect, context: NSGraphicsContext?, hints: [String : AnyObject]?, flipped: Bool) -> Bool
  @available(OSX 10.7, *)
  func recommendedLayerContentsScale(preferredContentsScale: CGFloat) -> CGFloat
  @available(OSX 10.7, *)
  func layerContentsForContentsScale(layerContentsScale: CGFloat) -> AnyObject
  @available(OSX 10.10, *)
  var capInsets: NSEdgeInsets
  @available(OSX 10.10, *)
  var resizingMode: NSImageResizingMode
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func supportsSecureCoding() -> Bool
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}

extension NSImage : _ImageLiteralConvertible {
  convenience init!(failableImageLiteral name: String)
  required convenience init(imageLiteral name: String)
}
struct __imageFlags {
  var scalable: UInt32
  var dataRetained: UInt32
  var uniqueWindow: UInt32
  var sizeWasExplicitlySet: UInt32
  var builtIn: UInt32
  var needsToExpand: UInt32
  var useEPSOnResolutionMismatch: UInt32
  var matchesOnlyOnBestFittingAxis: UInt32
  var colorMatchPreferred: UInt32
  var multipleResolutionMatching: UInt32
  var focusedWhilePrinting: UInt32
  var archiveByName: UInt32
  var unboundedCacheDepth: UInt32
  var flipped: UInt32
  var aliased: UInt32
  var dirtied: UInt32
  var cacheMode: UInt32
  var sampleMode: UInt32
  var resMatchPreferred: UInt32
  var isTemplate: UInt32
  var failedToExpand: UInt32
  var reserved1: UInt32
  init()
  init(scalable: UInt32, dataRetained: UInt32, uniqueWindow: UInt32, sizeWasExplicitlySet: UInt32, builtIn: UInt32, needsToExpand: UInt32, useEPSOnResolutionMismatch: UInt32, matchesOnlyOnBestFittingAxis: UInt32, colorMatchPreferred: UInt32, multipleResolutionMatching: UInt32, focusedWhilePrinting: UInt32, archiveByName: UInt32, unboundedCacheDepth: UInt32, flipped: UInt32, aliased: UInt32, dirtied: UInt32, cacheMode: UInt32, sampleMode: UInt32, resMatchPreferred: UInt32, isTemplate: UInt32, failedToExpand: UInt32, reserved1: UInt32)
}
@available(OSX 10.6, *)
let NSImageHintCTM: String
@available(OSX 10.6, *)
let NSImageHintInterpolation: String
protocol NSImageDelegate : NSObjectProtocol {
  optional func imageDidNotDraw(sender: NSImage, in aRect: NSRect) -> NSImage?
  optional func image(image: NSImage, willLoadRepresentation rep: NSImageRep)
  optional func image(image: NSImage, didLoadRepresentationHeader rep: NSImageRep)
  optional func image(image: NSImage, didLoadPartOfRepresentation rep: NSImageRep, withValidRows rows: Int)
  optional func image(image: NSImage, didLoadRepresentation rep: NSImageRep, withStatus status: NSImageLoadStatus)
}
extension NSBundle {
  @available(OSX 10.7, *)
  func imageForResource(name: String) -> NSImage?
  func pathForImageResource(name: String) -> String?
  @available(OSX 10.6, *)
  func urlForImageResource(name: String) -> NSURL?
}
extension NSImage {
}
@available(OSX 10.5, *)
let NSImageNameQuickLookTemplate: String
@available(OSX 10.5, *)
let NSImageNameBluetoothTemplate: String
@available(OSX 10.5, *)
let NSImageNameIChatTheaterTemplate: String
@available(OSX 10.5, *)
let NSImageNameSlideshowTemplate: String
@available(OSX 10.5, *)
let NSImageNameActionTemplate: String
@available(OSX 10.5, *)
let NSImageNameSmartBadgeTemplate: String
@available(OSX 10.5, *)
let NSImageNameIconViewTemplate: String
@available(OSX 10.5, *)
let NSImageNameListViewTemplate: String
@available(OSX 10.5, *)
let NSImageNameColumnViewTemplate: String
@available(OSX 10.5, *)
let NSImageNameFlowViewTemplate: String
@available(OSX 10.5, *)
let NSImageNamePathTemplate: String
@available(OSX 10.5, *)
let NSImageNameInvalidDataFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameLockLockedTemplate: String
@available(OSX 10.5, *)
let NSImageNameLockUnlockedTemplate: String
@available(OSX 10.5, *)
let NSImageNameGoRightTemplate: String
@available(OSX 10.5, *)
let NSImageNameGoLeftTemplate: String
@available(OSX 10.5, *)
let NSImageNameRightFacingTriangleTemplate: String
@available(OSX 10.5, *)
let NSImageNameLeftFacingTriangleTemplate: String
@available(OSX 10.5, *)
let NSImageNameAddTemplate: String
@available(OSX 10.5, *)
let NSImageNameRemoveTemplate: String
@available(OSX 10.5, *)
let NSImageNameRevealFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameFollowLinkFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameEnterFullScreenTemplate: String
@available(OSX 10.5, *)
let NSImageNameExitFullScreenTemplate: String
@available(OSX 10.5, *)
let NSImageNameStopProgressTemplate: String
@available(OSX 10.5, *)
let NSImageNameStopProgressFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameRefreshTemplate: String
@available(OSX 10.5, *)
let NSImageNameRefreshFreestandingTemplate: String
@available(OSX 10.5, *)
let NSImageNameBonjour: String
@available(OSX 10.5, *)
let NSImageNameComputer: String
@available(OSX 10.5, *)
let NSImageNameFolderBurnable: String
@available(OSX 10.5, *)
let NSImageNameFolderSmart: String
@available(OSX 10.6, *)
let NSImageNameFolder: String
@available(OSX 10.5, *)
let NSImageNameNetwork: String
@available(OSX 10.6, *)
let NSImageNameMobileMe: String
@available(OSX 10.5, *)
let NSImageNameMultipleDocuments: String
@available(OSX 10.5, *)
let NSImageNameUserAccounts: String
@available(OSX 10.5, *)
let NSImageNamePreferencesGeneral: String
@available(OSX 10.5, *)
let NSImageNameAdvanced: String
@available(OSX 10.5, *)
let NSImageNameInfo: String
@available(OSX 10.5, *)
let NSImageNameFontPanel: String
@available(OSX 10.5, *)
let NSImageNameColorPanel: String
@available(OSX 10.5, *)
let NSImageNameUser: String
@available(OSX 10.5, *)
let NSImageNameUserGroup: String
@available(OSX 10.5, *)
let NSImageNameEveryone: String
@available(OSX 10.6, *)
let NSImageNameUserGuest: String
@available(OSX 10.6, *)
let NSImageNameMenuOnStateTemplate: String
@available(OSX 10.6, *)
let NSImageNameMenuMixedStateTemplate: String
@available(OSX 10.6, *)
let NSImageNameApplicationIcon: String
@available(OSX 10.6, *)
let NSImageNameTrashEmpty: String
@available(OSX 10.6, *)
let NSImageNameTrashFull: String
@available(OSX 10.6, *)
let NSImageNameHomeTemplate: String
@available(OSX 10.6, *)
let NSImageNameBookmarksTemplate: String
@available(OSX 10.6, *)
let NSImageNameCaution: String
@available(OSX 10.6, *)
let NSImageNameStatusAvailable: String
@available(OSX 10.6, *)
let NSImageNameStatusPartiallyAvailable: String
@available(OSX 10.6, *)
let NSImageNameStatusUnavailable: String
@available(OSX 10.6, *)
let NSImageNameStatusNone: String
@available(OSX 10.8, *)
let NSImageNameShareTemplate: String
enum NSImageAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AlignCenter
  case AlignTop
  case AlignTopLeft
  case AlignTopRight
  case AlignLeft
  case AlignBottom
  case AlignBottomLeft
  case AlignBottomRight
  case AlignRight
}
enum NSImageFrameStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Photo
  case GrayBezel
  case Groove
  case Button
}
class NSImageCell : NSCell, NSCopying, NSCoding {
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __ICFlags {
  var _unused: UInt32
  var _animates: UInt32
  var _align: UInt32
  var _scale: UInt32
  var _style: UInt32
  init()
  init(_unused: UInt32, _animates: UInt32, _align: UInt32, _scale: UInt32, _style: UInt32)
}
var NSImageRepMatchesDevice: Int { get }
class NSImageRep : NSObject, NSCopying, NSCoding {
  init()
  init?(coder: NSCoder)
  func draw() -> Bool
  func drawAt(point: NSPoint) -> Bool
  func drawIn(rect: NSRect) -> Bool
  @available(OSX 10.6, *)
  func drawIn(dstSpacePortionRect: NSRect, from srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [String : AnyObject]?) -> Bool
  var size: NSSize
  var isAlpha: Bool
  var isOpaque: Bool
  var colorSpaceName: String
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  class func registerImageRepClass(imageRepClass: AnyClass)
  class func unregisterImageRepClass(imageRepClass: AnyClass)
  class func registeredImageRepClasses() -> [AnyClass]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForFileType(type: String) -> AnyClass?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageRepClassForType: instead")
  class func imageRepClassForPasteboardType(type: String) -> AnyClass?
  @available(OSX 10.5, *)
  class func imageRepClassForType(type: String) -> AnyClass?
  class func imageRepClassFor(data: NSData) -> AnyClass?
  class func canInitWith(data: NSData) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageUnfilteredTypes instead")
  class func imageUnfilteredPasteboardTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imageFileTypes() -> [String]
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use +imageTypes instead")
  class func imagePasteboardTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageUnfilteredTypes() -> [String]
  @available(OSX 10.5, *)
  class func imageTypes() -> [String]
  class func canInitWith(pasteboard: NSPasteboard) -> Bool
  class func imageRepsWithContentsOfFile(filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageRepsWithContentsOf(url: NSURL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOf url: NSURL)
  class func imageRepsWith(pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard: NSPasteboard)
  @available(OSX 10.6, *)
  func cgImageForProposedRect(proposedDestRect: UnsafeMutablePointer<NSRect>, context: NSGraphicsContext?, hints: [String : AnyObject]?) -> CGImage?
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
}
struct __repFlags {
  var hasAlpha: UInt32
  var isOpaque: UInt32
  @available(*, deprecated)
  var cacheParamsComputed: UInt32
  @available(*, deprecated)
  var cacheAlphaComputed: UInt32
  var loadState: UInt32
  @available(*, deprecated)
  var keepCacheWindow: UInt32
  var reserved: UInt32
  var bitsPerSample: UInt32
  var gsaved: UInt32
  init()
  init(hasAlpha: UInt32, isOpaque: UInt32, cacheParamsComputed: UInt32, cacheAlphaComputed: UInt32, loadState: UInt32, keepCacheWindow: UInt32, reserved: UInt32, bitsPerSample: UInt32, gsaved: UInt32)
}
let NSImageRepRegistryDidChangeNotification: String
class NSImageView : NSControl, NSAccessibilityImage {
  var image: NSImage?
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
  var isEditable: Bool
  var animates: Bool
  var allowsCutCopyPaste: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
}
struct __IVFlags {
  var _hasImageView: UInt32
  var _unused: UInt32
  var _rejectsMultiFileDrops: UInt32
  var _compatibleScalingAndAlignment: UInt32
  var _reserved: UInt32
  var _overridesDrawing: UInt32
  var _allowsCutCopyPaste: UInt32
  var _editable: UInt32
  init()
  init(_hasImageView: UInt32, _unused: UInt32, _rejectsMultiFileDrops: UInt32, _compatibleScalingAndAlignment: UInt32, _reserved: UInt32, _overridesDrawing: UInt32, _allowsCutCopyPaste: UInt32, _editable: UInt32)
}
protocol NSTextInput {
}
protocol NSInputServiceProvider {
}
protocol NSInputServerMouseTracker {
}
var NSNoInterfaceStyle: Int { get }
var NSNextStepInterfaceStyle: Int { get }
var NSWindows95InterfaceStyle: Int { get }
var NSMacintoshInterfaceStyle: Int { get }
extension NSResponder {
}
extension NSItemProvider {
  @available(OSX 10.10, *)
  var sourceFrame: NSRect { get }
  @available(OSX 10.10, *)
  var containerFrame: NSRect { get }
  @available(OSX 10.10, *)
  var preferredPresentationSize: NSSize { get }
}
@available(OSX 10.10, *)
let NSTypeIdentifierDateText: String
@available(OSX 10.10, *)
let NSTypeIdentifierAddressText: String
@available(OSX 10.10, *)
let NSTypeIdentifierPhoneNumberText: String
@available(OSX 10.10, *)
let NSTypeIdentifierTransitInformationText: String
var NSMultipleValuesMarker: AnyObject
var NSNoSelectionMarker: AnyObject
var NSNotApplicableMarker: AnyObject
func NSIsControllerMarker(object: AnyObject?) -> Bool
let NSObservedObjectKey: String
let NSObservedKeyPathKey: String
let NSOptionsKey: String
extension NSObject {
  class func exposeBinding(binding: String)
  var exposedBindings: [String] { get }
  class func valueClassForBinding(binding: String) -> AnyClass?
  func valueClassForBinding(binding: String) -> AnyClass?
  class func bind(binding: String, to observable: AnyObject, withKeyPath keyPath: String, options: [String : AnyObject]?)
  func bind(binding: String, to observable: AnyObject, withKeyPath keyPath: String, options: [String : AnyObject]?)
  class func unbind(binding: String)
  func unbind(binding: String)
  class func infoForBinding(binding: String) -> [String : AnyObject]?
  func infoForBinding(binding: String) -> [String : AnyObject]?
  @available(OSX 10.5, *)
  class func optionDescriptionsForBinding(aBinding: String) -> [NSAttributeDescription]
  @available(OSX 10.5, *)
  func optionDescriptionsForBinding(aBinding: String) -> [NSAttributeDescription]
  class func exposedBindings() -> [String]
}
extension NSObject {
  class func setDefaultPlaceholder(placeholder: AnyObject?, forMarker marker: AnyObject?, withBinding binding: String)
  class func defaultPlaceholderForMarker(marker: AnyObject?, withBinding binding: String) -> AnyObject?
}
extension NSObject {
  class func objectDidBeginEditing(editor: AnyObject)
  func objectDidBeginEditing(editor: AnyObject)
  class func objectDidEndEditing(editor: AnyObject)
  func objectDidEndEditing(editor: AnyObject)
}
extension NSObject {
  class func discardEditing()
  func discardEditing()
  class func commitEditing() -> Bool
  func commitEditing() -> Bool
  class func commitEditingWithDelegate(delegate: AnyObject?, didCommit didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func commitEditingWithDelegate(delegate: AnyObject?, didCommit didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.7, *)
  class func commitEditingAndReturnError() throws
  @available(OSX 10.7, *)
  func commitEditingAndReturnError() throws
}
let NSAlignmentBinding: String
let NSAlternateImageBinding: String
let NSAlternateTitleBinding: String
let NSAnimateBinding: String
let NSAnimationDelayBinding: String
let NSArgumentBinding: String
let NSAttributedStringBinding: String
let NSContentArrayBinding: String
let NSContentArrayForMultipleSelectionBinding: String
let NSContentBinding: String
@available(OSX 10.5, *)
let NSContentDictionaryBinding: String
let NSContentHeightBinding: String
let NSContentObjectBinding: String
let NSContentObjectsBinding: String
let NSContentSetBinding: String
let NSContentValuesBinding: String
let NSContentWidthBinding: String
let NSCriticalValueBinding: String
let NSDataBinding: String
let NSDisplayPatternTitleBinding: String
let NSDisplayPatternValueBinding: String
let NSDocumentEditedBinding: String
let NSDoubleClickArgumentBinding: String
let NSDoubleClickTargetBinding: String
let NSEditableBinding: String
let NSEnabledBinding: String
@available(OSX 10.5, *)
let NSExcludedKeysBinding: String
let NSFilterPredicateBinding: String
let NSFontBinding: String
let NSFontBoldBinding: String
let NSFontFamilyNameBinding: String
let NSFontItalicBinding: String
let NSFontNameBinding: String
let NSFontSizeBinding: String
let NSHeaderTitleBinding: String
let NSHiddenBinding: String
let NSImageBinding: String
@available(OSX 10.5, *)
let NSIncludedKeysBinding: String
@available(OSX 10.5, *)
let NSInitialKeyBinding: String
@available(OSX 10.5, *)
let NSInitialValueBinding: String
let NSIsIndeterminateBinding: String
let NSLabelBinding: String
@available(OSX 10.5, *)
let NSLocalizedKeyDictionaryBinding: String
let NSManagedObjectContextBinding: String
let NSMaximumRecentsBinding: String
let NSMaxValueBinding: String
let NSMaxWidthBinding: String
let NSMinValueBinding: String
let NSMinWidthBinding: String
let NSMixedStateImageBinding: String
let NSOffStateImageBinding: String
let NSOnStateImageBinding: String
@available(OSX 10.7, *)
let NSPositioningRectBinding: String
let NSPredicateBinding: String
let NSRecentSearchesBinding: String
let NSRepresentedFilenameBinding: String
let NSRowHeightBinding: String
let NSSelectedIdentifierBinding: String
let NSSelectedIndexBinding: String
let NSSelectedLabelBinding: String
let NSSelectedObjectBinding: String
let NSSelectedObjectsBinding: String
let NSSelectedTagBinding: String
let NSSelectedValueBinding: String
let NSSelectedValuesBinding: String
let NSSelectionIndexesBinding: String
let NSSelectionIndexPathsBinding: String
let NSSortDescriptorsBinding: String
let NSTargetBinding: String
let NSTextColorBinding: String
let NSTitleBinding: String
let NSToolTipBinding: String
@available(OSX 10.5, *)
let NSTransparentBinding: String
let NSValueBinding: String
let NSValuePathBinding: String
let NSValueURLBinding: String
let NSVisibleBinding: String
let NSWarningValueBinding: String
let NSWidthBinding: String
let NSAllowsEditingMultipleValuesSelectionBindingOption: String
let NSAllowsNullArgumentBindingOption: String
let NSAlwaysPresentsApplicationModalAlertsBindingOption: String
let NSConditionallySetsEditableBindingOption: String
let NSConditionallySetsEnabledBindingOption: String
let NSConditionallySetsHiddenBindingOption: String
let NSContinuouslyUpdatesValueBindingOption: String
let NSCreatesSortDescriptorBindingOption: String
let NSDeletesObjectsOnRemoveBindingsOption: String
let NSDisplayNameBindingOption: String
let NSDisplayPatternBindingOption: String
@available(OSX 10.5, *)
let NSContentPlacementTagBindingOption: String
let NSHandlesContentAsCompoundValueBindingOption: String
let NSInsertsNullPlaceholderBindingOption: String
let NSInvokesSeparatelyWithArrayObjectsBindingOption: String
let NSMultipleValuesPlaceholderBindingOption: String
let NSNoSelectionPlaceholderBindingOption: String
let NSNotApplicablePlaceholderBindingOption: String
let NSNullPlaceholderBindingOption: String
let NSRaisesForNotApplicableKeysBindingOption: String
let NSPredicateFormatBindingOption: String
let NSSelectorNameBindingOption: String
let NSSelectsAllWhenSettingContentBindingOption: String
let NSValidatesImmediatelyBindingOption: String
let NSValueTransformerNameBindingOption: String
let NSValueTransformerBindingOption: String
@available(OSX 10.11, *)
class NSLayoutAnchor : NSObject {
  func constraintEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!) -> NSLayoutConstraint!
  func constraintEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualTo(anchor: NSLayoutAnchor!, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
@available(OSX 10.11, *)
class NSLayoutXAxisAnchor : NSLayoutAnchor {
  init()
}
@available(OSX 10.11, *)
class NSLayoutYAxisAnchor : NSLayoutAnchor {
  init()
}
@available(OSX 10.11, *)
class NSLayoutDimension : NSLayoutAnchor {
  func constraintEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToConstant(c: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat) -> NSLayoutConstraint!
  func constraintEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintGreaterThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  func constraintLessThanOrEqualToAnchor(anchor: NSLayoutDimension!, multiplier m: CGFloat, constant c: CGFloat) -> NSLayoutConstraint!
  init()
}
enum NSLayoutRelation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LessThanOrEqual
  case Equal
  case GreaterThanOrEqual
}
enum NSLayoutAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Right
  case Top
  case Bottom
  case Leading
  case Trailing
  case Width
  case Height
  case CenterX
  case CenterY
  case Baseline
  static var LastBaseline: NSLayoutAttribute { get }
  @available(OSX 10.11, *)
  case FirstBaseline
  case NotAnAttribute
}
struct NSLayoutFormatOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AlignAllLeft: NSLayoutFormatOptions { get }
  static var AlignAllRight: NSLayoutFormatOptions { get }
  static var AlignAllTop: NSLayoutFormatOptions { get }
  static var AlignAllBottom: NSLayoutFormatOptions { get }
  static var AlignAllLeading: NSLayoutFormatOptions { get }
  static var AlignAllTrailing: NSLayoutFormatOptions { get }
  static var AlignAllCenterX: NSLayoutFormatOptions { get }
  static var AlignAllCenterY: NSLayoutFormatOptions { get }
  static var AlignAllBaseline: NSLayoutFormatOptions { get }
  static var AlignAllLastBaseline: NSLayoutFormatOptions { get }
  @available(OSX 10.11, *)
  static var AlignAllFirstBaseline: NSLayoutFormatOptions { get }
  static var AlignmentMask: NSLayoutFormatOptions { get }
  static var DirectionLeadingToTrailing: NSLayoutFormatOptions { get }
  static var DirectionLeftToRight: NSLayoutFormatOptions { get }
  static var DirectionRightToLeft: NSLayoutFormatOptions { get }
  static var DirectionMask: NSLayoutFormatOptions { get }
}
enum NSLayoutConstraintOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
@available(OSX 10.7, *)
typealias NSLayoutPriority = Float
@available(OSX 10.7, *)
let NSLayoutPriorityRequired: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDefaultHigh: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDragThatCanResizeWindow: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityWindowSizeStayPut: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDragThatCannotResizeWindow: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityDefaultLow: NSLayoutPriority
@available(OSX 10.7, *)
let NSLayoutPriorityFittingSizeCompression: NSLayoutPriority
@available(OSX 10.7, *)
class NSLayoutConstraint : NSObject, NSAnimatablePropertyContainer {
  class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions = [], metrics: [String : NSNumber]?, views: [String : AnyObject]) -> [NSLayoutConstraint]
  convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute, multiplier: CGFloat, constant c: CGFloat)
  var priority: NSLayoutPriority
  var shouldBeArchived: Bool
  unowned(unsafe) var firstItem: @sil_unmanaged AnyObject { get }
  var firstAttribute: NSLayoutAttribute { get }
  var relation: NSLayoutRelation { get }
  unowned(unsafe) var secondItem: @sil_unmanaged AnyObject? { get }
  var secondAttribute: NSLayoutAttribute { get }
  var multiplier: CGFloat { get }
  var constant: CGFloat
  @available(OSX 10.10, *)
  var isActive: Bool
  @available(OSX 10.10, *)
  class func activateConstraints(constraints: [NSLayoutConstraint])
  @available(OSX 10.10, *)
  class func deactivateConstraints(constraints: [NSLayoutConstraint])
  init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(key: String) -> AnyObject?
}
extension NSLayoutConstraint {
  var identifier: String?
}
extension NSView {
  @available(OSX 10.11, *)
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var leftAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var rightAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var topAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var widthAnchor: NSLayoutDimension { get }
  @available(OSX 10.11, *)
  var heightAnchor: NSLayoutDimension { get }
  @available(OSX 10.11, *)
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  @available(OSX 10.11, *)
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var firstBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.11, *)
  var lastBaselineAnchor: NSLayoutYAxisAnchor { get }
  @available(OSX 10.7, *)
  var constraints: [NSLayoutConstraint] { get }
  @available(OSX 10.7, *)
  func addConstraint(constraint: NSLayoutConstraint)
  @available(OSX 10.7, *)
  func addConstraints(constraints: [NSLayoutConstraint])
  @available(OSX 10.7, *)
  func removeConstraint(constraint: NSLayoutConstraint)
  @available(OSX 10.7, *)
  func removeConstraints(constraints: [NSLayoutConstraint])
}
extension NSWindow {
  @available(OSX 10.7, *)
  func updateConstraintsIfNeeded()
  @available(OSX 10.7, *)
  func layoutIfNeeded()
}
extension NSView {
  @available(OSX 10.7, *)
  func updateConstraintsForSubtreeIfNeeded()
  @available(OSX 10.7, *)
  func updateConstraints()
  @available(OSX 10.7, *)
  var needsUpdateConstraints: Bool
  @available(OSX 10.7, *)
  func layoutSubtreeIfNeeded()
  @available(OSX 10.7, *)
  func layout()
  @available(OSX 10.7, *)
  var needsLayout: Bool
}
extension NSView {
  @available(OSX 10.7, *)
  var translatesAutoresizingMaskIntoConstraints: Bool
  @available(OSX 10.7, *)
  class func requiresConstraintBasedLayout() -> Bool
}
extension NSView {
  @available(OSX 10.7, *)
  func alignmentRectForFrame(frame: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func frameForAlignmentRect(alignmentRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  var alignmentRectInsets: NSEdgeInsets { get }
  @available(OSX 10.11, *)
  var firstBaselineOffsetFromTop: CGFloat { get }
  @available(OSX 10.11, *)
  var lastBaselineOffsetFromBottom: CGFloat { get }
  @available(OSX 10.7, *)
  var baselineOffsetFromBottom: CGFloat { get }
  @available(OSX 10.7, *)
  var intrinsicContentSize: NSSize { get }
  @available(OSX 10.7, *)
  func invalidateIntrinsicContentSize()
  @available(OSX 10.7, *)
  func contentHuggingPriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  @available(OSX 10.7, *)
  func setContentHuggingPriority(priority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  @available(OSX 10.7, *)
  func contentCompressionResistancePriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  @available(OSX 10.7, *)
  func setContentCompressionResistancePriority(priority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
}
let NSViewNoInstrinsicMetric: CGFloat
@available(OSX 10.11, *)
let NSViewNoIntrinsicMetric: CGFloat
extension NSControl {
  @available(OSX 10.7, *)
  func invalidateIntrinsicContentSizeFor(cell: NSCell)
}
extension NSWindow {
  func anchorAttributeFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutAttribute
  func setAnchorAttribute(attr: NSLayoutAttribute, forOrientation orientation: NSLayoutConstraintOrientation)
}
extension NSView {
  @available(OSX 10.7, *)
  var fittingSize: NSSize { get }
}
extension NSView {
  @available(OSX 10.7, *)
  func constraintsAffectingLayoutFor(orientation: NSLayoutConstraintOrientation) -> [NSLayoutConstraint]
  @available(OSX 10.7, *)
  var hasAmbiguousLayout: Bool { get }
  @available(OSX 10.7, *)
  func exerciseAmbiguityInLayout()
}
extension NSWindow {
  @available(OSX 10.7, *)
  func visualizeConstraints(constraints: [NSLayoutConstraint])
}
@available(OSX 10.11, *)
class NSLayoutGuide : NSObject, NSCoding, NSUserInterfaceItemIdentification {
  var frame: NSRect { get }
  weak var owningView: @sil_weak NSView?
  var identifier: String
  var leadingAnchor: NSLayoutXAxisAnchor { get }
  var trailingAnchor: NSLayoutXAxisAnchor { get }
  var leftAnchor: NSLayoutXAxisAnchor { get }
  var rightAnchor: NSLayoutXAxisAnchor { get }
  var topAnchor: NSLayoutYAxisAnchor { get }
  var bottomAnchor: NSLayoutYAxisAnchor { get }
  var widthAnchor: NSLayoutDimension { get }
  var heightAnchor: NSLayoutDimension { get }
  var centerXAnchor: NSLayoutXAxisAnchor { get }
  var centerYAnchor: NSLayoutYAxisAnchor { get }
  init()
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSView {
  @available(OSX 10.11, *)
  func addLayoutGuide(guide: NSLayoutGuide)
  @available(OSX 10.11, *)
  func removeLayoutGuide(guide: NSLayoutGuide)
  @available(OSX 10.11, *)
  var layoutGuides: [NSLayoutGuide] { get }
}
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

  /**************************** Initialization ****************************/
  init()
  init?(coder: NSCoder)

  /*************************** Text storage ***************************/
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  func replaceTextStorage(newTextStorage: NSTextStorage)

  /**************************** Text containers ****************************/
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(container: NSTextContainer)
  func insertTextContainer(container: NSTextContainer, at index: Int)
  func removeTextContainerAt(index: Int)
  func textContainerChangedGeometry(container: NSTextContainer)
  func textContainerChangedTextView(container: NSTextContainer)

  /**************************** Delegate ****************************/
  unowned(unsafe) var delegate: @sil_unmanaged NSLayoutManagerDelegate?

  /*********************** Global layout manager options ***********************/
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var hyphenationFactor: Float
  var usesFontLeading: Bool
  @available(OSX 10.5, *)
  var allowsNonContiguousLayout: Bool
  @available(OSX 10.5, *)
  var hasNonContiguousLayout: Bool { get }
  var isBackgroundLayoutEnabled: Bool
  var defaultAttachmentScaling: NSImageScaling

  /*********************** Typesetter ***********************/
  var typesetter: NSTypesetter
  var typesetterBehavior: NSTypesetterBehavior

  /************************** Invalidation **************************/
  func invalidateGlyphsForCharacterRange(charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX 10.5, *)
  func invalidateLayoutForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer)
  func invalidateDisplayForCharacterRange(charRange: NSRange)
  func invalidateDisplayForGlyphRange(glyphRange: NSRange)
  @available(OSX 10.11, *)
  func processEditingFor(textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)

  /************************ Causing glyph generation and layout ************************/
  func ensureGlyphsForCharacterRange(charRange: NSRange)
  func ensureGlyphsForGlyphRange(glyphRange: NSRange)
  func ensureLayoutForCharacterRange(charRange: NSRange)
  func ensureLayoutForGlyphRange(glyphRange: NSRange)
  func ensureLayoutFor(container: NSTextContainer)
  func ensureLayoutForBoundingRect(bounds: NSRect, in container: NSTextContainer)

  /************************ Set glyphs and glyph properties ************************/
  @available(OSX 10.11, *)
  func setGlyphs(glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange)

  /************************ Get glyphs and glyph properties ************************/
  var numberOfGlyphs: Int { get }
  func cgGlyphAt(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> CGGlyph
  func cgGlyphAt(glyphIndex: Int) -> CGGlyph
  func isValidGlyphIndex(glyphIndex: Int) -> Bool
  @available(OSX 10.5, *)
  func propertyForGlyphAt(glyphIndex: Int) -> NSGlyphProperty
  func characterIndexForGlyphAt(glyphIndex: Int) -> Int
  func glyphIndexForCharacterAt(charIndex: Int) -> Int
  @available(OSX 10.5, *)
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>, properties props: UnsafeMutablePointer<NSGlyphProperty>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func setTextContainer(container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect)
  func setExtraLineFragmentRect(fragmentRect: NSRect, usedRect: NSRect, textContainer container: NSTextContainer)
  func setLocation(location: NSPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphAt glyphIndex: Int)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphAt glyphIndex: Int)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)

  /************************ Get layout information ************************/
  func getFirstUnlaidCharacterIndex(charIndex: UnsafeMutablePointer<Int>, glyphIndex: UnsafeMutablePointer<Int>)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainerForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSTextContainer?
  @available(OSX 10.0, *)
  func textContainerForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRectFor(container: NSTextContainer) -> NSRect
  func lineFragmentRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  func lineFragmentUsedRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  @available(OSX 10.0, *)
  func lineFragmentUsedRectForGlyphAt(glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer, withoutAdditionalLayout flag: Bool) -> NSRect
  var extraLineFragmentRect: NSRect { get }
  var extraLineFragmentUsedRect: NSRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func locationForGlyphAt(glyphIndex: Int) -> NSPoint
  func notShownAttributeForGlyphAt(glyphIndex: Int) -> Bool
  func drawsOutsideLineFragmentForGlyphAt(glyphIndex: Int) -> Bool
  func attachmentSizeForGlyphAt(glyphIndex: Int) -> NSSize
  @available(OSX 10.11, *)
  func truncatedGlyphRangeInLineFragmentForGlyphAt(glyphIndex: Int) -> NSRange

  /************************ More sophisticated queries ************************/
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeFor(container: NSTextContainer) -> NSRange
  func rangeOfNominallySpacedGlyphsContaining(glyphIndex: Int) -> NSRange
  func boundingRectForGlyphRange(glyphRange: NSRange, in container: NSTextContainer) -> NSRect
  func glyphRangeForBoundingRect(bounds: NSRect, in container: NSTextContainer) -> NSRange
  func glyphRangeForBoundingRectWithoutAdditionalLayout(bounds: NSRect, in container: NSTextContainer) -> NSRange
  func glyphIndexFor(point: NSPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func glyphIndexFor(point: NSPoint, in container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyphFor(point: NSPoint, in container: NSTextContainer) -> CGFloat
  func characterIndexFor(point: NSPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>) -> Int
  func getLineFragmentInsertionPointsForCharacterAt(charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>, characterIndexes charIndexes: UnsafeMutablePointer<Int>) -> Int
  @available(OSX 10.11, *)
  func enumerateLineFragmentsForGlyphRange(glyphRange: NSRange, usingBlock block: (NSRect, NSRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.11, *)
  func enumerateEnclosingRectsForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, usingBlock block: (NSRect, UnsafeMutablePointer<ObjCBool>) -> Void)

  /************************ Drawing support ************************/
  func drawBackgroundForGlyphRange(glyphsToShow: NSRange, at origin: NSPoint)
  func drawGlyphsForGlyphRange(glyphsToShow: NSRange, at origin: NSPoint)
  @available(OSX 10.7, *)
  func showCGGlyphs(glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<NSPoint>, count glyphCount: Int, font: NSFont, matrix textMatrix: NSAffineTransform, attributes: [String : AnyObject], in graphicsContext: NSGraphicsContext)
  @available(OSX 10.6, *)
  func fillBackgroundRectArray(rectArray: UnsafePointer<NSRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: NSColor)
  func drawUnderlineForGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func underlineGlyphRange(glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func drawStrikethroughForGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func strikethroughGlyphRange(glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func showAttachmentCell(cell: NSCell, in rect: NSRect, characterIndex attachmentIndex: Int)

  /************************** Block information **************************/
  func setLayoutRect(rect: NSRect, forTextBlock block: NSTextBlock, glyphRange: NSRange)
  func setBoundsRect(rect: NSRect, forTextBlock block: NSTextBlock, glyphRange: NSRange)
  func layoutRectFor(block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func boundsRectFor(block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func layoutRectFor(block: NSTextBlock, at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect
  func boundsRectFor(block: NSTextBlock, at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer) -> NSRect

  /************************ Temporary attribute support ************************/
  func temporaryAttributesAtCharacterIndex(charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer) -> [String : AnyObject]
  func setTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func addTemporaryAttributes(attrs: [String : AnyObject], forCharacterRange charRange: NSRange)
  func removeTemporaryAttribute(attrName: String, forCharacterRange charRange: NSRange)
  @available(OSX 10.5, *)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, effectiveRange range: NSRangePointer) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttribute(attrName: String, atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> AnyObject?
  @available(OSX 10.5, *)
  func temporaryAttributesAtCharacterIndex(location: Int, longestEffectiveRange range: NSRangePointer, in rangeLimit: NSRange) -> [String : AnyObject]
  @available(OSX 10.5, *)
  func addTemporaryAttribute(attrName: String, value: AnyObject, forCharacterRange charRange: NSRange)

  /******************************* Font metrics ******************************/
  func defaultLineHeightFor(theFont: NSFont) -> CGFloat
  func defaultBaselineOffsetFor(theFont: NSFont) -> CGFloat
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
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

  /***************************** Ruler support *****************************/
  func rulerMarkersFor(view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]
  func rulerAccessoryViewFor(view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView, enabled isEnabled: Bool) -> NSView?

  /************************ First responder support ************************/
  func layoutManagerOwnsFirstResponderIn(window: NSWindow) -> Bool
  unowned(unsafe) var firstTextView: @sil_unmanaged NSTextView? { get }
  unowned(unsafe) var textViewForBeginningOfSelection: @sil_unmanaged NSTextView? { get }
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {

  /************************ Glyph generation ************************/
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSGlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange) -> Int

  /************************ Line layout ************************/
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
  optional func layoutManager(layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<NSRect>, lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool

  /************************ Layout processing ************************/
  @available(OSX 10.0, *)
  optional func layoutManagerDidInvalidateLayout(sender: NSLayoutManager)
  @available(OSX 10.0, *)
  optional func layoutManager(layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(OSX 10.11, *)
  optional func layoutManager(layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: NSSize)
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
  func glyphAt(glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>) -> NSGlyph
  func glyphAt(glyphIndex: Int) -> NSGlyph
  func rectArrayForCharacterRange(charRange: NSRange, withinSelectedCharacterRange selCharRange: NSRange, in container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  func rectArrayForGlyphRange(glyphRange: NSRange, withinSelectedGlyphRange selGlyphRange: NSRange, in container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray
  @available(OSX, introduced=10.0, deprecated=10.11)
  var usesScreenFonts: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func substituteFontFor(originalFont: NSFont) -> NSFont
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAt glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func replaceGlyphAt(glyphIndex: Int, withGlyph newGlyph: NSGlyph)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func deleteGlyphsIn(glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setCharacterIndex(charIndex: Int, forGlyphAt glyphIndex: Int)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAt glyphIndex: Int)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func invalidateGlyphsOnLayoutInvalidationForGlyphRange(glyphRange: NSRange)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func intAttribute(attributeTag: Int, forGlyphAt glyphIndex: Int) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphsIn(glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(glyphArray: UnsafeMutablePointer<NSGlyph>, range glyphRange: NSRange) -> Int
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -invalidateLayoutForCharacterRange:actualCharacterRange: instead")
  func invalidateLayoutForCharacterRange(charRange: NSRange, isSoft flag: Bool, actualCharacterRange actualCharRange: NSRangePointer)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -processEditingForTextStorage:edited:range:changeInLength:invalidatedRange: instead")
  func textStorage(str: NSTextStorage, edited editedMask: NSTextStorageEditedOptions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use -setLocation:forStartOfGlyphRange: instead")
  func setLocations(locations: NSPointArray, startingGlyphIndexes glyphIndexes: UnsafeMutablePointer<Int>, count: Int, forGlyphRange glyphRange: NSRange)
}
class NSLevelIndicator : NSControl {
  @available(OSX 10.10, *)
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func tickMarkValueAt(index: Int) -> Double
  func rectOfTickMarkAt(index: Int) -> NSRect
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
enum NSLevelIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RelevancyLevelIndicatorStyle
  case ContinuousCapacityLevelIndicatorStyle
  case DiscreteCapacityLevelIndicatorStyle
  case RatingLevelIndicatorStyle
}
class NSLevelIndicatorCell : NSActionCell {
  init(levelIndicatorStyle: NSLevelIndicatorStyle)
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func rectOfTickMarkAt(index: Int) -> NSRect
  func tickMarkValueAt(index: Int) -> Double
  func setImage(image: NSImage?)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
enum NSMatrixMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RadioModeMatrix
  case HighlightModeMatrix
  case ListModeMatrix
  case TrackModeMatrix
}
struct __MFlags {
  var reservedMatrix: UInt32
  var cellSizeNeedsAutorecalc: UInt32
  var autorecalculatesCellSize: UInt32
  var drawingContextMenuHighlightOnAllSelectedRows: UInt32
  var drawingContextMenuHighlight: UInt32
  var browserOptimizationsEnabled: UInt32
  var needsRedrawBeforeFirstLiveResizeCache: UInt32
  var tmpAllowNonVisibleCellsToBecomeFirstResponder: UInt32
  var subclassIsSafeForLiveResize: UInt32
  var hasCachedSubclassIsSafeForLiveResize: UInt32
  var liveResizeImageCacheingEnabled: UInt32
  var checkForSimpleTrackingMode: UInt32
  var useSimpleTrackingMode: UInt32
  var refusesFirstResponder: UInt32
  var dontScroll: UInt32
  var changingSelectionWithKeyboard: UInt32
  var onlySetKeyCell: UInt32
  var currentlySelectingCell: UInt32
  var allowsIncrementalSearching: UInt32
  var tabKeyTraversesCellsExplicitlySet: UInt32
  var tabKeyTraversesCells: UInt32
  var drawingAncestor: UInt32
  var autosizeCells: UInt32
  var drawsBackground: UInt32
  var drawsCellBackground: UInt32
  var selectionByRect: UInt32
  var autoscroll: UInt32
  var allowEmptySel: UInt32
  var listMode: UInt32
  var radioMode: UInt32
  var highlightMode: UInt32
  init()
  init(reservedMatrix: UInt32, cellSizeNeedsAutorecalc: UInt32, autorecalculatesCellSize: UInt32, drawingContextMenuHighlightOnAllSelectedRows: UInt32, drawingContextMenuHighlight: UInt32, browserOptimizationsEnabled: UInt32, needsRedrawBeforeFirstLiveResizeCache: UInt32, tmpAllowNonVisibleCellsToBecomeFirstResponder: UInt32, subclassIsSafeForLiveResize: UInt32, hasCachedSubclassIsSafeForLiveResize: UInt32, liveResizeImageCacheingEnabled: UInt32, checkForSimpleTrackingMode: UInt32, useSimpleTrackingMode: UInt32, refusesFirstResponder: UInt32, dontScroll: UInt32, changingSelectionWithKeyboard: UInt32, onlySetKeyCell: UInt32, currentlySelectingCell: UInt32, allowsIncrementalSearching: UInt32, tabKeyTraversesCellsExplicitlySet: UInt32, tabKeyTraversesCells: UInt32, drawingAncestor: UInt32, autosizeCells: UInt32, drawsBackground: UInt32, drawsCellBackground: UInt32, selectionByRect: UInt32, autoscroll: UInt32, allowEmptySel: UInt32, listMode: UInt32, radioMode: UInt32, highlightMode: UInt32)
}
typealias _MFlags = __MFlags
class NSMatrix : NSControl, NSUserInterfaceValidations {
  convenience init(frame frameRect: NSRect)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, prototype aCell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode aMode: NSMatrixMode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  var cellClass: AnyClass
  @NSCopying var prototype: NSCell?
  func makeCellAtRow(row: Int, column col: Int) -> NSCell
  var mode: NSMatrixMode
  var allowsEmptySelection: Bool
  func sendAction(aSelector: Selector, to anObject: AnyObject, forAllCells flag: Bool)
  var cells: [NSCell] { get }
  func sortUsing(comparator: Selector)
  func sortUsing(compare: @convention(c) (AnyObject, AnyObject, UnsafeMutablePointer<Void>) -> Int, context: UnsafeMutablePointer<Void>)
  var selectedCells: [NSCell] { get }
  var selectedRow: Int { get }
  var selectedColumn: Int { get }
  var isSelectionByRect: Bool
  func setSelectionFrom(startPos: Int, to endPos: Int, anchor anchorPos: Int, highlight lit: Bool)
  func deselectSelectedCell()
  func deselectAllCells()
  func selectCellAtRow(row: Int, column col: Int)
  func selectAll(sender: AnyObject?)
  func selectCellWithTag(anInt: Int) -> Bool
  var cellSize: NSSize
  var intercellSpacing: NSSize
  func setScrollable(flag: Bool)
  @NSCopying var backgroundColor: NSColor
  @NSCopying var cellBackgroundColor: NSColor?
  var drawsCellBackground: Bool
  var drawsBackground: Bool
  func setState(value: Int, atRow row: Int, column col: Int)
  func getNumberOfRows(rowCount: UnsafeMutablePointer<Int>, columns colCount: UnsafeMutablePointer<Int>)
  var numberOfRows: Int { get }
  var numberOfColumns: Int { get }
  func cellAtRow(row: Int, column col: Int) -> NSCell?
  func cellFrameAtRow(row: Int, column col: Int) -> NSRect
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, of aCell: NSCell) -> Bool
  func getRow(row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, forPoint aPoint: NSPoint) -> Bool
  func renewRows(newRows: Int, columns newCols: Int)
  func putCell(newCell: NSCell, atRow row: Int, column col: Int)
  func addRow()
  func addRowWith(newCells: [NSCell])
  func insertRow(row: Int)
  func insertRow(row: Int, withCells newCells: [NSCell])
  func removeRow(row: Int)
  func addColumn()
  func addColumnWith(newCells: [NSCell])
  func insertColumn(column: Int)
  func insertColumn(column: Int, withCells newCells: [NSCell])
  func removeColumn(col: Int)
  func cellWithTag(anInt: Int) -> NSCell?
  var doubleAction: Selector
  var autosizesCells: Bool
  func sizeToCells()
  func setValidateSize(flag: Bool)
  func drawCellAtRow(row: Int, column col: Int)
  func highlightCell(flag: Bool, atRow row: Int, column col: Int)
  var isAutoscroll: Bool
  func scrollCellToVisibleAtRow(row: Int, column col: Int)
  var mouseDownFlags: Int { get }
  func mouseDown(theEvent: NSEvent)
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func sendAction() -> Bool
  func sendDoubleAction()
  unowned(unsafe) var delegate: @sil_unmanaged NSMatrixDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: NSNotification)
  func textDidEndEditing(notification: NSNotification)
  func textDidChange(notification: NSNotification)
  func selectText(sender: AnyObject?)
  func selectTextAtRow(row: Int, column col: Int) -> NSCell?
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func resetCursorRects()
  func setToolTip(toolTipString: String?, forCell cell: NSCell)
  func toolTipFor(cell: NSCell) -> String?
  @available(OSX 10.8, *)
  var autorecalculatesCellSize: Bool
  func selectedCell() -> NSCell?
  init?(coder: NSCoder)
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
extension NSMatrix {
  var tabKeyTraversesCells: Bool
  unowned(unsafe) var keyCell: @sil_unmanaged NSCell?
}
protocol NSMatrixDelegate : NSControlTextEditingDelegate {
}
@available(OSX 10.9, *)
struct NSMediaLibrary : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Audio: NSMediaLibrary { get }
  static var Image: NSMediaLibrary { get }
  static var Movie: NSMediaLibrary { get }
}
@available(OSX 10.9, *)
class NSMediaLibraryBrowserController : NSObject {
  var isVisible: Bool
  var frame: NSRect
  var mediaLibraries: NSMediaLibrary
  class func shared() -> NSMediaLibraryBrowserController
  @IBAction func togglePanel(sender: AnyObject?)
  init()
}
class NSMenu : NSObject, NSCopying, NSCoding {
  init(title aTitle: String)
  var title: String
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView)
  class func popUpContextMenu(menu: NSMenu, withEvent event: NSEvent, forView view: NSView, withFont font: NSFont?)
  @available(OSX 10.6, *)
  func popUpMenuPositioningItem(item: NSMenuItem?, atLocation location: NSPoint, in view: NSView?) -> Bool
  class func setMenuBarVisible(visible: Bool)
  class func menuBarVisible() -> Bool
  unowned(unsafe) var supermenu: @sil_unmanaged NSMenu?
  func insert(newItem: NSMenuItem, at index: Int)
  func add(newItem: NSMenuItem)
  func insertItemWithTitle(aString: String, action aSelector: Selector, keyEquivalent charCode: String, at index: Int) -> NSMenuItem?
  func addItemWithTitle(aString: String, action aSelector: Selector, keyEquivalent charCode: String) -> NSMenuItem?
  func removeItemAt(index: Int)
  func remove(item: NSMenuItem)
  func setSubmenu(aMenu: NSMenu?, forItem anItem: NSMenuItem)
  @available(OSX 10.6, *)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func itemAt(index: Int) -> NSMenuItem?
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(aTitle: String) -> Int
  func indexOfItemWithTag(aTag: Int) -> Int
  func indexOfItemWithRepresentedObject(object: AnyObject) -> Int
  func indexOfItemWithSubmenu(submenu: NSMenu?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemWithTitle(aTitle: String) -> NSMenuItem?
  func itemWithTag(tag: Int) -> NSMenuItem?
  var autoenablesItems: Bool
  func update()
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func itemChanged(item: NSMenuItem)
  func performActionForItemAt(index: Int)
  unowned(unsafe) var delegate: @sil_unmanaged NSMenuDelegate?
  var menuBarHeight: CGFloat { get }
  @available(OSX 10.5, *)
  func cancelTracking()
  @available(OSX 10.6, *)
  func cancelTrackingWithoutAnimation()
  @available(OSX 10.5, *)
  var highlightedItem: NSMenuItem? { get }
  @available(OSX 10.6, *)
  var minimumWidth: CGFloat
  @available(OSX 10.6, *)
  var size: NSSize { get }
  @available(OSX 10.6, *)
  var font: NSFont!
  @available(OSX 10.6, *)
  var allowsContextMenuPlugIns: Bool
  @available(OSX 10.5, *)
  var showsStateColumn: Bool
  @available(OSX 10.11, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __mFlags {
  var noAutoenable: UInt32
  var inMain: UInt32
  var internalPerformAction: UInt32
  var condenseSeparators: UInt32
  var disabled: UInt32
  var ownedByPopUp: UInt32
  var delegateNeedsUpdate: UInt32
  var delegateUpdateItem: UInt32
  var delegateHasKeyEquiv: UInt32
  var delegateHasAltKeyEquiv: UInt32
  var excludeMarkColumn: UInt32
  var isContextualMenu: UInt32
  var cmPluginMode: UInt32
  var invertedCMPluginTypes: UInt32
  var allowsDifferentSelection: UInt32
  var noTopPadding: UInt32
  var noBottomPadding: UInt32
  var hasNCStyle: UInt32
  var delegateIsUnsafeUnretained: UInt32
  var RESERVED: UInt32
  init()
  init(noAutoenable: UInt32, inMain: UInt32, internalPerformAction: UInt32, condenseSeparators: UInt32, disabled: UInt32, ownedByPopUp: UInt32, delegateNeedsUpdate: UInt32, delegateUpdateItem: UInt32, delegateHasKeyEquiv: UInt32, delegateHasAltKeyEquiv: UInt32, excludeMarkColumn: UInt32, isContextualMenu: UInt32, cmPluginMode: UInt32, invertedCMPluginTypes: UInt32, allowsDifferentSelection: UInt32, noTopPadding: UInt32, noBottomPadding: UInt32, hasNCStyle: UInt32, delegateIsUnsafeUnretained: UInt32, RESERVED: UInt32)
}
extension NSMenu {
  func submenuAction(sender: AnyObject?)
}
extension NSObject {
  class func validate(menuItem: NSMenuItem) -> Bool
  func validate(menuItem: NSMenuItem) -> Bool
}
protocol NSMenuDelegate : NSObjectProtocol {
  optional func menuNeedsUpdate(menu: NSMenu)
  optional func numberOfItemsIn(menu: NSMenu) -> Int
  optional func menu(menu: NSMenu, updateItem item: NSMenuItem, at index: Int, shouldCancel: Bool) -> Bool
  optional func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  @available(OSX 10.5, *)
  optional func menuWillOpen(menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menuDidClose(menu: NSMenu)
  @available(OSX 10.5, *)
  optional func menu(menu: NSMenu, willHighlight item: NSMenuItem?)
  @available(OSX 10.6, *)
  optional func confinementRectFor(menu: NSMenu, on screen: NSScreen?) -> NSRect
}
struct NSMenuProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PropertyItemTitle: NSMenuProperties { get }
  static var PropertyItemAttributedTitle: NSMenuProperties { get }
  static var PropertyItemKeyEquivalent: NSMenuProperties { get }
  static var PropertyItemImage: NSMenuProperties { get }
  static var PropertyItemEnabled: NSMenuProperties { get }
  static var PropertyItemAccessibilityDescription: NSMenuProperties { get }
}
extension NSMenu {
  @available(OSX 10.6, *)
  var propertiesToUpdate: NSMenuProperties { get }
}
let NSMenuWillSendActionNotification: String
let NSMenuDidSendActionNotification: String
let NSMenuDidAddItemNotification: String
let NSMenuDidRemoveItemNotification: String
let NSMenuDidChangeItemNotification: String
let NSMenuDidBeginTrackingNotification: String
let NSMenuDidEndTrackingNotification: String
extension NSMenu {
  @available(OSX, introduced=10.0, deprecated=10.11)
  class func menuZone() -> NSZone
  @available(OSX, introduced=10.0, deprecated=10.11)
  var menuChangedMessagesEnabled: Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func helpRequested(eventPtr: NSEvent)
  @available(OSX, introduced=10.0, deprecated=10.11)
  var isTornOff: Bool { get }
}
class NSMenuItem : NSObject, NSCopying, NSCoding, NSValidatedUserInterfaceItem {
  class func setUsesUserKeyEquivalents(flag: Bool)
  class func usesUserKeyEquivalents() -> Bool
  class func separator() -> NSMenuItem
  init(title aString: String, action aSelector: Selector, keyEquivalent charCode: String)
  unowned(unsafe) var menu: @sil_unmanaged NSMenu?
  var hasSubmenu: Bool { get }
  var submenu: NSMenu?
  @available(OSX 10.6, *)
  unowned(unsafe) var parent: @sil_unmanaged NSMenuItem? { get }
  var title: String
  @NSCopying var attributedTitle: NSAttributedString?
  var isSeparatorItem: Bool { get }
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  var userKeyEquivalent: String { get }
  func setTitleWithMnemonic(stringWithAmpersand: String)
  var image: NSImage?
  var state: Int
  var onStateImage: NSImage!
  var offStateImage: NSImage!
  var mixedStateImage: NSImage!
  var isEnabled: Bool
  var isAlternate: Bool
  var indentationLevel: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  var representedObject: AnyObject?
  @available(OSX 10.5, *)
  var view: NSView?
  @available(OSX 10.5, *)
  var isHighlighted: Bool { get }
  @available(OSX 10.5, *)
  var isHidden: Bool
  @available(OSX 10.5, *)
  var hiddenOrHasHiddenAncestor: Bool { get }
  var toolTip: String?
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __miFlags {
  var keGenerationCount: UInt32
  var disabled: UInt32
  var isSeparator: UInt32
  var hidden: UInt32
  var alternate: UInt32
  var moreAlternate: UInt32
  var singleAlternate: UInt32
  var indent: UInt32
  var keShareMode: UInt32
  var state: UInt32
  var destructive: UInt32
  var RESERVED1: UInt32
  var limitedView: UInt32
  var nextItemIsAlternate: UInt32
  var blockKE: UInt32
  var ignoredForAccessibility: UInt32
  var hiddenActiveKE: UInt32
  var noRepeatKEs: UInt32
  var targetWeak: UInt32
  init()
  init(keGenerationCount: UInt32, disabled: UInt32, isSeparator: UInt32, hidden: UInt32, alternate: UInt32, moreAlternate: UInt32, singleAlternate: UInt32, indent: UInt32, keShareMode: UInt32, state: UInt32, destructive: UInt32, RESERVED1: UInt32, limitedView: UInt32, nextItemIsAlternate: UInt32, blockKE: UInt32, ignoredForAccessibility: UInt32, hiddenActiveKE: UInt32, noRepeatKEs: UInt32, targetWeak: UInt32)
}
extension NSView {
  @available(OSX 10.5, *)
  var enclosingMenuItem: NSMenuItem? { get }
}
extension NSMenuItem {
}
class NSMenuItemCell : NSButtonCell {
  var menuItem: NSMenuItem?
  var needsSizing: Bool
  func calcSize()
  var needsDisplay: Bool
  var stateImageWidth: CGFloat { get }
  var imageWidth: CGFloat { get }
  var titleWidth: CGFloat { get }
  var keyEquivalentWidth: CGFloat { get }
  func stateImageRectForBounds(cellFrame: NSRect) -> NSRect
  func titleRectForBounds(cellFrame: NSRect) -> NSRect
  func keyEquivalentRectForBounds(cellFrame: NSRect) -> NSRect
  func drawSeparatorItemWithFrame(cellFrame: NSRect, in controlView: NSView)
  func drawStateImageWithFrame(cellFrame: NSRect, in controlView: NSView)
  func drawImageWithFrame(cellFrame: NSRect, in controlView: NSView)
  func drawTitleWithFrame(cellFrame: NSRect, in controlView: NSView)
  func drawKeyEquivalentWithFrame(cellFrame: NSRect, in controlView: NSView)
  func drawBorderAndBackgroundWithFrame(cellFrame: NSRect, in controlView: NSView)
  var tag: Int
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __micFlags {
  var needsSizing: UInt32
  var reserved: UInt32
  var needsDisplay: UInt32
  var keyEquivGlyphWidth: UInt32
  var uniqueAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(needsSizing: UInt32, reserved: UInt32, needsDisplay: UInt32, keyEquivGlyphWidth: UInt32, uniqueAgainstMain: UInt32, RESERVED: UInt32)
}
class NSNib : NSObject, NSCoding {
  init?(nibNamed nibName: String, bundle: NSBundle?)
  @available(OSX 10.8, *)
  init(nibData: NSData, bundle: NSBundle?)
  @available(OSX 10.8, *)
  func instantiateWithOwner(owner: AnyObject?, topLevel topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct _NSNibFlags {
  var _isKeyed: UInt32
  var _inheritsDecodeTimeBundle: UInt32
  var _inheritsDecodeTimePath: UInt32
  var _reserved: UInt32
  init()
  init(_isKeyed: UInt32, _inheritsDecodeTimeBundle: UInt32, _inheritsDecodeTimePath: UInt32, _reserved: UInt32)
}
extension NSNib {
}
extension NSBundle {
  @available(OSX 10.8, *)
  func loadNibNamed(nibName: String, owner: AnyObject?, topLevel topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
}
extension NSObject {
  class func awakeFromNib()
  func awakeFromNib()
  @available(OSX 10.10, *)
  class func prepareForInterfaceBuilder()
  @available(OSX 10.10, *)
  func prepareForInterfaceBuilder()
}
extension NSBundle {
}
class NSObjectController : NSController {
  init(content: AnyObject?)
  init?(coder: NSCoder)
  var content: AnyObject?
  var selection: AnyObject { get }
  var selectedObjects: [AnyObject] { get }
  var automaticallyPreparesContent: Bool
  func prepareContent()
  var objectClass: AnyClass!
  func newObject() -> AnyObject
  func add(object: AnyObject)
  func remove(object: AnyObject)
  var isEditable: Bool
  func add(sender: AnyObject?)
  var canAdd: Bool { get }
  func remove(sender: AnyObject?)
  var canRemove: Bool { get }
  func validate(item: NSValidatedUserInterfaceItem) -> Bool
  convenience init()
}
struct __objectControllerFlags {
  var _editable: UInt32
  var _automaticallyPreparesContent: UInt32
  var _hasLoadedData: UInt32
  var _explicitlyCannotAdd: UInt32
  var _explicitlyCannotRemove: UInt32
  var _isUsingManagedProxy: UInt32
  var _hasFetched: UInt32
  var _batches: UInt32
  var _reservedObjectController: UInt32
  init()
  init(_editable: UInt32, _automaticallyPreparesContent: UInt32, _hasLoadedData: UInt32, _explicitlyCannotAdd: UInt32, _explicitlyCannotRemove: UInt32, _isUsingManagedProxy: UInt32, _hasFetched: UInt32, _batches: UInt32, _reservedObjectController: UInt32)
}
extension NSObjectController {
  var managedObjectContext: NSManagedObjectContext?
  var entityName: String?
  var fetchPredicate: NSPredicate?
  func fetchWith(fetchRequest: NSFetchRequest?, merge: Bool) throws
  func fetch(sender: AnyObject?)
  @available(OSX 10.5, *)
  var usesLazyFetching: Bool
  @available(OSX 10.5, *)
  func defaultFetchRequest() -> NSFetchRequest
}
var NSOPENGL_CURRENT_VERSION: Int32 { get }
struct NSOpenGLGlobalOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NSOpenGLGOFormatCacheSize: NSOpenGLGlobalOption { get }
var NSOpenGLGOClearFormatCache: NSOpenGLGlobalOption { get }
var NSOpenGLGORetainRenderers: NSOpenGLGlobalOption { get }
var NSOpenGLGOUseBuildCache: NSOpenGLGlobalOption { get }
func NSOpenGLSetOption(pname: NSOpenGLGlobalOption, _ param: GLint)
func NSOpenGLGetOption(pname: NSOpenGLGlobalOption, _ param: UnsafeMutablePointer<GLint>)
func NSOpenGLGetVersion(major: UnsafeMutablePointer<GLint>, _ minor: UnsafeMutablePointer<GLint>)
var NSOpenGLPFAAllRenderers: Int { get }
var NSOpenGLPFATripleBuffer: Int { get }
var NSOpenGLPFADoubleBuffer: Int { get }
var NSOpenGLPFAStereo: Int { get }
var NSOpenGLPFAAuxBuffers: Int { get }
var NSOpenGLPFAColorSize: Int { get }
var NSOpenGLPFAAlphaSize: Int { get }
var NSOpenGLPFADepthSize: Int { get }
var NSOpenGLPFAStencilSize: Int { get }
var NSOpenGLPFAAccumSize: Int { get }
var NSOpenGLPFAMinimumPolicy: Int { get }
var NSOpenGLPFAMaximumPolicy: Int { get }
var NSOpenGLPFASampleBuffers: Int { get }
var NSOpenGLPFASamples: Int { get }
var NSOpenGLPFAAuxDepthStencil: Int { get }
var NSOpenGLPFAColorFloat: Int { get }
var NSOpenGLPFAMultisample: Int { get }
var NSOpenGLPFASupersample: Int { get }
var NSOpenGLPFASampleAlpha: Int { get }
var NSOpenGLPFARendererID: Int { get }
var NSOpenGLPFANoRecovery: Int { get }
var NSOpenGLPFAAccelerated: Int { get }
var NSOpenGLPFAClosestPolicy: Int { get }
var NSOpenGLPFABackingStore: Int { get }
var NSOpenGLPFAScreenMask: Int { get }
@available(OSX 10.5, *)
var NSOpenGLPFAAllowOfflineRenderers: Int { get }
var NSOpenGLPFAAcceleratedCompute: Int { get }
var NSOpenGLPFAVirtualScreenCount: Int { get }
@available(OSX 10.7, *)
var NSOpenGLPFAOpenGLProfile: Int { get }
typealias NSOpenGLPixelFormatAttribute = UInt32
@available(OSX 10.7, *)
var NSOpenGLProfileVersionLegacy: Int { get }
@available(OSX 10.7, *)
var NSOpenGLProfileVersion3_2Core: Int { get }
@available(OSX 10.10, *)
var NSOpenGLProfileVersion4_1Core: Int { get }
class NSOpenGLPixelFormat : NSObject, NSCoding {
  init?(attributes attribs: UnsafePointer<NSOpenGLPixelFormatAttribute>)
  @available(OSX 10.6, *)
  init?(cglPixelFormatObj format: COpaquePointer)
  func getValues(vals: UnsafeMutablePointer<GLint>, forAttribute attrib: NSOpenGLPixelFormatAttribute, forVirtualScreen screen: GLint)
  var numberOfVirtualScreens: GLint { get }
  var cglPixelFormatObj: COpaquePointer { get }
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*****************
** NSOpenGLContext
*****************/
enum NSOpenGLContextParameter : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GLCPSwapInterval
  case GLCPSurfaceOrder
  case GLCPSurfaceOpacity
  case GLCPSurfaceBackingSize
  case GLCPReclaimResources
  case GLCPCurrentRendererID
  case GLCPGPUVertexProcessing
  case GLCPGPUFragmentProcessing
  case GLCPHasDrawable
  case GLCPMPSwapsInFlight
  case GLCPSwapRectangle
  case GLCPSwapRectangleEnable
  case GLCPRasterizationEnable
  case GLCPStateValidation
  case GLCPSurfaceSurfaceVolatile
}
typealias NSOpenGLContextAuxiliary = _CGLContextObject
class NSOpenGLContext : NSObject, NSLocking {
  init?(format: NSOpenGLPixelFormat, share: NSOpenGLContext?)
  @available(OSX 10.6, *)
  init?(cglContextObj context: UnsafeMutablePointer<_CGLContextObject>)
  @available(OSX 10.10, *)
  var pixelFormat: NSOpenGLPixelFormat { get }
  unowned(unsafe) var view: @sil_unmanaged NSView?
  func clearDrawable()
  func update()
  func flushBuffer()
  func makeCurrentContext()
  class func clearCurrentContext()
  class func current() -> NSOpenGLContext?
  func setValues(vals: UnsafePointer<GLint>, forParameter param: NSOpenGLContextParameter)
  func getValues(vals: UnsafeMutablePointer<GLint>, forParameter param: NSOpenGLContextParameter)
  var currentVirtualScreen: GLint
  var cglContextObj: UnsafeMutablePointer<_CGLContextObject> { get }
  init()
  func lock()
  func unlock()
}
extension NSOpenGLContext {
}
@available(OSX 10.6, *)
class NSOpenGLLayer : CAOpenGLLayer {
  unowned(unsafe) var view: @sil_unmanaged NSView?
  var openGLPixelFormat: NSOpenGLPixelFormat?
  var openGLContext: NSOpenGLContext?
  func openGLPixelFormatForDisplayMask(mask: UInt32) -> NSOpenGLPixelFormat
  func openGLContextFor(pixelFormat: NSOpenGLPixelFormat) -> NSOpenGLContext
  func canDrawIn(context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func drawIn(context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
class NSOpenGLView : NSView {
  class func defaultPixelFormat() -> NSOpenGLPixelFormat
  init?(frame frameRect: NSRect, pixelFormat format: NSOpenGLPixelFormat?)
  var openGLContext: NSOpenGLContext?
  func clearGLContext()
  func update()
  func reshape()
  var pixelFormat: NSOpenGLPixelFormat?
  func prepareOpenGL()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSView {
  @available(OSX 10.7, *)
  var wantsBestResolutionOpenGLSurface: Bool
}
extension NSView {
  @available(OSX 10.11, *)
  var wantsExtendedDynamicRangeOpenGLSurface: Bool
}
class NSOpenPanel : NSSavePanel {
  var urLs: [NSURL] { get }
  var resolvesAliases: Bool
  var canChooseDirectories: Bool
  var allowsMultipleSelection: Bool
  var canChooseFiles: Bool
  @available(OSX 10.10, *)
  var canResolveUbiquitousConflicts: Bool
  @available(OSX 10.10, *)
  var canDownloadUbiquitousContents: Bool
  @available(OSX 10.11, *)
  var isAccessoryViewDisclosed: Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSOpenPanel {
}
struct __OvFlags {
  var allItemsLoaded: UInt32
  var dataSourceObjectValueByItem: UInt32
  var allowAutomaticAnimations: UInt32
  var dontRedisplayOnFrameChange: UInt32
  var _isSpringLoadingFlashing: UInt32
  var unused2: UInt32
  var delegateShouldAutoExpandItem: UInt32
  var delegateAutoCollapseItem: UInt32
  var delegateAutoExpandItem: UInt32
  var delegateShouldShowOutlineCellForItem: UInt32
  var dataSourceDraggedImageMovedTo: UInt32
  var dataSourceDraggingEndedAt: UInt32
  var reloadingData: UInt32
  var validDataSourceMethods: UInt32
  var numberOfRowsDataExpandEntered: UInt32
  var delayRowEntryFreeDisabled: UInt32
  var delegateHeightOfRowByItem: UInt32
  var animateExpandAndCollapse: UInt32
  var unused: UInt32
  var selectionAdjustmentDisabled: UInt32
  var subclassRowForItem: UInt32
  var delegateWillDisplayOutlineCell: UInt32
  var enableExpandNotifications: UInt32
  var autoSaveExpandItems: UInt32
  var autoresizesOutlineColumn: UInt32
  var delegateShouldExpandItem: UInt32
  var delegateShouldCollapseItem: UInt32
  var delegateSelectionShouldChangeInOutlineView: UInt32
  var delegateShouldSelectTableColumn: UInt32
  var delegateShouldSelectItem: UInt32
  var delegateShouldEditTableColumn: UInt32
  var delegateWillDisplayCell: UInt32
  init()
  init(allItemsLoaded: UInt32, dataSourceObjectValueByItem: UInt32, allowAutomaticAnimations: UInt32, dontRedisplayOnFrameChange: UInt32, _isSpringLoadingFlashing: UInt32, unused2: UInt32, delegateShouldAutoExpandItem: UInt32, delegateAutoCollapseItem: UInt32, delegateAutoExpandItem: UInt32, delegateShouldShowOutlineCellForItem: UInt32, dataSourceDraggedImageMovedTo: UInt32, dataSourceDraggingEndedAt: UInt32, reloadingData: UInt32, validDataSourceMethods: UInt32, numberOfRowsDataExpandEntered: UInt32, delayRowEntryFreeDisabled: UInt32, delegateHeightOfRowByItem: UInt32, animateExpandAndCollapse: UInt32, unused: UInt32, selectionAdjustmentDisabled: UInt32, subclassRowForItem: UInt32, delegateWillDisplayOutlineCell: UInt32, enableExpandNotifications: UInt32, autoSaveExpandItems: UInt32, autoresizesOutlineColumn: UInt32, delegateShouldExpandItem: UInt32, delegateShouldCollapseItem: UInt32, delegateSelectionShouldChangeInOutlineView: UInt32, delegateShouldSelectTableColumn: UInt32, delegateShouldSelectItem: UInt32, delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell: UInt32)
}
typealias _OVFlags = __OvFlags
var NSOutlineViewDropOnItemIndex: Int { get }
class NSOutlineView : NSTableView, NSAccessibilityOutline {
  func setDelegate(anObject: NSOutlineViewDelegate?)
  func delegate() -> NSOutlineViewDelegate?
  func setDataSource(aSource: NSOutlineViewDataSource?)
  func dataSource() -> NSOutlineViewDataSource?
  unowned(unsafe) var outlineTableColumn: @sil_unmanaged NSTableColumn?
  func isExpandable(item: AnyObject?) -> Bool
  @available(OSX 10.10, *)
  func numberOfChildrenOfItem(item: AnyObject?) -> Int
  @available(OSX 10.10, *)
  func child(index: Int, ofItem item: AnyObject?) -> AnyObject?
  func expandItem(item: AnyObject?, expandChildren: Bool)
  func expandItem(item: AnyObject?)
  func collapseItem(item: AnyObject?, collapseChildren: Bool)
  func collapseItem(item: AnyObject?)
  func reloadItem(item: AnyObject?, reloadChildren: Bool)
  func reloadItem(item: AnyObject?)
  func parentForItem(item: AnyObject?) -> AnyObject?
  @available(OSX 10.11, *)
  func childIndexForItem(item: AnyObject) -> Int
  func itemAtRow(row: Int) -> AnyObject?
  func rowForItem(item: AnyObject?) -> Int
  func levelForItem(item: AnyObject?) -> Int
  func levelForRow(row: Int) -> Int
  func isItemExpanded(item: AnyObject?) -> Bool
  var indentationPerLevel: CGFloat
  var indentationMarkerFollowsCell: Bool
  var autoresizesOutlineColumn: Bool
  @available(OSX 10.5, *)
  func frameOfOutlineCellAtRow(row: Int) -> NSRect
  func setDropItem(item: AnyObject?, dropChildIndex index: Int)
  func shouldCollapseAutoExpandedItemsForDeposited(deposited: Bool) -> Bool
  var autosaveExpandedItems: Bool
  @available(OSX 10.7, *)
  func insertItemsAt(indexes: NSIndexSet, inParent parent: AnyObject?, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func removeItemsAt(indexes: NSIndexSet, inParent parent: AnyObject?, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func moveItemAt(fromIndex: Int, inParent oldParent: AnyObject?, to toIndex: Int, inParent newParent: AnyObject?)
  @available(OSX 10.7, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSOutlineViewDataSource : NSObjectProtocol {
  optional func outlineView(outlineView: NSOutlineView, numberOfChildrenOfItem item: AnyObject?) -> Int
  optional func outlineView(outlineView: NSOutlineView, child index: Int, ofItem item: AnyObject?) -> AnyObject
  optional func outlineView(outlineView: NSOutlineView, isItemExpandable item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, objectValueFor tableColumn: NSTableColumn?, byItem item: AnyObject?) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, byItem item: AnyObject?)
  optional func outlineView(outlineView: NSOutlineView, itemForPersistentObject object: AnyObject) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, persistentObjectForItem item: AnyObject?) -> AnyObject?
  optional func outlineView(outlineView: NSOutlineView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, pasteboardWriterForItem item: AnyObject) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forItems draggedItems: [AnyObject])
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  optional func outlineView(outlineView: NSOutlineView, writeItems items: [AnyObject], to pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func outlineView(outlineView: NSOutlineView, validateDrop info: NSDraggingInfo, proposedItem item: AnyObject?, proposedChildIndex index: Int) -> NSDragOperation
  optional func outlineView(outlineView: NSOutlineView, acceptDrop info: NSDraggingInfo, item: AnyObject?, childIndex index: Int) -> Bool
  optional func outlineView(outlineView: NSOutlineView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedItems items: [AnyObject]) -> [String]
}
protocol NSOutlineViewDelegate : NSControlTextEditingDelegate {
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: AnyObject) -> NSView?
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, rowViewForItem item: AnyObject) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, didAdd rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func outlineView(outlineView: NSOutlineView, didRemove rowView: NSTableRowView, forRow row: Int)
  optional func outlineView(outlineView: NSOutlineView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, item: AnyObject)
  optional func outlineView(outlineView: NSOutlineView, shouldEdit tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  optional func selectionShouldChangeIn(outlineView: NSOutlineView) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldSelectItem item: AnyObject) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func outlineView(outlineView: NSOutlineView, shouldSelect tableColumn: NSTableColumn?) -> Bool
  optional func outlineView(outlineView: NSOutlineView, mouseDownInHeaderOf tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, didClick tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, didDrag tableColumn: NSTableColumn)
  optional func outlineView(outlineView: NSOutlineView, toolTipFor cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, item: AnyObject, mouseLocation: NSPoint) -> String
  optional func outlineView(outlineView: NSOutlineView, heightOfRowByItem item: AnyObject) -> CGFloat
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, typeSelectStringFor tableColumn: NSTableColumn?, item: AnyObject) -> String?
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, nextTypeSelectMatchFromItem startItem: AnyObject, toItem endItem: AnyObject, forString searchString: String) -> AnyObject?
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, shouldShowCellExpansionFor tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, shouldTrack cell: NSCell, forTableColumn tableColumn: NSTableColumn?, item: AnyObject) -> Bool
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, dataCellFor tableColumn: NSTableColumn?, item: AnyObject) -> NSCell?
  @available(OSX 10.5, *)
  optional func outlineView(outlineView: NSOutlineView, isGroupItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldExpandItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, shouldCollapseItem item: AnyObject) -> Bool
  optional func outlineView(outlineView: NSOutlineView, willDisplayOutlineCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, item: AnyObject)
  @available(OSX 10.6, *)
  optional func outlineView(outlineView: NSOutlineView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func outlineView(outlineView: NSOutlineView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(OSX 10.6, *)
  optional func outlineView(outlineView: NSOutlineView, shouldShowOutlineCellForItem item: AnyObject) -> Bool
  optional func outlineViewSelectionDidChange(notification: NSNotification)
  optional func outlineViewColumnDidMove(notification: NSNotification)
  optional func outlineViewColumnDidResize(notification: NSNotification)
  optional func outlineViewSelectionIsChanging(notification: NSNotification)
  optional func outlineViewItemWillExpand(notification: NSNotification)
  optional func outlineViewItemDidExpand(notification: NSNotification)
  optional func outlineViewItemWillCollapse(notification: NSNotification)
  optional func outlineViewItemDidCollapse(notification: NSNotification)
}
@available(OSX 10.9, *)
let NSOutlineViewDisclosureButtonKey: String
@available(OSX 10.9, *)
let NSOutlineViewShowHideButtonKey: String
let NSOutlineViewSelectionDidChangeNotification: String
let NSOutlineViewColumnDidMoveNotification: String
let NSOutlineViewColumnDidResizeNotification: String
let NSOutlineViewSelectionIsChangingNotification: String
let NSOutlineViewItemWillExpandNotification: String
let NSOutlineViewItemDidExpandNotification: String
let NSOutlineViewItemWillCollapseNotification: String
let NSOutlineViewItemDidCollapseNotification: String
class NSPDFImageRep : NSImageRep {
  init?(data pdfData: NSData)
  var pdfRepresentation: NSData { get }
  var bounds: NSRect { get }
  var currentPage: Int
  var pageCount: Int { get }
  init()
  init?(coder: NSCoder)
}
@available(OSX 10.9, *)
class NSPDFInfo : NSObject, NSCopying, NSCoding {
  @NSCopying var url: NSURL?
  var isFileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPaperOrientation
  var paperSize: NSSize
  var attributes: NSMutableDictionary { get }
  init()
  @available(OSX 10.9, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.9, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
struct NSPDFPanelOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var ShowsPaperSize: NSPDFPanelOptions { get }
  static var ShowsOrientation: NSPDFPanelOptions { get }
  static var RequestsParentDirectory: NSPDFPanelOptions { get }
}
@available(OSX 10.9, *)
class NSPDFPanel : NSObject {
  var accessoryController: NSViewController?
  var options: NSPDFPanelOptions
  var defaultFileName: String
  func beginSheetWith(pdfInfo: NSPDFInfo, modalFor docWindow: NSWindow?, completionHandler: (Int) -> Void)
  init()
}
class NSPICTImageRep : NSImageRep {
  init?(data pictData: NSData)
  @NSCopying var pictRepresentation: NSData { get }
  var boundingBox: NSRect { get }
  init()
  init?(coder: NSCoder)
}
@available(OSX 10.8, *)
enum NSPageControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StackHistory
  case StackBook
  case HorizontalStrip
}
@available(OSX 10.8, *)
class NSPageController : NSViewController, NSAnimatablePropertyContainer, NSCoding {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged NSPageControllerDelegate?
  var selectedViewController: NSViewController? { get }
  var transitionStyle: NSPageControllerTransitionStyle
  var arrangedObjects: [AnyObject]
  var selectedIndex: Int
  func navigateForwardTo(object: AnyObject)
  func completeTransition()
  @IBAction func navigateBack(sender: AnyObject?)
  @IBAction func navigateForward(sender: AnyObject?)
  @IBAction func takeSelectedIndexFrom(sender: AnyObject?)
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(key: String) -> AnyObject?
}
struct __pcDelegateFlags {
  var delegateRespondsToIdentifierForRepresentedObject: UInt32
  var delegateRespondsToViewControllerForIdentifier: UInt32
  var delegateRespondsToFrameForRepresentedObject: UInt32
  var delegateRespondsToPrepareView: UInt32
  var delegateRespondsToDidTransition: UInt32
  var delegateRespondsToWillLiveTransition: UInt32
  var delegateRespondsToDidLiveTransition: UInt32
  var delegateRespondsToReserved1: UInt32
  var reserved: UInt32
  init()
  init(delegateRespondsToIdentifierForRepresentedObject: UInt32, delegateRespondsToViewControllerForIdentifier: UInt32, delegateRespondsToFrameForRepresentedObject: UInt32, delegateRespondsToPrepareView: UInt32, delegateRespondsToDidTransition: UInt32, delegateRespondsToWillLiveTransition: UInt32, delegateRespondsToDidLiveTransition: UInt32, delegateRespondsToReserved1: UInt32, reserved: UInt32)
}
struct __pcFlags {
  var templateCacheIsInvalid: UInt32
  var private1: UInt32
  var private2: UInt32
  var inSwipeGesture: UInt32
  var reserved: UInt32
  init()
  init(templateCacheIsInvalid: UInt32, private1: UInt32, private2: UInt32, inSwipeGesture: UInt32, reserved: UInt32)
}
protocol NSPageControllerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, identifierFor object: AnyObject) -> String
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, viewControllerForIdentifier identifier: String) -> NSViewController
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, frameFor object: AnyObject) -> NSRect
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, prepare viewController: NSViewController, withObject object: AnyObject)
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, didTransitionTo object: AnyObject)
  @available(OSX 10.8, *)
  optional func pageControllerWillStartLiveTransition(pageController: NSPageController)
  @available(OSX 10.8, *)
  optional func pageControllerDidEndLiveTransition(pageController: NSPageController)
}
class NSPageLayout : NSObject {
  @available(OSX 10.5, *)
  func addAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  func removeAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  func beginSheetWith(printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalWith(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo? { get }
  init()
}
extension NSPageLayout {
}
extension NSApplication {
  func runPageLayout(sender: AnyObject?)
}
var NSUtilityWindowMask: Int { get }
var NSDocModalWindowMask: Int { get }
var NSNonactivatingPanelMask: Int { get }
@available(OSX 10.6, *)
var NSHUDWindowMask: Int { get }
class NSPanel : NSWindow {
  var isFloatingPanel: Bool
  var becomesKeyOnlyIfNeeded: Bool
  var worksWhenModal: Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlert instead")
func NSReleaseAlertPanel(panel: AnyObject!)
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertDefaultReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertAlternateReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertOtherReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertErrorReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseOK instead")
var NSOKButton: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseCancel instead")
var NSCancelButton: Int { get }
@available(OSX 10.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(OSX 10.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding {
  @available(OSX 10.11, *)
  class func columnTerminatorsFor(aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options: [String : AnyObject])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  convenience init()
  @available(OSX 10.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.0, *)
enum NSLineBreakMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ByWordWrapping
  case ByCharWrapping
  case ByClipping
  case ByTruncatingHead
  case ByTruncatingTail
  case ByTruncatingMiddle
}
@available(OSX 10.0, *)
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirectionForLanguage(languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(OSX 10.0, *)
  var tabStops: [NSTextTab] { get }
  @available(OSX 10.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  var tighteningFactorForTruncation: Float { get }
  var textBlocks: [NSTextBlock] { get }
  var textLists: [NSTextList] { get }
  var headerLevel: Int { get }
  init()
  @available(OSX 10.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.0, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  var lineSpacing: CGFloat
  var paragraphSpacing: CGFloat
  var alignment: NSTextAlignment
  var firstLineHeadIndent: CGFloat
  var headIndent: CGFloat
  var tailIndent: CGFloat
  var lineBreakMode: NSLineBreakMode
  var minimumLineHeight: CGFloat
  var maximumLineHeight: CGFloat
  var baseWritingDirection: NSWritingDirection
  var lineHeightMultiple: CGFloat
  var paragraphSpacingBefore: CGFloat
  var hyphenationFactor: Float
  @available(OSX 10.0, *)
  var tabStops: [NSTextTab]!
  @available(OSX 10.0, *)
  var defaultTabInterval: CGFloat
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool
  @available(OSX 10.0, *)
  func addTabStop(anObject: NSTextTab)
  @available(OSX 10.0, *)
  func removeTabStop(anObject: NSTextTab)
  @available(OSX 10.0, *)
  func setParagraphStyle(obj: NSParagraphStyle)
  var tighteningFactorForTruncation: Float
  var textBlocks: [NSTextBlock]
  var textLists: [NSTextList]
  var headerLevel: Int
  init()
  init?(coder aDecoder: NSCoder)
}

/************************ Deprecated ************************/
enum NSTextTabType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LeftTabStopType
  case RightTabStopType
  case CenterTabStopType
  case DecimalTabStopType
}
extension NSTextTab {
  convenience init(type: NSTextTabType, location loc: CGFloat)
  var tabStopType: NSTextTabType { get }
}
@available(OSX 10.6, *)
let NSPasteboardTypeString: String
@available(OSX 10.6, *)
let NSPasteboardTypePDF: String
@available(OSX 10.6, *)
let NSPasteboardTypeTIFF: String
@available(OSX 10.6, *)
let NSPasteboardTypePNG: String
@available(OSX 10.6, *)
let NSPasteboardTypeRTF: String
@available(OSX 10.6, *)
let NSPasteboardTypeRTFD: String
@available(OSX 10.6, *)
let NSPasteboardTypeHTML: String
@available(OSX 10.6, *)
let NSPasteboardTypeTabularText: String
@available(OSX 10.6, *)
let NSPasteboardTypeFont: String
@available(OSX 10.6, *)
let NSPasteboardTypeRuler: String
@available(OSX 10.6, *)
let NSPasteboardTypeColor: String
@available(OSX 10.6, *)
let NSPasteboardTypeSound: String
@available(OSX 10.6, *)
let NSPasteboardTypeMultipleTextSelection: String
@available(OSX 10.7, *)
let NSPasteboardTypeTextFinderOptions: String
let NSGeneralPboard: String
let NSFontPboard: String
let NSRulerPboard: String
let NSFindPboard: String
let NSDragPboard: String
class NSPasteboard : NSObject {
  class func general() -> NSPasteboard
  /*not inherited*/ init(name: String)
  class func withUniqueName() -> NSPasteboard
  var name: String { get }
  var changeCount: Int { get }
  func releaseGlobally()
  @available(OSX 10.6, *)
  func clearContents() -> Int
  @available(OSX 10.6, *)
  func writeObjects(objects: [NSPasteboardWriting]) -> Bool
  @available(OSX 10.6, *)
  func readObjectsForClasses(classArray: [AnyClass], options: [String : AnyObject]?) -> [AnyObject]?
  @available(OSX 10.6, *)
  var pasteboardItems: [NSPasteboardItem]? { get }
  @available(OSX 10.6, *)
  func indexOf(pasteboardItem: NSPasteboardItem) -> Int
  @available(OSX 10.6, *)
  func canReadItemWithDataConformingToTypes(types: [String]) -> Bool
  @available(OSX 10.6, *)
  func canReadObjectForClasses(classArray: [AnyClass], options: [String : AnyObject]?) -> Bool
  func declareTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  func addTypes(newTypes: [String], owner newOwner: AnyObject?) -> Int
  var types: [String]? { get }
  func availableTypeFrom(types: [String]) -> String?
  func setData(data: NSData?, forType dataType: String) -> Bool
  func setPropertyList(plist: AnyObject, forType dataType: String) -> Bool
  func setString(string: String, forType dataType: String) -> Bool
  func dataForType(dataType: String) -> NSData?
  func propertyListForType(dataType: String) -> AnyObject?
  func stringForType(dataType: String) -> String?
  init()
}
extension NSPasteboard {
  class func typesFilterableTo(type: String) -> [String]
  /*not inherited*/ init(byFilteringFile filename: String)
  /*not inherited*/ init(byFilteringData data: NSData, ofType type: String)
  /*not inherited*/ init(byFilteringTypesIn pboard: NSPasteboard)
}
extension NSObject {
  class func pasteboard(sender: NSPasteboard, provideDataForType type: String)
  func pasteboard(sender: NSPasteboard, provideDataForType type: String)
  class func pasteboardChangedOwner(sender: NSPasteboard)
  func pasteboardChangedOwner(sender: NSPasteboard)
}
@available(OSX 10.6, *)
let NSPasteboardURLReadingFileURLsOnlyKey: String
@available(OSX 10.6, *)
let NSPasteboardURLReadingContentsConformToTypesKey: String

/*** NSPasteboardWriting and NSPasteboardReading Protocols ***/
@available(OSX 10.6, *)
struct NSPasteboardWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Promised: NSPasteboardWritingOptions { get }
}
protocol NSPasteboardWriting : NSObjectProtocol {
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
@available(OSX 10.6, *)
struct NSPasteboardReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AsData: NSPasteboardReadingOptions { get }
  static var AsString: NSPasteboardReadingOptions { get }
  static var AsPropertyList: NSPasteboardReadingOptions { get }
  static var AsKeyedArchive: NSPasteboardReadingOptions { get }
}
protocol NSPasteboardReading : NSObjectProtocol {
  static func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  optional static func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
extension NSURL : NSPasteboardWriting, NSPasteboardReading {
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func writeTo(pasteBoard: NSPasteboard)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}

/*** NSString Pasteboard Support ***/
extension NSString : NSPasteboardWriting, NSPasteboardReading {
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}

/*** Pboard Types ***/
let NSStringPboardType: String
let NSFilenamesPboardType: String
let NSTIFFPboardType: String
let NSRTFPboardType: String
let NSTabularTextPboardType: String
let NSFontPboardType: String
let NSRulerPboardType: String
let NSColorPboardType: String
let NSRTFDPboardType: String
let NSHTMLPboardType: String
let NSURLPboardType: String
let NSPDFPboardType: String
@available(OSX 10.5, *)
let NSMultipleTextSelectionPboardType: String
let NSPostScriptPboardType: String
let NSVCardPboardType: String
let NSInkTextPboardType: String
let NSFilesPromisePboardType: String
@available(OSX 10.6, *)
let NSPasteboardTypeFindPanelSearchOptions: String

/*** File Contents ***/
extension NSPasteboard {
  func writeFileContents(filename: String) -> Bool
  func readFileContentsType(type: String?, toFile filename: String) -> String?
  func write(wrapper: NSFileWrapper) -> Bool
  func readFileWrapper() -> NSFileWrapper?
}
let NSFileContentsPboardType: String
func NSCreateFilenamePboardType(fileType: String) -> String?
func NSCreateFileContentsPboardType(fileType: String) -> String?
func NSGetFileType(pboardType: String) -> String?
func NSGetFileTypes(pboardTypes: [String]) -> [String]?
@available(OSX 10.6, *)
class NSPasteboardItem : NSObject, NSPasteboardWriting, NSPasteboardReading {
  var types: [String] { get }
  func availableTypeFrom(types: [String]) -> String?
  func setDataProvider(dataProvider: NSPasteboardItemDataProvider, forTypes types: [AnyObject]) -> Bool
  func setData(data: NSData?, forType type: String) -> Bool
  func setString(string: String?, forType type: String) -> Bool
  func setPropertyList(propertyList: AnyObject?, forType type: String) -> Bool
  func dataForType(type: String) -> NSData?
  func stringForType(type: String) -> String?
  func propertyListForType(type: String) -> AnyObject?
  init()
  @available(OSX 10.6, *)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.6, *)
  func pasteboardPropertyListForType(type: String) -> AnyObject?
  @available(OSX 10.6, *)
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
}
protocol NSPasteboardItemDataProvider : NSObjectProtocol {
  @available(OSX 10.6, *)
  func pasteboard(pasteboard: NSPasteboard?, item: NSPasteboardItem, provideDataForType type: String)
  optional func pasteboardFinishedWithDataProvider(pasteboard: NSPasteboard)
}
enum NSPathStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case PopUp
}
@available(OSX 10.5, *)
class NSPathCell : NSActionCell, NSOpenSavePanelDelegate {
  var pathStyle: NSPathStyle
  @NSCopying var url: NSURL?
  func setObjectValue(obj: NSCopying?)
  var allowedTypes: [String]?
  unowned(unsafe) var delegate: @sil_unmanaged NSPathCellDelegate?
  class func pathComponentCellClass() -> AnyClass
  var pathComponentCells: [NSPathComponentCell]
  func rectOf(cell: NSPathComponentCell, withFrame frame: NSRect, in view: NSView) -> NSRect
  func pathComponentCellAt(point: NSPoint, withFrame frame: NSRect, in view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(event: NSEvent, withFrame frame: NSRect, in view: NSView)
  func mouseExited(event: NSEvent, withFrame frame: NSRect, in view: NSView)
  var doubleAction: Selector
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, shouldEnable url: NSURL) -> Bool
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, validate url: NSURL) throws
  @available(OSX 10.6, *)
  func panel(sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  @available(OSX 10.5, *)
  func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  @available(OSX 10.5, *)
  func panel(sender: AnyObject, willExpand expanding: Bool)
  @available(OSX 10.5, *)
  func panelSelectionDidChange(sender: AnyObject?)
}
protocol NSPathCellDelegate : NSObjectProtocol {
  @available(OSX 10.5, *)
  optional func pathCell(pathCell: NSPathCell, willDisplay openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathCell(pathCell: NSPathCell, willPopUp menu: NSMenu)
}
@available(OSX 10.5, *)
class NSPathComponentCell : NSTextFieldCell {
  @NSCopying var image: NSImage?
  @NSCopying var url: NSURL?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
class NSPathControl : NSControl {
  @available(OSX 10.10, *)
  var isEditable: Bool
  @available(OSX 10.10, *)
  var allowedTypes: [String]?
  @available(OSX 10.10, *)
  var placeholderString: String?
  @available(OSX 10.10, *)
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var url: NSURL?
  var doubleAction: Selector
  var pathStyle: NSPathStyle
  @available(OSX 10.10, *)
  var clickedPathItem: NSPathControlItem? { get }
  @available(OSX 10.10, *)
  var pathItems: [NSPathControlItem]
  @NSCopying var backgroundColor: NSColor?
  weak var delegate: @sil_weak NSPathControlDelegate?
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  var menu: NSMenu?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSPathControlDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func pathControl(pathControl: NSPathControl, shouldDrag pathItem: NSPathControlItem, withPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, shouldDrag pathComponentCell: NSPathComponentCell, withPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, validateDrop info: NSDraggingInfo) -> NSDragOperation
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, acceptDrop info: NSDraggingInfo) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, willDisplay openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, willPopUp menu: NSMenu)
}
extension NSPathControl {
  func clickedPathComponentCell() -> NSPathComponentCell?
  func pathComponentCells() -> [NSPathComponentCell]
  func setPathComponentCells(cells: [NSPathComponentCell])
}
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(OSX 10.5, *)
  func configurePersistentStoreCoordinatorFor(url: NSURL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : AnyObject]?) throws
  func persistentStoreTypeForFileType(fileType: String) -> String
  func writeTo(absoluteURL: NSURL, ofType typeName: String, forSaveOperation saveOperation: NSSaveOperationType, originalContentsURL absoluteOriginalContentsURL: NSURL?) throws
  func readFrom(absoluteURL: NSURL, ofType typeName: String) throws
  func revertToContentsOf(inAbsoluteURL: NSURL, ofType inTypeName: String) throws
  init()
  convenience init(type typeName: String) throws
  convenience init(contentsOf url: NSURL, ofType typeName: String) throws
  convenience init(forURL urlOrNil: NSURL?, withContentsOf contentsURL: NSURL, ofType typeName: String) throws
}
extension NSPersistentDocument {
}
class NSPopUpButton : NSButton {
  init(frame buttonFrame: NSRect, pullsDown flag: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  func addItemWithTitle(title: String)
  func addItemsWithTitles(itemTitles: [String])
  func insertItemWithTitle(title: String, at index: Int)
  func removeItemWithTitle(title: String)
  func removeItemAt(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(title: String) -> Int
  func indexOfItemWithTag(tag: Int) -> Int
  func indexOfItemWithRepresentedObject(obj: AnyObject?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAt(index: Int) -> NSMenuItem?
  func itemWithTitle(title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(item: NSMenuItem?)
  func selectItemAt(index: Int)
  func selectItemWithTitle(title: String)
  func selectItemWithTag(tag: Int) -> Bool
  func setTitle(aString: String)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAt(index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func selectedTag() -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __pbFlags {
  var needsPullsDownFromTemplate: UInt32
  var RESERVED: UInt32
  init()
  init(needsPullsDownFromTemplate: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonWillPopUpNotification: String
enum NSPopUpArrowPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoArrow
  case ArrowAtCenter
  case ArrowAtBottom
}
class NSPopUpButtonCell : NSMenuItemCell {
  init(textCell stringValue: String, pullsDown pullDown: Bool)
  var menu: NSMenu?
  var pullsDown: Bool
  var autoenablesItems: Bool
  var preferredEdge: NSRectEdge
  var usesItemFromMenu: Bool
  var altersStateOfSelectedItem: Bool
  func addItemWithTitle(title: String)
  func addItemsWithTitles(itemTitles: [String])
  func insertItemWithTitle(title: String, at index: Int)
  func removeItemWithTitle(title: String)
  func removeItemAt(index: Int)
  func removeAllItems()
  var itemArray: [NSMenuItem] { get }
  var numberOfItems: Int { get }
  func indexOf(item: NSMenuItem) -> Int
  func indexOfItemWithTitle(title: String) -> Int
  func indexOfItemWithTag(tag: Int) -> Int
  func indexOfItemWithRepresentedObject(obj: AnyObject?) -> Int
  func indexOfItemWithTarget(target: AnyObject?, andAction actionSelector: Selector) -> Int
  func itemAt(index: Int) -> NSMenuItem?
  func itemWithTitle(title: String) -> NSMenuItem?
  var lastItem: NSMenuItem? { get }
  func select(item: NSMenuItem?)
  func selectItemAt(index: Int)
  func selectItemWithTitle(title: String)
  func selectItemWithTag(tag: Int) -> Bool
  func setTitle(aString: String?)
  var selectedItem: NSMenuItem? { get }
  var indexOfSelectedItem: Int { get }
  func synchronizeTitleAndSelectedItem()
  func itemTitleAt(index: Int) -> String
  var itemTitles: [String] { get }
  var titleOfSelectedItem: String? { get }
  func attachPopUpWithFrame(cellFrame: NSRect, in controlView: NSView)
  func dismissPopUp()
  func performClickWithFrame(frame: NSRect, in controlView: NSView)
  var arrowPosition: NSPopUpArrowPosition
  convenience init(textCell aString: String)
  convenience init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __pbcFlags {
  var pullsDown: UInt32
  var preferredEdge: UInt32
  var menuIsAttached: UInt32
  var usesItemFromMenu: UInt32
  var altersStateOfSelectedItem: UInt32
  var decoding: UInt32
  var arrowPosition: UInt32
  var ignoreMenuLayout: UInt32
  var drawing: UInt32
  var menuShouldBeUniquedAgainstMain: UInt32
  var RESERVED: UInt32
  init()
  init(pullsDown: UInt32, preferredEdge: UInt32, menuIsAttached: UInt32, usesItemFromMenu: UInt32, altersStateOfSelectedItem: UInt32, decoding: UInt32, arrowPosition: UInt32, ignoreMenuLayout: UInt32, drawing: UInt32, menuShouldBeUniquedAgainstMain: UInt32, RESERVED: UInt32)
}
let NSPopUpButtonCellWillPopUpNotification: String
@available(OSX, introduced=10.7, deprecated=10.10)
enum NSPopoverAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  ///  The popover will use the default, light content appearance.
  @available(OSX, introduced=10.7, deprecated=10.10)
  case Minimal

  /// The popover will draw with a HUD appearance.
  @available(OSX, introduced=10.7, deprecated=10.10)
  case HUD
}
enum NSPopoverBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ApplicationDefined
  case Transient
  case Semitransient
}
@available(OSX 10.7, *)
class NSPopover : NSResponder, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  init()
  init?(coder: NSCoder)
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged NSPopoverDelegate?

  /*!
   * The appearance of the popover. The popover's contentView will inherit this appearance. The default effective appearance is the NSAppearanceNameVibrantLight appearance.
   * If nil is set, nil will be returned, and the effective appearance will return to the default.
   * To prevent conflicts with the previous appearance property, this is only available for apps that target 10.10 and higher.
   */
  @available(OSX 10.10, *)
  var appearance: NSAppearance?
  @available(OSX 10.10, *)
  var effectiveAppearance: NSAppearance { get }
  var behavior: NSPopoverBehavior
  var animates: Bool
  @IBOutlet var contentViewController: NSViewController?
  var contentSize: NSSize
  var isShown: Bool { get }

  /// Returns \c YES if the window is detached to an implicitly created detached window, \c NO otherwise. This method does not apply when the popover is detached to a window returned with \c -detachableWindowForPopover:.
  @available(OSX 10.10, *)
  var isDetached: Bool { get }
  var positioningRect: NSRect
  func showRelativeTo(positioningRect: NSRect, of positioningView: NSView, preferredEdge: NSRectEdge)
  @IBAction func performClose(sender: AnyObject?)
  func close()
  @available(OSX 10.7, *)
  func accessibilityFrame() -> NSRect
  @available(OSX 10.7, *)
  func accessibilityParent() -> AnyObject?
  @available(OSX 10.7, *)
  func isAccessibilityFocused() -> Bool
  @available(OSX 10.7, *)
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
@available(OSX 10.7, *)
let NSPopoverCloseReasonKey: String
@available(OSX 10.7, *)
let NSPopoverCloseReasonStandard: String
@available(OSX 10.7, *)
let NSPopoverCloseReasonDetachToWindow: String
@available(OSX 10.7, *)
let NSPopoverWillShowNotification: String
@available(OSX 10.7, *)
let NSPopoverDidShowNotification: String
@available(OSX 10.7, *)
let NSPopoverWillCloseNotification: String
@available(OSX 10.7, *)
let NSPopoverDidCloseNotification: String
protocol NSPopoverDelegate : NSObjectProtocol {

  /*!
   * The popover invokes this method on its delegate whenever it is about to close to give the delegate a chance to veto the close. 
   * If the delegate does not implement this method, \c -popoverShouldClose: will also be invoked on the popover to allow the popover to veto the close.
   * \return Return YES if the popover should close, NO otherwise.
   */
  @available(OSX 10.7, *)
  optional func popoverShouldClose(popover: NSPopover) -> Bool

  /*!
   * Return \c YES to allow the popover to detach from its positioning view. Return \c NO if it should not. If this method is not implemented, the default behavior is \c NO.
   * If this method returns YES, and \c -detachableWindowForPopover: is not implemented or returns nil, a detachable window will be created with the popover’s \c contentViewController.
   * This implicit detached window will have the same appearance as the popover. If the \c contentViewController has a title, it will be bound to and displayed as the title of the detached window. Upon being released in a detached state, the popover will call \c -popoverDidDetach: on the delegate. Once the detached popover is closed, PopoverShould/Will/DidClose delegate calls and notifications will be sent with the reason \c NSPopoverCloseReasonStandard.
   * \param popover The popover that may be detached
   * \return YES if the popover should detach, whether to a custom window or the implicitly detached window. NO if not.
   */
  @available(OSX 10.10, *)
  optional func popoverShouldDetach(popover: NSPopover) -> Bool

  /*!
   * This is called when the popover has been released in an implicitly detached state, i.e. not when detached to a custom window returned from \c -detachableWindowForPopover:.
   * \param popover The popover that detached from its anchor view and is not closing.
   */
  @available(OSX 10.10, *)
  optional func popoverDidDetach(popover: NSPopover)

  /*!
   * Return a custom window to which the popover should be detached. This should be used when the content of the detached window is wanted to be different from the content of the popover. If the same content should be used in the detached window, only \c -popoverShouldDetach: needs to be implemented.
   * If implementing this method, you should not remove the popover's content view as part of your implementation of this method. The popover and the detachable window may be shown at the same time and therefore cannot share a content view (or a content view controller).  If the popover and the detachable window should have the same content, you should define the content in a separate nib file and use a view controller to instantiate separate copies of the content for the popover and the detachable window.  The popover will animate to appear as though it morphs into the detachable window (unless the animates property is set to NO.  The exact animation used is not guaranteed).  Subclasses of NSPopover may also implement this method, in which case the subclass method will be invoked only if the delegate does not implement the method.
   * Not implementing this method, and just returning YES to \c -popoverShouldDetach: is recommended over providing a custom window.
   * If \c -popoverShouldDetach: is not overridden or returns NO, this method will not be called and the popover will not be detachable.
   * \param popover The popover that is being detached
   * \return The custom window to detach to.
   */
  @available(OSX 10.7, *)
  optional func detachableWindowFor(popover: NSPopover) -> NSWindow?

  /*!
   * Invoked on the delegate when the NSPopoverWillShowNotification notification is sent.  This method will also be invoked on the popover.
   */
  optional func popoverWillShow(notification: NSNotification)

  /*!
   * Invoked on the delegate when the NSPopoverDidShowNotification notification is sent.  This method will also be invoked on the popover.
   */
  optional func popoverDidShow(notification: NSNotification)

  /*!
   * Invoked on the delegate when the NSPopoverWillCloseNotification notification is sent.  This method will also be invoked on the popover.
   */
  optional func popoverWillClose(notification: NSNotification)

  /*!
   * Invoked on the delegate when the NSPopoverDidCloseNotification notification is sent.  This method will also be invoked on the popover.
   */
  optional func popoverDidClose(notification: NSNotification)
}
@available(OSX 10.5, *)
class NSPredicateEditor : NSRuleEditor {
  var rowTemplates: [NSPredicateEditorRowTemplate]
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(OSX 10.5, *)
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func matchFor(predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(predicate: NSPredicate)
  func predicateWithSubpredicates(subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicatesOf(predicate: NSPredicate) -> [NSPredicate]?
  init(leftExpressions: [NSExpression], rightExpressions: [NSExpression], modifier: NSComparisonPredicateModifier, operators: [NSNumber], options: Int)
  init(leftExpressions: [NSExpression], rightExpressionAttributeType attributeType: NSAttributeType, modifier: NSComparisonPredicateModifier, operators: [NSNumber], options: Int)
  init(compoundTypes: [NSNumber])
  var leftExpressions: [NSExpression]? { get }
  var rightExpressions: [NSExpression]? { get }
  var rightExpressionAttributeType: NSAttributeType { get }
  var modifier: NSComparisonPredicateModifier { get }
  var operators: [NSNumber]? { get }
  var options: Int { get }
  var compoundTypes: [NSNumber]? { get }
  class func templatesWithAttributeKeyPaths(keyPaths: [String], in entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
  init()
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10.3, *)
class NSPressureConfiguration : NSObject {
  var pressureBehavior: NSPressureBehavior { get }
  init(pressureBehavior: NSPressureBehavior)
  func set()
  convenience init()
}
extension NSView {
  @available(OSX 10.11, *)
  var pressureConfiguration: NSPressureConfiguration?
}
@available(OSX 10.9, *)
enum NSPaperOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Portrait
  case Landscape
}
enum NSPrintingPaginationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AutoPagination
  case FitPagination
  case ClipPagination
}
let NSPrintSpoolJob: String
let NSPrintPreviewJob: String
let NSPrintSaveJob: String
let NSPrintCancelJob: String
let NSPrintPaperName: String
let NSPrintPaperSize: String
let NSPrintOrientation: String
let NSPrintScalingFactor: String
let NSPrintLeftMargin: String
let NSPrintRightMargin: String
let NSPrintTopMargin: String
let NSPrintBottomMargin: String
let NSPrintHorizontallyCentered: String
let NSPrintVerticallyCentered: String
let NSPrintHorizontalPagination: String
let NSPrintVerticalPagination: String
let NSPrintPrinter: String
let NSPrintCopies: String
let NSPrintAllPages: String
let NSPrintFirstPage: String
let NSPrintLastPage: String
let NSPrintMustCollate: String
let NSPrintReversePageOrder: String
let NSPrintJobDisposition: String
let NSPrintPagesAcross: String
let NSPrintPagesDown: String
let NSPrintTime: String
let NSPrintDetailedErrorReporting: String
let NSPrintFaxNumber: String
let NSPrintPrinterName: String
@available(OSX 10.6, *)
let NSPrintSelectionOnly: String
@available(OSX 10.6, *)
let NSPrintJobSavingURL: String
@available(OSX 10.6, *)
let NSPrintJobSavingFileNameExtensionHidden: String
let NSPrintHeaderAndFooter: String
class NSPrintInfo : NSObject, NSCopying, NSCoding {
  class func setSharedPrintInfo(printInfo: NSPrintInfo)
  class func shared() -> NSPrintInfo
  init(dictionary attributes: [String : AnyObject])
  func dictionary() -> NSMutableDictionary
  var paperName: String?
  var paperSize: NSSize
  var orientation: NSPaperOrientation
  @available(OSX 10.6, *)
  var scalingFactor: CGFloat
  var leftMargin: CGFloat
  var rightMargin: CGFloat
  var topMargin: CGFloat
  var bottomMargin: CGFloat
  var isHorizontallyCentered: Bool
  var isVerticallyCentered: Bool
  var horizontalPagination: NSPrintingPaginationMode
  var verticalPagination: NSPrintingPaginationMode
  var jobDisposition: String
  @NSCopying var printer: NSPrinter
  func setUpPrintOperationDefaultValues()
  var imageablePageBounds: NSRect { get }
  var localizedPaperName: String? { get }
  class func defaultPrinter() -> NSPrinter?
  @available(OSX 10.5, *)
  var printSettings: NSMutableDictionary { get }
  @available(OSX 10.5, *)
  func pmPrintSession() -> UnsafeMutablePointer<Void>
  @available(OSX 10.5, *)
  func pmPageFormat() -> UnsafeMutablePointer<Void>
  @available(OSX 10.5, *)
  func pmPrintSettings() -> UnsafeMutablePointer<Void>
  @available(OSX 10.5, *)
  func updateFromPMPageFormat()
  @available(OSX 10.5, *)
  func updateFromPMPrintSettings()
  @available(OSX 10.6, *)
  var isSelectionOnly: Bool
  @available(OSX 10.9, *)
  func takeSettingsFrom(inPDFInfo: NSPDFInfo)
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrintInfo {
}
enum NSPrintingOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PortraitOrientation
  case LandscapeOrientation
}
enum NSPrintingPageOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DescendingPageOrder
  case SpecialPageOrder
  case AscendingPageOrder
  case UnknownPageOrder
}
@available(OSX 10.7, *)
enum NSPrintRenderingQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Best
  case Responsive
}
let NSPrintOperationExistsException: String
class NSPrintOperation : NSObject {
  /*not inherited*/ init(view: NSView, printInfo: NSPrintInfo)
  class func pdfOperationWith(view: NSView, inside rect: NSRect, to data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func pdfOperationWith(view: NSView, inside rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  class func epsOperationWith(view: NSView, inside rect: NSRect, to data: NSMutableData, printInfo: NSPrintInfo) -> NSPrintOperation
  class func epsOperationWith(view: NSView, inside rect: NSRect, toPath path: String, printInfo: NSPrintInfo) -> NSPrintOperation
  /*not inherited*/ init(view: NSView)
  class func pdfOperationWith(view: NSView, inside rect: NSRect, to data: NSMutableData) -> NSPrintOperation
  class func epsOperationWith(view: NSView, inside rect: NSRect, to data: NSMutableData?) -> NSPrintOperation
  class func current() -> NSPrintOperation?
  class func setCurrentOperation(operation: NSPrintOperation?)
  var isCopyingOperation: Bool { get }
  @available(OSX 10.7, *)
  var preferredRenderingQuality: NSPrintRenderingQuality { get }
  @available(OSX 10.5, *)
  var jobTitle: String?
  var showsPrintPanel: Bool
  var showsProgressPanel: Bool
  var printPanel: NSPrintPanel
  @available(OSX 10.9, *)
  var pdfPanel: NSPDFPanel
  var canSpawnSeparateThread: Bool
  var pageOrder: NSPrintingPageOrder
  func runOperationModalFor(docWindow: NSWindow, delegate: AnyObject?, didRun didRunSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runOperation() -> Bool
  var view: NSView? { get }
  @NSCopying var printInfo: NSPrintInfo
  var context: NSGraphicsContext? { get }
  @available(OSX 10.5, *)
  var pageRange: NSRange { get }
  var currentPage: Int { get }
  func createContext() -> NSGraphicsContext?
  func destroyContext()
  func deliverResult() -> Bool
  func cleanUpOperation()
  init()
}
extension NSPrintOperation {
}
@available(OSX 10.5, *)
struct NSPrintPanelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ShowsCopies: NSPrintPanelOptions { get }
  static var ShowsPageRange: NSPrintPanelOptions { get }
  static var ShowsPaperSize: NSPrintPanelOptions { get }
  static var ShowsOrientation: NSPrintPanelOptions { get }
  static var ShowsScaling: NSPrintPanelOptions { get }
  @available(OSX 10.6, *)
  static var ShowsPrintSelection: NSPrintPanelOptions { get }
  static var ShowsPageSetupAccessory: NSPrintPanelOptions { get }
  static var ShowsPreview: NSPrintPanelOptions { get }
}
let NSPrintPhotoJobStyleHint: String
@available(OSX 10.6, *)
let NSPrintAllPresetsJobStyleHint: String
@available(OSX 10.6, *)
let NSPrintNoPresetsJobStyleHint: String
@available(OSX 10.5, *)
let NSPrintPanelAccessorySummaryItemNameKey: String
@available(OSX 10.5, *)
let NSPrintPanelAccessorySummaryItemDescriptionKey: String
protocol NSPrintPanelAccessorizing {
  func localizedSummaryItems() -> [[String : String]]
  optional func keyPathsForValuesAffectingPreview() -> Set<String>
}
class NSPrintPanel : NSObject {
  @available(OSX 10.5, *)
  func addAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  func removeAccessoryController(accessoryController: NSViewController)
  @available(OSX 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  @available(OSX 10.5, *)
  var options: NSPrintPanelOptions
  @available(OSX 10.5, *)
  func setDefaultButtonTitle(defaultButtonTitle: String?)
  @available(OSX 10.5, *)
  func defaultButtonTitle() -> String?
  @available(OSX 10.5, *)
  var helpAnchor: String?
  var jobStyleHint: String?
  func beginSheetWith(printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX 10.5, *)
  func runModalWith(printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  @available(OSX 10.5, *)
  var printInfo: NSPrintInfo { get }
  init()
}
extension NSPrintPanel {
}
enum NSPrinterTableStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OK
  case NotFound
  case Error
}
class NSPrinter : NSObject, NSCopying, NSCoding {
  class func printerNames() -> [String]
  class func printerTypes() -> [String]
  /*not inherited*/ init?(name: String)
  /*not inherited*/ init?(type: String)
  var name: String { get }
  var type: String { get }
  var languageLevel: Int { get }
  func pageSizeForPaper(paperName: String) -> NSSize
  var deviceDescription: [String : AnyObject] { get }
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPrinter {
}
enum NSProgressIndicatorThickness : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PreferredThickness
  case PreferredSmallThickness
  case PreferredLargeThickness
  case PreferredAquaThickness
}
enum NSProgressIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BarStyle
  case SpinningStyle
}
class NSProgressIndicator : NSView, NSAccessibilityProgressIndicator {
  var isIndeterminate: Bool
  var isBezeled: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  var doubleValue: Double
  func incrementBy(delta: Double)
  var minValue: Double
  var maxValue: Double
  var usesThreadedAnimation: Bool
  func startAnimation(sender: AnyObject?)
  func stopAnimation(sender: AnyObject?)
  var style: NSProgressIndicatorStyle
  func sizeToFit()
  var isDisplayedWhenStopped: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityValue() -> NSNumber?
}
struct __progressIndicatorFlags {
  var isSpinning: UInt32
  var isVector: UInt32
  var isLocked: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var style: UInt32
  var _delayedStartup: UInt32
  var hideWhenStopped: UInt32
  var revive: UInt32
  var _temporarilyBlockHeartBeating: UInt32
  var _isHidden: UInt32
  var _isHeartBeatInstalled: UInt32
  var _customRenderer: UInt32
  var _lastFrame: UInt32
  var _isDetaching: UInt32
  var RESERVED: UInt32
  init()
  init(isSpinning: UInt32, isVector: UInt32, isLocked: UInt32, controlTint: UInt32, controlSize: UInt32, style: UInt32, _delayedStartup: UInt32, hideWhenStopped: UInt32, revive: UInt32, _temporarilyBlockHeartBeating: UInt32, _isHidden: UInt32, _isHeartBeatInstalled: UInt32, _customRenderer: UInt32, _lastFrame: UInt32, _isDetaching: UInt32, RESERVED: UInt32)
}
extension NSProgressIndicator {
}
class NSResponder : NSObject, NSCoding {
  init()
  init?(coder: NSCoder)
  unowned(unsafe) var next: @sil_unmanaged NSResponder?
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func mouseDown(theEvent: NSEvent)
  func rightMouseDown(theEvent: NSEvent)
  func otherMouseDown(theEvent: NSEvent)
  func mouseUp(theEvent: NSEvent)
  func rightMouseUp(theEvent: NSEvent)
  func otherMouseUp(theEvent: NSEvent)
  func mouseMoved(theEvent: NSEvent)
  func mouseDragged(theEvent: NSEvent)
  func scrollWheel(theEvent: NSEvent)
  func rightMouseDragged(theEvent: NSEvent)
  func otherMouseDragged(theEvent: NSEvent)
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  func keyDown(theEvent: NSEvent)
  func keyUp(theEvent: NSEvent)
  func flagsChanged(theEvent: NSEvent)
  func tabletPoint(theEvent: NSEvent)
  func tabletProximity(theEvent: NSEvent)
  @available(OSX 10.5, *)
  func cursorUpdate(event: NSEvent)
  @available(OSX 10.5, *)
  func magnifyWith(event: NSEvent)
  @available(OSX 10.5, *)
  func rotateWith(event: NSEvent)
  @available(OSX 10.5, *)
  func swipeWith(event: NSEvent)
  @available(OSX 10.5, *)
  func beginGestureWith(event: NSEvent)
  @available(OSX 10.5, *)
  func endGestureWith(event: NSEvent)
  @available(OSX 10.8, *)
  func smartMagnifyWith(event: NSEvent)
  @available(OSX 10.6, *)
  func touchesBeganWith(event: NSEvent)
  @available(OSX 10.6, *)
  func touchesMovedWith(event: NSEvent)
  @available(OSX 10.6, *)
  func touchesEndedWith(event: NSEvent)
  @available(OSX 10.6, *)
  func touchesCancelledWith(event: NSEvent)
  @available(OSX 10.8, *)
  func quickLookWith(event: NSEvent)
  @available(OSX 10.10.3, *)
  func pressureChangeWith(event: NSEvent)
  func noResponderFor(eventSelector: Selector)
  var acceptsFirstResponder: Bool { get }
  func becomeFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func interpretKeyEvents(eventArray: [NSEvent])
  func flushBufferedKeyEvents()
  var menu: NSMenu?
  func showContextHelp(sender: AnyObject?)
  func helpRequested(eventPtr: NSEvent)
  func shouldBeTreatedAsInkEvent(theEvent: NSEvent) -> Bool
  @available(OSX 10.7, *)
  func wantsScrollEventsForSwipeTrackingOn(axis: NSEventGestureAxis) -> Bool
  @available(OSX 10.7, *)
  func wantsForwardedScrollEventsFor(axis: NSEventGestureAxis) -> Bool
  @available(OSX 10.7, *)
  func supplementalTargetForAction(action: Selector, sender: AnyObject?) -> AnyObject?
  func encodeWith(aCoder: NSCoder)
}
extension NSResponder {

  /************************* Key binding entry-points *************************/
  func insertText(insertString: AnyObject)
  func doCommandBy(aSelector: Selector)

  /************************* Standard bindable commands *************************/
  func moveForward(sender: AnyObject?)
  func moveRight(sender: AnyObject?)
  func moveBackward(sender: AnyObject?)
  func moveLeft(sender: AnyObject?)
  func moveUp(sender: AnyObject?)
  func moveDown(sender: AnyObject?)
  func moveWordForward(sender: AnyObject?)
  func moveWordBackward(sender: AnyObject?)
  func moveToBeginningOfLine(sender: AnyObject?)
  func moveToEndOfLine(sender: AnyObject?)
  func moveToBeginningOfParagraph(sender: AnyObject?)
  func moveToEndOfParagraph(sender: AnyObject?)
  func moveToEndOfDocument(sender: AnyObject?)
  func moveToBeginningOfDocument(sender: AnyObject?)
  func pageDown(sender: AnyObject?)
  func pageUp(sender: AnyObject?)
  func centerSelectionInVisibleArea(sender: AnyObject?)
  func moveBackwardAndModifySelection(sender: AnyObject?)
  func moveForwardAndModifySelection(sender: AnyObject?)
  func moveWordForwardAndModifySelection(sender: AnyObject?)
  func moveWordBackwardAndModifySelection(sender: AnyObject?)
  func moveUpAndModifySelection(sender: AnyObject?)
  func moveDownAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfLineAndModifySelection(sender: AnyObject?)
  func moveToEndOfLineAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfParagraphAndModifySelection(sender: AnyObject?)
  func moveToEndOfParagraphAndModifySelection(sender: AnyObject?)
  func moveToEndOfDocumentAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfDocumentAndModifySelection(sender: AnyObject?)
  func pageDownAndModifySelection(sender: AnyObject?)
  func pageUpAndModifySelection(sender: AnyObject?)
  func moveParagraphForwardAndModifySelection(sender: AnyObject?)
  func moveParagraphBackwardAndModifySelection(sender: AnyObject?)
  func moveWordRight(sender: AnyObject?)
  func moveWordLeft(sender: AnyObject?)
  func moveRightAndModifySelection(sender: AnyObject?)
  func moveLeftAndModifySelection(sender: AnyObject?)
  func moveWordRightAndModifySelection(sender: AnyObject?)
  func moveWordLeftAndModifySelection(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToLeftEndOfLine(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToRightEndOfLine(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToLeftEndOfLineAndModifySelection(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToRightEndOfLineAndModifySelection(sender: AnyObject?)
  func scrollPageUp(sender: AnyObject?)
  func scrollPageDown(sender: AnyObject?)
  func scrollLineUp(sender: AnyObject?)
  func scrollLineDown(sender: AnyObject?)
  func scrollToBeginningOfDocument(sender: AnyObject?)
  func scrollToEndOfDocument(sender: AnyObject?)
  func transpose(sender: AnyObject?)
  func transposeWords(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  func selectParagraph(sender: AnyObject?)
  func selectLine(sender: AnyObject?)
  func selectWord(sender: AnyObject?)
  func indent(sender: AnyObject?)
  func insertTab(sender: AnyObject?)
  func insertBacktab(sender: AnyObject?)
  func insertNewline(sender: AnyObject?)
  func insertParagraphSeparator(sender: AnyObject?)
  func insertNewlineIgnoringFieldEditor(sender: AnyObject?)
  func insertTabIgnoringFieldEditor(sender: AnyObject?)
  func insertLineBreak(sender: AnyObject?)
  func insertContainerBreak(sender: AnyObject?)
  @available(OSX 10.5, *)
  func insertSingleQuoteIgnoringSubstitution(sender: AnyObject?)
  @available(OSX 10.5, *)
  func insertDoubleQuoteIgnoringSubstitution(sender: AnyObject?)
  func changeCaseOfLetter(sender: AnyObject?)
  func uppercaseWord(sender: AnyObject?)
  func lowercaseWord(sender: AnyObject?)
  func capitalizeWord(sender: AnyObject?)
  func deleteForward(sender: AnyObject?)
  func deleteBackward(sender: AnyObject?)
  func deleteBackwardByDecomposingPreviousCharacter(sender: AnyObject?)
  func deleteWordForward(sender: AnyObject?)
  func deleteWordBackward(sender: AnyObject?)
  func deleteToBeginningOfLine(sender: AnyObject?)
  func deleteToEndOfLine(sender: AnyObject?)
  func deleteToBeginningOfParagraph(sender: AnyObject?)
  func deleteToEndOfParagraph(sender: AnyObject?)
  func yank(sender: AnyObject?)
  func complete(sender: AnyObject?)
  func setMark(sender: AnyObject?)
  func deleteToMark(sender: AnyObject?)
  func selectToMark(sender: AnyObject?)
  func swapWithMark(sender: AnyObject?)
  func cancelOperation(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeBaseWritingDirectionNatural(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeBaseWritingDirectionLeftToRight(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeBaseWritingDirectionRightToLeft(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeTextWritingDirectionNatural(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(OSX 10.8, *)
  func quickLookPreviewItems(sender: AnyObject?)
}
extension NSResponder {
  var undoManager: NSUndoManager? { get }
}
extension NSResponder {
  @available(OSX 10.7, *)
  func validateProposedFirstResponder(responder: NSResponder, forEvent event: NSEvent?) -> Bool
}
extension NSResponder {
  func present(error: NSError, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func present(error: NSError) -> Bool
  func willPresent(error: NSError) -> NSError
}
extension NSResponder {
  @available(OSX 10.7, *)
  func performTextFinderAction(sender: AnyObject?)
}
extension NSResponder {
}
enum NSRuleEditorNestingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Single
  case List
  case Compound
  case Simple
}
enum NSRuleEditorRowType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Simple
  case Compound
}
class NSRuleEditor : NSControl {
  unowned(unsafe) var delegate: @sil_unmanaged NSRuleEditorDelegate?
  var formattingStringsFilename: String?
  var formattingDictionary: [String : String]?
  func reloadCriteria()
  var nestingMode: NSRuleEditorNestingMode
  var rowHeight: CGFloat
  var isEditable: Bool
  var canRemoveAllRows: Bool
  var predicate: NSPredicate? { get }
  func reloadPredicate()
  func predicateForRow(row: Int) -> NSPredicate?
  var numberOfRows: Int { get }
  func subrowIndexesForRow(rowIndex: Int) -> NSIndexSet
  func criteriaForRow(row: Int) -> [AnyObject]
  func displayValuesForRow(row: Int) -> [AnyObject]
  func rowForDisplayValue(displayValue: AnyObject) -> Int
  func rowTypeForRow(rowIndex: Int) -> NSRuleEditorRowType
  func parentRowForRow(rowIndex: Int) -> Int
  func addRow(sender: AnyObject?)
  func insertRowAt(rowIndex: Int, withType rowType: NSRuleEditorRowType, asSubrowOfRow parentRow: Int, animate shouldAnimate: Bool)
  func setCriteria(criteria: [AnyObject], andDisplayValues values: [AnyObject], forRowAt rowIndex: Int)
  func removeRowAt(rowIndex: Int)
  func removeRowsAt(rowIndexes: NSIndexSet, includeSubrows: Bool)
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func selectRowIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  var rowClass: AnyClass
  var rowTypeKeyPath: String
  var subrowsKeyPath: String
  var criteriaKeyPath: String
  var displayValuesKeyPath: String
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSRuleEditorDelegate : NSObjectProtocol {
  func ruleEditor(editor: NSRuleEditor, numberOfChildrenForCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> Int
  func ruleEditor(editor: NSRuleEditor, child index: Int, forCriterion criterion: AnyObject?, withRowType rowType: NSRuleEditorRowType) -> AnyObject
  func ruleEditor(editor: NSRuleEditor, displayValueForCriterion criterion: AnyObject, inRow row: Int) -> AnyObject
  optional func ruleEditor(editor: NSRuleEditor, predicatePartsForCriterion criterion: AnyObject, withDisplayValue value: AnyObject, inRow row: Int) -> [String : AnyObject]?
  optional func ruleEditorRowsDidChange(notification: NSNotification)
}
let NSRuleEditorPredicateLeftExpression: String
let NSRuleEditorPredicateRightExpression: String
let NSRuleEditorPredicateComparisonModifier: String
let NSRuleEditorPredicateOptions: String
let NSRuleEditorPredicateOperatorType: String
let NSRuleEditorPredicateCustomSelector: String
let NSRuleEditorPredicateCompoundType: String
let NSRuleEditorRowsDidChangeNotification: String
class NSRulerMarker : NSObject, NSCopying, NSCoding {

  /**************************** Initialization ****************************/
  init(rulerView ruler: NSRulerView, markerLocation location: CGFloat, image: NSImage, imageOrigin: NSPoint)

  /*********************** Query/Set basic attributes ***********************/
  unowned(unsafe) var ruler: @sil_unmanaged NSRulerView { get }
  var markerLocation: CGFloat
  var image: NSImage
  var imageOrigin: NSPoint
  var isMovable: Bool
  var isRemovable: Bool
  var isDragging: Bool { get }
  var representedObject: NSCopying?

  /************************** Ruler facilities **************************/
  var imageRectInRuler: NSRect { get }
  var thicknessRequiredInRuler: CGFloat { get }
  func draw(rect: NSRect)
  func trackMouse(mouseDownEvent: NSEvent, adding isAdding: Bool) -> Bool
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __rFlags {
  var movable: UInt32
  var removable: UInt32
  var dragging: UInt32
  var pinned: UInt32
  var _reserved: UInt32
  init()
  init(movable: UInt32, removable: UInt32, dragging: UInt32, pinned: UInt32, _reserved: UInt32)
}
enum NSRulerOrientation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case HorizontalRuler
  case VerticalRuler
}
class NSRulerView : NSView {

  /************************* Registering new units *************************/
  class func registerUnitWithName(unitName: String, abbreviation: String, unitToPointsConversionFactor conversionFactor: CGFloat, stepUpCycle: [NSNumber], stepDownCycle: [NSNumber])

  /**************************** Initialization ****************************/
  init(scrollView: NSScrollView?, orientation: NSRulerOrientation)

  /**************************** Basic setup ****************************/
  unowned(unsafe) var scrollView: @sil_unmanaged NSScrollView?
  var orientation: NSRulerOrientation

  /**************************** Ruler geometry ****************************/
  var baselineLocation: CGFloat { get }
  var requiredThickness: CGFloat { get }
  var ruleThickness: CGFloat
  var reservedThicknessForMarkers: CGFloat
  var reservedThicknessForAccessoryView: CGFloat

  /**************************** Rule configuration ****************************/
  var measurementUnits: String
  var originOffset: CGFloat

  /**************************** Client view setup ****************************/
  unowned(unsafe) var clientView: @sil_unmanaged NSView?
  func addMarker(marker: NSRulerMarker)
  func removeMarker(marker: NSRulerMarker)
  var markers: [NSRulerMarker]?
  func trackMarker(marker: NSRulerMarker, withMouseEvent event: NSEvent) -> Bool
  var accessoryView: NSView?
  func moveRulerlineFromLocation(oldLocation: CGFloat, toLocation newLocation: CGFloat)

  /*********************** Drawing and hash invalidation ***********************/
  func invalidateHashMarks()
  func drawHashMarksAndLabelsIn(rect: NSRect)
  func drawMarkersIn(rect: NSRect)

  /**************************** Key overrides ****************************/
  var isFlipped: Bool { get }
  convenience init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSView {
  func rulerView(ruler: NSRulerView, shouldMove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMove marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didMove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldRemove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, didRemove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldAdd marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAdd marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, didAdd marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)
  func rulerView(ruler: NSRulerView, willSetClientView newClient: NSView)
  @available(OSX 10.7, *)
  func rulerView(ruler: NSRulerView, locationFor aPoint: NSPoint) -> CGFloat
  @available(OSX 10.7, *)
  func rulerView(ruler: NSRulerView, pointForLocation aPoint: CGFloat) -> NSPoint
}
struct NSApplicationActivationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ActivateAllWindows: NSApplicationActivationOptions { get }
  static var ActivateIgnoringOtherApps: NSApplicationActivationOptions { get }
}
enum NSApplicationActivationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Accessory
  case Prohibited
}
@available(OSX 10.6, *)
class NSRunningApplication : NSObject {
  var isTerminated: Bool { get }
  var isFinishedLaunching: Bool { get }
  var isHidden: Bool { get }
  var isActive: Bool { get }
  @available(OSX 10.7, *)
  var ownsMenuBar: Bool { get }
  var activationPolicy: NSApplicationActivationPolicy { get }
  var localizedName: String? { get }
  var bundleIdentifier: String? { get }
  @NSCopying var bundleURL: NSURL? { get }
  @NSCopying var executableURL: NSURL? { get }
  var processIdentifier: pid_t { get }
  @NSCopying var launchDate: NSDate? { get }
  var icon: NSImage? { get }
  var executableArchitecture: Int { get }
  func hide() -> Bool
  func unhide() -> Bool
  func activate(options options: NSApplicationActivationOptions = []) -> Bool
  func terminate() -> Bool
  func forceTerminate() -> Bool
  class func runningApplicationsWithBundleIdentifier(bundleIdentifier: String) -> [NSRunningApplication]
  convenience init?(processIdentifier pid: pid_t)
  class func current() -> Self
  class func terminateAutomaticallyTerminableApplications()
  init()
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  var runningApplications: [NSRunningApplication] { get }
}
var NSFileHandlingPanelCancelButton: Int { get }
var NSFileHandlingPanelOKButton: Int { get }
struct __SPFlags {
  var saveMode: UInt32
  var isExpanded: UInt32
  var allowsOtherFileTypes: UInt32
  var canCreateDirectories: UInt32
  var canSelectedHiddenExtension: UInt32
  var reserved2: UInt32
  var delegate_shouldShowFilename: UInt32
  var delegate_compareFilename: UInt32
  var delegate_shouldEnableURL: UInt32
  var delegate_validateURL: UInt32
  var delegate_didChangeToDirectoryURL: UInt32
  var changingFrameSize: UInt32
  var movingAccessoryView: UInt32
  var userAccessoryViewFrameChange: UInt32
  var canChooseDirectories: UInt32
  var canChooseFiles: UInt32
  var delegate_selectionDidChange: UInt32
  var delegate_didChangeToDirectory: UInt32
  var calledWindowOrderedIn: UInt32
  var appCentric: UInt32
  var bottomControlsDisabled: UInt32
  var okButtonDisabled: UInt32
  var accessoryViewDisclosed: UInt32
  var delegate_isValidFilename: UInt32
  var delegate_userEnteredFilename: UInt32
  var delegate_panel_willExpand: UInt32
  var canResolveUbiquitousConflicts: UInt32
  var reserved: UInt32
  init()
  init(saveMode: UInt32, isExpanded: UInt32, allowsOtherFileTypes: UInt32, canCreateDirectories: UInt32, canSelectedHiddenExtension: UInt32, reserved2: UInt32, delegate_shouldShowFilename: UInt32, delegate_compareFilename: UInt32, delegate_shouldEnableURL: UInt32, delegate_validateURL: UInt32, delegate_didChangeToDirectoryURL: UInt32, changingFrameSize: UInt32, movingAccessoryView: UInt32, userAccessoryViewFrameChange: UInt32, canChooseDirectories: UInt32, canChooseFiles: UInt32, delegate_selectionDidChange: UInt32, delegate_didChangeToDirectory: UInt32, calledWindowOrderedIn: UInt32, appCentric: UInt32, bottomControlsDisabled: UInt32, okButtonDisabled: UInt32, accessoryViewDisclosed: UInt32, delegate_isValidFilename: UInt32, delegate_userEnteredFilename: UInt32, delegate_panel_willExpand: UInt32, canResolveUbiquitousConflicts: UInt32, reserved: UInt32)
}
typealias _SPFlags = __SPFlags
class NSSavePanel : NSPanel {
  @NSCopying var url: NSURL? { get }
  @available(OSX 10.6, *)
  @NSCopying var directoryURL: NSURL?
  var allowedFileTypes: [String]?
  var allowsOtherFileTypes: Bool
  var accessoryView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSOpenSavePanelDelegate?
  var isExpanded: Bool { get }
  var canCreateDirectories: Bool
  var canSelectHiddenExtension: Bool
  var isExtensionHidden: Bool
  var treatsFilePackagesAsDirectories: Bool
  var prompt: String!
  var title: String!
  var nameFieldLabel: String!
  @available(OSX 10.6, *)
  var nameFieldStringValue: String
  var message: String!
  func validateVisibleColumns()
  var showsHiddenFiles: Bool
  @available(OSX 10.9, *)
  var showsTagField: Bool
  @available(OSX 10.9, *)
  var tagNames: [String]?
  @IBAction func ok(sender: AnyObject?)
  @IBAction func cancel(sender: AnyObject?)
  @available(OSX 10.6, *)
  func beginSheetModalFor(window: NSWindow, completionHandler handler: (Int) -> Void)
  @available(OSX 10.6, *)
  func beginWithCompletionHandler(handler: (Int) -> Void)
  func runModal() -> Int
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
protocol NSOpenSavePanelDelegate : NSObjectProtocol {
  @available(OSX 10.6, *)
  optional func panel(sender: AnyObject, shouldEnable url: NSURL) -> Bool
  @available(OSX 10.6, *)
  optional func panel(sender: AnyObject, validate url: NSURL) throws
  @available(OSX 10.6, *)
  optional func panel(sender: AnyObject, didChangeToDirectoryURL url: NSURL?)
  optional func panel(sender: AnyObject, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  optional func panel(sender: AnyObject, willExpand expanding: Bool)
  optional func panelSelectionDidChange(sender: AnyObject?)
}
extension NSObject {
}
extension NSSavePanel {
}
class NSScreen : NSObject {
  class func screens() -> [NSScreen]?
  class func main() -> NSScreen?
  class func deepest() -> NSScreen?
  @available(OSX 10.9, *)
  class func screensHaveSeparateSpaces() -> Bool
  var depth: NSWindowDepth { get }
  var frame: NSRect { get }
  var visibleFrame: NSRect { get }
  var deviceDescription: [String : AnyObject] { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace? { get }
  var supportedWindowDepths: UnsafePointer<NSWindowDepth> { get }
  @available(OSX 10.7, *)
  func convertRectToBacking(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromBacking(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func backingAlignedRect(aRect: NSRect, options: NSAlignmentOptions = []) -> NSRect
  @available(OSX 10.7, *)
  var backingScaleFactor: CGFloat { get }
  init()
}
@available(OSX 10.6, *)
let NSScreenColorSpaceDidChangeNotification: String
extension NSScreen {
  @available(OSX 10.11, *)
  var maximumExtendedDynamicRangeColorComponentValue: CGFloat { get }
}
extension NSScreen {
}
@available(OSX 10.7, *)
enum NSScrollElasticity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case None
  case Allowed
}
struct __SFlags {
  var RESERVED: UInt32
  var unarchiving: UInt32
  var registeredForWindowWillClose: UInt32
  var findBarPosition: UInt32
  var predominantAxisScrolling: UInt32
  var hContentElasticity: UInt32
  var vContentElasticity: UInt32
  var unused: UInt32
  var findBarVisible: UInt32
  var autoforwardsScrollWheelEvents: UInt32
  var autohidesScrollers: UInt32
  var hasCustomLineBorderColor: UInt32
  var focusRingNeedsRedisplay: UInt32
  var skipRemoveSuperviewCheck: UInt32
  var doesNotDrawBackground: UInt32
  var needsTile: UInt32
  var hasVerticalRuler: UInt32
  var hasHorizontalRuler: UInt32
  var showRulers: UInt32
  var oldRulerInstalled: UInt32
  var borderType: NSBorderType
  var noDynamicScrolling: UInt32
  var hScrollerStatus: UInt32
  var vScrollerStatus: UInt32
  var hScrollerRequired: UInt32
  var vScrollerRequired: UInt32
  init()
  init(RESERVED: UInt32, unarchiving: UInt32, registeredForWindowWillClose: UInt32, findBarPosition: UInt32, predominantAxisScrolling: UInt32, hContentElasticity: UInt32, vContentElasticity: UInt32, unused: UInt32, findBarVisible: UInt32, autoforwardsScrollWheelEvents: UInt32, autohidesScrollers: UInt32, hasCustomLineBorderColor: UInt32, focusRingNeedsRedisplay: UInt32, skipRemoveSuperviewCheck: UInt32, doesNotDrawBackground: UInt32, needsTile: UInt32, hasVerticalRuler: UInt32, hasHorizontalRuler: UInt32, showRulers: UInt32, oldRulerInstalled: UInt32, borderType: NSBorderType, noDynamicScrolling: UInt32, hScrollerStatus: UInt32, vScrollerStatus: UInt32, hScrollerRequired: UInt32, vScrollerRequired: UInt32)
}
typealias _SFlags = __SFlags
class NSScrollView : NSView, NSTextFinderBarContainer {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  @available(OSX 10.7, *)
  class func frameSizeForContentSize(cSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType aType: NSBorderType, controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> NSSize
  @available(OSX 10.7, *)
  class func contentSizeForFrame(fSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType aType: NSBorderType, controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> NSSize
  var documentVisibleRect: NSRect { get }
  var contentSize: NSSize { get }
  unowned(unsafe) var documentView: @sil_unmanaged AnyObject?
  var contentView: NSClipView
  var documentCursor: NSCursor?
  var borderType: NSBorderType
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  var hasVerticalScroller: Bool
  var hasHorizontalScroller: Bool
  var verticalScroller: NSScroller?
  var horizontalScroller: NSScroller?
  var autohidesScrollers: Bool
  var horizontalLineScroll: CGFloat
  var verticalLineScroll: CGFloat
  var lineScroll: CGFloat
  var horizontalPageScroll: CGFloat
  var verticalPageScroll: CGFloat
  var pageScroll: CGFloat
  var scrollsDynamically: Bool
  func tile()
  func reflectScrolledClipView(cView: NSClipView)
  func scrollWheel(theEvent: NSEvent)
  @available(OSX 10.7, *)
  var scrollerStyle: NSScrollerStyle
  @available(OSX 10.7, *)
  var scrollerKnobStyle: NSScrollerKnobStyle
  @available(OSX 10.7, *)
  func flashScrollers()
  @available(OSX 10.7, *)
  var horizontalScrollElasticity: NSScrollElasticity
  @available(OSX 10.7, *)
  var verticalScrollElasticity: NSScrollElasticity
  @available(OSX 10.7, *)
  var usesPredominantAxisScrolling: Bool
  @available(OSX 10.8, *)
  var allowsMagnification: Bool
  @available(OSX 10.8, *)
  var magnification: CGFloat
  @available(OSX 10.8, *)
  var maxMagnification: CGFloat
  @available(OSX 10.8, *)
  var minMagnification: CGFloat
  @available(OSX 10.8, *)
  func magnifyToFit(rect: NSRect)
  @available(OSX 10.8, *)
  func setMagnification(magnification: CGFloat, centeredAt point: NSPoint)
  @available(OSX 10.9, *)
  func addFloatingSubview(view: NSView, forAxis axis: NSEventGestureAxis)
  @available(OSX 10.10, *)
  var automaticallyAdjustsContentInsets: Bool
  @available(OSX 10.10, *)
  var contentInsets: NSEdgeInsets
  @available(OSX 10.10, *)
  var scrollerInsets: NSEdgeInsets
  convenience init()
  var findBarView: NSView?
  var findBarVisible: Bool
  func findBarViewDidChangeHeight()
}
@available(OSX 10.8, *)
let NSScrollViewWillStartLiveMagnifyNotification: String
@available(OSX 10.8, *)
let NSScrollViewDidEndLiveMagnifyNotification: String
@available(OSX 10.9, *)
let NSScrollViewWillStartLiveScrollNotification: String
@available(OSX 10.9, *)
let NSScrollViewDidLiveScrollNotification: String
@available(OSX 10.9, *)
let NSScrollViewDidEndLiveScrollNotification: String
extension NSScrollView {
  class func setRulerViewClass(rulerViewClass: AnyClass?)
  class func rulerViewClass() -> AnyClass
  var rulersVisible: Bool
  var hasHorizontalRuler: Bool
  var hasVerticalRuler: Bool
  var horizontalRulerView: NSRulerView?
  var verticalRulerView: NSRulerView?
}
@available(OSX 10.7, *)
enum NSScrollViewFindBarPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AboveHorizontalRuler
  case AboveContent
  case BelowContent
}
extension NSScrollView {
  @available(OSX 10.7, *)
  var findBarPosition: NSScrollViewFindBarPosition
}
enum NSScrollArrowPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ScrollerArrowsMaxEnd
  case ScrollerArrowsMinEnd
  static var ScrollerArrowsDefaultSetting: NSScrollArrowPosition { get }
  case ScrollerArrowsNone
}
enum NSUsableScrollerParts : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoScrollerParts
  case OnlyScrollerArrows
  case AllScrollerParts
}
enum NSScrollerPart : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoPart
  case DecrementPage
  case Knob
  case IncrementPage
  case DecrementLine
  case IncrementLine
  case KnobSlot
}
enum NSScrollerArrow : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case IncrementArrow
  case DecrementArrow
}
@available(OSX 10.7, *)
enum NSScrollerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Legacy
  case Overlay
}
@available(OSX 10.7, *)
enum NSScrollerKnobStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Dark
  case Light
}
class NSScroller : NSControl {
  @available(OSX 10.7, *)
  class func isCompatibleWithOverlayScrollers() -> Bool
  @available(OSX 10.7, *)
  class func scrollerWidthFor(controlSize: NSControlSize, scrollerStyle: NSScrollerStyle) -> CGFloat
  @available(OSX 10.7, *)
  class func preferredScrollerStyle() -> NSScrollerStyle
  @available(OSX 10.7, *)
  var scrollerStyle: NSScrollerStyle
  @available(OSX 10.7, *)
  var knobStyle: NSScrollerKnobStyle
  func rectFor(partCode: NSScrollerPart) -> NSRect
  func checkSpaceForParts()
  var usableParts: NSUsableScrollerParts { get }
  var arrowsPosition: NSScrollArrowPosition
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func draw(whichArrow: NSScrollerArrow, highlight flag: Bool)
  func drawKnob()
  func drawKnobSlotIn(slotRect: NSRect, highlight flag: Bool)
  func highlight(flag: Bool)
  func testPart(thePoint: NSPoint) -> NSScrollerPart
  func trackKnob(theEvent: NSEvent)
  func trackScrollButtons(theEvent: NSEvent)
  var hitPart: NSScrollerPart { get }
  var knobProportion: CGFloat
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __sFlags2 {
  var hitPart: UInt32
  var controlSize: UInt32
  var inMaxEnd: UInt32
  var setFloatValueOverridden: UInt32
  var setFloatValueKnobProportionOverridden: UInt32
  var style: UInt32
  var styleCompatibility: UInt32
  var overlayScrollerState: UInt32
  var knobStyle: UInt32
  var sbPaused: UInt32
  var isAnimatingKnob: UInt32
  var isTrackingMouse: UInt32
  var reserved: UInt32
  init()
  init(hitPart: UInt32, controlSize: UInt32, inMaxEnd: UInt32, setFloatValueOverridden: UInt32, setFloatValueKnobProportionOverridden: UInt32, style: UInt32, styleCompatibility: UInt32, overlayScrollerState: UInt32, knobStyle: UInt32, sbPaused: UInt32, isAnimatingKnob: UInt32, isTrackingMouse: UInt32, reserved: UInt32)
}
struct _sFlags {
  var isHoriz: UInt32
  var arrowsLoc: NSScrollArrowPosition
  var partsUsable: NSUsableScrollerParts
  var fine: UInt32
  var needsEnableFlush: UInt32
  var thumbing: UInt32
  var slotDrawn: UInt32
  var knobDrawn: UInt32
  var lit: UInt32
  var knobLit: UInt32
  var reserved: UInt32
  var controlTint: UInt32
  var repeatCount: UInt32
  init()
  init(isHoriz: UInt32, arrowsLoc: NSScrollArrowPosition, partsUsable: NSUsableScrollerParts, fine: UInt32, needsEnableFlush: UInt32, thumbing: UInt32, slotDrawn: UInt32, knobDrawn: UInt32, lit: UInt32, knobLit: UInt32, reserved: UInt32, controlTint: UInt32, repeatCount: UInt32)
}
extension NSScroller {
}
@available(OSX 10.7, *)
let NSPreferredScrollerStyleDidChangeNotification: String
protocol NSSearchFieldDelegate : NSTextFieldDelegate {
  @available(OSX 10.11, *)
  optional func searchFieldDidStartSearching(sender: NSSearchField)
  @available(OSX 10.11, *)
  optional func searchFieldDidEndSearching(sender: NSSearchField)
}
class NSSearchField : NSTextField {
  @available(OSX 10.11, *)
  func rectForSearchTextWhenCentered(isCentered: Bool) -> NSRect
  @available(OSX 10.11, *)
  func rectForSearchButtonWhenCentered(isCentered: Bool) -> NSRect
  @available(OSX 10.11, *)
  func rectForCancelButtonWhenCentered(isCentered: Bool) -> NSRect
  var recentSearches: [String]
  var recentsAutosaveName: String?
  @available(OSX 10.10, *)
  var searchMenuTemplate: NSMenu?
  @available(OSX 10.10, *)
  var sendsWholeSearchString: Bool
  @available(OSX 10.10, *)
  var maximumRecents: Int
  @available(OSX 10.10, *)
  var sendsSearchStringImmediately: Bool
  @available(OSX 10.11, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSSearchFieldDelegate?
  @available(OSX 10.11, *)
  var centersPlaceholder: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
var NSSearchFieldRecentsTitleMenuItemTag: Int32 { get }
var NSSearchFieldRecentsMenuItemTag: Int32 { get }
var NSSearchFieldClearRecentsMenuItemTag: Int32 { get }
var NSSearchFieldNoRecentsMenuItemTag: Int32 { get }
class NSSearchFieldCell : NSTextFieldCell {
  var searchButtonCell: NSButtonCell?
  var cancelButtonCell: NSButtonCell?
  func resetSearchButtonCell()
  func resetCancelButtonCell()
  func searchTextRectForBounds(rect: NSRect) -> NSRect
  func searchButtonRectForBounds(rect: NSRect) -> NSRect
  func cancelButtonRectForBounds(rect: NSRect) -> NSRect
  var searchMenuTemplate: NSMenu?
  var sendsWholeSearchString: Bool
  var maximumRecents: Int
  var recentSearches: [String]!
  var recentsAutosaveName: String?
  var sendsSearchStringImmediately: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __sfFlags {
  var sendsWholeSearchString: UInt32
  var maximumRecents: UInt32
  var cancelVisible: UInt32
  var reserved2: UInt32
  var disableText: UInt32
  var menuTracking: UInt32
  var deferredUpdate: UInt32
  var sendsImmediately: UInt32
  var centeredLook: UInt32
  var renderingCentered: UInt32
  var becomeTransition: UInt32
  var resignTransition: UInt32
  var subclassOverridesRectForSearchButtonWhenCentered: UInt32
  var subclassOverridesRectForSearchTextWhenCentered: UInt32
  var subclassOverridesRectForCancelButtonWhenCentered: UInt32
  var resumeEditingOnCancel: UInt32
  var reserved: UInt32
  init()
  init(sendsWholeSearchString: UInt32, maximumRecents: UInt32, cancelVisible: UInt32, reserved2: UInt32, disableText: UInt32, menuTracking: UInt32, deferredUpdate: UInt32, sendsImmediately: UInt32, centeredLook: UInt32, renderingCentered: UInt32, becomeTransition: UInt32, resignTransition: UInt32, subclassOverridesRectForSearchButtonWhenCentered: UInt32, subclassOverridesRectForSearchTextWhenCentered: UInt32, subclassOverridesRectForCancelButtonWhenCentered: UInt32, resumeEditingOnCancel: UInt32, reserved: UInt32)
}
class NSSecureTextField : NSTextField {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSSecureTextFieldCell : NSTextFieldCell {
  var echosBullets: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSSegmentedCell : NSActionCell {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(tag: Int) -> Bool
  func makeNextSegmentKey()
  func makePreviousSegmentKey()
  var trackingMode: NSSegmentSwitchTracking
  func setWidth(width: CGFloat, forSegment segment: Int)
  func widthForSegment(segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func imageForSegment(segment: Int) -> NSImage?
  @available(OSX 10.5, *)
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  @available(OSX 10.5, *)
  func imageScalingForSegment(segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func labelForSegment(segment: Int) -> String?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(segment: Int) -> Bool
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(segment: Int) -> NSMenu?
  func setToolTip(toolTip: String?, forSegment segment: Int)
  func toolTipForSegment(segment: Int) -> String?
  func setTag(tag: Int, forSegment segment: Int)
  func tagForSegment(segment: Int) -> Int
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  func drawSegment(segment: Int, inFrame frame: NSRect, withView controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
extension NSSegmentedCell {
  @available(OSX 10.5, *)
  func interiorBackgroundStyleForSegment(segment: Int) -> NSBackgroundStyle
}
enum NSSegmentSwitchTracking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectOne
  case SelectAny
  case Momentary
  @available(OSX 10.10.3, *)
  case MomentaryAccelerator
}
@available(OSX 10.5, *)
enum NSSegmentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Rounded
  case RoundRect
  case TexturedSquare
  case SmallSquare
  @available(OSX 10.10, *)
  case Separated
  @available(OSX 10.5, *)
  case TexturedRounded
  @available(OSX 10.5, *)
  case Capsule
}
class NSSegmentedControl : NSControl {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegmentWithTag(tag: Int) -> Bool
  func setWidth(width: CGFloat, forSegment segment: Int)
  func widthForSegment(segment: Int) -> CGFloat
  func setImage(image: NSImage?, forSegment segment: Int)
  func imageForSegment(segment: Int) -> NSImage?
  @available(OSX 10.5, *)
  func setImageScaling(scaling: NSImageScaling, forSegment segment: Int)
  @available(OSX 10.5, *)
  func imageScalingForSegment(segment: Int) -> NSImageScaling
  func setLabel(label: String, forSegment segment: Int)
  func labelForSegment(segment: Int) -> String?
  func setMenu(menu: NSMenu?, forSegment segment: Int)
  func menuForSegment(segment: Int) -> NSMenu?
  func setSelected(selected: Bool, forSegment segment: Int)
  func isSelectedForSegment(segment: Int) -> Bool
  func setEnabled(enabled: Bool, forSegment segment: Int)
  func isEnabledForSegment(segment: Int) -> Bool
  @available(OSX 10.5, *)
  var segmentStyle: NSSegmentStyle
  @available(OSX 10.10.3, *)
  var isSpringLoaded: Bool
  @available(OSX 10.10.3, *)
  var trackingMode: NSSegmentSwitchTracking
  @available(OSX 10.10.3, *)
  var doubleValueForSelectedSegment: Double { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  var shadowOffset: NSSize
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.8, *)
let NSSharingServiceNamePostOnFacebook: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostOnTwitter: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostOnSinaWeibo: String
@available(OSX 10.9, *)
let NSSharingServiceNamePostOnTencentWeibo: String
@available(OSX 10.9, *)
let NSSharingServiceNamePostOnLinkedIn: String
@available(OSX 10.8, *)
let NSSharingServiceNameComposeEmail: String
@available(OSX 10.8, *)
let NSSharingServiceNameComposeMessage: String
@available(OSX 10.8, *)
let NSSharingServiceNameSendViaAirDrop: String
@available(OSX 10.8, *)
let NSSharingServiceNameAddToSafariReadingList: String
@available(OSX 10.8, *)
let NSSharingServiceNameAddToIPhoto: String
@available(OSX 10.8, *)
let NSSharingServiceNameAddToAperture: String
@available(OSX 10.8, *)
let NSSharingServiceNameUseAsTwitterProfileImage: String
@available(OSX 10.9, *)
let NSSharingServiceNameUseAsFacebookProfileImage: String
@available(OSX 10.9, *)
let NSSharingServiceNameUseAsLinkedInProfileImage: String
@available(OSX 10.8, *)
let NSSharingServiceNameUseAsDesktopPicture: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostImageOnFlickr: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostVideoOnVimeo: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostVideoOnYouku: String
@available(OSX 10.8, *)
let NSSharingServiceNamePostVideoOnTudou: String
@available(OSX 10.8, *)
class NSSharingService : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSharingServiceDelegate?
  var title: String { get }
  var image: NSImage { get }
  var alternateImage: NSImage? { get }
  @available(OSX 10.9, *)
  var menuItemTitle: String
  @available(OSX 10.9, *)
  var recipients: [String]?
  @available(OSX 10.9, *)
  var subject: String?
  @available(OSX 10.9, *)
  var messageBody: String? { get }
  @available(OSX 10.9, *)
  @NSCopying var permanentLink: NSURL? { get }
  @available(OSX 10.9, *)
  var accountName: String? { get }
  @available(OSX 10.9, *)
  var attachmentFileURLs: [NSURL]? { get }
  class func sharingServicesForItems(items: [AnyObject]) -> [NSSharingService]
  /*not inherited*/ init?(named serviceName: String)
  init(title: String, image: NSImage, alternateImage: NSImage?, handler block: () -> Void)
  func canPerformWithItems(items: [AnyObject]?) -> Bool
  func performWithItems(items: [AnyObject])
}
@available(OSX 10.8, *)
enum NSSharingContentScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Item
  case Partial
  case Full
}
protocol NSSharingServiceDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, willShareItems items: [AnyObject])
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, didFailToShareItems items: [AnyObject], error: NSError)
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, didShareItems items: [AnyObject])
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, sourceFrameOnScreenForShareItem item: AnyObject) -> NSRect
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, transitionImageForShareItem item: AnyObject, contentRect: UnsafeMutablePointer<NSRect>) -> NSImage
  @available(OSX 10.8, *)
  optional func sharingService(sharingService: NSSharingService, sourceWindowForShareItems items: [AnyObject], sharingContentScope: UnsafeMutablePointer<NSSharingContentScope>) -> NSWindow?
}
@available(OSX 10.8, *)
class NSSharingServicePicker : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSSharingServicePickerDelegate?
  init(items: [AnyObject])
  func showRelativeTo(rect: NSRect, of view: NSView, preferredEdge: NSRectEdge)
}
protocol NSSharingServicePickerDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, sharingServicesForItems items: [AnyObject], proposedSharingServices proposedServices: [NSSharingService]) -> [NSSharingService]
  @available(OSX 10.8, *)
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, delegateFor sharingService: NSSharingService) -> NSSharingServiceDelegate?
  @available(OSX 10.8, *)
  optional func sharingServicePicker(sharingServicePicker: NSSharingServicePicker, didChoose service: NSSharingService?)
}
class NSSlider : NSControl, NSAccessibilitySlider {
  @available(OSX 10.10, *)
  var sliderType: NSSliderType
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var knobThickness: CGFloat { get }
  var vertical: Int { get }
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
  func accessibilityValue() -> AnyObject?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
}
extension NSSlider {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValueAt(index: Int) -> Double
  func rectOfTickMarkAt(index: Int) -> NSRect
  func indexOfTickMarkAt(point: NSPoint) -> Int
  func closestTickMarkValueToValue(value: Double) -> Double
}
enum NSTickMarkPosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Below
  case Above
  static var Left: NSTickMarkPosition { get }
  static var Right: NSTickMarkPosition { get }
}
enum NSSliderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case LinearSlider
  case CircularSlider
}
class NSSliderCell : NSActionCell {
  class func prefersTrackingUntilMouseUp() -> Bool
  var minValue: Double
  var maxValue: Double
  var altIncrementValue: Double
  var sliderType: NSSliderType
  var vertical: Int { get }
  var trackRect: NSRect { get }
  var knobThickness: CGFloat { get }
  func knobRectFlipped(flipped: Bool) -> NSRect
  func drawKnob(knobRect: NSRect)
  func drawKnob()
  @available(OSX 10.9, *)
  func barRectFlipped(flipped: Bool) -> NSRect
  func drawBarInside(aRect: NSRect, flipped: Bool)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __sliderCellFlags {
  var weAreVertical: UInt32
  var weAreVerticalSet: UInt32
  var reserved1: UInt32
  var isPressed: UInt32
  var allowsTickMarkValuesOnly: UInt32
  var tickMarkPosition: UInt32
  var sliderType: UInt32
  var drawing: UInt32
  var snappedToTickMark: UInt32
  var snappedToPreviousValue: UInt32
  var snappedToDefaultValue: UInt32
  var snappingAllowed: UInt32
  var reserved2: UInt32
  init()
  init(weAreVertical: UInt32, weAreVerticalSet: UInt32, reserved1: UInt32, isPressed: UInt32, allowsTickMarkValuesOnly: UInt32, tickMarkPosition: UInt32, sliderType: UInt32, drawing: UInt32, snappedToTickMark: UInt32, snappedToPreviousValue: UInt32, snappedToDefaultValue: UInt32, snappingAllowed: UInt32, reserved2: UInt32)
}
extension NSSliderCell {
  var numberOfTickMarks: Int
  var tickMarkPosition: NSTickMarkPosition
  var allowsTickMarkValuesOnly: Bool
  func tickMarkValueAt(index: Int) -> Double
  func rectOfTickMarkAt(index: Int) -> NSRect
  func indexOfTickMarkAt(point: NSPoint) -> Int
  func closestTickMarkValueToValue(value: Double) -> Double
  @available(OSX 10.9, *)
  func drawTickMarks()
}
let NSSoundPboardType: String
class NSSound : NSObject, NSCopying, NSCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: String)
  init?(contentsOf url: NSURL, byReference byRef: Bool)
  init?(contentsOfFile path: String, byReference byRef: Bool)
  init?(data: NSData)
  func setName(string: String?) -> Bool
  var name: String? { get }
  class func canInitWith(pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  class func soundUnfilteredTypes() -> [String]
  init?(pasteboard: NSPasteboard)
  func writeTo(pasteboard: NSPasteboard)
  func play() -> Bool
  func pause() -> Bool
  func resume() -> Bool
  func stop() -> Bool
  var isPlaying: Bool { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSSoundDelegate?
  @available(OSX 10.5, *)
  var duration: NSTimeInterval { get }
  @available(OSX 10.5, *)
  var volume: Float
  @available(OSX 10.5, *)
  var currentTime: NSTimeInterval
  @available(OSX 10.5, *)
  var loops: Bool
  @available(OSX 10.5, *)
  var playbackDeviceIdentifier: String?
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsForType(type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  func pasteboardPropertyListForType(type: String) -> AnyObject?
}
extension NSSound {
}
protocol NSSoundDelegate : NSObjectProtocol {
  optional func sound(sound: NSSound, didFinishPlaying aBool: Bool)
}
extension NSBundle {
  func pathForSoundResource(name: String) -> String?
}
class NSSpeechRecognizer : NSObject {
  init?()
  func startListening()
  func stopListening()
  unowned(unsafe) var delegate: @sil_unmanaged NSSpeechRecognizerDelegate?
  var commands: [String]?
  var displayedCommandsTitle: String?
  var listensInForegroundOnly: Bool
  var blocksOtherRecognizers: Bool
}
protocol NSSpeechRecognizerDelegate : NSObjectProtocol {
  optional func speechRecognizer(sender: NSSpeechRecognizer, didRecognizeCommand command: String)
}
let NSVoiceName: String
let NSVoiceIdentifier: String
let NSVoiceAge: String
let NSVoiceGender: String
let NSVoiceDemoText: String
@available(OSX 10.5, *)
let NSVoiceLocaleIdentifier: String
@available(OSX 10.5, *)
let NSVoiceSupportedCharacters: String
@available(OSX 10.5, *)
let NSVoiceIndividuallySpokenCharacters: String
let NSVoiceGenderNeuter: String
let NSVoiceGenderMale: String
let NSVoiceGenderFemale: String
@available(OSX 10.5, *)
enum NSSpeechBoundary : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ImmediateBoundary
  case WordBoundary
  case SentenceBoundary
}
class NSSpeechSynthesizer : NSObject {
  init?(voice: String?)
  func startSpeaking(string: String) -> Bool
  func startSpeaking(string: String, to url: NSURL) -> Bool
  var isSpeaking: Bool { get }
  func stopSpeaking()
  @available(OSX 10.5, *)
  func stopSpeakingAt(boundary: NSSpeechBoundary)
  @available(OSX 10.5, *)
  func pauseSpeakingAt(boundary: NSSpeechBoundary)
  @available(OSX 10.5, *)
  func continueSpeaking()
  unowned(unsafe) var delegate: @sil_unmanaged NSSpeechSynthesizerDelegate?
  func voice() -> String?
  func setVoice(voice: String?) -> Bool
  @available(OSX 10.5, *)
  var rate: Float
  @available(OSX 10.5, *)
  var volume: Float
  var usesFeedbackWindow: Bool
  @available(OSX 10.5, *)
  func addSpeechDictionary(speechDictionary: [String : AnyObject])
  @available(OSX 10.5, *)
  func phonemesFromText(text: String) -> String
  @available(OSX 10.5, *)
  func objectForProperty(property: String) throws -> AnyObject
  @available(OSX 10.5, *)
  func setObject(object: AnyObject?, forProperty property: String) throws
  class func isAnyApplicationSpeaking() -> Bool
  class func defaultVoice() -> String
  class func availableVoices() -> [String]
  class func attributesForVoice(voice: String) -> [String : AnyObject]
  init()
}
protocol NSSpeechSynthesizerDelegate : NSObjectProtocol {
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakWord characterRange: NSRange, of string: String)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, willSpeakPhoneme phonemeOpcode: Int16)
  @available(OSX 10.5, *)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didEncounterErrorAt characterIndex: Int, of string: String, message: String)
  @available(OSX 10.5, *)
  optional func speechSynthesizer(sender: NSSpeechSynthesizer, didEncounterSyncMessage message: String)
}
@available(OSX 10.5, *)
let NSSpeechStatusProperty: String
@available(OSX 10.5, *)
let NSSpeechErrorsProperty: String
@available(OSX 10.5, *)
let NSSpeechInputModeProperty: String
@available(OSX 10.5, *)
let NSSpeechCharacterModeProperty: String
@available(OSX 10.5, *)
let NSSpeechNumberModeProperty: String
@available(OSX 10.5, *)
let NSSpeechRateProperty: String
@available(OSX 10.5, *)
let NSSpeechPitchBaseProperty: String
@available(OSX 10.5, *)
let NSSpeechPitchModProperty: String
@available(OSX 10.5, *)
let NSSpeechVolumeProperty: String
@available(OSX 10.5, *)
let NSSpeechSynthesizerInfoProperty: String
@available(OSX 10.5, *)
let NSSpeechRecentSyncProperty: String
@available(OSX 10.5, *)
let NSSpeechPhonemeSymbolsProperty: String
@available(OSX 10.5, *)
let NSSpeechCurrentVoiceProperty: String
@available(OSX 10.5, *)
let NSSpeechCommandDelimiterProperty: String
@available(OSX 10.5, *)
let NSSpeechResetProperty: String
@available(OSX 10.5, *)
let NSSpeechOutputToFileURLProperty: String
@available(OSX 10.5, *)
let NSSpeechModeText: String
@available(OSX 10.5, *)
let NSSpeechModePhoneme: String
@available(OSX 10.5, *)
let NSSpeechModeNormal: String
@available(OSX 10.5, *)
let NSSpeechModeLiteral: String
@available(OSX 10.5, *)
let NSSpeechStatusOutputBusy: String
@available(OSX 10.5, *)
let NSSpeechStatusOutputPaused: String
@available(OSX 10.5, *)
let NSSpeechStatusNumberOfCharactersLeft: String
@available(OSX 10.5, *)
let NSSpeechStatusPhonemeCode: String
@available(OSX 10.5, *)
let NSSpeechErrorCount: String
@available(OSX 10.5, *)
let NSSpeechErrorOldestCode: String
@available(OSX 10.5, *)
let NSSpeechErrorOldestCharacterOffset: String
@available(OSX 10.5, *)
let NSSpeechErrorNewestCode: String
@available(OSX 10.5, *)
let NSSpeechErrorNewestCharacterOffset: String
@available(OSX 10.5, *)
let NSSpeechSynthesizerInfoIdentifier: String
@available(OSX 10.5, *)
let NSSpeechSynthesizerInfoVersion: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoOpcode: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoSymbol: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoExample: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoHiliteStart: String
@available(OSX 10.5, *)
let NSSpeechPhonemeInfoHiliteEnd: String
@available(OSX 10.5, *)
let NSSpeechCommandPrefix: String
@available(OSX 10.5, *)
let NSSpeechCommandSuffix: String
@available(OSX 10.5, *)
let NSSpeechDictionaryLocaleIdentifier: String
@available(OSX 10.5, *)
let NSSpeechDictionaryModificationDate: String
@available(OSX 10.5, *)
let NSSpeechDictionaryPronunciations: String
@available(OSX 10.5, *)
let NSSpeechDictionaryAbbreviations: String
@available(OSX 10.5, *)
let NSSpeechDictionaryEntrySpelling: String
@available(OSX 10.5, *)
let NSSpeechDictionaryEntryPhonemes: String
class NSSpellChecker : NSObject {
  class func shared() -> NSSpellChecker
  class func sharedSpellCheckerExists() -> Bool
  class func uniqueSpellDocumentTag() -> Int
  func checkSpellingOf(stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, wordCount: UnsafeMutablePointer<Int>) -> NSRange
  func checkSpellingOf(stringToCheck: String, startingAt startingOffset: Int) -> NSRange
  func countWordsIn(stringToCount: String, language: String?) -> Int
  @available(OSX 10.5, *)
  func checkGrammarOf(stringToCheck: String, startingAt startingOffset: Int, language: String?, wrap wrapFlag: Bool, inSpellDocumentWithTag tag: Int, details: AutoreleasingUnsafeMutablePointer<NSArray?>) -> NSRange
  @available(OSX 10.6, *)
  func check(stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, orthography: AutoreleasingUnsafeMutablePointer<NSOrthography?>, wordCount: UnsafeMutablePointer<Int>) -> [NSTextCheckingResult]
  @available(OSX 10.6, *)
  func requestCheckingOf(stringToCheck: String, range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject]?, inSpellDocumentWithTag tag: Int, completionHandler: ((Int, [NSTextCheckingResult], NSOrthography, Int) -> Void)? = nil) -> Int
  @available(OSX 10.6, *)
  func menuFor(result: NSTextCheckingResult, string checkedString: String, options: [String : AnyObject]?, atLocation location: NSPoint, in view: NSView) -> NSMenu?
  @available(OSX 10.6, *)
  func userQuotesArrayForLanguage(language: String) -> [String]
  @available(OSX 10.6, *)
  var userReplacementsDictionary: [String : String] { get }
  func updateSpellingPanelWithMisspelledWord(word: String)
  @available(OSX 10.5, *)
  func updateSpellingPanelWithGrammarString(string: String, detail: [String : AnyObject])
  var spellingPanel: NSPanel { get }
  var accessoryView: NSView?
  @available(OSX 10.6, *)
  var substitutionsPanel: NSPanel { get }
  @available(OSX 10.6, *)
  var substitutionsPanelAccessoryViewController: NSViewController?
  @available(OSX 10.6, *)
  func updatePanels()
  func ignoreWord(wordToIgnore: String, inSpellDocumentWithTag tag: Int)
  func ignoredWordsInSpellDocumentWithTag(tag: Int) -> [String]?
  func setIgnoredWords(words: [String], inSpellDocumentWithTag tag: Int)
  @available(OSX 10.6, *)
  func guessesForWordRange(range: NSRange, in string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func correctionForWordRange(range: NSRange, in string: String, language: String, inSpellDocumentWithTag tag: Int) -> String?
  func completionsForPartialWordRange(range: NSRange, in string: String, language: String?, inSpellDocumentWithTag tag: Int) -> [String]?
  @available(OSX 10.7, *)
  func languageForWordRange(range: NSRange, in string: String, orthography: NSOrthography?) -> String?
  func closeSpellDocumentWithTag(tag: Int)
  @available(OSX 10.7, *)
  func record(response: NSCorrectionResponse, toCorrection correction: String, forWord word: String, language: String?, inSpellDocumentWithTag tag: Int)
  @available(OSX 10.7, *)
  func showCorrectionIndicatorOf(type: NSCorrectionIndicatorType, primaryString: String, alternativeStrings: [String], forStringIn rectOfTypedString: NSRect, view: NSView, completionHandler completionBlock: ((String!) -> Void)? = nil)
  @available(OSX 10.7, *)
  func dismissCorrectionIndicatorFor(view: NSView)
  @available(OSX 10.5, *)
  var availableLanguages: [String] { get }
  @available(OSX 10.6, *)
  var userPreferredLanguages: [String] { get }
  @available(OSX 10.6, *)
  var automaticallyIdentifiesLanguages: Bool
  func setWordFieldStringValue(aString: String)
  func learnWord(word: String)
  @available(OSX 10.5, *)
  func hasLearnedWord(word: String) -> Bool
  @available(OSX 10.5, *)
  func unlearnWord(word: String)
  @available(OSX 10.7, *)
  class func isAutomaticTextReplacementEnabled() -> Bool
  @available(OSX 10.7, *)
  class func isAutomaticSpellingCorrectionEnabled() -> Bool
  @available(OSX 10.9, *)
  class func isAutomaticQuoteSubstitutionEnabled() -> Bool
  @available(OSX 10.9, *)
  class func isAutomaticDashSubstitutionEnabled() -> Bool
  func language() -> String
  func setLanguage(language: String) -> Bool
  init()
}
struct __scFlags {
  var autoShowGuesses: UInt32
  var needDelayedGuess: UInt32
  var unignoreInProgress: UInt32
  var wordFieldEdited: UInt32
  var inSpelling: UInt32
  var reconnectSpelling: UInt32
  var inGrammar: UInt32
  var reconnectGrammar: UInt32
  var languageIdentification: UInt32
  var languagesHidden: UInt32
  var quotesByLanguage: UInt32
  var _reserved: UInt32
  init()
  init(autoShowGuesses: UInt32, needDelayedGuess: UInt32, unignoreInProgress: UInt32, wordFieldEdited: UInt32, inSpelling: UInt32, reconnectSpelling: UInt32, inGrammar: UInt32, reconnectGrammar: UInt32, languageIdentification: UInt32, languagesHidden: UInt32, quotesByLanguage: UInt32, _reserved: UInt32)
}
@available(OSX 10.6, *)
let NSTextCheckingOrthographyKey: String
@available(OSX 10.6, *)
let NSTextCheckingQuotesKey: String
@available(OSX 10.6, *)
let NSTextCheckingReplacementsKey: String
@available(OSX 10.6, *)
let NSTextCheckingReferenceDateKey: String
@available(OSX 10.6, *)
let NSTextCheckingReferenceTimeZoneKey: String
@available(OSX 10.6, *)
let NSTextCheckingDocumentURLKey: String
@available(OSX 10.6, *)
let NSTextCheckingDocumentTitleKey: String
@available(OSX 10.6, *)
let NSTextCheckingDocumentAuthorKey: String
@available(OSX 10.7, *)
let NSTextCheckingRegularExpressionsKey: String
enum NSCorrectionResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Accepted
  case Rejected
  case Ignored
  case Edited
  case Reverted
}
enum NSCorrectionIndicatorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Reversion
  case Guesses
}
@available(OSX 10.7, *)
let NSSpellCheckerDidChangeAutomaticSpellingCorrectionNotification: String
@available(OSX 10.7, *)
let NSSpellCheckerDidChangeAutomaticTextReplacementNotification: String
@available(OSX 10.9, *)
let NSSpellCheckerDidChangeAutomaticQuoteSubstitutionNotification: String
@available(OSX 10.9, *)
let NSSpellCheckerDidChangeAutomaticDashSubstitutionNotification: String
extension NSSpellChecker {
}
protocol NSChangeSpelling {
  func changeSpelling(sender: AnyObject?)
}
protocol NSIgnoreMisspelledWords {
  func ignoreSpelling(sender: AnyObject?)
}
@available(OSX 10.5, *)
enum NSSplitViewDividerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Thick
  case Thin
  @available(OSX 10.6, *)
  case PaneSplitter
}
class NSSplitView : NSView {
  var isVertical: Bool
  @available(OSX 10.5, *)
  var dividerStyle: NSSplitViewDividerStyle
  @available(OSX 10.5, *)
  var autosaveName: String?
  unowned(unsafe) var delegate: @sil_unmanaged NSSplitViewDelegate?
  func drawDividerIn(rect: NSRect)
  @available(OSX 10.5, *)
  @NSCopying var dividerColor: NSColor { get }
  var dividerThickness: CGFloat { get }
  func adjustSubviews()
  func isSubviewCollapsed(subview: NSView) -> Bool
  @available(OSX 10.5, *)
  func minPossiblePositionOfDividerAt(dividerIndex: Int) -> CGFloat
  @available(OSX 10.5, *)
  func maxPossiblePositionOfDividerAt(dividerIndex: Int) -> CGFloat
  @available(OSX 10.5, *)
  func setPosition(position: CGFloat, ofDividerAt dividerIndex: Int)
  @available(OSX 10.8, *)
  func holdingPriorityForSubviewAt(subviewIndex: Int) -> NSLayoutPriority
  @available(OSX 10.8, *)
  func setHoldingPriority(priority: NSLayoutPriority, forSubviewAt subviewIndex: Int)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSSplitView {

  /*!
   * Whether or not all subviews will be added as arranged views. When NO, a subview must be explicitly added as an arrangedSubview if the view should be arranged as a split pane. When YES, \c -arrangedSubviews always be identical to \c -subviews. Defaults to YES.
   * Setting this from YES to NO will leave all existing subviews as \c -arrangedSubviews. Setting this from NO to YES will cause \c -arrangedSubviews to become the value of \c -subviews.
   */
  @available(OSX 10.11, *)
  var arrangesAllSubviews: Bool

  /*!
   * The list of views that are arranged as split panes in the receiver.
   * They are a subset of \c -subviews, with potential difference in ordering. If \c -arrangesAllSubviews is YES, then \c -arrangedSubviews is identical to \c -subviews.
   */
  @available(OSX 10.11, *)
  var arrangedSubviews: [NSView] { get }

  /*!
   * Adds a view as arranged split pane. If the view is not a subview of the receiver, it will be added as one.
   */
  @available(OSX 10.11, *)
  func addArrangedSubview(view: NSView)

  /*!
   * Adds a view as an arranged split pane list at the specific index.
   * If the view is already an arranged split view, it will move the view the specified index (but not move the subview index).
   * If the view is not a subview of the receiver, it will be added as one (not necessarily at the same index).
   */
  @available(OSX 10.11, *)
  func insertArrangedSubview(view: NSView, at index: Int)

  /*!
   * Removes a view as arranged split pane. If \c -arrangesAllSubviews is set to NO, this does not remove the view as a subview.
   * Removing the view as a subview (either by -[view removeFromSuperview] or setting the receiver's subviews) will automatically remove it as an arranged subview.
   */
  @available(OSX 10.11, *)
  func removeArrangedSubview(view: NSView)
}
protocol NSSplitViewDelegate : NSObjectProtocol {
  optional func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAt dividerIndex: Int) -> Bool
  optional func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(OSX 10.6, *)
  optional func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, shouldHideDividerAt dividerIndex: Int) -> Bool
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect
  @available(OSX 10.5, *)
  optional func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAt dividerIndex: Int) -> NSRect
  optional func splitViewWillResizeSubviews(notification: NSNotification)
  optional func splitViewDidResizeSubviews(notification: NSNotification)
}
let NSSplitViewWillResizeSubviewsNotification: String
let NSSplitViewDidResizeSubviewsNotification: String
extension NSSplitView {
}

/// This constant can be used with any sizing related \c NSSplitViewController properties to get the default system behavior.
@available(OSX 10.11, *)
let NSSplitViewControllerAutomaticDimension: CGFloat

/*!
 * NSSplitViewController is a container view controller that manages side-by-side (horizontal or vertical) children view controllers.
 * Views are lazily loaded. For instance, adding a collapsed SplitViewItem will not load the associated ViewController's view until it is uncollapsed.
 * The NSSplitViewController is set as the delegate of its managed NSSplitView. Any overrides of NSSplitViewDelegate methods must call super.
 * Only the \c -vertical, \c -autosaveName, and divider properties should be manipulated on the managed NSSplitView. Changing other properties (such as delegate, manipulating subviews, holding priorities) will cause an exception to be thrown.
 * Autolayout must be used with NSSplitViewController to properly control the layout of the child views and the animations of collapses and reveals. e.g., Constraints can be used to setup whether a window should grow/shrink or stay the same size when showing and hiding a sidebar.
 * NSViewController's methods \c -addChildViewController:, \c -insertViewController:atIndex:, and \c -removeChildViewControllerAtIndex: can all be used as convience methods to add children; default SplitViewItems will be appropriately created or destroyed.
 */
@available(OSX 10.10, *)
class NSSplitViewController : NSViewController, NSSplitViewDelegate {

  /// The split view managed by the SplitViewController. This can be used to customize view properties such as the dividerStyle, vertical, and autosaveName. It is not guaranteed to be the same view as the receivers 'view' property. The default created splitView is vertical with a dividerStyle of \c NSSplitViewDividerStyleThin. To provide a custom NSSplitView, set the splitView property anytime before self.viewLoaded is YES.
  var splitView: NSSplitView

  /// The array of SplitViewItems that correspond to the current child view controllers. After a child view controller is added to the receiving splitViewController, a NSSplitViewItem with the default values will be created for it. Once the child is removed, its corresponding splitViewItem will be removed from the splitViewItems array. Setting this will call through to \c -insertSplitViewItem:atIndex and \c -removeSplitViewItem: for items that are new or need removal.
  var splitViewItems: [NSSplitViewItem]

  /*!
   * Adds a SplitViewItem to the end of the SplitViewController. If the receiver's view is loaded and the SplitViewItem is not collapsed, the SplitViewItem's viewController's view will be loaded and added to the splitView. This calls through to -insertSplitViewItem:atIndex:.
   * \param splitViewItem The SplitViewItem to add. It must have a viewController set by the time it is added or an exception will be thrown. An exception will also be thrown if splitViewItem is nil.
   */
  func addSplitViewItem(splitViewItem: NSSplitViewItem)

  /*!
   * Adds a SplitViewItem to a given index in the SplitViewController. If the receiver's view is loaded and the SplitViewItem is not collapsed, the SplitViewItem's viewController's view will be loaded and added to the \c splitView. Subclasses must call through \c -insertSplitViewItem:atIndex: to add a SplitViewItem.
   * \param splitViewItem The SplitViewItem to add. It must have a \c viewController set by the time it is added or an exception will be thrown. An exception will also be thrown if splitViewItem is nil.
   * \param index The index to add the SplitViewItem at. Will throw an exception if \c index < 0 or \c index > \c splitViewItems.count
   */
  func insertSplitViewItem(splitViewItem: NSSplitViewItem, at index: Int)

  /*!
   * Removes a SplitViewItem from the receiver. The layout of the \c splitView will be adjusted for its removal. Subclasses must call through \c -removeSplitViewItem: to remove a SplitViewItem.
   * \param splitViewItem The SplitViewItem to remove. An exception will be thrown if \c splitViewItem is not in the SplitViewController or if it is nil.
   */
  func removeSplitViewItem(splitViewItem: NSSplitViewItem)

  /*!
   * Returns the corresponding SplitViewItem for a given child ViewController.
   * \param viewController The ViewController to look up.
   * \return The corresponding SplitViewItem. Returns nil if \c viewController is not a child of the SplitViewController.
   */
  func splitViewItemFor(viewController: NSViewController) -> NSSplitViewItem?

  /*!
   * The minimum thickness in the primary axis of split view (width for "vertical", height otherwise) before sidebar items will automatically collapse. If reshown in fullscreen, they will overlay over the other split items.
   * Auto-collapsed sidebars will automatically uncollapse if the thickness is increased back to or past the minimum thickness.
   * Defaults to \c NSSplitViewControllerAutomaticDimension, which will use the effective minimum sizes of the split view item views as described by constraints in the window to determine the minimum size for inline sidebars. Once constraints establishing the minimum size can't be satisfied for all non-collapsed split panes, all sidebars will auto-collapse. When fullscreen, if a sidebar tries to uncollapse in this state, it will overlay.
   */
  @available(OSX 10.11, *)
  var minimumThicknessForInlineSidebars: CGFloat
  func viewDidLoad()
  func splitView(splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  func splitView(splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAt dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, shouldHideDividerAt dividerIndex: Int) -> Bool
  func splitView(splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect
  func splitView(splitView: NSSplitView, additionalEffectiveRectOfDividerAt dividerIndex: Int) -> NSRect
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  @available(OSX 10.10, *)
  func splitView(splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(OSX 10.6, *)
  func splitView(splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(OSX 10.10, *)
  func splitViewWillResizeSubviews(notification: NSNotification)
  @available(OSX 10.10, *)
  func splitViewDidResizeSubviews(notification: NSNotification)
}
extension NSSplitViewController {

  /// Animatedly collapses or uncollapses the first sidebar split view item in the receiver. Does nothing if the receiver does not contain any sidebars.
  @available(OSX 10.11, *)
  @IBAction func toggleSidebar(sender: AnyObject?)
}
@available(OSX 10.11, *)
enum NSSplitViewItemBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Sidebar
  case ContentList
}
@available(OSX 10.11, *)
enum NSSplitViewItemCollapseBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// The item uses the default collapsing behavior for its set `behavior`. The default may change over time.
  case Default

  /// The item prefers to keep the other panes at their current size and position on screen, potentially growing or shrinking the window in the direction to best preserve that. But it will break that preference in order to keep the window fully on screen or when in full screen.
  case PreferResizingSplitViewWithFixedSiblings

  /// The item prefers to resize the other split panes. This will be broken when uncollapsing if the item can't fully uncollapse before hitting the minimum size of the other panes or the window.
  case PreferResizingSiblingsWithFixedSplitView

  /// The item will collapse/uncollapse purely from a constraint animation, with a constraint priority of the item’s `holdingPriority`. This could result in a partial internal content resize and window resize, and has no implications for keeping the window on screen. External constraints can be used to tweak exactly how the animation affects item, sibling, and window size and positions.
  case UseConstraints
}

/// This constant can be used with any sizing related \c NSSplitViewItem properties to unset their values.
@available(OSX 10.11, *)
let NSSplitViewItemUnspecifiedDimension: CGFloat

/*!
 * NSSplitViewItem implements the items used in an NSSplitViewController.
 * The item describes a child ViewController's state in a SplitViewController, e.g. its collapsibility, holding priority and other metrics, and collapsed state.
 */
@available(OSX 10.10, *)
class NSSplitViewItem : NSObject, NSAnimatablePropertyContainer, NSCoding {

  /*!
   * Creates an autoreleased SplitViewItem that represents the provided ViewController. All other properties are left at their default.
   * \param viewController The view controller used to set the viewController property
   * \return An autoreleased SplitViewItem.
   */
  convenience init(viewController: NSViewController)

  /*!
   * Creates a split view item representing a sidebar for the provided ViewController.
   * Sidebars have standard system behavior, specifically:
   *  - Translucent material background
   *  - The ability to collapse/uncollapse on split view size changes
   *  - The ability to overlay at small split view sizes when in fullscreen
   *  - canCollapse is set to YES
   *  - minimumThickness and maximumThickness are set to the standard minimum and maximum sidebar size
   *  - preferredThicknessFraction is set to the standard fraction for sidebars (0.15)
   *  - springLoaded is set to YES
   * \param viewController The view controller used to set the viewController property
   * \return An autoreleased SplitViewItem that acts as a sidebar.
   */
  @available(OSX 10.11, *)
  convenience init(sidebarWithViewController viewController: NSViewController)

  /*!
   * Creates a split view item representing a content list for the provided ViewController, akin to Mail's message list, Note's note list.
   * Content lists have system standard defaults, specifically:
   *  - minimumThickness and maximumThickness are set to the system standard for content lists
   *  - automaticMaximumThickness is set to the system standard for content lists
   *  - preferredThicknessFraction is set to the standard fraction for content lists (0.28 when a neighbor sidebar is visible, 0.33 if not)
   * \param viewController The view controller used to set the viewController property
   * \return An autoreleased SplitViewItem that acts as a content list.
   */
  @available(OSX 10.11, *)
  convenience init(contentListWithViewController viewController: NSViewController)

  /// The standard behavior type of the receiver. See initializers for descriptions of each behavior.
  @available(OSX 10.11, *)
  var behavior: NSSplitViewItemBehavior { get }

  /// The view controller represented by the SplitViewItem. An exception will be thrown if a new viewController is set while the receiving SplitViewItem is added to a SplitViewController.
  var viewController: NSViewController

  /// Whether or not the child ViewController corresponding to the SplitViewItem is collapsed in the SplitViewController. The default is \c NO. This can be set with the animator proxy to animate the collapse or uncollapse. The exact animation used can be customized by setting it in the -animations dictionary with a key of "collapsed". If this is set to YES before it is added to the SplitViewController, it will be initially collapsed and the SplitViewController will not cause the view to be loaded until it is uncollapsed. This is KVC/KVO compliant and will be updated if the value changes from user interaction.
  var isCollapsed: Bool

  /// Whether or not the child view controller is collapsible from user interaction - whether by dragging or double clicking a divider. The default is \c NO.
  var canCollapse: Bool

  /// The resize behavior when the receiver toggles its `collapsed` state programmatically, both animatedly and not. Defaults to `.Default`.
  @available(OSX 10.11, *)
  var collapseBehavior: NSSplitViewItemCollapseBehavior

  /// A convenience to set the minimum thickness of the split view item -- width for "vertical" split views, height otherwise. If NSSplitViewItemUnspecifiedDimension, no minimum size is enforced by the SplitViewItem, although constraints in the contained view hierarchy might have constraints specify some minimum size on their own. Defaults to NSSplitViewItemUnspecifiedDimension.
  @available(OSX 10.11, *)
  var minimumThickness: CGFloat

  /// A convenience to set the maximum thickness of the split view item -- width for "vertical" split views, height otherwise. If NSSplitViewItemUnspecifiedDimension, no maximum size is enforced by the SplitViewItem, although constraints in the contained view hierarchy might have constraints specify some maximum size on their own. Defaults to NSSplitViewItemUnspecifiedDimension.
  @available(OSX 10.11, *)
  var maximumThickness: CGFloat

  /// The percentage of the contained NSSplitView that the NSSplitViewItem prefers to encompass. This is used when double-clicking on a neighbor divider to return to that standard ratio. As well as after entering fullscreen to determine the initial size of the receiver. Defaults to NSSplitViewItemUnspecifiedDimension, which means no resize will occur on double-clicks, and the absolute size is preserved when entering fullscreen.
  @available(OSX 10.11, *)
  var preferredThicknessFraction: CGFloat

  /// Sets the priority under which a SplitViewItem will hold its width (for a vertical split view) or height (for a horizontal split view). The view with the lowest priority will be the first to take on additional width if the split view grows or shrinks. The default is \c NSLayoutPriorityDefaultLow.
  var holdingPriority: NSLayoutPriority

  /// The maximum thickness of the split view item when resizing due to automatic sizing, such as entering fullscreen with a set preferredThicknessFraction or proportional sizing. The user can still resize up to the absolute maximum size by dragging the divider or otherwise. If NSSplitViewItemUnspecifiedDimension, no automatic maximum is enforced. Defaults to NSSplitViewItemUnspecifiedDimension.
  @available(OSX 10.11, *)
  var automaticMaximumThickness: CGFloat

  /// If YES, the split view item can be temporarily uncollapsed during a drag by hovering or deep clicking on its neighboring divider. Defaults to NO.
  @available(OSX 10.11, *)
  var isSpringLoaded: Bool
  init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(key: String) -> AnyObject?
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
enum NSStackViewGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Top
  static var Leading: NSStackViewGravity { get }
  case Center
  case Bottom
  static var Trailing: NSStackViewGravity { get }
}
@available(OSX 10.11, *)
enum NSStackViewDistribution : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Default value. NSStackView will not have any special distribution behavior, relying on behavior described by gravity areas and set hugging priorities along the stacking axis.
  case GravityAreas

  /// The effective hugging priority in the stacking axis is NSLayoutPriorityRequired, causing the stacked views to tightly fill the container along the stacking axis.
  case Fill

  /// Stacked views will have sizes maintained to be equal as much as possible along the stacking axis. The effective hugging priority in the stacking axis is NSLayoutPriorityRequired.
  case FillEqually

  /// Stacked views will have sizes maintained to be equal, proportionally to their intrinsicContentSizes, as much as possible. The effective hugging priority in the stacking axis is NSLayoutPriorityRequired.
  case FillProportionally

  /// The space separating stacked views along the stacking axis are maintained to be equal as much as possible while still maintaining the minimum spacing.
  case EqualSpacing

  /// Equal center-to-center spacing of the items is maintained as much as possible while still maintaining the minimum spacing between each view.
  case EqualCentering
}
@available(OSX 10.9, *)
typealias NSStackViewVisibilityPriority = Float
@available(OSX 10.9, *)
let NSStackViewVisibilityPriorityMustHold: NSStackViewVisibilityPriority
@available(OSX 10.9, *)
let NSStackViewVisibilityPriorityDetachOnlyIfNecessary: NSStackViewVisibilityPriority
@available(OSX 10.9, *)
let NSStackViewVisibilityPriorityNotVisible: NSStackViewVisibilityPriority
@available(OSX 10.9, *)
let NSStackViewSpacingUseDefault: CGFloat
@available(OSX 10.9, *)
class NSStackView : NSView {
  convenience init(views: [NSView])
  unowned(unsafe) var delegate: @sil_unmanaged NSStackViewDelegate?
  var orientation: NSUserInterfaceLayoutOrientation
  var alignment: NSLayoutAttribute
  var edgeInsets: NSEdgeInsets
  func addView(aView: NSView, in gravity: NSStackViewGravity)
  func insertView(aView: NSView, at index: Int, in gravity: NSStackViewGravity)
  func removeView(aView: NSView)
  func viewsIn(gravity: NSStackViewGravity) -> [NSView]
  func setViews(views: [NSView], in gravity: NSStackViewGravity)
  var views: [NSView] { get }
  var detachedViews: [NSView] { get }

  /// If YES, when a stacked view's `hidden` property is set to YES, the view will be detached from the stack and reattached when set to NO. Similarly, if the view has a lowered visibility priority and is detached from the stack view, it will be set as `hidden` rather than removed from the view hierarchy. Defaults to YES for apps linked on the 10.11 SDK or later.
  @available(OSX 10.11, *)
  var detachesHiddenViews: Bool
  func setVisibilityPriority(priority: NSStackViewVisibilityPriority, forView aView: NSView)
  func visibilityPriorityFor(aView: NSView) -> NSStackViewVisibilityPriority
  var spacing: CGFloat
  func setCustomSpacing(spacing: CGFloat, after aView: NSView)
  func customSpacingAfter(aView: NSView) -> CGFloat

  /// The spacing and sizing distribution of stacked views along the primary axis. Defaults to GravityAreas.
  @available(OSX 10.11, *)
  var distribution: NSStackViewDistribution
  func clippingResistancePriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setClippingResistancePriority(clippingResistancePriority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  func huggingPriorityFor(orientation: NSLayoutConstraintOrientation) -> NSLayoutPriority
  func setHuggingPriority(huggingPriority: NSLayoutPriority, forOrientation orientation: NSLayoutConstraintOrientation)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSStackView {

  /// The list of views that are arranged in a stack by the receiver. They are a subset of \c -subviews, with potential difference in ordering.
  @available(OSX 10.11, *)
  var arrangedSubviews: [NSView] { get }

  /*!
   * Adds a view to the end of the arrangedSubviews list. If the view is not a subview of the receiver, it will be added as one.
   */
  @available(OSX 10.11, *)
  func addArrangedSubview(view: NSView)

  /*!
   * Adds a view to the arrangedSubviews list at a specific index.
   * If the view is already in the arrangedSubviews list, it will move the view to the specified index (but not change the subview index).
   * If the view is not a subview of the receiver, it will be added as one (not necessarily at the same index).
   */
  @available(OSX 10.11, *)
  func insertArrangedSubview(view: NSView, at index: Int)

  /*!
   * Removes a subview from the list of arranged subviews without removing it as a subview of the receiver.
   * Removing the view as a subview (either by -[view removeFromSuperview] or setting the receiver's subviews) will automatically remove it as an arranged subview.
   */
  @available(OSX 10.11, *)
  func removeArrangedSubview(view: NSView)
}
protocol NSStackViewDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func stackView(stackView: NSStackView, willDetach views: [NSView])
  @available(OSX 10.9, *)
  optional func stackView(stackView: NSStackView, didReattachViews views: [NSView])
}
extension NSStackView {
  @available(OSX, introduced=10.9, deprecated=10.11, message="Set -distribution to NSStackViewDistributionEqualSpacing instead.")
  var hasEqualSpacing: Bool
}
let NSVariableStatusItemLength: CGFloat
let NSSquareStatusItemLength: CGFloat
class NSStatusBar : NSObject {
  class func system() -> NSStatusBar
  func statusItemWithLength(length: CGFloat) -> NSStatusItem
  func remove(item: NSStatusItem)
  var isVertical: Bool { get }
  var thickness: CGFloat { get }
  init()
}

/*!
 * StatusBarButtons are the visual representation of NSStatusItems, and are primarily displayed on the right side of the menu bar.
 * When a template image is set as the \c image property of the status bar button, it is rendered with the correct menu bar style. This guarantees that the button will look correct in various button states and appearances (such as dark menu bar).
 */
@available(OSX 10.10, *)
class NSStatusBarButton : NSButton {

  /// When YES the status bar icon has a disabled/off appearance while still being functional, such as allowing selection and actions. Defaults to NO.
  var appearsDisabled: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class NSStatusItem : NSObject {

  /// The status bar that the receiver is displayed in.
  unowned(unsafe) var statusBar: @sil_unmanaged NSStatusBar { get }

  /// The amount of space in the status bar that should be allocated to the receiver. \c NSVariableStatusItemLength will adjust the length to the size of the status item's contents and \c NSSquareStatusItemLength will keep the length the same as the status bar's height.
  var length: CGFloat

  /// The drop down menu that is displayed when the status item is pressed or clicked.
  var menu: NSMenu?

  /// The button that is displayed in the status bar. This is created automatically on the creation of the StatusItem. Behavior customization for the button, such as image, target/action, tooltip, can be set with this property.
  @available(OSX 10.10, *)
  var button: NSStatusBarButton? { get }
  init()
}
extension NSStatusItem {
  var action: Selector
  var doubleAction: Selector
  weak var target: @sil_weak AnyObject?
  var title: String?
  @NSCopying var attributedTitle: NSAttributedString?
  var image: NSImage?
  var alternateImage: NSImage?
  var isEnabled: Bool
  var isHighlightMode: Bool
  var toolTip: String?
  func sendActionOn(mask: Int) -> Int
  var view: NSView?
  func drawStatusBarBackgroundIn(rect: NSRect, withHighlight highlight: Bool)
  func popUpStatusItemMenu(menu: NSMenu)
}
class NSStepper : NSControl, NSAccessibilityStepper {
  var minValue: Double
  var maxValue: Double
  var increment: Double
  var valueWraps: Bool
  var isAutorepeat: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
  func accessibilityPerformIncrement() -> Bool
  func accessibilityPerformDecrement() -> Bool
  func accessibilityValue() -> AnyObject?
}
class NSStepperCell : NSActionCell {
  var minValue: Double
  var maxValue: Double
  var increment: Double
  var valueWraps: Bool
  var isAutorepeat: Bool
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
class NSStoryboard : NSObject {
  convenience init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialController() -> AnyObject?
  func instantiateControllerWithIdentifier(identifier: String) -> AnyObject
  init()
}
struct _storyboardFlags {
  var reserved: UInt32
  init()
  init(reserved: UInt32)
}
@available(OSX 10.10, *)
class NSStoryboardSegue : NSObject {
  convenience init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject, performHandler: () -> Void)
  init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject)
  var identifier: String? { get }
  var sourceController: AnyObject { get }
  var destinationController: AnyObject { get }
  func perform()
  convenience init()
}
protocol NSSeguePerforming : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func prepareFor(segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
}
@available(OSX 10.11, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: NSRect { get }
  init()
}
extension NSString {
  @available(OSX 10.0, *)
  func sizeWithAttributes(attrs: [String : AnyObject]?) -> NSSize
  @available(OSX 10.0, *)
  func drawAt(point: NSPoint, withAttributes attrs: [String : AnyObject]?)
  @available(OSX 10.0, *)
  func drawIn(rect: NSRect, withAttributes attrs: [String : AnyObject]?)
}
extension NSAttributedString {
  @available(OSX 10.0, *)
  func size() -> NSSize
  @available(OSX 10.0, *)
  func drawAt(point: NSPoint)
  @available(OSX 10.0, *)
  func drawIn(rect: NSRect)
}
@available(OSX 10.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(OSX 10.5, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
  @available(OSX, introduced=10.0, deprecated=10.11)
  static var DisableScreenFontSubstitution: NSStringDrawingOptions { get }
  @available(OSX, introduced=10.0, deprecated=10.11)
  static var OneShot: NSStringDrawingOptions { get }
}
extension NSString {
  @available(OSX 10.11, *)
  func drawWith(rect: NSRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?, context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWith(size: NSSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?, context: NSStringDrawingContext?) -> NSRect
}
extension NSAttributedString {
  @available(OSX 10.11, *)
  func drawWith(rect: NSRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(OSX 10.11, *)
  func boundingRectWith(size: NSSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> NSRect
}

/************************ Deprecated ************************/
extension NSString {
  func drawWith(rect: NSRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?)
  func boundingRectWith(size: NSSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]?) -> NSRect
}
extension NSAttributedString {
  func drawWith(rect: NSRect, options: NSStringDrawingOptions = [])
  func boundingRectWith(size: NSSize, options: NSStringDrawingOptions = []) -> NSRect
}
var NSAppKitVersionNumberWithDirectionalTabs: Double { get }
enum NSTabViewType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TopTabsBezelBorder
  case LeftTabsBezelBorder
  case BottomTabsBezelBorder
  case RightTabsBezelBorder
  case NoTabsBezelBorder
  case NoTabsLineBorder
  case NoTabsNoBorder
}
class NSTabView : NSView {
  func selectTabViewItem(tabViewItem: NSTabViewItem?)
  func selectTabViewItemAt(index: Int)
  func selectTabViewItemWithIdentifier(identifier: AnyObject)
  func takeSelectedTabViewItemFromSender(sender: AnyObject?)
  func selectFirstTabViewItem(sender: AnyObject?)
  func selectLastTabViewItem(sender: AnyObject?)
  func selectNextTabViewItem(sender: AnyObject?)
  func selectPreviousTabViewItem(sender: AnyObject?)
  var selectedTabViewItem: NSTabViewItem? { get }
  var font: NSFont
  var tabViewType: NSTabViewType
  var tabViewItems: [NSTabViewItem] { get }
  var allowsTruncatedLabels: Bool
  var minimumSize: NSSize { get }
  var drawsBackground: Bool
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  func addTabViewItem(tabViewItem: NSTabViewItem)
  func insertTabViewItem(tabViewItem: NSTabViewItem, at index: Int)
  func removeTabViewItem(tabViewItem: NSTabViewItem)
  unowned(unsafe) var delegate: @sil_unmanaged NSTabViewDelegate?
  func tabViewItemAt(point: NSPoint) -> NSTabViewItem?
  var contentRect: NSRect { get }
  var numberOfTabViewItems: Int { get }
  func indexOf(tabViewItem: NSTabViewItem) -> Int
  func tabViewItemAt(index: Int) -> NSTabViewItem
  func indexOfTabViewItemWithIdentifier(identifier: AnyObject) -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct __NSTabViewDelegateRespondTo {
  var shouldSelectTabViewItem: UInt32
  var willSelectTabViewItem: UInt32
  var didSelectTabViewItem: UInt32
  var didChangeNumberOfTabViewItems: UInt32
  var reserved: UInt32
  init()
  init(shouldSelectTabViewItem: UInt32, willSelectTabViewItem: UInt32, didSelectTabViewItem: UInt32, didChangeNumberOfTabViewItems: UInt32, reserved: UInt32)
}
struct __NSTabViewFlags {
  var needsLayout: UInt32
  var controlTint: UInt32
  var controlSize: UInt32
  var wiringNibConnections: UInt32
  var wiringInteriorLastKeyView: UInt32
  var originalNextKeyViewChanged: UInt32
  var liveResizeSkippedResetToolTips: UInt32
  var subviewsAddedForTabs: UInt32
  var allowsPropertyChange: UInt32
  var ownedByTabViewController: UInt32
  var reserved: UInt32
  init()
  init(needsLayout: UInt32, controlTint: UInt32, controlSize: UInt32, wiringNibConnections: UInt32, wiringInteriorLastKeyView: UInt32, originalNextKeyViewChanged: UInt32, liveResizeSkippedResetToolTips: UInt32, subviewsAddedForTabs: UInt32, allowsPropertyChange: UInt32, ownedByTabViewController: UInt32, reserved: UInt32)
}
protocol NSTabViewDelegate : NSObjectProtocol {
  optional func tabView(tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool
  optional func tabView(tabView: NSTabView, willSelect tabViewItem: NSTabViewItem?)
  optional func tabView(tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?)
  optional func tabViewDidChangeNumberOfTabViewItems(tabView: NSTabView)
}
@available(OSX 10.10, *)
enum NSTabViewControllerTabStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /// Uses an NSSegmentedControl to show the UI for the tabs. The control is on the top of the view.
  case SegmentedControlOnTop

  /// Uses an NSSegmentedControl to show the UI for the tabs. The control is on the bottom of the view.
  case SegmentedControlOnBottom

  /// Automatically pushes the tabs into the window's toolbar as toolbar items, if non-nil. This style will cause the TabViewController to set its containing window's toolbar to its own and become that toolbar's delegate. The toolbar items can be customized or supplemented by overriding the relevant NSToolbarDelegate methods.
  case Toolbar

  /// NSTabViewController will not provide any of its own tab control UI. Separate UI, such as a NSSegmentedControl or NSPopupButton, can be easily bound to the TabViewController. Or \c tabView.tabViewType can be changed for the TabView itself to draw the UI.
  case Unspecified
}

/*!
 * NSTabViewController is a container view controller that displays a single child view controller at a time from its \c childViewControllers.
 * It provides standard tab-style UI for user selection of tabs, or allows custom UI to be easily created by providing targets for bindings.
 * ChildViewControllers’ views are lazily loaded; they are only loaded once their tab is selected and visible.
 * The NSTabViewController is set as the delegate of its managed NSTabView. Any overrides of NSTabViewDelegate methods must call super. Properties of the TabView such as the tabStyle can be directly manipulated, but calling methods that add and remove tabViewItems or changing the delegate is not allowed.
 * NSViewController's methods \c -addChildViewController:, \c -insertViewController:atIndex:, and \c -removeChildViewControllerAtIndex: can all be used as convience methods to add children; default TabViewItems will be appropriately created or destroyed. The default NSTabViewItem created with with +[NSTabViewItem tabViewItemForViewController:].
 */
@available(OSX 10.10, *)
class NSTabViewController : NSViewController, NSTabViewDelegate, NSToolbarDelegate {

  /// The style that this NSTabViewController displays its UI as. Defaults to \c NSTabViewControllerTabStyleSegmentedControlOnTop.
  var tabStyle: NSTabViewControllerTabStyle

  /// Access to the tab view that the controller is controlling. To provide a custom NSTabView, assign the value anytime before \c self.viewLoaded is \c YES. Querying the value will create it on-demand, if needed. Check \c self.viewLoaded before querying the value to avoid prematurely creating the view. Note that the \c -tabView may not be equal to the \c viewController.view. Properties such as the tabStyle can be directly manipulated, but calling methods that add and remove tabViewItems or changing the delegate is not allowed. The NSTabViewController will be made the delegate of the NSTabView. Internally, the NSTabView is always used to switch between displayed childViewControllers, regardless of the style displayed.
  var tabView: NSTabView

  /// This defines how NSTabViewController transitions from one view to another. Transitions go through [self transitionFromViewController:toViewController:options:completionHandler:]. The default value is \c NSViewControllerTransitionCrossfade|NSViewControllerTransitionAllowUserInteraction.
  var transitionOptions: NSViewControllerTransitionOptions

  /// If YES and the receiving NSTabViewController has a nil title, \c -title will return its selected child ViewController's title. If NO, it will continue to return nil. The default value is \c YES.
  var canPropagateSelectedChildViewControllerTitle: Bool

  /// The array of tab view items that correspond to the current child view controllers. After a child view controller is added to the receiving TabViewController, a NSTabViewItem with the default values will be created for it. Once the child is removed, its corresponding tabViewItem will be removed from the tabViewItems array.
  var tabViewItems: [NSTabViewItem]

  /// Read and write the current selected TabViewItem that is being shown. This value is KVC compliant and can be the target of a binding. For instance, a NSSegmentedControl's selection can be bound to this value with: \code [segmentedControl bind:NSSelectedIndexBinding toObject:tabViewController withKeyPath:@“selectedTabViewItemIndex" options:nil];
  var selectedTabViewItemIndex: Int

  /*!
   * Adds a TabViewItem to the end of the TabViewController. The tabViewItem’s viewController’s view will only be loaded once its tab is selected.
   * \param tabViewItem The TabViewItem to add. It must have a \c viewController set by the time it is added or an exception will be thrown. An exception will also be thrown if tabViewItem is nil.
   */
  func addTabViewItem(tabViewItem: NSTabViewItem)

  /*!
   * Adds a TabViewItem to a given index in the TabViewController. The tabViewItem’s viewController’s view will only be loaded once its tab is selected. \c -selectedTabViewItemIndex will be adjusted if the insertion index is before it. Subclasses must call through \c -insertTabViewItem:atIndex: to add a TabViewItem.
   * \param tabViewItem The TabViewItem to add. It must have a \c viewController set by the time it is added or an exception will be thrown. An exception will also be thrown if tabViewItem is nil.
   * \param index The index to add the TabViewItem at. Will throw an exception if \c index < 0 or \c index > \c tabViewItems.count
   */
  func insertTabViewItem(tabViewItem: NSTabViewItem, at index: Int)

  /*!
   * Removes a TabViewItem from the receiver. If the removed tabViewItem currently selected, the next (or previous, if there is no next) tabViewItem will become selected. If this is the only tabViewItem in the TabViewController, the selectedTabViewItemIndex will become \c -1. Subclasses must call through \c -removeTabViewItem: to remove a TabViewItem.
   * \param tabViewItem The TabViewItem to remove. An exception will be thrown if \c tabViewItem is not in the NSTabViewController or if it is nil.
   */
  func removeTabViewItem(tabViewItem: NSTabViewItem)

  /*!
   * Convenience method for getting the associated tab view item for a particular childViewController.
   * \param viewController The ViewController to look up.
   * \return The corresponding TabViewItem. Returns nil if \c viewController is not a child of the TabViewController.
   */
  func tabViewItemFor(viewController: NSViewController) -> NSTabViewItem?
  func viewDidLoad()
  func tabView(tabView: NSTabView, willSelect tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?)
  func tabView(tabView: NSTabView, shouldSelect tabViewItem: NSTabViewItem?) -> Bool
  func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.10, *)
  func tabViewDidChangeNumberOfTabViewItems(tabView: NSTabView)
  @available(OSX 10.10, *)
  func toolbarWillAddItem(notification: NSNotification)
  @available(OSX 10.10, *)
  func toolbarDidRemoveItem(notification: NSNotification)
}
enum NSTabState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectedTab
  case BackgroundTab
  case PressedTab
}
class NSTabViewItem : NSObject, NSCoding {

  /*!
   * Creates an autoreleased TabViewItem that wraps the provided ViewController. The viewController is set as the tab view item’s \c -viewController property, which sets several of the tab view item’s other properties.
   * \param viewController The view controller to wrap, used to set the viewController property
   */
  @available(OSX 10.10, *)
  convenience init(viewController: NSViewController)
  init(identifier: AnyObject)
  var identifier: AnyObject
  @NSCopying var color: NSColor
  var label: String

  /// Get and set the image for this tab view item. The image may only be used in certain tab view styles and options.  The default value is nil.
  @available(OSX 10.10, *)
  var image: NSImage?
  var view: NSView?

  /*! The view controller wrapped by the tab view item. This property must be set if the tab view item will be added to an NSTabViewController, but can also be used if the tab view item is added to an NSTabView. 
   * If this is set, the tab view item will forward \c -view calls onto the viewController. Setting a viewController will also set the following properties on the tab view item: \c -identifier from the address of the viewController, \c -label from the viewController's title, and \c -image based on the classname as the view controller.
   * An image named "ViewControllerClassName-TabViewItem" will be searched for first, followed by "ViewControllerClassName". It will search first using +[NSImage imageNamed:], then in \c viewController.nibBundle, and lastly in the bundle containing the view controller's class.
   * As defined by: -[NSImage imageNamed:imageName], -[viewController.nibBundle imageForResource:imageName], -[[NSBundle bundleForClass:[viewController class]] imageForResource:imageName]. One pass with imageName as [NSStringFromClass([viewController class]) stringByAppendingString:@"-TabViewItem"], followed by imageName as NSStringFromClass([viewController class]).
   */
  @available(OSX 10.10, *)
  var viewController: NSViewController?
  var tabState: NSTabState { get }
  var tabView: NSTabView? { get }
  unowned(unsafe) var initialFirstResponder: @sil_unmanaged NSView?
  @available(OSX 10.6, *)
  var toolTip: String?
  func drawLabel(shouldTruncateLabel: Bool, in labelRect: NSRect)
  func sizeOfLabel(computeMin: Bool) -> NSSize
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __tviFlags {
  var hasCustomColor: UInt32
  var labelSizeIsValid: UInt32
  var autoGeneratedIFR: UInt32
  var isTabDisabled: UInt32
  var isActive: UInt32
  var RESERVED: UInt32
  init()
  init(hasCustomColor: UInt32, labelSizeIsValid: UInt32, autoGeneratedIFR: UInt32, isTabDisabled: UInt32, isActive: UInt32, RESERVED: UInt32)
}
@available(OSX 10.7, *)
class NSTableCellView : NSView {
  var objectValue: AnyObject?
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  var backgroundStyle: NSBackgroundStyle
  var rowSizeStyle: NSTableViewRowSizeStyle
  var draggingImageComponents: [NSDraggingImageComponent] { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct NSTableColumnResizingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoResizing: NSTableColumnResizingOptions { get }
  static var AutoresizingMask: NSTableColumnResizingOptions { get }
  static var UserResizingMask: NSTableColumnResizingOptions { get }
}
class NSTableColumn : NSObject, NSCoding, NSUserInterfaceItemIdentification {
  init(identifier: String)
  var identifier: String
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var width: CGFloat
  var minWidth: CGFloat
  var maxWidth: CGFloat
  var title: String
  var headerCell: NSTableHeaderCell
  var isEditable: Bool
  func sizeToFit()
  @NSCopying var sortDescriptorPrototype: NSSortDescriptor?
  var resizingMask: NSTableColumnResizingOptions
  @available(OSX 10.5, *)
  var headerToolTip: String?
  @available(OSX 10.5, *)
  var isHidden: Bool
  convenience init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
struct __colFlags {
  var oldIsResizable: UInt32
  var isEditable: UInt32
  var resizedPostingDisableCount: UInt32
  var canUseReorderResizeImageCache: UInt32
  var userResizingAllowed: UInt32
  var autoResizingAllowed: UInt32
  var hidden: UInt32
  var RESERVED: UInt32
  init()
  init(oldIsResizable: UInt32, isEditable: UInt32, resizedPostingDisableCount: UInt32, canUseReorderResizeImageCache: UInt32, userResizingAllowed: UInt32, autoResizingAllowed: UInt32, hidden: UInt32, RESERVED: UInt32)
}
extension NSTableColumn {
  var dataCell: AnyObject
  func dataCellForRow(row: Int) -> AnyObject
}
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicatorWithFrame(cellFrame: NSRect, in controlView: NSView, ascending: Bool, priority: Int)
  func sortIndicatorRectForBounds(theRect: NSRect) -> NSRect
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSTableHeaderView : NSView {
  unowned(unsafe) var tableView: @sil_unmanaged NSTableView?
  var draggedColumn: Int { get }
  var draggedDistance: CGFloat { get }
  var resizedColumn: Int { get }
  func headerRectOfColumn(column: Int) -> NSRect
  func columnAt(point: NSPoint) -> Int
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
@available(OSX 10.7, *)
class NSTableRowView : NSView, NSAccessibilityRow {
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  var isEmphasized: Bool
  var isGroupRowStyle: Bool
  var isSelected: Bool
  @available(OSX 10.10, *)
  var previousRowSelected: Bool
  var isNextRowSelected: Bool
  var isFloating: Bool
  var isTargetForDropOperation: Bool
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  var indentationForDropOperation: CGFloat
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  @NSCopying var backgroundColor: NSColor
  func drawBackgroundIn(dirtyRect: NSRect)
  func drawSelectionIn(dirtyRect: NSRect)
  func drawSeparatorIn(dirtyRect: NSRect)
  func drawDraggingDestinationFeedbackIn(dirtyRect: NSRect)
  func viewAtColumn(column: Int) -> AnyObject?
  var numberOfColumns: Int { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.7, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.7, *)
  func accessibilityDisclosureLevel() -> Int
}
struct __TvFlags {
  var refusesFirstResponder: UInt32
  var movedPostingDisableCount: UInt32
  var selectionPostingDisableCount: UInt32
  var dataSourceSetObjectValue: UInt32
  var oldAutoresizesAllColumnsToFit: UInt32
  var delegateSelectionShouldChangeInTableView: UInt32
  var delegateShouldSelectTableColumn: UInt32
  var delegateShouldSelectRow: UInt32
  var delegateShouldEditTableColumn: UInt32
  var delegateWillDisplayCell: UInt32
  var compareWidthWithSuperview: UInt32
  var allowGapRow: UInt32
  var selectionType: UInt32
  var allowsColumnSelection: UInt32
  var allowsMultipleSelection: UInt32
  var allowsEmptySelection: UInt32
  var hasBlurBackgroundViews: UInt32
  var allowsColumnResizing: UInt32
  var allowsColumnReordering: UInt32
  init()
  init(refusesFirstResponder: UInt32, movedPostingDisableCount: UInt32, selectionPostingDisableCount: UInt32, dataSourceSetObjectValue: UInt32, oldAutoresizesAllColumnsToFit: UInt32, delegateSelectionShouldChangeInTableView: UInt32, delegateShouldSelectTableColumn: UInt32, delegateShouldSelectRow: UInt32, delegateShouldEditTableColumn: UInt32, delegateWillDisplayCell: UInt32, compareWidthWithSuperview: UInt32, allowGapRow: UInt32, selectionType: UInt32, allowsColumnSelection: UInt32, allowsMultipleSelection: UInt32, allowsEmptySelection: UInt32, hasBlurBackgroundViews: UInt32, allowsColumnResizing: UInt32, allowsColumnReordering: UInt32)
}
typealias _TvFlags = __TvFlags
enum NSTableViewDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case On
  case Above
}
enum NSTableViewColumnAutoresizingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoColumnAutoresizing
  case UniformColumnAutoresizingStyle
  case SequentialColumnAutoresizingStyle
  case ReverseSequentialColumnAutoresizingStyle
  case LastColumnOnlyAutoresizingStyle
  case FirstColumnOnlyAutoresizingStyle
}
struct NSTableViewGridLineStyle : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var GridNone: NSTableViewGridLineStyle { get }
  static var SolidVerticalGridLineMask: NSTableViewGridLineStyle { get }
  static var SolidHorizontalGridLineMask: NSTableViewGridLineStyle { get }
  @available(OSX 10.7, *)
  static var DashedHorizontalGridLineMask: NSTableViewGridLineStyle { get }
}
@available(OSX 10.7, *)
enum NSTableViewRowSizeStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
  case Small
  case Medium
  case Large
}
enum NSTableViewSelectionHighlightStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.6, *)
  case None
  case Regular
  case SourceList
}
@available(OSX 10.6, *)
enum NSTableViewDraggingDestinationFeedbackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Regular
  case SourceList
  @available(OSX 10.9, *)
  case Gap
}
@available(OSX 10.11, *)
enum NSTableRowActionEdge : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Leading
  case Trailing
}
class NSTableView : NSControl, NSUserInterfaceValidations, NSTextViewDelegate, NSDraggingSource, NSAccessibilityTable {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  func setDataSource(aSource: NSTableViewDataSource?)
  func dataSource() -> NSTableViewDataSource?
  func setDelegate(delegate: NSTableViewDelegate?)
  func delegate() -> NSTableViewDelegate?
  var headerView: NSTableHeaderView?
  var cornerView: NSView?
  var allowsColumnReordering: Bool
  var allowsColumnResizing: Bool
  var columnAutoresizingStyle: NSTableViewColumnAutoresizingStyle
  var gridStyleMask: NSTableViewGridLineStyle
  var intercellSpacing: NSSize
  var usesAlternatingRowBackgroundColors: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var gridColor: NSColor
  @available(OSX 10.7, *)
  var rowSizeStyle: NSTableViewRowSizeStyle
  @available(OSX 10.7, *)
  var effectiveRowSizeStyle: NSTableViewRowSizeStyle { get }
  var rowHeight: CGFloat
  func noteHeightOfRowsWithIndexesChanged(indexSet: NSIndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(tableColumn: NSTableColumn)
  func removeTableColumn(tableColumn: NSTableColumn)
  func moveColumn(oldIndex: Int, toColumn newIndex: Int)
  func columnWithIdentifier(identifier: String) -> Int
  func tableColumnWithIdentifier(identifier: String) -> NSTableColumn?
  func tile()
  func sizeToFit()
  func sizeLastColumnToFit()
  func scrollRowToVisible(row: Int)
  func scrollColumnToVisible(column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  @available(OSX 10.6, *)
  func reloadDataForRowIndexes(rowIndexes: NSIndexSet, columnIndexes: NSIndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector
  var sortDescriptors: [NSSortDescriptor]
  func setIndicatorImage(anImage: NSImage?, in tableColumn: NSTableColumn)
  func indicatorImageIn(tableColumn: NSTableColumn) -> NSImage?
  unowned(unsafe) var highlightedTableColumn: @sil_unmanaged NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRowsWith(rowIndexes: NSIndexSet, at mouseDownPoint: NSPoint) -> Bool
  func dragImageForRowsWith(dragRows: NSIndexSet, tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  func setDropRow(row: Int, dropOperation: NSTableViewDropOperation)
  var allowsMultipleSelection: Bool
  var allowsEmptySelection: Bool
  var allowsColumnSelection: Bool
  func selectAll(sender: AnyObject?)
  func deselectAll(sender: AnyObject?)
  func selectColumnIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  func selectRowIndexes(indexes: NSIndexSet, byExtendingSelection extend: Bool)
  @NSCopying var selectedColumnIndexes: NSIndexSet { get }
  @NSCopying var selectedRowIndexes: NSIndexSet { get }
  func deselectColumn(column: Int)
  func deselectRow(row: Int)
  var selectedColumn: Int { get }
  var selectedRow: Int { get }
  func isColumnSelected(column: Int) -> Bool
  func isRowSelected(row: Int) -> Bool
  var numberOfSelectedColumns: Int { get }
  var numberOfSelectedRows: Int { get }
  @available(OSX 10.5, *)
  var allowsTypeSelect: Bool
  @available(OSX 10.5, *)
  var selectionHighlightStyle: NSTableViewSelectionHighlightStyle
  @available(OSX 10.6, *)
  var draggingDestinationFeedbackStyle: NSTableViewDraggingDestinationFeedbackStyle
  func rectOfColumn(column: Int) -> NSRect
  func rectOfRow(row: Int) -> NSRect
  @available(OSX 10.5, *)
  func columnIndexesIn(rect: NSRect) -> NSIndexSet
  func rowsIn(rect: NSRect) -> NSRange
  func columnAt(point: NSPoint) -> Int
  func rowAt(point: NSPoint) -> Int
  func frameOfCellAtColumn(column: Int, row: Int) -> NSRect
  var autosaveName: String?
  var autosaveTableColumns: Bool
  func editColumn(column: Int, row: Int, withEvent theEvent: NSEvent?, select: Bool)
  func drawRow(row: Int, clip clipRect: NSRect)
  func highlightSelectionInClip(clipRect: NSRect)
  func drawGridInClip(clipRect: NSRect)
  func drawBackgroundInClip(clipRect: NSRect)
  @available(OSX 10.7, *)
  func viewAtColumn(column: Int, row: Int, makeIfNecessary: Bool) -> NSView?
  @available(OSX 10.7, *)
  func rowViewAtRow(row: Int, makeIfNecessary: Bool) -> NSTableRowView?
  @available(OSX 10.7, *)
  func rowFor(view: NSView) -> Int
  @available(OSX 10.7, *)
  func columnFor(view: NSView) -> Int
  @available(OSX 10.7, *)
  func makeViewWithIdentifier(identifier: String, owner: AnyObject?) -> NSView?
  @available(OSX 10.7, *)
  func enumerateAvailableRowViewsUsing(handler: (NSTableRowView, Int) -> Void)
  @available(OSX 10.7, *)
  var floatsGroupRows: Bool
  @available(OSX 10.11, *)
  var rowActionsVisible: Bool
  @available(OSX 10.7, *)
  func beginUpdates()
  @available(OSX 10.7, *)
  func endUpdates()
  @available(OSX 10.7, *)
  func insertRowsAt(indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func removeRowsAt(indexes: NSIndexSet, withAnimation animationOptions: NSTableViewAnimationOptions = [])
  @available(OSX 10.7, *)
  func moveRowAt(oldIndex: Int, to newIndex: Int)
  @available(OSX 10.11, *)
  func hideRowsAt(indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions = [])
  @available(OSX 10.11, *)
  func unhideRowsAt(indexes: NSIndexSet, withAnimation rowAnimation: NSTableViewAnimationOptions = [])
  @available(OSX 10.11, *)
  @NSCopying var hiddenRowIndexes: NSIndexSet { get }
  @available(OSX 10.8, *)
  func register(nib: NSNib?, forIdentifier identifier: String)
  @available(OSX 10.8, *)
  var registeredNibsByIdentifier: [String : NSNib]? { get }
  @available(OSX 10.7, *)
  func didAdd(rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  func didRemove(rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.10, *)
  var usesStaticContents: Bool
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func textView(textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  func textView(textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  func textView(textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event: NSEvent, at charIndex: Int)
  func textView(view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  func textView(view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: String) -> Bool
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  func textViewDidChangeSelection(notification: NSNotification)
  func textViewDidChangeTypingAttributes(notification: NSNotification)
  func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  func textView(textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  func textView(textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  func textView(view: NSTextView, willCheckTextIn range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  func textView(view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  func textView(textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  func textView(textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  func undoManagerFor(view: NSTextView) -> NSUndoManager?
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
  func accessibilityLabel() -> String?
  func accessibilityRows() -> [NSAccessibilityRow]?
  func accessibilitySelectedRows() -> [NSAccessibilityRow]?
  func setAccessibilitySelectedRows(selectedRows: [NSAccessibilityRow])
  func accessibilityVisibleRows() -> [NSAccessibilityRow]?
  func accessibilityColumns() -> [AnyObject]?
  func accessibilityVisibleColumns() -> [AnyObject]?
  func accessibilitySelectedColumns() -> [AnyObject]?
  func accessibilityHeaderGroup() -> String?
  func accessibilitySelectedCells() -> [AnyObject]?
  func accessibilityVisibleCells() -> [AnyObject]?
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
}
@available(OSX 10.7, *)
struct NSTableViewAnimationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EffectNone: NSTableViewAnimationOptions { get }
  static var EffectFade: NSTableViewAnimationOptions { get }
  static var EffectGap: NSTableViewAnimationOptions { get }
  static var SlideUp: NSTableViewAnimationOptions { get }
  static var SlideDown: NSTableViewAnimationOptions { get }
  static var SlideLeft: NSTableViewAnimationOptions { get }
  static var SlideRight: NSTableViewAnimationOptions { get }
}
protocol NSTableViewDelegate : NSControlTextEditingDelegate {
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, didAdd rowView: NSTableRowView, forRow row: Int)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, didRemove rowView: NSTableRowView, forRow row: Int)
  optional func tableView(tableView: NSTableView, willDisplayCell cell: AnyObject, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, shouldEdit tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(tableView: NSTableView, toolTipFor cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, row: Int, mouseLocation: NSPoint) -> String
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldShowCellExpansionFor tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldTrack cell: NSCell, forTableColumn tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, dataCellFor tableColumn: NSTableColumn?, row: Int) -> NSCell?
  optional func selectionShouldChangeIn(tableView: NSTableView) -> Bool
  optional func tableView(tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: NSIndexSet) -> NSIndexSet
  optional func tableView(tableView: NSTableView, shouldSelect tableColumn: NSTableColumn?) -> Bool
  optional func tableView(tableView: NSTableView, mouseDownInHeaderOf tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didClick tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, didDrag tableColumn: NSTableColumn)
  optional func tableView(tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, typeSelectStringFor tableColumn: NSTableColumn?, row: Int) -> String?
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, forString searchString: String) -> Int
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(OSX 10.5, *)
  optional func tableView(tableView: NSTableView, isGroupRow row: Int) -> Bool
  @available(OSX 10.6, *)
  optional func tableView(tableView: NSTableView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(OSX 10.6, *)
  optional func tableView(tableView: NSTableView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(OSX 10.11, *)
  optional func tableView(tableView: NSTableView, rowActionsForRow row: Int, edge: NSTableRowActionEdge) -> [NSTableViewRowAction]
  optional func tableViewSelectionDidChange(notification: NSNotification)
  optional func tableViewColumnDidMove(notification: NSNotification)
  optional func tableViewColumnDidResize(notification: NSNotification)
  optional func tableViewSelectionIsChanging(notification: NSNotification)
}
let NSTableViewSelectionDidChangeNotification: String
let NSTableViewColumnDidMoveNotification: String
let NSTableViewColumnDidResizeNotification: String
let NSTableViewSelectionIsChangingNotification: String
@available(OSX 10.7, *)
let NSTableViewRowViewKey: String
protocol NSTableViewDataSource : NSObjectProtocol {
  optional func numberOfRowsIn(tableView: NSTableView) -> Int
  optional func tableView(tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> AnyObject?
  optional func tableView(tableView: NSTableView, setObjectValue object: AnyObject?, forTableColumn tableColumn: NSTableColumn?, row: Int)
  optional func tableView(tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forRowIndexes rowIndexes: NSIndexSet)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  optional func tableView(tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func tableView(tableView: NSTableView, writeRowsWith rowIndexes: NSIndexSet, to pboard: NSPasteboard) -> Bool
  optional func tableView(tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableViewDropOperation) -> NSDragOperation
  optional func tableView(tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableViewDropOperation) -> Bool
  optional func tableView(tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: NSURL, forDraggedRowsWith indexSet: NSIndexSet) -> [String]
}
extension NSObject {
}
extension NSTableView {
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use View Based TableView and -viewAtColumn:row:")
  func preparedCellAtColumn(column: Int, row: Int) -> NSCell?
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldBeginEditing(textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textShouldEndEditing(textObject: NSText) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidBeginEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidEndEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use a View Based TableView with an NSTextField")
  func textDidChange(notification: NSNotification)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; observe the window’s firstResponder for focus change notifications")
  func shouldFocusCell(cell: NSCell, atColumn column: Int, row: Int) -> Bool
  @available(OSX, introduced=10.5, deprecated=10.10, message="Use a View Based TableView and observe the window.firstResponder")
  func focusedColumn() -> Int
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; make a particular view the first responder with [window makeFirstResponder:view] to focus it.")
  func setFocusedColumn(focusedColumn: Int)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use a View Based TableView; directly interact with a particular view as required and call -performClick: on it, if necessary")
  func performClickOnCellAtColumn(column: Int, row: Int)
}
@available(OSX 10.11, *)
enum NSTableViewRowActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Regular
  case Destructive
}
@available(OSX 10.11, *)
class NSTableViewRowAction : NSObject, NSCopying {
  convenience init(style: NSTableViewRowActionStyle, title: String, handler: (NSTableViewRowAction, Int) -> Void)
  var style: NSTableViewRowActionStyle { get }
  var title: String
  @NSCopying var backgroundColor: NSColor!
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
var NSEnterCharacter: Int { get }
var NSBackspaceCharacter: Int { get }
var NSTabCharacter: Int { get }
var NSNewlineCharacter: Int { get }
var NSFormFeedCharacter: Int { get }
var NSCarriageReturnCharacter: Int { get }
var NSBackTabCharacter: Int { get }
var NSDeleteCharacter: Int { get }
var NSLineSeparatorCharacter: Int { get }
var NSParagraphSeparatorCharacter: Int { get }
enum NSTextAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Center
  case Justified
  case Natural
}
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case LeftToRight
  case RightToLeft
}
var NSIllegalTextMovement: Int { get }
var NSReturnTextMovement: Int { get }
var NSTabTextMovement: Int { get }
var NSBacktabTextMovement: Int { get }
var NSLeftTextMovement: Int { get }
var NSRightTextMovement: Int { get }
var NSUpTextMovement: Int { get }
var NSDownTextMovement: Int { get }
var NSCancelTextMovement: Int { get }
var NSOtherTextMovement: Int { get }
class NSText : NSView, NSChangeSpelling, NSIgnoreMisspelledWords {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  var string: String?
  func replaceCharactersIn(range: NSRange, withString aString: String)
  func replaceCharactersIn(range: NSRange, withRTF rtfData: NSData)
  func replaceCharactersIn(range: NSRange, withRTFD rtfdData: NSData)
  func rtfFrom(range: NSRange) -> NSData?
  func rtfdFrom(range: NSRange) -> NSData?
  func writeRTFDToFile(path: String, atomically flag: Bool) -> Bool
  func readRTFDFromFile(path: String) -> Bool
  unowned(unsafe) var delegate: @sil_unmanaged NSTextDelegate?
  var isEditable: Bool
  var isSelectable: Bool
  var isRichText: Bool
  var importsGraphics: Bool
  var isFieldEditor: Bool
  var usesFontPanel: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor?
  var isRulerVisible: Bool { get }
  var selectedRange: NSRange
  func scrollRangeToVisible(range: NSRange)
  var font: NSFont?
  @NSCopying var textColor: NSColor?
  var alignment: NSTextAlignment
  var baseWritingDirection: NSWritingDirection
  func setTextColor(color: NSColor?, range: NSRange)
  func setFont(font: NSFont, range: NSRange)
  var maxSize: NSSize
  var minSize: NSSize
  var isHorizontallyResizable: Bool
  var isVerticallyResizable: Bool
  func sizeToFit()
  func copy(sender: AnyObject?)
  func copyFont(sender: AnyObject?)
  func copyRuler(sender: AnyObject?)
  func cut(sender: AnyObject?)
  func delete(sender: AnyObject?)
  func paste(sender: AnyObject?)
  func pasteFont(sender: AnyObject?)
  func pasteRuler(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
  func alignLeft(sender: AnyObject?)
  func alignRight(sender: AnyObject?)
  func alignCenter(sender: AnyObject?)
  func `subscript`(sender: AnyObject?)
  func superscript(sender: AnyObject?)
  func underline(sender: AnyObject?)
  func unscript(sender: AnyObject?)
  func showGuessPanel(sender: AnyObject?)
  func checkSpelling(sender: AnyObject?)
  func toggleRuler(sender: AnyObject?)
  convenience init()
  func changeSpelling(sender: AnyObject?)
  func ignoreSpelling(sender: AnyObject?)
}
protocol NSTextDelegate : NSObjectProtocol {
  optional func textShouldBeginEditing(textObject: NSText) -> Bool
  optional func textShouldEndEditing(textObject: NSText) -> Bool
  optional func textDidBeginEditing(notification: NSNotification)
  optional func textDidEndEditing(notification: NSNotification)
  optional func textDidChange(notification: NSNotification)
}
let NSTextDidBeginEditingNotification: String
let NSTextDidEndEditingNotification: String
let NSTextDidChangeNotification: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSWritingDirectionEmbedding instead")
var NSTextWritingDirectionEmbedding: Int { get }
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSWritingDirectionOverride instead")
var NSTextWritingDirectionOverride: Int { get }
let NSLeftTextAlignment: NSTextAlignment
let NSRightTextAlignment: NSTextAlignment
let NSCenterTextAlignment: NSTextAlignment
let NSJustifiedTextAlignment: NSTextAlignment
let NSNaturalTextAlignment: NSTextAlignment
@available(OSX 10.8, *)
class NSTextAlternatives : NSObject {
  init(primaryString: String, alternativeStrings: [String])
  var primaryString: String { get }
  var alternativeStrings: [String] { get }
  func noteSelectedAlternativeString(alternativeString: String)
  init()
}
@available(OSX 10.8, *)
let NSTextAlternativesSelectedAlternativeStringNotification: String
@available(OSX 10.0, *)
var NSAttachmentCharacter: Int { get }
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(OSX 10.11, *)
  func imageForBounds(imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(OSX 10.11, *)
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
}
@available(OSX 10.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSCoding {

  /**************************** Initialization ****************************/
  @available(OSX 10.11, *)
  init(data contentData: NSData?, ofType uti: String?)
  convenience init(fileWrapper: NSFileWrapper?)

  /**************************** Content properties ****************************/
  @available(OSX 10.11, *)
  @NSCopying var contents: NSData?
  @available(OSX 10.11, *)
  var fileType: String?

  /**************************** Rendering/layout properties ****************************/
  @available(OSX 10.11, *)
  var image: NSImage?
  @available(OSX 10.11, *)
  var bounds: NSRect

  /**************************** Non-image contents properties ****************************/
  var fileWrapper: NSFileWrapper?
  var attachmentCell: NSTextAttachmentCellProtocol?
  convenience init()
  @available(OSX 10.11, *)
  func imageForBounds(imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(OSX 10.11, *)
  func attachmentBoundsFor(textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSAttributedString {
  @available(OSX 10.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
extension NSMutableAttributedString {
  func updateAttachmentsFromPath(path: String)
}
protocol NSTextAttachmentCellProtocol : NSObjectProtocol {
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: NSRect, in controlView: NSView?)
  func trackMouse(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  @available(OSX 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment? { get set }
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView?, characterIndex charIndex: Int)
  @available(OSX 10.0, *)
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouseFor(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(OSX 10.0, *)
  func cellFrameFor(textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
class NSTextAttachmentCell : NSCell, NSTextAttachmentCellProtocol {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(flag: Bool, withFrame cellFrame: NSRect, in controlView: NSView?)
  func trackMouse(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  @available(OSX 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment?
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView?, characterIndex charIndex: Int)
  @available(OSX 10.0, *)
  func drawWithFrame(cellFrame: NSRect, in controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouseFor(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(OSX 10.0, *)
  func cellFrameFor(textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
@available(OSX 10.0, *)
class NSTextContainer : NSObject, NSCoding, NSTextLayoutOrientationProvider {

  /**************************** Initialization ****************************/
  @available(OSX 10.11, *)
  init(size: NSSize)
  init(coder: NSCoder)

  /**************************** Layout ****************************/
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(OSX 10.0, *)
  func replaceLayoutManager(newLayoutManager: NSLayoutManager)

  /************************* Container shape properties *************************/
  @available(OSX 10.11, *)
  var size: NSSize
  @available(OSX 10.11, *)
  var exclusionPaths: [NSBezierPath]
  @available(OSX 10.11, *)
  var lineBreakMode: NSLineBreakMode

  /************************* Layout constraint properties *************************/
  var lineFragmentPadding: CGFloat
  @available(OSX 10.11, *)
  var maximumNumberOfLines: Int

  /**************************** Line fragments ****************************/
  @available(OSX 10.11, *)
  func lineFragmentRectForProposedRect(proposedRect: NSRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<NSRect>) -> NSRect
  @available(OSX 10.0, *)
  var isSimpleRectangularTextContainer: Bool { get }

  /**************************** View synchronization ****************************/
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
  convenience init()
  @available(OSX 10.0, *)
  func encodeWith(aCoder: NSCoder)
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
}
struct __tcFlags {
  var widthTracksTextView: UInt16
  var heightTracksTextView: UInt16
  var observingFrameChanges: UInt16
  var lineBreakMode: UInt16
  var oldAPI: UInt16
  var _reserved: UInt16
  init()
  init(widthTracksTextView: UInt16, heightTracksTextView: UInt16, observingFrameChanges: UInt16, lineBreakMode: UInt16, oldAPI: UInt16, _reserved: UInt16)
}

/**************************** Deprecated ****************************/
enum NSLineSweepDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Left
  case Right
  case Down
  case Up
}
enum NSLineMovementDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DoesntMove
  case MovesLeft
  case MovesRight
  case MovesDown
  case MovesUp
}
extension NSTextContainer {
  convenience init(containerSize aContainerSize: NSSize)
  var containerSize: NSSize
  func lineFragmentRectForProposedRect(proposedRect: NSRect, sweepDirection: NSLineSweepDirection, movementDirection: NSLineMovementDirection, remaining remainingRect: NSRectPointer) -> NSRect
  @available(OSX, introduced=10.0, deprecated=10.11)
  func contains(point: NSPoint) -> Bool
}
class NSTextField : NSControl, NSUserInterfaceValidations, NSAccessibilityNavigableStaticText {
  @available(OSX 10.10, *)
  var placeholderString: String?
  @available(OSX 10.10, *)
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  var isBordered: Bool
  var isBezeled: Bool
  var isEditable: Bool
  var isSelectable: Bool
  func selectText(sender: AnyObject?)
  unowned(unsafe) var delegate: @sil_unmanaged NSTextFieldDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: NSNotification)
  func textDidEndEditing(notification: NSNotification)
  func textDidChange(notification: NSNotification)
  var acceptsFirstResponder: Bool { get }
  var bezelStyle: NSTextFieldBezelStyle
  @available(OSX 10.8, *)
  var preferredMaxLayoutWidth: CGFloat
  @available(OSX 10.11, *)
  var maximumNumberOfLines: Int
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityStringFor(range: NSRange) -> String?
  func accessibilityLineFor(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameFor(range: NSRange) -> NSRect
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextField {
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
protocol NSTextFieldDelegate : NSControlTextEditingDelegate {
}
extension NSTextField {
}
enum NSTextFieldBezelStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SquareBezel
  case RoundedBezel
}
class NSTextFieldCell : NSActionCell {
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  func setUpFieldEditorAttributes(textObj: NSText) -> NSText
  var bezelStyle: NSTextFieldBezelStyle
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @available(OSX 10.5, *)
  func setWantsNotificationForMarkedText(flag: Bool)
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
struct __tfFlags {
  var drawsBackground: UInt32
  var bezelStyle: UInt32
  var thcSortDirection: UInt32
  var thcSortPriority: UInt32
  var mini: UInt32
  var textColorIgnoresNormalDisableFlag: UInt32
  var textColorDisableFlag: UInt32
  var thcForceHighlightForSort: UInt32
  var invalidTextColor: UInt32
  var notificationForMarkedText: UInt32
  var inToolbar: UInt32
  var hasTextLayer: UInt32
  var isButtonTitle: UInt32
  var allowTightening: UInt32
  var thcHighlighted: UInt32
  var shouldNotClipToBounds: UInt32
  var allowsDefaultTightening: UInt32
  var reservedTextFieldCell: UInt32
  init()
  init(drawsBackground: UInt32, bezelStyle: UInt32, thcSortDirection: UInt32, thcSortPriority: UInt32, mini: UInt32, textColorIgnoresNormalDisableFlag: UInt32, textColorDisableFlag: UInt32, thcForceHighlightForSort: UInt32, invalidTextColor: UInt32, notificationForMarkedText: UInt32, inToolbar: UInt32, hasTextLayer: UInt32, isButtonTitle: UInt32, allowTightening: UInt32, thcHighlighted: UInt32, shouldNotClipToBounds: UInt32, allowsDefaultTightening: UInt32, reservedTextFieldCell: UInt32)
}
@available(OSX 10.7, *)
enum NSTextFinderAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ShowFindInterface
  case NextMatch
  case PreviousMatch
  case ReplaceAll
  case Replace
  case ReplaceAndFind
  case SetSearchString
  case ReplaceAllInSelection
  case SelectAll
  case SelectAllInSelection
  case HideFindInterface
  case ShowReplaceInterface
  case HideReplaceInterface
}
@available(OSX 10.7, *)
let NSTextFinderCaseInsensitiveKey: String
@available(OSX 10.7, *)
let NSTextFinderMatchingTypeKey: String
@available(OSX 10.7, *)
enum NSTextFinderMatchingType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
@available(OSX 10.7, *)
class NSTextFinder : NSObject, NSCoding {
  init()
  @IBOutlet unowned(unsafe) var client: @sil_unmanaged NSTextFinderClient?
  func perform(op: NSTextFinderAction)
  func validate(op: NSTextFinderAction) -> Bool
  @IBOutlet unowned(unsafe) var findBarContainer: @sil_unmanaged NSTextFinderBarContainer?
  func cancelFindIndicator()
  var findIndicatorNeedsUpdate: Bool
  var isIncrementalSearchingEnabled: Bool
  var incrementalSearchingShouldDimContentView: Bool
  var incrementalMatchRanges: [NSValue] { get }
  class func drawIncrementalMatchHighlightIn(rect: NSRect)
  func noteClientStringWillChange()
  @available(OSX 10.7, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol NSTextFinderClient : NSObjectProtocol {
  optional var selectable: Bool { get }
  optional var allowsMultipleSelection: Bool { get }
  optional var editable: Bool { get }
  optional var string: String { get }
  optional func stringAt(characterIndex: Int, effectiveRange outRange: NSRangePointer, endsWithSearchBoundary outFlag: UnsafeMutablePointer<ObjCBool>) -> String
  optional func stringLength() -> Int
  optional var firstSelectedRange: NSRange { get }
  optional var selectedRanges: [NSValue] { get set }
  optional func scrollRangeToVisible(range: NSRange)
  optional func shouldReplaceCharactersInRanges(ranges: [NSValue], withStrings strings: [String]) -> Bool
  optional func replaceCharactersIn(range: NSRange, withString string: String)
  optional func didReplaceCharacters()
  optional func contentViewAt(index: Int, effectiveCharacterRange outRange: NSRangePointer) -> NSView
  optional func rectsForCharacterRange(range: NSRange) -> [NSValue]?
  optional var visibleCharacterRanges: [NSValue] { get }
  optional func drawCharactersIn(range: NSRange, forContentView view: NSView)
}
protocol NSTextFinderBarContainer : NSObjectProtocol {
  var findBarView: NSView? { get set }
  var findBarVisible: Bool { get set }
  func findBarViewDidChangeHeight()
  optional func contentView() -> NSView?
}
protocol NSTextInputClient {
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBy(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstringForProposedRange(aRange: NSRange, actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(aRange: NSRange, actualRange: NSRangePointer) -> NSRect
  func characterIndexFor(aPoint: NSPoint) -> Int
  @available(OSX 10.0, *)
  optional func attributedString() -> NSAttributedString
  optional func fractionOfDistanceThroughGlyphFor(aPoint: NSPoint) -> CGFloat
  optional func baselineDeltaForCharacterAt(anIndex: Int) -> CGFloat
  optional func windowLevel() -> Int
  @available(OSX 10.6, *)
  optional func drawsVerticallyForCharacterAt(charIndex: Int) -> Bool
}
@available(OSX 10.6, *)
class NSTextInputContext : NSObject {
  class func current() -> NSTextInputContext?
  init(client theClient: NSTextInputClient)

  /**** Properties *****/
  var client: NSTextInputClient { get }
  var acceptsGlyphInfo: Bool
  var allowedInputSourceLocales: [String]?

  /**** Activation *****/
  func activate()
  func deactivate()

  /**** Input source interface ****/
  func handle(theEvent: NSEvent) -> Bool
  func discardMarkedText()
  func invalidateCharacterCoordinates()

  /**** Text Input sources handling ****/
  var keyboardInputSources: [String]? { get }
  var selectedKeyboardInputSource: String?

  /**** Text Input source attributes ****/
  class func localizedNameForInputSource(inputSourceIdentifier: String) -> String?
  convenience init()
}

/**** Notifications ****/
@available(OSX 10.6, *)
let NSTextInputContextKeyboardSelectionDidChangeNotification: String
struct NSTextListOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrependEnclosingMarker: NSTextListOptions { get }
}
class NSTextList : NSObject, NSCoding, NSCopying {
  init(markerFormat format: String, options mask: Int)
  var markerFormat: String { get }
  var listOptions: NSTextListOptions { get }
  func markerForItemNumber(itemNum: Int) -> String
  @available(OSX 10.6, *)
  var startingItemNumber: Int
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.11, *)
struct NSTextStorageEditActions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var EditedAttributes: NSTextStorageEditActions { get }
  static var EditedCharacters: NSTextStorageEditActions { get }
}
@available(OSX 10.0, *)
class NSTextStorage : NSMutableAttributedString {

  /**************************** Layout manager ****************************/
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(aLayoutManager: NSLayoutManager)
  func removeLayoutManager(aLayoutManager: NSLayoutManager)

  /**************************** Pending edit info ****************************/
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }

  /**************************** Delegate ****************************/
  unowned(unsafe) var delegate: @sil_unmanaged NSTextStorageDelegate?

  /**************************** Edit management ****************************/
  func edited(editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()

  /**************************** Attribute fixing ****************************/
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributesIn(range: NSRange)
  func ensureAttributesAreFixedIn(range: NSRange)
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  init(url: NSURL, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  init(data: NSData, options: [String : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  init?(rtf data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfd data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, baseURL base: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: NSData, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: NSData, options: [NSObject : AnyObject], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfdFileWrapper wrapper: NSFileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(url: NSURL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init(string str: String)
  init(string str: String, attributes attrs: [String : AnyObject]?)
  init(attributedString attrStr: NSAttributedString)
}

/****  NSTextStorage delegate methods ****/
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(OSX 10.11, *)
  optional func textStorage(textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(OSX 10.11, *)
  optional func textStorage(textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}

/**** Notifications ****/
@available(OSX 10.0, *)
let NSTextStorageWillProcessEditingNotification: String
@available(OSX 10.0, *)
let NSTextStorageDidProcessEditingNotification: String

/**** Deprecations ****/
typealias NSTextStorageEditedOptions = Int
extension NSObject {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:willProcessEditing:range:changeInLength: instead.")
  class func textStorageWillProcessEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:willProcessEditing:range:changeInLength: instead.")
  func textStorageWillProcessEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:DidProcessEditing:range:changeInLength: instead.")
  class func textStorageDidProcessEditing(notification: NSNotification)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -textStorage:DidProcessEditing:range:changeInLength: instead.")
  func textStorageDidProcessEditing(notification: NSNotification)
}
extension NSTextStorage {
  var attributeRuns: [NSTextStorage]
  var paragraphs: [NSTextStorage]
  var words: [NSTextStorage]
  var characters: [NSTextStorage]
  var font: NSFont?
  var foregroundColor: NSColor?
}
enum NSTextBlockValueType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AbsoluteValueType
  case PercentageValueType
}
enum NSTextBlockDimension : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Width
  case MinimumWidth
  case MaximumWidth
  case Height
  case MinimumHeight
  case MaximumHeight
}
enum NSTextBlockLayer : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Padding
  case Border
  case Margin
}
enum NSTextBlockVerticalAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TopAlignment
  case MiddleAlignment
  case BottomAlignment
  case BaselineAlignment
}
enum NSTextTableLayoutAlgorithm : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AutomaticLayoutAlgorithm
  case FixedLayoutAlgorithm
}
class NSTextBlock : NSObject, NSCoding, NSCopying {
  init()
  func setValue(val: CGFloat, type: NSTextBlockValueType, forDimension dimension: NSTextBlockDimension)
  func valueFor(dimension: NSTextBlockDimension) -> CGFloat
  func valueTypeFor(dimension: NSTextBlockDimension) -> NSTextBlockValueType
  func setContentWidth(val: CGFloat, type: NSTextBlockValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlockValueType { get }
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer, edge: NSRectEdge)
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer)
  func widthFor(layer: NSTextBlockLayer, edge: NSRectEdge) -> CGFloat
  func widthValueTypeFor(layer: NSTextBlockLayer, edge: NSRectEdge) -> NSTextBlockValueType
  var verticalAlignment: NSTextBlockVerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(color: NSColor?, forEdge edge: NSRectEdge)
  func setBorderColor(color: NSColor?)
  func borderColorFor(edge: NSRectEdge) -> NSColor?
  func rectForLayoutAt(startingPoint: NSPoint, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForContentRect(contentRect: NSRect, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundWithFrame(frameRect: NSRect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class NSTextTableBlock : NSTextBlock {
  init(table: NSTextTable, startingRow row: Int, rowSpan: Int, startingColumn col: Int, columnSpan colSpan: Int)
  var table: NSTextTable { get }
  var startingRow: Int { get }
  var rowSpan: Int { get }
  var startingColumn: Int { get }
  var columnSpan: Int { get }
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSTextTable : NSTextBlock {
  var numberOfColumns: Int
  var layoutAlgorithm: NSTextTableLayoutAlgorithm
  var collapsesBorders: Bool
  var hidesEmptyCells: Bool
  func rectFor(block: NSTextTableBlock, layoutAt startingPoint: NSPoint, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectFor(block: NSTextTableBlock, contentRect: NSRect, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundFor(block: NSTextTableBlock, withFrame frameRect: NSRect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSSelectionGranularity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SelectByCharacter
  case SelectByWord
  case SelectByParagraph
}
enum NSSelectionAffinity : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Upstream
  case Downstream
}
@available(OSX 10.5, *)
let NSAllRomanInputSourcesLocaleIdentifier: String
class NSTextView : NSText, NSUserInterfaceValidations, NSTextInputClient, NSTextLayoutOrientationProvider, NSDraggingSource, NSTextInput, NSAccessibilityNavigableStaticText {

  /**************************** Initializing ****************************/
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  init?(coder: NSCoder)
  convenience init(frame frameRect: NSRect)

  /***************** Get/Set the container and other stuff *****************/
  unowned(unsafe) var textContainer: @sil_unmanaged NSTextContainer?
  func replaceTextContainer(newContainer: NSTextContainer)
  var textContainerInset: NSSize
  var textContainerOrigin: NSPoint { get }
  func invalidateTextContainerOrigin()
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage? { get }

  /************************* Key binding entry-point *************************/
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -insertText:replacementRange: from NSTextInputClient instead. Since the method is designed to be used solely by the input system, the message should never be sent to a text view from applications. Any content modifications should be via either NSTextStorage or NSText methods.")
  func insertText(insertString: AnyObject)

  /*************************** Sizing methods ***************************/
  func setConstrainedFrame(desiredSize: NSSize)

  /***************** New miscellaneous API above and beyond NSText *****************/
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)

  /*************************** New Font menu commands ***************************/
  func turnOffKerning(sender: AnyObject?)
  func tightenKerning(sender: AnyObject?)
  func loosenKerning(sender: AnyObject?)
  func useStandardKerning(sender: AnyObject?)
  func turnOffLigatures(sender: AnyObject?)
  func useStandardLigatures(sender: AnyObject?)
  func useAllLigatures(sender: AnyObject?)
  func raiseBaseline(sender: AnyObject?)
  func lowerBaseline(sender: AnyObject?)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use the traditional shaped characters encoded in the Unicode standard. Access the characters via the character palette.")
  func toggleTraditionalCharacterShape(sender: AnyObject?)
  func outline(sender: AnyObject?)

  /*************************** Find menu commands ***************************/
  func performFindPanelAction(sender: AnyObject?)

  /*************************** New Text commands ***************************/
  func alignJustified(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
  func changeAttributes(sender: AnyObject?)
  func changeDocumentBackgroundColor(sender: AnyObject?)
  func orderFrontSpacingPanel(sender: AnyObject?)
  func orderFrontLinkPanel(sender: AnyObject?)
  func orderFrontListPanel(sender: AnyObject?)
  func orderFrontTablePanel(sender: AnyObject?)

  /*************************** Ruler support ***************************/
  func rulerView(ruler: NSRulerView, didMove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didRemove marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, didAdd marker: NSRulerMarker)
  func rulerView(ruler: NSRulerView, shouldMove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, shouldAdd marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willMove marker: NSRulerMarker, toLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, shouldRemove marker: NSRulerMarker) -> Bool
  func rulerView(ruler: NSRulerView, willAdd marker: NSRulerMarker, atLocation location: CGFloat) -> CGFloat
  func rulerView(ruler: NSRulerView, handleMouseDown event: NSEvent)

  /*************************** Fine display control ***************************/
  func setNeedsDisplayIn(rect: NSRect, avoidAdditionalLayout flag: Bool)
  var shouldDrawInsertionPoint: Bool { get }
  func drawInsertionPointIn(rect: NSRect, color: NSColor, turnedOn flag: Bool)
  func drawViewBackgroundIn(rect: NSRect)

  /*************************** Especially for subclassers ***************************/
  func updateRuler()
  func updateFontPanel()
  func updateDragTypeRegistration()
  func selectionRangeForProposedRange(proposedCharRange: NSRange, granularity: NSSelectionGranularity) -> NSRange

  /*************************** Especially for subclassers ***************************/
  func clickedOnLink(link: AnyObject, at charIndex: Int)

  /************************* Speech support *************************/
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)

  /************************* Vertical text support *************************/
  @available(OSX 10.7, *)
  func setLayoutOrientation(theOrientation: NSTextLayoutOrientation)
  @available(OSX 10.7, *)
  func changeLayoutOrientation(sender: AnyObject?)

  /************************* Helper for subclassers *************************/
  @available(OSX 10.5, *)
  func characterIndexForInsertionAt(point: NSPoint) -> Int
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func insertText(aString: AnyObject, replacementRange: NSRange)
  func doCommandBy(aSelector: Selector)
  func setMarkedText(aString: AnyObject, selectedRange: NSRange, replacementRange: NSRange)
  func unmarkText()
  func selectedRange() -> NSRange
  func markedRange() -> NSRange
  func hasMarkedText() -> Bool
  @available(OSX 10.0, *)
  func attributedSubstringForProposedRange(aRange: NSRange, actualRange: NSRangePointer) -> NSAttributedString?
  func validAttributesForMarkedText() -> [String]
  func firstRectForCharacterRange(aRange: NSRange, actualRange: NSRangePointer) -> NSRect
  func characterIndexFor(aPoint: NSPoint) -> Int
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func fractionOfDistanceThroughGlyphFor(aPoint: NSPoint) -> CGFloat
  func baselineDeltaForCharacterAt(anIndex: Int) -> CGFloat
  func windowLevel() -> Int
  @available(OSX 10.6, *)
  func drawsVerticallyForCharacterAt(charIndex: Int) -> Bool
  @available(OSX 10.7, *)
  var layoutOrientation: NSTextLayoutOrientation { get }
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
  func accessibilityStringFor(range: NSRange) -> String?
  func accessibilityLineFor(index: Int) -> Int
  func accessibilityRangeForLine(lineNumber: Int) -> NSRange
  func accessibilityFrameFor(range: NSRange) -> NSRect
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextView {

  /************************* Completion support *********************/
  func complete(sender: AnyObject?)
  var rangeForUserCompletion: NSRange { get }
  func completionsForPartialWordRange(charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]?
  func insertCompletion(word: String, forPartialWordRange charRange: NSRange, movement: Int, isFinal flag: Bool)
}
extension NSTextView {

  /******************* Pasteboard support (mainly for subclassers) *******************/
  var writablePasteboardTypes: [String] { get }
  func writeSelectionTo(pboard: NSPasteboard, type: String) -> Bool
  func writeSelectionTo(pboard: NSPasteboard, types: [String]) -> Bool
  var readablePasteboardTypes: [String] { get }
  func preferredPasteboardTypeFrom(availableTypes: [String], restrictedToTypesFrom allowedTypes: [String]?) -> String?
  func readSelectionFrom(pboard: NSPasteboard, type: String) -> Bool
  func readSelectionFrom(pboard: NSPasteboard) -> Bool
  class func registerForServices()
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
}
extension NSTextView {
  func dragSelectionWith(event: NSEvent, offset mouseOffset: NSSize, slideBack: Bool) -> Bool
  func dragImageForSelectionWith(event: NSEvent, origin: NSPointPointer) -> NSImage?
  var acceptableDragTypes: [String] { get }
  func dragOperationFor(dragInfo: NSDraggingInfo, type: String) -> NSDragOperation
  func cleanUpAfterDragOperation()
}
extension NSTextView {

  /*************************** Selected/Marked range ***************************/
  var selectedRanges: [NSValue]
  func setSelectedRanges(ranges: [NSValue], affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  func setSelectedRange(charRange: NSRange, affinity: NSSelectionAffinity, stillSelecting stillSelectingFlag: Bool)
  var selectionAffinity: NSSelectionAffinity { get }
  var selectionGranularity: NSSelectionGranularity
  var selectedTextAttributes: [String : AnyObject]
  @NSCopying var insertionPointColor: NSColor
  func updateInsertionPointStateAndRestartTimer(restartFlag: Bool)
  var markedTextAttributes: [String : AnyObject]?
  var linkTextAttributes: [String : AnyObject]?
  @available(OSX 10.5, *)
  var displaysLinkToolTips: Bool

  /************************* Glyph info support *************************/
  var acceptsGlyphInfo: Bool

  /*************************** Other NSTextView methods ***************************/
  var usesRuler: Bool
  @available(OSX 10.7, *)
  var usesInspectorBar: Bool
  var continuousSpellCheckingEnabled: Bool
  func toggleContinuousSpellChecking(sender: AnyObject?)
  var spellCheckerDocumentTag: Int { get }
  @available(OSX 10.5, *)
  var isGrammarCheckingEnabled: Bool
  @available(OSX 10.5, *)
  func toggleGrammarChecking(sender: AnyObject?)
  @available(OSX 10.5, *)
  func setSpellingState(value: Int, range charRange: NSRange)
  var typingAttributes: [String : AnyObject]
  func shouldChangeTextInRanges(affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  var rangesForUserTextChange: [NSValue]? { get }
  var rangesForUserCharacterAttributeChange: [NSValue]? { get }
  var rangesForUserParagraphAttributeChange: [NSValue]? { get }
  func shouldChangeTextIn(affectedCharRange: NSRange, replacementString: String?) -> Bool
  func didChangeText()
  var rangeForUserTextChange: NSRange { get }
  var rangeForUserCharacterAttributeChange: NSRange { get }
  var rangeForUserParagraphAttributeChange: NSRange { get }
  var allowsDocumentBackgroundColorChange: Bool
  @NSCopying var defaultParagraphStyle: NSParagraphStyle?
  var allowsUndo: Bool
  func breakUndoCoalescing()
  @available(OSX 10.6, *)
  var isCoalescingUndo: Bool { get }
  @available(OSX 10.5, *)
  var allowsImageEditing: Bool
  @available(OSX 10.5, *)
  func showFindIndicatorFor(charRange: NSRange)
  @available(OSX 10.10, *)
  var usesRolloverButtonForSelection: Bool

  /*************************** NSText methods ***************************/
  unowned(unsafe) var delegate: @sil_unmanaged NSTextViewDelegate?
  var isEditable: Bool
  var isSelectable: Bool
  var isRichText: Bool
  var importsGraphics: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  var isFieldEditor: Bool
  var usesFontPanel: Bool
  var isRulerVisible: Bool
  func setSelectedRange(charRange: NSRange)

  /*************************** Input Source support ***************************/
  @available(OSX 10.5, *)
  var allowedInputSourceLocales: [String]?
}
extension NSTextView {

  /*************************** Smart copy/paste/delete/substitution support ***************************/
  var isSmartInsertDeleteEnabled: Bool
  func smartDeleteRangeForProposedRange(proposedCharRange: NSRange) -> NSRange
  func toggleSmartInsertDelete(sender: AnyObject?)
  func smartInsertFor(pasteString: String, replacing charRangeToReplace: NSRange, before beforeString: AutoreleasingUnsafeMutablePointer<NSString?>, after afterString: AutoreleasingUnsafeMutablePointer<NSString?>)
  func smartInsertBeforeStringFor(pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  func smartInsertAfterStringFor(pasteString: String, replacing charRangeToReplace: NSRange) -> String?
  @available(OSX 10.5, *)
  var isAutomaticQuoteSubstitutionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticQuoteSubstitution(sender: AnyObject?)
  @available(OSX 10.5, *)
  var isAutomaticLinkDetectionEnabled: Bool
  @available(OSX 10.5, *)
  func toggleAutomaticLinkDetection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticDataDetectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDataDetection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticDashSubstitutionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticDashSubstitution(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticTextReplacementEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticTextReplacement(sender: AnyObject?)
  @available(OSX 10.6, *)
  var isAutomaticSpellingCorrectionEnabled: Bool
  @available(OSX 10.6, *)
  func toggleAutomaticSpellingCorrection(sender: AnyObject?)
  @available(OSX 10.6, *)
  var enabledTextCheckingTypes: NSTextCheckingTypes
  @available(OSX 10.6, *)
  func checkTextIn(range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject])
  @available(OSX 10.6, *)
  func handle(results: [NSTextCheckingResult], forRange range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], orthography: NSOrthography, wordCount: Int)
  @available(OSX 10.6, *)
  func orderFrontSubstitutionsPanel(sender: AnyObject?)
  @available(OSX 10.6, *)
  func checkTextInSelection(sender: AnyObject?)
  @available(OSX 10.6, *)
  func checkTextInDocument(sender: AnyObject?)
  var usesFindPanel: Bool
  @available(OSX 10.7, *)
  var usesFindBar: Bool
  @available(OSX 10.7, *)
  var isIncrementalSearchingEnabled: Bool
}
extension NSTextView {

  /*************************** Quick Look support ***************************/
  @available(OSX 10.7, *)
  @IBAction func toggleQuickLookPreviewPanel(sender: AnyObject?)
  @available(OSX 10.7, *)
  func quickLookPreviewableItemsInRanges(ranges: [NSValue]) -> [AnyObject]?
  @available(OSX 10.7, *)
  func updateQuickLookPreviewPanel()
}
extension NSTextView {

  /*************************** NSSharingService support ***************************/
  @available(OSX 10.8, *)
  @IBAction func orderFrontSharingServicePicker(sender: AnyObject?)
}
extension NSTextView {
}
protocol NSTextViewDelegate : NSTextDelegate {
  optional func textView(textView: NSTextView, clickedOnLink link: AnyObject, at charIndex: Int) -> Bool
  optional func textView(textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  optional func textView(textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int)
  optional func textView(view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event: NSEvent, at charIndex: Int)
  optional func textView(view: NSTextView, writablePasteboardTypesFor cell: NSTextAttachmentCellProtocol, at charIndex: Int) -> [String]
  optional func textView(view: NSTextView, write cell: NSTextAttachmentCellProtocol, at charIndex: Int, to pboard: NSPasteboard, type: String) -> Bool
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRange oldSelectedCharRange: NSRange, toCharacterRange newSelectedCharRange: NSRange) -> NSRange
  optional func textView(textView: NSTextView, willChangeSelectionFromCharacterRanges oldSelectedCharRanges: [NSValue], toCharacterRanges newSelectedCharRanges: [NSValue]) -> [NSValue]
  optional func textView(textView: NSTextView, shouldChangeTextInRanges affectedRanges: [NSValue], replacementStrings: [String]?) -> Bool
  optional func textView(textView: NSTextView, shouldChangeTypingAttributes oldTypingAttributes: [String : AnyObject], toAttributes newTypingAttributes: [String : AnyObject]) -> [String : AnyObject]
  optional func textViewDidChangeSelection(notification: NSNotification)
  optional func textViewDidChangeTypingAttributes(notification: NSNotification)
  optional func textView(textView: NSTextView, willDisplayToolTip tooltip: String, forCharacterAt characterIndex: Int) -> String?
  optional func textView(textView: NSTextView, completions words: [String], forPartialWordRange charRange: NSRange, indexOfSelectedItem index: UnsafeMutablePointer<Int>) -> [String]
  optional func textView(textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool
  optional func textView(textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool
  @available(OSX 10.5, *)
  optional func textView(textView: NSTextView, shouldSetSpellingState value: Int, range affectedCharRange: NSRange) -> Int
  @available(OSX 10.5, *)
  optional func textView(view: NSTextView, menu: NSMenu, forEvent event: NSEvent, at charIndex: Int) -> NSMenu?
  @available(OSX 10.6, *)
  optional func textView(view: NSTextView, willCheckTextIn range: NSRange, options: [String : AnyObject], types checkingTypes: UnsafeMutablePointer<NSTextCheckingTypes>) -> [String : AnyObject]
  @available(OSX 10.6, *)
  optional func textView(view: NSTextView, didCheckTextIn range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [String : AnyObject], results: [NSTextCheckingResult], orthography: NSOrthography, wordCount: Int) -> [NSTextCheckingResult]
  @available(OSX 10.7, *)
  optional func textView(textView: NSTextView, urlForContentsOf textAttachment: NSTextAttachment, at charIndex: Int) -> NSURL?
  @available(OSX 10.8, *)
  optional func textView(textView: NSTextView, willShow servicePicker: NSSharingServicePicker, forItems items: [AnyObject]) -> NSSharingServicePicker?
  @available(OSX 10.0, *)
  optional func undoManagerFor(view: NSTextView) -> NSUndoManager?
}
let NSTextViewWillChangeNotifyingTextViewNotification: String
let NSTextViewDidChangeSelectionNotification: String
let NSTextViewDidChangeTypingAttributesNotification: String
enum NSFindPanelAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ShowFindPanel
  case Next
  case Previous
  case ReplaceAll
  case Replace
  case ReplaceAndFind
  case SetFindString
  case ReplaceAllInSelection
  case SelectAll
  case SelectAllInSelection
}
@available(OSX 10.5, *)
let NSFindPanelSearchOptionsPboardType: String
@available(OSX 10.5, *)
let NSFindPanelCaseInsensitiveSearch: String
@available(OSX 10.5, *)
let NSFindPanelSubstringMatch: String
enum NSFindPanelSubstringMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Contains
  case StartsWith
  case FullWord
  case EndsWith
}
@available(OSX 10.10, *)
class NSTitlebarAccessoryViewController : NSViewController {
  var layoutAttribute: NSLayoutAttribute
  var fullScreenMinHeight: CGFloat
  func viewWillAppear()
  func viewDidAppear()
  func viewDidDisappear()
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
class NSTokenField : NSTextField {
  func setDelegate(anObject: NSTokenFieldDelegate?)
  func delegate() -> NSTokenFieldDelegate?
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSTokenFieldDelegate : NSTextFieldDelegate {
  optional func tokenField(tokenField: NSTokenField, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, shouldAdd tokens: [AnyObject], at index: Int) -> [AnyObject]
  optional func tokenField(tokenField: NSTokenField, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, representedObjectForEditing editingString: String) -> AnyObject
  optional func tokenField(tokenField: NSTokenField, writeRepresentedObjects objects: [AnyObject], to pboard: NSPasteboard) -> Bool
  optional func tokenField(tokenField: NSTokenField, readFrom pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenField(tokenField: NSTokenField, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenField(tokenField: NSTokenField, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
enum NSTokenStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Rounded
  @available(OSX 10.10, *)
  case Squared
  @available(OSX 10.10, *)
  case PlainSquared
}
let NSDefaultTokenStyle: NSTokenStyle
let NSPlainTextTokenStyle: NSTokenStyle
let NSRoundedTokenStyle: NSTokenStyle
class NSTokenFieldCell : NSTextFieldCell {
  var tokenStyle: NSTokenStyle
  var completionDelay: NSTimeInterval
  class func defaultCompletionDelay() -> NSTimeInterval
  @NSCopying var tokenizingCharacterSet: NSCharacterSet!
  class func defaultTokenizingCharacterSet() -> NSCharacterSet
  unowned(unsafe) var delegate: @sil_unmanaged NSTokenFieldCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
protocol NSTokenFieldCellDelegate : NSObjectProtocol {
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, shouldAdd tokens: [AnyObject], at index: Int) -> [AnyObject]
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, representedObjectForEditing editingString: String) -> AnyObject
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, writeRepresentedObjects objects: [AnyObject], to pboard: NSPasteboard) -> Bool
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, readFrom pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenFieldCell(tokenFieldCell: NSTokenFieldCell, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}
enum NSToolbarDisplayMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case IconAndLabel
  case IconOnly
  case LabelOnly
}
enum NSToolbarSizeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Regular
  case Small
}
class NSToolbar : NSObject {
  init(identifier: String)
  func insertItemWithItemIdentifier(itemIdentifier: String, at index: Int)
  func removeItemAt(index: Int)
  unowned(unsafe) var delegate: @sil_unmanaged NSToolbarDelegate?
  var isVisible: Bool
  func runCustomizationPalette(sender: AnyObject?)
  var customizationPaletteIsRunning: Bool { get }
  var displayMode: NSToolbarDisplayMode
  var selectedItemIdentifier: String?
  var sizeMode: NSToolbarSizeMode
  var showsBaselineSeparator: Bool
  var allowsUserCustomization: Bool
  var identifier: String { get }
  var items: [NSToolbarItem] { get }
  var visibleItems: [NSToolbarItem]? { get }
  var autosavesConfiguration: Bool
  func setConfigurationFrom(configDict: [String : AnyObject])
  var configurationDictionary: [String : AnyObject] { get }
  func validateVisibleItems()
  @available(OSX 10.10, *)
  var allowsExtensionItems: Bool
  convenience init()
}
struct __tbFlags {
  var allowsUserCustomization: UInt32
  var autosavesUsingIdentifier: UInt32
  var initialConfigurationDone: UInt32
  var doesNotAttachToMenuBar: UInt32
  var delegateDefaultItemIdentifiers: UInt32
  var delegateAllowedItemIdentifiers: UInt32
  var delegateItemWithItemIdentifier: UInt32
  var delegateNotificationsEnabled: UInt32
  var prefersToBeShown: UInt32
  var loadItemsImmediately: UInt32
  var currentItemsContainsPlaceholder: UInt32
  var customizationPanelIsRunning: UInt32
  var usesCustomSheetWidth: UInt32
  var clickAndDragPerformsCustomization: UInt32
  var showsNoContextMenu: UInt32
  var currentlyLoadingPlaceholders: UInt32
  var delegateItemWithItemIdentifier2: UInt32
  var inGlobalWindow: UInt32
  var hasOwnedFullscreenViewController: UInt32
  var usesServicesItems: UInt32
  var usingFSMetrics: UInt32
  var keyboardLoopNeedsUpdating: UInt32
  var showHideDuringConfigurationChangeDisabled: UInt32
  var displayMode: UInt32
  var sizeMode: UInt32
  var doNotShowBaselineSeparator: UInt32
  var hideWithoutResizingWindowHint: UInt32
  var autovalidatesItemsDisabled: UInt32
  var inAutovalidation: UInt32
  var loadedMetrics: UInt32
  init()
  init(allowsUserCustomization: UInt32, autosavesUsingIdentifier: UInt32, initialConfigurationDone: UInt32, doesNotAttachToMenuBar: UInt32, delegateDefaultItemIdentifiers: UInt32, delegateAllowedItemIdentifiers: UInt32, delegateItemWithItemIdentifier: UInt32, delegateNotificationsEnabled: UInt32, prefersToBeShown: UInt32, loadItemsImmediately: UInt32, currentItemsContainsPlaceholder: UInt32, customizationPanelIsRunning: UInt32, usesCustomSheetWidth: UInt32, clickAndDragPerformsCustomization: UInt32, showsNoContextMenu: UInt32, currentlyLoadingPlaceholders: UInt32, delegateItemWithItemIdentifier2: UInt32, inGlobalWindow: UInt32, hasOwnedFullscreenViewController: UInt32, usesServicesItems: UInt32, usingFSMetrics: UInt32, keyboardLoopNeedsUpdating: UInt32, showHideDuringConfigurationChangeDisabled: UInt32, displayMode: UInt32, sizeMode: UInt32, doNotShowBaselineSeparator: UInt32, hideWithoutResizingWindowHint: UInt32, autovalidatesItemsDisabled: UInt32, inAutovalidation: UInt32, loadedMetrics: UInt32)
}
protocol NSToolbarDelegate : NSObjectProtocol {
  optional func toolbar(toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: String, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem?
  optional func toolbarDefaultItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarAllowedItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarSelectableItemIdentifiers(toolbar: NSToolbar) -> [String]
  optional func toolbarWillAddItem(notification: NSNotification)
  optional func toolbarDidRemoveItem(notification: NSNotification)
}
let NSToolbarWillAddItemNotification: String
let NSToolbarDidRemoveItemNotification: String
extension NSToolbar {
  @available(OSX 10.7, *)
  var fullScreenAccessoryView: NSView?
  @available(OSX 10.7, *)
  var fullScreenAccessoryViewMinHeight: CGFloat
  @available(OSX 10.7, *)
  var fullScreenAccessoryViewMaxHeight: CGFloat
}
class NSToolbarItem : NSObject, NSCopying, NSValidatedUserInterfaceItem {
  init(itemIdentifier: String)
  var itemIdentifier: String { get }
  unowned(unsafe) var toolbar: @sil_unmanaged NSToolbar? { get }
  var label: String
  var paletteLabel: String
  var toolTip: String?
  var menuFormRepresentation: NSMenuItem?
  var tag: Int
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var isEnabled: Bool
  var image: NSImage?
  var view: NSView?
  var minSize: NSSize
  var maxSize: NSSize
  var visibilityPriority: Int
  func validate()
  var autovalidates: Bool
  var allowsDuplicatesInToolbar: Bool { get }
  convenience init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
struct __tbiFlags {
  var viewRespondsToIsEnabled: UInt32
  var viewRespondsToSetEnabled: UInt32
  var viewRespondsToTag: UInt32
  var viewRespondsToSetTag: UInt32
  var viewRespondsToAction: UInt32
  var viewRespondsToSetAction: UInt32
  var viewRespondsToTarget: UInt32
  var viewRespondsToSetTarget: UInt32
  var viewRespondsToImage: UInt32
  var viewRespondsToSetImage: UInt32
  var isEnabled: UInt32
  var isUserRemovable: UInt32
  var menuHasBeenSet: UInt32
  var menuRepIsDefault: UInt32
  var viewHasBeenLoaded: UInt32
  var drawingForDragImage: UInt32
  var isCustomItemType: UInt32
  var hasValidatedAutoModeConfiguration: UInt32
  var useAutoModeConfiguration: UInt32
  var fromBaseLocalizedNib: UInt32
  var autovalidationDisabled: UInt32
  var tagHasBeenSet: UInt32
  var sizeHasBeenSet: UInt32
  var stateWasDisabledBeforeSheet: UInt32
  var wantsToBeCentered: UInt32
  var RESERVED: UInt32
  init()
  init(viewRespondsToIsEnabled: UInt32, viewRespondsToSetEnabled: UInt32, viewRespondsToTag: UInt32, viewRespondsToSetTag: UInt32, viewRespondsToAction: UInt32, viewRespondsToSetAction: UInt32, viewRespondsToTarget: UInt32, viewRespondsToSetTarget: UInt32, viewRespondsToImage: UInt32, viewRespondsToSetImage: UInt32, isEnabled: UInt32, isUserRemovable: UInt32, menuHasBeenSet: UInt32, menuRepIsDefault: UInt32, viewHasBeenLoaded: UInt32, drawingForDragImage: UInt32, isCustomItemType: UInt32, hasValidatedAutoModeConfiguration: UInt32, useAutoModeConfiguration: UInt32, fromBaseLocalizedNib: UInt32, autovalidationDisabled: UInt32, tagHasBeenSet: UInt32, sizeHasBeenSet: UInt32, stateWasDisabledBeforeSheet: UInt32, wantsToBeCentered: UInt32, RESERVED: UInt32)
}
var NSToolbarItemVisibilityPriorityStandard: Int { get }
var NSToolbarItemVisibilityPriorityLow: Int { get }
var NSToolbarItemVisibilityPriorityHigh: Int { get }
var NSToolbarItemVisibilityPriorityUser: Int { get }
extension NSObject {
  class func validate(theItem: NSToolbarItem) -> Bool
  func validate(theItem: NSToolbarItem) -> Bool
}
let NSToolbarSeparatorItemIdentifier: String
let NSToolbarSpaceItemIdentifier: String
let NSToolbarFlexibleSpaceItemIdentifier: String
let NSToolbarShowColorsItemIdentifier: String
let NSToolbarShowFontsItemIdentifier: String
let NSToolbarCustomizeToolbarItemIdentifier: String
let NSToolbarPrintItemIdentifier: String
@available(OSX 10.11, *)
let NSToolbarToggleSidebarItemIdentifier: String
@available(OSX 10.5, *)
class NSToolbarItemGroup : NSToolbarItem {
  var subitems: [NSToolbarItem]
  init(itemIdentifier: String)
  convenience init()
}
@available(OSX 10.7, *)
struct NSTouchPhase : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Began: NSTouchPhase { get }
  static var Moved: NSTouchPhase { get }
  static var Stationary: NSTouchPhase { get }
  static var Ended: NSTouchPhase { get }
  static var Cancelled: NSTouchPhase { get }
  static var Touching: NSTouchPhase { get }
  static var Any: NSTouchPhase { get }
}
@available(OSX 10.6, *)
class NSTouch : NSObject, NSCopying {
  var identity: protocol<NSCopying, NSObjectProtocol> { get }
  var phase: NSTouchPhase { get }
  var normalizedPosition: NSPoint { get }
  var isResting: Bool { get }
  var device: AnyObject? { get }
  var deviceSize: NSSize { get }
  init()
  @available(OSX 10.6, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
struct NSTrackingAreaOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MouseEnteredAndExited: NSTrackingAreaOptions { get }
  static var MouseMoved: NSTrackingAreaOptions { get }
  static var CursorUpdate: NSTrackingAreaOptions { get }
  static var ActiveWhenFirstResponder: NSTrackingAreaOptions { get }
  static var ActiveInKeyWindow: NSTrackingAreaOptions { get }
  static var ActiveInActiveApp: NSTrackingAreaOptions { get }
  static var ActiveAlways: NSTrackingAreaOptions { get }
  static var AssumeInside: NSTrackingAreaOptions { get }
  static var InVisibleRect: NSTrackingAreaOptions { get }
  static var EnabledDuringMouseDrag: NSTrackingAreaOptions { get }
}
@available(OSX 10.5, *)
class NSTrackingArea : NSObject, NSCopying, NSCoding {
  init(rect: NSRect, options: NSTrackingAreaOptions = [], owner: AnyObject?, userInfo: [NSObject : AnyObject]?)
  var rect: NSRect { get }
  var options: NSTrackingAreaOptions { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  init()
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
class NSTreeController : NSObjectController {
  func rearrangeObjects()
  var arrangedObjects: AnyObject { get }
  var childrenKeyPath: String?
  var countKeyPath: String?
  var leafKeyPath: String?
  var sortDescriptors: [NSSortDescriptor]
  var content: AnyObject?
  func add(sender: AnyObject?)
  func remove(sender: AnyObject?)
  func addChild(sender: AnyObject?)
  func insert(sender: AnyObject?)
  func insertChild(sender: AnyObject?)
  var canInsert: Bool { get }
  var canInsertChild: Bool { get }
  var canAddChild: Bool { get }
  func insert(object: AnyObject?, atArrangedObjectIndexPath indexPath: NSIndexPath)
  func insert(objects: [AnyObject], atArrangedObjectIndexPaths indexPaths: [NSIndexPath])
  func removeObjectAtArrangedObjectIndexPath(indexPath: NSIndexPath)
  func removeObjectsAtArrangedObjectIndexPaths(indexPaths: [NSIndexPath])
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  var selectedObjects: [AnyObject] { get }
  func setSelectionIndexPaths(indexPaths: [NSIndexPath]) -> Bool
  var selectionIndexPaths: [NSIndexPath] { get }
  func setSelectionIndexPath(indexPath: NSIndexPath?) -> Bool
  @NSCopying var selectionIndexPath: NSIndexPath? { get }
  func addSelectionIndexPaths(indexPaths: [NSIndexPath]) -> Bool
  func removeSelectionIndexPaths(indexPaths: [NSIndexPath]) -> Bool
  @available(OSX 10.5, *)
  var selectedNodes: [NSTreeNode] { get }
  @available(OSX 10.5, *)
  func move(node: NSTreeNode, to indexPath: NSIndexPath)
  @available(OSX 10.5, *)
  func move(nodes: [NSTreeNode], to startingIndexPath: NSIndexPath)
  @available(OSX 10.5, *)
  func childrenKeyPathFor(node: NSTreeNode) -> String?
  @available(OSX 10.5, *)
  func countKeyPathFor(node: NSTreeNode) -> String?
  @available(OSX 10.5, *)
  func leafKeyPathFor(node: NSTreeNode) -> String?
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __treeControllerFlags {
  var _avoidsEmptySelection: UInt32
  var _preservesSelection: UInt32
  var _selectsInsertedObjects: UInt32
  var _explicitlyCannotInsert: UInt32
  var _explicitlyCannotInsertChild: UInt32
  var _explicitlyCannotAddChild: UInt32
  var _alwaysUsesMultipleValuesMarker: UInt32
  var _observingThroughArrangedObjects: UInt32
  var _mutatingNodes: UInt32
  var _performingFetch: UInt32
  var _skipSortingAfterFetch: UInt32
  var _usesIdenticalComparisonOfModelObjects: UInt32
  var _reservedTreeController: UInt32
  init()
  init(_avoidsEmptySelection: UInt32, _preservesSelection: UInt32, _selectsInsertedObjects: UInt32, _explicitlyCannotInsert: UInt32, _explicitlyCannotInsertChild: UInt32, _explicitlyCannotAddChild: UInt32, _alwaysUsesMultipleValuesMarker: UInt32, _observingThroughArrangedObjects: UInt32, _mutatingNodes: UInt32, _performingFetch: UInt32, _skipSortingAfterFetch: UInt32, _usesIdenticalComparisonOfModelObjects: UInt32, _reservedTreeController: UInt32)
}
@available(OSX 10.5, *)
class NSTreeNode : NSObject {
  init(representedObject modelObject: AnyObject?)
  var representedObject: AnyObject? { get }
  var indexPath: NSIndexPath { get }
  var isLeaf: Bool { get }
  var childNodes: [NSTreeNode]? { get }
  var mutableChildNodes: NSMutableArray { get }
  func descendantNodeAt(indexPath: NSIndexPath) -> NSTreeNode?
  unowned(unsafe) var parent: @sil_unmanaged NSTreeNode? { get }
  func sortWith(sortDescriptors: [NSSortDescriptor], recursively: Bool)
  init()
}
struct __NSTreeNodeFlags {
  var ignoreObserving: UInt32
  var reserved: UInt32
  init()
  init(ignoreObserving: UInt32, reserved: UInt32)
}
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
  func substituteFontFor(originalFont: NSFont) -> NSFont
  func textTabForGlyphLocation(glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var isBidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraphAt(lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLineWithGlyphAt(glyphIndex: Int)
  func endLineWithGlyphRange(lineGlyphRange: NSRange)
  func lineSpacingAfterGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingBeforeGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacingAfterGlyphAt(glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [String : AnyObject]? { get }
  func actionForControlCharacterAt(charIndex: Int) -> NSTypesetterControlCharacterAction
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  var textContainers: [NSTextContainer]? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphsIn(layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(OSX 10.5, *)
  func layoutCharactersIn(characterRange: NSRange, forLayoutManager layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustmentIn(layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffsetIn(layoutMgr: NSLayoutManager, glyphIndex: Int) -> CGFloat
  class func sharedSystemTypesetter() -> AnyObject
  class func sharedSystemTypesetterFor(theBehavior: NSTypesetterBehavior) -> AnyObject
  class func defaultTypesetterBehavior() -> NSTypesetterBehavior
  init()
}
extension NSTypesetter {
  func willSetLineFragmentRect(lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect: NSRectPointer, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLineByWordBeforeCharacterAt(charIndex: Int) -> Bool
  func shouldBreakLineByHyphenatingBeforeCharacterAt(charIndex: Int) -> Bool
  func hyphenationFactorForGlyphAt(glyphIndex: Int) -> Float
  func hyphenCharacterForGlyphAt(glyphIndex: Int) -> UTF32Char
  func boundingBoxForControlGlyphAt(glyphIndex: Int, forTextContainer textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRangeForGlyphRange(glyphRange: NSRange, actualGlyphRange: NSRangePointer) -> NSRange
  func glyphRangeForCharacterRange(charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer) -> NSRange
  func getGlyphsIn(glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>) -> Int
  func getLineFragmentRect(lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, remaining remainingRect: NSRectPointer, forStartingGlyphAt startingGlyphIndex: Int, proposedRect: NSRect, lineSpacing: CGFloat, paragraphSpacingBefore: CGFloat, paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func substituteGlyphsIn(glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>)
  func insertGlyph(glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  func deleteGlyphsIn(glyphRange: NSRange)
  func setNotShownAttribute(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(levels: UnsafePointer<UInt8>, forGlyphRange glyphRange: NSRange)
}
var NS_USER_ACTIVITY_SUPPORTED: Int32 { get }
extension NSResponder {
  @available(OSX 10.10, *)
  var userActivity: NSUserActivity?
  @available(OSX 10.10, *)
  func updateUserActivityState(userActivity: NSUserActivity)
  @available(OSX 10.10, *)
  func restoreUserActivityState(userActivity: NSUserActivity)
}
extension NSDocument {
  @available(OSX 10.10, *)
  var userActivity: NSUserActivity?
  @available(OSX 10.10, *)
  func updateUserActivityState(activity: NSUserActivity)
  @available(OSX 10.10, *)
  func restoreUserActivityState(activity: NSUserActivity)
}
@available(OSX 10.10, *)
let NSUserActivityDocumentURLKey: String
class NSUserDefaultsController : NSController {
  class func shared() -> NSUserDefaultsController
  init(defaults: NSUserDefaults?, initialValues: [String : AnyObject]?)
  init?(coder: NSCoder)
  var defaults: NSUserDefaults { get }
  var initialValues: [String : AnyObject]?
  var appliesImmediately: Bool
  var hasUnappliedChanges: Bool { get }
  var values: AnyObject { get }
  func revert(sender: AnyObject?)
  func save(sender: AnyObject?)
  func revertToInitialValues(sender: AnyObject?)
  convenience init()
}
struct __userDefaultsControllerFlags {
  var _sharedInstance: UInt32
  var _appliesImmediately: UInt32
  var _reservedUserDefaultsController: UInt32
  init()
  init(_sharedInstance: UInt32, _appliesImmediately: UInt32, _reservedUserDefaultsController: UInt32)
}
protocol NSUserInterfaceItemIdentification {
  var identifier: String? { get set }
}
protocol NSUserInterfaceItemSearching : NSObjectProtocol {
  func searchForItemsWithSearch(searchString: String, resultLimit: Int, matchedItemHandler handleMatchedItems: ([AnyObject]) -> Void)
  func localizedTitlesForItem(item: AnyObject) -> [String]
  optional func performActionForItem(item: AnyObject)
  optional func showAllHelpTopicsForSearch(searchString: String)
}
extension NSApplication {
  @available(OSX 10.6, *)
  func registerUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func unregisterUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func search(searchString: String, inUserInterfaceItemString stringToSearch: String, search searchRange: NSRange, found foundRange: UnsafeMutablePointer<NSRange>) -> Bool
}
enum NSUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
@available(OSX 10.9, *)
enum NSUserInterfaceLayoutOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Horizontal
  case Vertical
}
protocol NSValidatedUserInterfaceItem {
  func action() -> Selector
  func tag() -> Int
}
protocol NSUserInterfaceValidations {
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
struct NSAutoresizingMaskOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ViewNotSizable: NSAutoresizingMaskOptions { get }
  static var ViewMinXMargin: NSAutoresizingMaskOptions { get }
  static var ViewWidthSizable: NSAutoresizingMaskOptions { get }
  static var ViewMaxXMargin: NSAutoresizingMaskOptions { get }
  static var ViewMinYMargin: NSAutoresizingMaskOptions { get }
  static var ViewHeightSizable: NSAutoresizingMaskOptions { get }
  static var ViewMaxYMargin: NSAutoresizingMaskOptions { get }
}
enum NSBorderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoBorder
  case LineBorder
  case BezelBorder
  case GrooveBorder
}
@available(OSX 10.6, *)
enum NSViewLayerContentsRedrawPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Never
  case OnSetNeedsDisplay
  case DuringViewResize
  case BeforeViewResize
  @available(OSX 10.9, *)
  case Crossfade
}
@available(OSX 10.6, *)
enum NSViewLayerContentsPlacement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ScaleAxesIndependently
  case ScaleProportionallyToFit
  case ScaleProportionallyToFill
  case Center
  case Top
  case TopRight
  case Right
  case BottomRight
  case Bottom
  case BottomLeft
  case Left
  case TopLeft
}
struct __VFlags {
  var aboutToResize: UInt32
  var isOpaque: UInt32
  var unused3: UInt32
  var hasNotMessedWithIsFlipped: UInt32
  var ignoreHitTest: UInt32
  var specialArchiving: UInt32
  var needsDisplayForBounds: UInt32
  var isFlipped: UInt32
  var removingWithoutInvalidation: UInt32
  var needsBoundsChangeNote: UInt32
  var boundsChangeNotesSuspended: UInt32
  var unused2: UInt32
  var needsFrameChangeNote: UInt32
  var frameChangeNotesSuspended: UInt32
  var canDrawSubviewsIntoLayer: UInt32
  var allowsVibrancy: UInt32
  var needsDisplay: UInt32
  var wantsGState: UInt32
  var autoresizeSubviews: UInt32
  var autosizing: UInt32
  var rotatedOrScaledFromBase: UInt32
  var rotatedFromBase: UInt32
  init()
  init(aboutToResize: UInt32, isOpaque: UInt32, unused3: UInt32, hasNotMessedWithIsFlipped: UInt32, ignoreHitTest: UInt32, specialArchiving: UInt32, needsDisplayForBounds: UInt32, isFlipped: UInt32, removingWithoutInvalidation: UInt32, needsBoundsChangeNote: UInt32, boundsChangeNotesSuspended: UInt32, unused2: UInt32, needsFrameChangeNote: UInt32, frameChangeNotesSuspended: UInt32, canDrawSubviewsIntoLayer: UInt32, allowsVibrancy: UInt32, needsDisplay: UInt32, wantsGState: UInt32, autoresizeSubviews: UInt32, autosizing: UInt32, rotatedOrScaledFromBase: UInt32, rotatedFromBase: UInt32)
}
typealias _VFlags = __VFlags
typealias NSTrackingRectTag = Int
typealias NSToolTipTag = Int
class NSView : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceItemIdentification, NSDraggingDestination, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var superview: @sil_unmanaged NSView? { get }
  var subviews: [NSView]
  func isDescendantOf(aView: NSView) -> Bool
  func ancestorSharedWith(aView: NSView) -> NSView?
  unowned(unsafe) var opaqueAncestor: @sil_unmanaged NSView? { get }
  var isHidden: Bool
  var hiddenOrHasHiddenAncestor: Bool { get }
  func getRectsBeingDrawn(rects: UnsafeMutablePointer<UnsafePointer<NSRect>>, count: UnsafeMutablePointer<Int>)
  func needsToDraw(aRect: NSRect) -> Bool
  var wantsDefaultClipping: Bool { get }
  @available(OSX 10.5, *)
  func viewDidHide()
  @available(OSX 10.5, *)
  func viewDidUnhide()
  func addSubview(aView: NSView)
  func addSubview(aView: NSView, positioned place: NSWindowOrderingMode, relativeTo otherView: NSView?)
  func sortSubviewsUsing(compare: @convention(c) (NSView, NSView, UnsafeMutablePointer<Void>) -> NSComparisonResult, context: UnsafeMutablePointer<Void>)
  func viewWillMoveTo(newWindow: NSWindow?)
  func viewDidMoveToWindow()
  func viewWillMoveToSuperview(newSuperview: NSView?)
  func viewDidMoveToSuperview()
  func didAddSubview(subview: NSView)
  func willRemoveSubview(subview: NSView)
  func removeFromSuperview()
  func replaceSubview(oldView: NSView, with newView: NSView)
  func removeFromSuperviewWithoutNeedingDisplay()
  @available(OSX 10.7, *)
  func viewDidChangeBackingProperties()
  var postsFrameChangedNotifications: Bool
  func resizeSubviewsWithOldSize(oldSize: NSSize)
  func resizeWithOldSuperviewSize(oldSize: NSSize)
  var autoresizesSubviews: Bool
  var autoresizingMask: NSAutoresizingMaskOptions
  func setFrameOrigin(newOrigin: NSPoint)
  func setFrame(newSize: NSSize)
  var frame: NSRect
  var frameRotation: CGFloat
  @available(OSX 10.5, *)
  var frameCenterRotation: CGFloat
  func setBoundsOrigin(newOrigin: NSPoint)
  func setBoundsSize(newSize: NSSize)
  var boundsRotation: CGFloat
  func translateOriginTo(translation: NSPoint)
  func scaleUnitSquareTo(newUnitSize: NSSize)
  func rotateByAngle(angle: CGFloat)
  var bounds: NSRect
  var isFlipped: Bool { get }
  var isRotatedFromBase: Bool { get }
  var isRotatedOrScaledFromBase: Bool { get }
  var isOpaque: Bool { get }
  func convert(aPoint: NSPoint, from aView: NSView?) -> NSPoint
  func convert(aPoint: NSPoint, to aView: NSView?) -> NSPoint
  func convert(aSize: NSSize, from aView: NSView?) -> NSSize
  func convert(aSize: NSSize, to aView: NSView?) -> NSSize
  func convert(aRect: NSRect, from aView: NSView?) -> NSRect
  func convert(aRect: NSRect, to aView: NSView?) -> NSRect
  @available(OSX 10.7, *)
  func backingAlignedRect(aRect: NSRect, options: NSAlignmentOptions = []) -> NSRect
  func centerScanRect(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertPointToBacking(aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertPointFromBacking(aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertSizeToBacking(aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertSizeFromBacking(aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertRectToBacking(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromBacking(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertPointToLayer(aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertPointFromLayer(aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertSizeToLayer(aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertSizeFromLayer(aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertRectToLayer(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromLayer(aRect: NSRect) -> NSRect
  @available(OSX 10.6, *)
  var canDrawConcurrently: Bool
  var canDraw: Bool { get }
  func setNeedsDisplayIn(invalidRect: NSRect)
  var needsDisplay: Bool
  func lockFocus()
  func unlockFocus()
  func lockFocusIfCanDraw() -> Bool
  func lockFocusIfCanDrawIn(context: NSGraphicsContext) -> Bool
  class func focus() -> NSView?
  var visibleRect: NSRect { get }
  func display()
  func displayIfNeeded()
  func displayIfNeededIgnoringOpacity()
  func display(rect: NSRect)
  func displayIfNeededIn(rect: NSRect)
  func displayRectIgnoringOpacity(rect: NSRect)
  func displayIfNeededInRectIgnoringOpacity(rect: NSRect)
  func draw(dirtyRect: NSRect)
  func displayRectIgnoringOpacity(aRect: NSRect, in context: NSGraphicsContext)
  func bitmapImageRepForCachingDisplayIn(rect: NSRect) -> NSBitmapImageRep?
  func cacheDisplayIn(rect: NSRect, to bitmapImageRep: NSBitmapImageRep)
  @available(OSX 10.5, *)
  func viewWillDraw()
  func scroll(aPoint: NSPoint)
  func scrollRectToVisible(aRect: NSRect) -> Bool
  func autoscroll(theEvent: NSEvent) -> Bool
  func adjustScroll(newVisible: NSRect) -> NSRect
  func scroll(aRect: NSRect, by delta: NSSize)
  @available(OSX 10.5, *)
  func translateRectsNeedingDisplayIn(clipRect: NSRect, by delta: NSSize)
  func hitTest(aPoint: NSPoint) -> NSView?
  func mouse(aPoint: NSPoint, in aRect: NSRect) -> Bool
  func withTag(aTag: Int) -> NSView?
  var tag: Int { get }
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func shouldDelayWindowOrderingFor(theEvent: NSEvent) -> Bool
  var needsPanelToBecomeKey: Bool { get }
  var mouseDownCanMoveWindow: Bool { get }
  @available(OSX 10.6, *)
  var acceptsTouchEvents: Bool
  @available(OSX 10.6, *)
  var wantsRestingTouches: Bool
  func addCursorRect(aRect: NSRect, cursor anObj: NSCursor)
  func removeCursorRect(aRect: NSRect, cursor anObj: NSCursor)
  func discardCursorRects()
  func resetCursorRects()
  func addTracking(aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>, assumeInside flag: Bool) -> NSTrackingRectTag
  func removeTrackingRect(tag: NSTrackingRectTag)
  @available(OSX 10.6, *)
  func makeBackingLayer() -> CALayer
  @available(OSX 10.6, *)
  var layerContentsRedrawPolicy: NSViewLayerContentsRedrawPolicy
  @available(OSX 10.6, *)
  var layerContentsPlacement: NSViewLayerContentsPlacement
  @available(OSX 10.5, *)
  var wantsLayer: Bool
  @available(OSX 10.5, *)
  var layer: CALayer?
  @available(OSX 10.8, *)
  var wantsUpdateLayer: Bool { get }
  @available(OSX 10.8, *)
  func updateLayer()
  @available(OSX 10.9, *)
  var canDrawSubviewsIntoLayer: Bool
  @available(OSX 10.5, *)
  var alphaValue: CGFloat
  @available(OSX 10.9, *)
  var layerUsesCoreImageFilters: Bool
  @available(OSX 10.5, *)
  var backgroundFilters: [CIFilter]
  @available(OSX 10.5, *)
  var compositingFilter: CIFilter?
  @available(OSX 10.5, *)
  var contentFilters: [CIFilter]
  @available(OSX 10.5, *)
  @NSCopying var shadow: NSShadow?
  @available(OSX 10.5, *)
  func addTrackingArea(trackingArea: NSTrackingArea)
  @available(OSX 10.5, *)
  func removeTrackingArea(trackingArea: NSTrackingArea)
  @available(OSX 10.5, *)
  var trackingAreas: [NSTrackingArea] { get }
  @available(OSX 10.5, *)
  func updateTrackingAreas()
  var postsBoundsChangedNotifications: Bool
  var enclosingScrollView: NSScrollView? { get }
  func menuFor(event: NSEvent) -> NSMenu?
  class func defaultMenu() -> NSMenu?

  /*!
   * A contextual menu is being opened from the receiving view.
   * The view should update any visual state in response — such as making a selection.
   * \param menu The contextual menu that is being opened on the view
   * \param event The event that caused the menu to open.
   */
  @available(OSX 10.11, *)
  func willOpenMenu(menu: NSMenu, withEvent event: NSEvent)

  /*!
   * A contextual menu shown from the receiving view has been closed. This is only called if the menu had been opened and the view previously received \c -willOpenMenu:withEvent:.
   * The view should update any visual state in response — such as removing a temporary selection.
   * \param menu The contextual menu that was open on the view
   * \param event The event that caused the menu to close. This may be nil if there is no specific event that triggered the closing.
   */
  @available(OSX 10.11, *)
  func didCloseMenu(menu: NSMenu, withEvent event: NSEvent?)
  var toolTip: String?
  func addToolTip(aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>) -> NSToolTipTag
  func removeToolTip(tag: NSToolTipTag)
  func removeAllToolTips()
  func viewWillStartLiveResize()
  func viewDidEndLiveResize()
  var isInLiveResize: Bool { get }
  var preservesContentDuringLiveResize: Bool { get }
  var rectPreservedDuringLiveResize: NSRect { get }
  func getRectsExposedDuringLiveResize(exposedRects: UnsafeMutablePointer<NSRect>, count: UnsafeMutablePointer<Int>)
  @available(OSX 10.6, *)
  var inputContext: NSTextInputContext? { get }
  @available(OSX 10.8, *)
  func rectForSmartMagnificationAt(location: NSPoint, in visibleRect: NSRect) -> NSRect
  @available(OSX 10.8, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(OSX 10.7, *)
  func prepareForReuse()
  @available(OSX 10.9, *)
  class func isCompatibleWithResponsiveScrolling() -> Bool
  @available(OSX 10.9, *)
  func prepareContentIn(rect: NSRect)
  @available(OSX 10.9, *)
  var preparedContentRect: NSRect
  @available(OSX 10.10, *)
  var allowsVibrancy: Bool { get }
  convenience init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(key: String) -> AnyObject?
  var identifier: String?
  func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  func draggingExited(sender: NSDraggingInfo?)
  func prepareForDragOperation(sender: NSDraggingInfo) -> Bool
  func performDragOperation(sender: NSDraggingInfo) -> Bool
  func concludeDragOperation(sender: NSDraggingInfo?)
  func draggingEnded(sender: NSDraggingInfo?)
  func wantsPeriodicDraggingUpdates() -> Bool
  @available(OSX 10.7, *)
  func updateDraggingItemsForDrag(sender: NSDraggingInfo?)
  @available(OSX 10.9, *)
  var appearance: NSAppearance?
  @available(OSX 10.9, *)
  var effectiveAppearance: NSAppearance { get }
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}

extension NSView : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
struct __VFlags2 {
  var nextKeyViewRefCount: UInt32
  var previousKeyViewRefCount: UInt32
  var isVisibleRect: UInt32
  var hasToolTip: UInt32
  var cachedIsFlipped: UInt32
  var menuWasSet: UInt32
  init()
  init(nextKeyViewRefCount: UInt32, previousKeyViewRefCount: UInt32, isVisibleRect: UInt32, hasToolTip: UInt32, cachedIsFlipped: UInt32, menuWasSet: UInt32)
}
extension NSObject {
  @available(OSX 10.7, *)
  class func layer(layer: CALayer, shouldInheritContentsScale newScale: CGFloat, from window: NSWindow) -> Bool
  @available(OSX 10.7, *)
  func layer(layer: CALayer, shouldInheritContentsScale newScale: CGFloat, from window: NSWindow) -> Bool
}
extension NSObject {
  class func view(view: NSView, stringForToolTip tag: NSToolTipTag, point: NSPoint, userData data: UnsafeMutablePointer<Void>) -> String
  func view(view: NSView, stringForToolTip tag: NSToolTipTag, point: NSPoint, userData data: UnsafeMutablePointer<Void>) -> String
}
extension NSView {
  unowned(unsafe) var nextKey: @sil_unmanaged NSView?
  unowned(unsafe) var previousKey: @sil_unmanaged NSView? { get }
  unowned(unsafe) var nextValidKey: @sil_unmanaged NSView? { get }
  unowned(unsafe) var previousValidKey: @sil_unmanaged NSView? { get }
  var canBecomeKeyView: Bool { get }
  func setKeyboardFocusRingNeedsDisplayIn(rect: NSRect)
  var focusRingType: NSFocusRingType
  class func defaultFocusRingType() -> NSFocusRingType
  @available(OSX 10.7, *)
  func drawFocusRingMask()
  @available(OSX 10.7, *)
  var focusRingMaskBounds: NSRect { get }
  @available(OSX 10.7, *)
  func noteFocusRingMaskChanged()
}
extension NSView {
  func writeEPSInside(rect: NSRect, to pasteboard: NSPasteboard)
  func dataWithEPSInside(rect: NSRect) -> NSData
  func writePDFInside(rect: NSRect, to pasteboard: NSPasteboard)
  func dataWithPDFInside(rect: NSRect) -> NSData
  @warn_unqualified_access
  func print(sender: AnyObject?)
  func knowsPageRange(range: NSRangePointer) -> Bool
  var heightAdjustLimit: CGFloat { get }
  var widthAdjustLimit: CGFloat { get }
  func adjustPageWidthNew(newRight: UnsafeMutablePointer<CGFloat>, left oldLeft: CGFloat, right oldRight: CGFloat, limit rightLimit: CGFloat)
  func adjustPageHeightNew(newBottom: UnsafeMutablePointer<CGFloat>, top oldTop: CGFloat, bottom oldBottom: CGFloat, limit bottomLimit: CGFloat)
  func rectForPage(page: Int) -> NSRect
  func locationOfPrint(aRect: NSRect) -> NSPoint
  func drawPageBorderWith(borderSize: NSSize)
  @NSCopying var pageHeader: NSAttributedString { get }
  @NSCopying var pageFooter: NSAttributedString { get }

  /*** This method is obsolete.  It will never be invoked from within AppKit, and NSView's implementation of it does nothing. ***/
  func drawSheetBorderWith(borderSize: NSSize)
  var printJobTitle: String { get }
  func beginDocument()
  func endDocument()
  func beginPageIn(aRect: NSRect, atPlacement location: NSPoint)
  func endPage()
}
extension NSView {
  @available(OSX 10.7, *)
  func beginDraggingSessionWith(items: [NSDraggingItem], event: NSEvent, source: NSDraggingSource) -> NSDraggingSession
  var registeredDraggedTypes: [String] { get }
  func registerForDraggedTypes(newTypes: [String])
  func unregisterDraggedTypes()
  func dragFile(filename: String, from rect: NSRect, slideBack aFlag: Bool, event: NSEvent) -> Bool
  func dragPromisedFilesOfTypes(typeArray: [String], from rect: NSRect, source sourceObject: AnyObject, slideBack aFlag: Bool, event: NSEvent) -> Bool
}
extension NSView {
  @available(OSX 10.5, *)
  func enterFullScreenMode(screen: NSScreen, withOptions options: [String : AnyObject]?) -> Bool
  @available(OSX 10.5, *)
  func exitFullScreenModeWithOptions(options: [String : AnyObject]?)
  @available(OSX 10.5, *)
  var isInFullScreenMode: Bool { get }
}
@available(OSX 10.5, *)
let NSFullScreenModeAllScreens: String
@available(OSX 10.5, *)
let NSFullScreenModeSetting: String
@available(OSX 10.5, *)
let NSFullScreenModeWindowLevel: String
@available(OSX 10.5, *)
let NSFullScreenModeApplicationPresentationOptions: String
extension NSView {
  @available(OSX 10.6, *)
  func showDefinitionFor(attrString: NSAttributedString?, at textBaselineOrigin: NSPoint)
  @available(OSX 10.6, *)
  func showDefinitionFor(attrString: NSAttributedString?, range targetRange: NSRange, options: [String : AnyObject]?, baselineOriginProvider originProvider: ((NSRange) -> NSPoint)? = nil)
}
@available(OSX 10.6, *)
let NSDefinitionPresentationTypeKey: String
@available(OSX 10.6, *)
let NSDefinitionPresentationTypeOverlay: String
@available(OSX 10.6, *)
let NSDefinitionPresentationTypeDictionaryApplication: String
extension NSView {
  @available(OSX 10.7, *)
  var isDrawingFindIndicator: Bool { get }
}
extension NSView {
  @available(OSX 10.10, *)
  var gestureRecognizers: [NSGestureRecognizer]
  @available(OSX 10.10, *)
  func addGestureRecognizer(gestureRecognizer: NSGestureRecognizer)
  @available(OSX 10.10, *)
  func removeGestureRecognizer(gestureRecognizer: NSGestureRecognizer)
}
extension NSView {
  @available(OSX, introduced=10.0, deprecated=10.10)
  func shouldDrawColor() -> Bool
  @available(OSX, introduced=10.0, deprecated=10.10)
  func gState() -> Int
  @available(OSX, introduced=10.0, deprecated=10.10)
  func allocateGState()
  @available(OSX, introduced=10.0, deprecated=10.10)
  func releaseGState()
  @available(OSX, introduced=10.0, deprecated=10.10)
  func setUpGState()
  @available(OSX, introduced=10.0, deprecated=10.10)
  func renewGState()
}
let NSViewFrameDidChangeNotification: String
let NSViewFocusDidChangeNotification: String
let NSViewBoundsDidChangeNotification: String
let NSViewGlobalFrameDidChangeNotification: String
@available(OSX 10.5, *)
let NSViewDidUpdateTrackingAreasNotification: String
@available(OSX 10.10, *)
struct NSViewControllerTransitionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSViewControllerTransitionOptions { get }
  static var Crossfade: NSViewControllerTransitionOptions { get }
  static var SlideUp: NSViewControllerTransitionOptions { get }
  static var SlideDown: NSViewControllerTransitionOptions { get }
  static var SlideLeft: NSViewControllerTransitionOptions { get }
  static var SlideRight: NSViewControllerTransitionOptions { get }
  static var SlideForward: NSViewControllerTransitionOptions { get }
  static var SlideBackward: NSViewControllerTransitionOptions { get }
  static var AllowUserInteraction: NSViewControllerTransitionOptions { get }
}
@available(OSX 10.5, *)
class NSViewController : NSResponder, NSCoding, NSSeguePerforming, NSUserInterfaceItemIdentification {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  var nibName: String? { get }
  var nibBundle: NSBundle? { get }
  var representedObject: AnyObject?
  var title: String?
  var view: NSView
  func loadView()
  func commitEditingWithDelegate(delegate: AnyObject?, didCommit didCommitSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func commitEditing() -> Bool
  func discardEditing()
  @available(OSX 10.10, *)
  func viewDidLoad()
  @available(OSX 10.10, *)
  var isViewLoaded: Bool { get }
  @available(OSX 10.10, *)
  func viewWillAppear()
  @available(OSX 10.10, *)
  func viewDidAppear()
  @available(OSX 10.10, *)
  func viewWillDisappear()
  @available(OSX 10.10, *)
  func viewDidDisappear()
  @available(OSX 10.10, *)
  var preferredContentSize: NSSize
  @available(OSX 10.10, *)
  func updateViewConstraints()
  @available(OSX 10.10, *)
  func viewWillLayout()
  @available(OSX 10.10, *)
  func viewDidLayout()
  convenience init()
  @available(OSX 10.10, *)
  func prepareFor(segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
  @available(OSX 10.5, *)
  var identifier: String?
}
extension NSViewController {
  @available(OSX 10.10, *)
  func present(viewController: NSViewController, animator: NSViewControllerPresentationAnimator)
  @available(OSX 10.10, *)
  func dismiss(viewController: NSViewController)
  @available(OSX 10.10, *)
  @IBAction func dismissController(sender: AnyObject?)
  @available(OSX 10.10, *)
  var presentedViewControllers: [NSViewController]? { get }
  @available(OSX 10.10, *)
  unowned(unsafe) var presenting: @sil_unmanaged NSViewController? { get }
}
extension NSViewController {
  @available(OSX 10.10, *)
  func presentViewControllerAsSheet(viewController: NSViewController)
  @available(OSX 10.10, *)
  func presentViewControllerAsModalWindow(viewController: NSViewController)
  @available(OSX 10.10, *)
  func present(viewController: NSViewController, asPopoverRelativeTo positioningRect: NSRect, of positioningView: NSView, preferredEdge: NSRectEdge, behavior: NSPopoverBehavior)
  @available(OSX 10.10, *)
  func transitionFrom(fromViewController: NSViewController, to toViewController: NSViewController, options: NSViewControllerTransitionOptions = [], completionHandler completion: (() -> Void)? = nil)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var parent: NSViewController? { get }
  @available(OSX 10.10, *)
  var childViewControllers: [NSViewController]
  @available(OSX 10.10, *)
  func addChildViewController(childViewController: NSViewController)
  @available(OSX 10.10, *)
  func removeFromParentViewController()
  @available(OSX 10.10, *)
  func insertChildViewController(childViewController: NSViewController, at index: Int)
  @available(OSX 10.10, *)
  func removeChildViewControllerAt(index: Int)
  @available(OSX 10.10, *)
  func preferredContentSizeDidChangeFor(viewController: NSViewController)
  @available(OSX 10.10, *)
  func viewWillTransitionTo(newSize: NSSize)
}
protocol NSViewControllerPresentationAnimator : NSObjectProtocol {
  @available(OSX 10.10, *)
  func animatePresentationOf(viewController: NSViewController, from fromViewController: NSViewController)
  @available(OSX 10.10, *)
  func animateDismissalOf(viewController: NSViewController, from fromViewController: NSViewController)
}
extension NSViewController {
  @available(OSX 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSViewController : NSExtensionRequestHandling {
  @available(OSX 10.10, *)
  var extensionContext: NSExtensionContext? { get }
  @available(OSX 10.10, *)
  @IBOutlet var sourceItemView: NSView?
  @available(OSX 10.10, *)
  var preferredScreenOrigin: NSPoint
  @available(OSX 10.10, *)
  var preferredMinimumSize: NSSize { get }
  @available(OSX 10.10, *)
  var preferredMaximumSize: NSSize { get }
  @available(OSX 10.10, *)
  func beginRequestWith(context: NSExtensionContext)
}
@available(OSX 10.10, *)
enum NSVisualEffectMaterial : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AppearanceBased
  case Titlebar
  @available(OSX 10.11, *)
  case Menu
  @available(OSX 10.11, *)
  case Popover
  @available(OSX 10.11, *)
  case Sidebar
  case Light
  case Dark
  @available(OSX 10.11, *)
  case MediumLight
  @available(OSX 10.11, *)
  case UltraDark
}
@available(OSX 10.10, *)
enum NSVisualEffectBlendingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BehindWindow
  case WithinWindow
}
@available(OSX 10.10, *)
enum NSVisualEffectState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FollowsWindowActiveState
  case Active
  case Inactive
}
@available(OSX 10.10, *)
class NSVisualEffectView : NSView {
  var material: NSVisualEffectMaterial
  var interiorBackgroundStyle: NSBackgroundStyle { get }
  var blendingMode: NSVisualEffectBlendingMode
  var state: NSVisualEffectState
  var maskImage: NSImage?
  func viewDidMoveToWindow()
  func viewWillMoveTo(newWindow: NSWindow?)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
var NSAppKitVersionNumberWithCustomSheetPosition: Double { get }
var NSAppKitVersionNumberWithDeferredWindowDisplaySupport: Double { get }
var NSBorderlessWindowMask: Int { get }
var NSTitledWindowMask: Int { get }
var NSClosableWindowMask: Int { get }
var NSMiniaturizableWindowMask: Int { get }
var NSResizableWindowMask: Int { get }
var NSTexturedBackgroundWindowMask: Int { get }
var NSUnifiedTitleAndToolbarWindowMask: Int { get }
@available(OSX 10.7, *)
var NSFullScreenWindowMask: Int { get }
@available(OSX 10.10, *)
var NSFullSizeContentViewWindowMask: Int { get }
var NSModalResponseOK: Int { get }
var NSModalResponseCancel: Int { get }
var NSDisplayWindowRunLoopOrdering: Int { get }
var NSResetCursorRectsRunLoopOrdering: Int { get }
@available(OSX 10.5, *)
enum NSWindowSharingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ReadOnly
  case ReadWrite
}
@available(OSX 10.5, *)
enum NSWindowBackingLocation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case VideoMemory
  case MainMemory
}
@available(OSX 10.5, *)
struct NSWindowCollectionBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Default: NSWindowCollectionBehavior { get }
  static var CanJoinAllSpaces: NSWindowCollectionBehavior { get }
  static var MoveToActiveSpace: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var Managed: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var Transient: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var Stationary: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var ParticipatesInCycle: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var IgnoresCycle: NSWindowCollectionBehavior { get }
  @available(OSX 10.7, *)
  static var FullScreenPrimary: NSWindowCollectionBehavior { get }
  @available(OSX 10.7, *)
  static var FullScreenAuxiliary: NSWindowCollectionBehavior { get }
  @available(OSX 10.11, *)
  static var FullScreenAllowsTiling: NSWindowCollectionBehavior { get }
  @available(OSX 10.11, *)
  static var FullScreenDisallowsTiling: NSWindowCollectionBehavior { get }
}
@available(OSX 10.7, *)
enum NSWindowAnimationBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case None
  case DocumentWindow
  case UtilityWindow
  case AlertPanel
}
var NSWindowNumberListAllApplications: Int { get }
var NSWindowNumberListAllSpaces: Int { get }
@available(OSX 10.9, *)
struct NSWindowOcclusionState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Visible: NSWindowOcclusionState { get }
}
typealias NSWindowNumberListOptions = Int
enum NSSelectionDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DirectSelection
  case SelectingNext
  case SelectingPrevious
}
enum NSWindowButton : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CloseButton
  case MiniaturizeButton
  case ZoomButton
  case ToolbarButton
  case DocumentIconButton
  @available(OSX 10.7, *)
  case DocumentVersionsButton
  @available(OSX 10.7, *)
  case FullScreenButton
}
@available(OSX 10.10, *)
enum NSWindowTitleVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Visible
  case Hidden
}
var NSEventDurationForever: Double { get }
class NSWindow : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceValidations, NSUserInterfaceItemIdentification, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  class func frameRectForContentRect(cRect: NSRect, styleMask aStyle: Int) -> NSRect
  class func contentRectForFrame(fRect: NSRect, styleMask aStyle: Int) -> NSRect
  class func minFrameWidthWithTitle(aTitle: String, styleMask aStyle: Int) -> CGFloat
  class func defaultDepthLimit() -> NSWindowDepth
  func frameRectForContentRect(contentRect: NSRect) -> NSRect
  func contentRectForFrame(frameRect: NSRect) -> NSRect
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  var title: String
  @available(OSX 10.10, *)
  var titleVisibility: NSWindowTitleVisibility
  @available(OSX 10.10, *)
  var titlebarAppearsTransparent: Bool
  @available(OSX 10.10, *)
  var contentLayoutRect: NSRect { get }
  @available(OSX 10.10, *)
  var contentLayoutGuide: AnyObject? { get }
  @available(OSX 10.10, *)
  var titlebarAccessoryViewControllers: [NSTitlebarAccessoryViewController]
  @available(OSX 10.10, *)
  func addTitlebarAccessoryViewController(childViewController: NSTitlebarAccessoryViewController)
  @available(OSX 10.10, *)
  func insertTitlebarAccessoryViewController(childViewController: NSTitlebarAccessoryViewController, at index: Int)
  @available(OSX 10.10, *)
  func removeTitlebarAccessoryViewControllerAt(index: Int)
  @available(OSX 10.5, *)
  @NSCopying var representedURL: NSURL?
  var representedFilename: String
  func setTitleWithRepresentedFilename(filename: String)
  var excludedFromWindowsMenu: Bool
  var contentView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSWindowDelegate?
  var windowNumber: Int { get }
  var styleMask: Int
  func fieldEditor(createFlag: Bool, forObject anObject: AnyObject?) -> NSText?
  func endEditingFor(anObject: AnyObject?)
  func constrainFrame(frameRect: NSRect, to screen: NSScreen?) -> NSRect
  func setFrame(frameRect: NSRect, display flag: Bool)
  func setContentSize(aSize: NSSize)
  func setFrameOrigin(aPoint: NSPoint)
  func setFrameTopLeftPoint(aPoint: NSPoint)
  func cascadeTopLeftFrom(topLeftPoint: NSPoint) -> NSPoint
  var frame: NSRect { get }
  func animationResizeTime(newFrame: NSRect) -> NSTimeInterval
  func setFrame(frameRect: NSRect, display displayFlag: Bool, animate animateFlag: Bool)
  @available(OSX 10.6, *)
  var isInLiveResize: Bool { get }
  var showsResizeIndicator: Bool
  var resizeIncrements: NSSize
  var aspectRatio: NSSize
  var contentResizeIncrements: NSSize
  var contentAspectRatio: NSSize
  func disableFlushWindow()
  func enableFlushWindow()
  var isFlushWindowDisabled: Bool { get }
  func flushWindow()
  func flushWindowIfNeeded()
  var viewsNeedDisplay: Bool
  func displayIfNeeded()
  func display()
  var isAutodisplay: Bool
  var preservesContentDuringLiveResize: Bool
  func update()
  func makeFirstResponder(aResponder: NSResponder?) -> Bool
  unowned(unsafe) var firstResponder: @sil_unmanaged NSResponder { get }
  var resizeFlags: Int { get }
  func keyDown(theEvent: NSEvent)
  func close()
  var isReleasedWhenClosed: Bool
  func miniaturize(sender: AnyObject?)
  func deminiaturize(sender: AnyObject?)
  var isZoomed: Bool { get }
  func zoom(sender: AnyObject?)
  var isMiniaturized: Bool { get }
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  @NSCopying var backgroundColor: NSColor!
  @available(OSX 10.5, *)
  func setContentBorderThickness(thickness: CGFloat, forEdge edge: NSRectEdge)
  @available(OSX 10.5, *)
  func contentBorderThicknessFor(edge: NSRectEdge) -> CGFloat
  @available(OSX 10.5, *)
  func setAutorecalculatesContentBorderThickness(flag: Bool, forEdge edge: NSRectEdge)
  @available(OSX 10.5, *)
  func autorecalculatesContentBorderThicknessFor(edge: NSRectEdge) -> Bool
  @available(OSX 10.6, *)
  var isMovable: Bool
  var isMovableByWindowBackground: Bool
  var hidesOnDeactivate: Bool
  var canHide: Bool
  func center()
  func makeKeyAndOrderFront(sender: AnyObject?)
  func orderFront(sender: AnyObject?)
  func orderBack(sender: AnyObject?)
  func orderOut(sender: AnyObject?)
  func orderWindow(place: NSWindowOrderingMode, relativeTo otherWin: Int)
  func orderFrontRegardless()
  var miniwindowImage: NSImage?
  var miniwindowTitle: String!
  @available(OSX 10.5, *)
  var dockTile: NSDockTile { get }
  var isDocumentEdited: Bool
  var isVisible: Bool { get }
  var isKeyWindow: Bool { get }
  var isMainWindow: Bool { get }
  var canBecomeKeyWindow: Bool { get }
  var canBecomeMainWindow: Bool { get }
  func makeKeyWindow()
  func makeMainWindow()
  func becomeKeyWindow()
  func resignKeyWindow()
  func becomeMainWindow()
  func resignMainWindow()
  var worksWhenModal: Bool { get }
  @available(OSX 10.6, *)
  var preventsApplicationTerminationWhenModal: Bool
  @available(OSX 10.7, *)
  func convertRectToScreen(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromScreen(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectToBacking(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromBacking(aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func backingAlignedRect(aRect: NSRect, options: NSAlignmentOptions = []) -> NSRect
  @available(OSX 10.7, *)
  var backingScaleFactor: CGFloat { get }
  func performClose(sender: AnyObject?)
  func performMiniaturize(sender: AnyObject?)
  func performZoom(sender: AnyObject?)
  var isOneShot: Bool
  func dataWithEPSInside(rect: NSRect) -> NSData
  func dataWithPDFInside(rect: NSRect) -> NSData
  @warn_unqualified_access
  func print(sender: AnyObject?)
  func disableCursorRects()
  func enableCursorRects()
  func discardCursorRects()
  var areCursorRectsEnabled: Bool { get }
  func invalidateCursorRectsFor(aView: NSView)
  func resetCursorRects()
  var allowsToolTipsWhenApplicationIsInactive: Bool
  var backingType: NSBackingStoreType
  var level: Int
  var depthLimit: NSWindowDepth
  func setDynamicDepthLimit(flag: Bool)
  var hasDynamicDepthLimit: Bool { get }
  var screen: NSScreen? { get }
  var deepestScreen: NSScreen? { get }
  var hasShadow: Bool
  func invalidateShadow()
  var alphaValue: CGFloat
  var isOpaque: Bool
  @available(OSX 10.5, *)
  var sharingType: NSWindowSharingType
  @available(OSX 10.5, *)
  var preferredBackingLocation: NSWindowBackingLocation
  @available(OSX 10.5, *)
  var backingLocation: NSWindowBackingLocation { get }
  @available(OSX 10.6, *)
  var allowsConcurrentViewDrawing: Bool
  var displaysWhenScreenProfileChanges: Bool
  func disableScreenUpdatesUntilFlush()
  @available(OSX 10.5, *)
  var canBecomeVisibleWithoutLogin: Bool
  @available(OSX 10.5, *)
  var collectionBehavior: NSWindowCollectionBehavior
  @available(OSX 10.7, *)
  var animationBehavior: NSWindowAnimationBehavior
  @available(OSX 10.6, *)
  var isOnActiveSpace: Bool { get }
  @available(OSX 10.7, *)
  func toggleFullScreen(sender: AnyObject?)
  var stringWithSavedFrame: String { get }
  func setFrameFrom(string: String)
  func saveFrameUsingName(name: String)
  func setFrameUsingName(name: String, force: Bool) -> Bool
  func setFrameUsingName(name: String) -> Bool
  func setFrameAutosaveName(name: String) -> Bool
  var frameAutosaveName: String { get }
  class func removeFrameUsingName(name: String)
  func cacheImageIn(aRect: NSRect)
  func restoreCachedImage()
  func discardCachedImage()
  var minSize: NSSize
  var maxSize: NSSize
  var contentMinSize: NSSize
  var contentMaxSize: NSSize
  @available(OSX 10.11, *)
  var minFullScreenContentSize: NSSize
  @available(OSX 10.11, *)
  var maxFullScreenContentSize: NSSize
  @available(OSX 10.10, *)
  func trackEventsMatching(mask: NSEventMask, timeout: NSTimeInterval, mode: String, handler trackingHandler: (NSEvent, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextEventMatchingMask(mask: Int) -> NSEvent?
  func nextEventMatchingMask(mask: Int, until expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEventsMatchingMask(mask: Int, before lastEvent: NSEvent?)
  func post(event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  var acceptsMouseMovedEvents: Bool
  var ignoresMouseEvents: Bool
  var deviceDescription: [String : AnyObject] { get }
  func send(theEvent: NSEvent)
  var mouseLocationOutsideOfEventStream: NSPoint { get }
  unowned(unsafe) var windowController: @sil_unmanaged NSWindowController?
  @available(OSX 10.9, *)
  func beginSheet(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)? = nil)
  @available(OSX 10.9, *)
  func beginCriticalSheet(sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)? = nil)
  @available(OSX 10.9, *)
  func endSheet(sheetWindow: NSWindow)
  @available(OSX 10.9, *)
  func endSheet(sheetWindow: NSWindow, returnCode: NSModalResponse)
  @available(OSX 10.9, *)
  var sheets: [NSWindow] { get }
  var attachedSheet: NSWindow? { get }
  var isSheet: Bool { get }
  @available(OSX 10.9, *)
  var sheetParent: NSWindow? { get }
  class func standardWindowButton(b: NSWindowButton, forStyleMask styleMask: Int) -> NSButton?
  func standardWindowButton(b: NSWindowButton) -> NSButton?
  func addChildWindow(childWin: NSWindow, ordered place: NSWindowOrderingMode)
  func removeChildWindow(childWin: NSWindow)
  var childWindows: [NSWindow]? { get }
  unowned(unsafe) var parent: @sil_unmanaged NSWindow?
  var graphicsContext: NSGraphicsContext? { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace?
  @available(OSX 10.6, *)
  class func windowNumbersWithOptions(options: NSWindowNumberListOptions) -> [NSNumber]?
  @available(OSX 10.6, *)
  class func windowNumberAt(point: NSPoint, belowWindowWithWindowNumber windowNumber: Int) -> Int
  @available(OSX 10.9, *)
  var occlusionState: NSWindowOcclusionState { get }
  @available(OSX 10.10, *)
  var contentViewController: NSViewController?
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  @available(OSX 10.11, *)
  func performWindowDragWith(event: NSEvent)
  convenience init()
  init?(coder: NSCoder)
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationForKey(key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationForKey(key: String) -> AnyObject?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  var identifier: String?
  @available(OSX 10.9, *)
  var appearance: NSAppearance?
  @available(OSX 10.9, *)
  var effectiveAppearance: NSAppearance { get }
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPointForScreenPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSizeForScreenSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPointForLayoutPoint(point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSizeForLayoutSize(size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCellForColumn(column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedStringFor(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringFor(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameFor(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFFor(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeFor(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineFor(index: Int) -> Int
  @available(OSX 10.10, *)
  func accessibilityPerformCancel() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformConfirm() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDecrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformDelete() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformIncrement() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPick() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformPress() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformRaise() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowAlternateUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowDefaultUI() -> Bool
  @available(OSX 10.10, *)
  func accessibilityPerformShowMenu() -> Bool
  @available(OSX 10.10, *)
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(accessibilityMinimized: Bool)
}
struct __wFlags {
  var backing: UInt32
  var visible: UInt32
  var isMainWindow: UInt32
  var isKeyWindow: UInt32
  var hidesOnDeactivate: UInt32
  var dontFreeWhenClosed: UInt32
  var oneShot: UInt32
  var deferred: UInt32
  var cursorRectsDisabled: UInt32
  var haveFreeCursorRects: UInt32
  var validCursorRects: UInt32
  var docEdited: UInt32
  var dynamicDepthLimit: UInt32
  var worksWhenModal: UInt32
  var limitedBecomeKey: UInt32
  var needsFlush: UInt32
  var viewsNeedDisplay: UInt32
  var ignoredFirstMouse: UInt32
  var repostedFirstMouse: UInt32
  var windowDying: UInt32
  var tempHidden: UInt32
  var floatingPanel: UInt32
  var wantsToBeOnMainScreen: UInt32
  var optimizedDrawingOk: UInt32
  var optimizeDrawing: UInt32
  var titleIsRepresentedFilename: UInt32
  var excludedFromWindowsMenu: UInt32
  var depthLimit: UInt32
  var delegateReturnsValidRequestor: UInt32
  var lmouseupPending: UInt32
  var rmouseupPending: UInt32
  var wantsToDestroyRealWindow: UInt32
  var wantsToRegDragTypes: UInt32
  var sentInvalidateCursorRectsMsg: UInt32
  var avoidsActivation: UInt32
  var frameSavedUsingTitle: UInt32
  var didRegDragTypes: UInt32
  var delayedOneShot: UInt32
  var postedNeedsDisplayNote: UInt32
  var postedInvalidCursorRectsNote: UInt32
  var initialFirstResponderTempSet: UInt32
  var autodisplay: UInt32
  var tossedFirstEvent: UInt32
  var isImageCache: UInt32
  var autolayoutEngagedSomewhere: UInt32
  var hasRegisteredBackdropViews: UInt32
  var hasSubLevel: UInt32
  var keyViewSelectionDirection: UInt32
  var defaultButtonCellKETemporarilyDisabled: UInt32
  var defaultButtonCellKEDisabled: UInt32
  var menuHasBeenSet: UInt32
  var wantsToBeModal: UInt32
  var showingModalFrame: UInt32
  var isTerminating: UInt32
  var makingFirstResponderForMouseDown: UInt32
  var needsZoom: UInt32
  var sentWindowNeedsDisplayMsg: UInt32
  var unused: UInt32
  init()
  init(backing: UInt32, visible: UInt32, isMainWindow: UInt32, isKeyWindow: UInt32, hidesOnDeactivate: UInt32, dontFreeWhenClosed: UInt32, oneShot: UInt32, deferred: UInt32, cursorRectsDisabled: UInt32, haveFreeCursorRects: UInt32, validCursorRects: UInt32, docEdited: UInt32, dynamicDepthLimit: UInt32, worksWhenModal: UInt32, limitedBecomeKey: UInt32, needsFlush: UInt32, viewsNeedDisplay: UInt32, ignoredFirstMouse: UInt32, repostedFirstMouse: UInt32, windowDying: UInt32, tempHidden: UInt32, floatingPanel: UInt32, wantsToBeOnMainScreen: UInt32, optimizedDrawingOk: UInt32, optimizeDrawing: UInt32, titleIsRepresentedFilename: UInt32, excludedFromWindowsMenu: UInt32, depthLimit: UInt32, delegateReturnsValidRequestor: UInt32, lmouseupPending: UInt32, rmouseupPending: UInt32, wantsToDestroyRealWindow: UInt32, wantsToRegDragTypes: UInt32, sentInvalidateCursorRectsMsg: UInt32, avoidsActivation: UInt32, frameSavedUsingTitle: UInt32, didRegDragTypes: UInt32, delayedOneShot: UInt32, postedNeedsDisplayNote: UInt32, postedInvalidCursorRectsNote: UInt32, initialFirstResponderTempSet: UInt32, autodisplay: UInt32, tossedFirstEvent: UInt32, isImageCache: UInt32, autolayoutEngagedSomewhere: UInt32, hasRegisteredBackdropViews: UInt32, hasSubLevel: UInt32, keyViewSelectionDirection: UInt32, defaultButtonCellKETemporarilyDisabled: UInt32, defaultButtonCellKEDisabled: UInt32, menuHasBeenSet: UInt32, wantsToBeModal: UInt32, showingModalFrame: UInt32, isTerminating: UInt32, makingFirstResponderForMouseDown: UInt32, needsZoom: UInt32, sentWindowNeedsDisplayMsg: UInt32, unused: UInt32)
}
extension NSWindow {
  unowned(unsafe) var initialFirstResponder: @sil_unmanaged NSView?
  func selectNextKeyView(sender: AnyObject?)
  func selectPreviousKeyView(sender: AnyObject?)
  func selectKeyViewFollowing(aView: NSView)
  func selectKeyViewPreceding(aView: NSView)
  var keyViewSelectionDirection: NSSelectionDirection { get }
  var defaultButtonCell: NSButtonCell?
  func disableKeyEquivalentForDefaultButtonCell()
  func enableKeyEquivalentForDefaultButtonCell()
  var autorecalculatesKeyViewLoop: Bool
  func recalculateKeyViewLoop()
}
extension NSWindow {
  var toolbar: NSToolbar?
  func toggleToolbarShown(sender: AnyObject?)
  func runToolbarCustomizationPalette(sender: AnyObject?)
  var showsToolbarButton: Bool
}
extension NSWindow {
  func drag(anImage: NSImage, at baseLocation: NSPoint, offset initialOffset: NSSize, event: NSEvent, pasteboard pboard: NSPasteboard, source sourceObj: AnyObject, slideBack slideFlag: Bool)
  func registerForDraggedTypes(newTypes: [String])
  func unregisterDraggedTypes()
}
extension NSWindow {
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
  var windowRef: UnsafeMutablePointer<Void> { get }
}
extension NSWindow {
  @available(OSX, introduced=10.0, deprecated=10.11, message="This method does not do anything and should not be called.")
  class func menuChanged(menu: NSMenu)
  @available(OSX, introduced=10.0, deprecated=10.10)
  func gState() -> Int
  @available(OSX, introduced=10.0, deprecated=10.10)
  func useOptimizedDrawing(flag: Bool)
  @available(OSX, introduced=10.0, deprecated=10.10)
  func canStoreColor() -> Bool
}
protocol NSWindowDelegate : NSObjectProtocol {
  optional func windowShouldClose(sender: AnyObject) -> Bool
  optional func windowWillReturnFieldEditor(sender: NSWindow, to client: AnyObject?) -> AnyObject?
  optional func windowWillResize(sender: NSWindow, to frameSize: NSSize) -> NSSize
  optional func windowWillUseStandardFrame(window: NSWindow, defaultFrame newFrame: NSRect) -> NSRect
  optional func windowShouldZoom(window: NSWindow, toFrame newFrame: NSRect) -> Bool
  @available(OSX 10.0, *)
  optional func windowWillReturnUndoManager(window: NSWindow) -> NSUndoManager?
  optional func window(window: NSWindow, willPositionSheet sheet: NSWindow, usingRect rect: NSRect) -> NSRect
  @available(OSX 10.5, *)
  optional func window(window: NSWindow, shouldPopUpDocumentPathMenu menu: NSMenu) -> Bool
  @available(OSX 10.5, *)
  optional func window(window: NSWindow, shouldDragDocumentWith event: NSEvent, from dragImageLocation: NSPoint, withPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willUseFullScreenContentSize proposedSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willUseFullScreenPresentationOptions proposedOptions: NSApplicationPresentationOptions = []) -> NSApplicationPresentationOptions
  @available(OSX 10.7, *)
  optional func customWindowsToEnterFullScreenFor(window: NSWindow) -> [NSWindow]?
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, startCustomAnimationToEnterFullScreenWithDuration duration: NSTimeInterval)
  @available(OSX 10.7, *)
  optional func windowDidFailToEnterFullScreen(window: NSWindow)
  @available(OSX 10.7, *)
  optional func customWindowsToExitFullScreenFor(window: NSWindow) -> [NSWindow]?
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, startCustomAnimationToExitFullScreenWithDuration duration: NSTimeInterval)
  @available(OSX 10.9, *)
  optional func customWindowsToEnterFullScreenFor(window: NSWindow, on screen: NSScreen) -> [NSWindow]?
  @available(OSX 10.9, *)
  optional func window(window: NSWindow, startCustomAnimationToEnterFullScreenOn screen: NSScreen, withDuration duration: NSTimeInterval)
  @available(OSX 10.7, *)
  optional func windowDidFailToExitFullScreen(window: NSWindow)
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willResizeForVersionBrowserWithMaxPreferredSize maxPreferredFrameSize: NSSize, maxAllowedSize maxAllowedFrameSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willEncodeRestorableState state: NSCoder)
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, didDecodeRestorableState state: NSCoder)
  optional func windowDidResize(notification: NSNotification)
  optional func windowDidExpose(notification: NSNotification)
  optional func windowWillMove(notification: NSNotification)
  optional func windowDidMove(notification: NSNotification)
  optional func windowDidBecomeKey(notification: NSNotification)
  optional func windowDidResignKey(notification: NSNotification)
  optional func windowDidBecomeMain(notification: NSNotification)
  optional func windowDidResignMain(notification: NSNotification)
  optional func windowWillClose(notification: NSNotification)
  optional func windowWillMiniaturize(notification: NSNotification)
  optional func windowDidMiniaturize(notification: NSNotification)
  optional func windowDidDeminiaturize(notification: NSNotification)
  optional func windowDidUpdate(notification: NSNotification)
  optional func windowDidChangeScreen(notification: NSNotification)
  optional func windowDidChangeScreenProfile(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidChangeBackingProperties(notification: NSNotification)
  optional func windowWillBeginSheet(notification: NSNotification)
  optional func windowDidEndSheet(notification: NSNotification)
  @available(OSX 10.6, *)
  optional func windowWillStartLiveResize(notification: NSNotification)
  @available(OSX 10.6, *)
  optional func windowDidEndLiveResize(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillEnterFullScreen(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidEnterFullScreen(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillExitFullScreen(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidExitFullScreen(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillEnterVersionBrowser(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidEnterVersionBrowser(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillExitVersionBrowser(notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidExitVersionBrowser(notification: NSNotification)
  @available(OSX 10.9, *)
  optional func windowDidChangeOcclusionState(notification: NSNotification)
}
let NSWindowDidBecomeKeyNotification: String
let NSWindowDidBecomeMainNotification: String
let NSWindowDidChangeScreenNotification: String
let NSWindowDidDeminiaturizeNotification: String
let NSWindowDidExposeNotification: String
let NSWindowDidMiniaturizeNotification: String
let NSWindowDidMoveNotification: String
let NSWindowDidResignKeyNotification: String
let NSWindowDidResignMainNotification: String
let NSWindowDidResizeNotification: String
let NSWindowDidUpdateNotification: String
let NSWindowWillCloseNotification: String
let NSWindowWillMiniaturizeNotification: String
let NSWindowWillMoveNotification: String
let NSWindowWillBeginSheetNotification: String
let NSWindowDidEndSheetNotification: String
@available(OSX 10.7, *)
let NSWindowDidChangeBackingPropertiesNotification: String
@available(OSX 10.7, *)
let NSBackingPropertyOldScaleFactorKey: String
@available(OSX 10.7, *)
let NSBackingPropertyOldColorSpaceKey: String
let NSWindowDidChangeScreenProfileNotification: String
@available(OSX 10.6, *)
let NSWindowWillStartLiveResizeNotification: String
@available(OSX 10.6, *)
let NSWindowDidEndLiveResizeNotification: String
@available(OSX 10.7, *)
let NSWindowWillEnterFullScreenNotification: String
@available(OSX 10.7, *)
let NSWindowDidEnterFullScreenNotification: String
@available(OSX 10.7, *)
let NSWindowWillExitFullScreenNotification: String
@available(OSX 10.7, *)
let NSWindowDidExitFullScreenNotification: String
@available(OSX 10.7, *)
let NSWindowWillEnterVersionBrowserNotification: String
@available(OSX 10.7, *)
let NSWindowDidEnterVersionBrowserNotification: String
@available(OSX 10.7, *)
let NSWindowWillExitVersionBrowserNotification: String
@available(OSX 10.7, *)
let NSWindowDidExitVersionBrowserNotification: String
@available(OSX 10.9, *)
let NSWindowDidChangeOcclusionStateNotification: String
var NSUnscaledWindowMask: Int { get }
class NSWindowController : NSResponder, NSCoding, NSSeguePerforming {
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  var windowNibName: String? { get }
  var windowNibPath: String? { get }
  unowned(unsafe) var owner: @sil_unmanaged AnyObject { get }
  var windowFrameAutosaveName: String?
  var shouldCascadeWindows: Bool
  unowned(unsafe) var document: @sil_unmanaged AnyObject?
  func setDocumentEdited(dirtyFlag: Bool)
  var shouldCloseDocument: Bool
  func synchronizeWindowTitleWithDocumentName()
  func windowTitleForDocumentDisplayName(displayName: String) -> String
  @available(OSX 10.10, *)
  var contentViewController: NSViewController?
  var window: NSWindow?
  var isWindowLoaded: Bool { get }
  func windowWillLoad()
  func windowDidLoad()
  func loadWindow()
  func close()
  @IBAction func showWindow(sender: AnyObject?)
  convenience init()
  @available(OSX 10.10, *)
  func prepareFor(segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
}
struct __wcFlags {
  var shouldCloseDocument: UInt32
  var shouldCascade: UInt32
  var nibIsLoaded: UInt32
  var nibNameIsPath: UInt32
  var settingWindowsContentViewController: UInt32
  var didInitWithCoder: UInt32
  var nibIsMakingConnections: UInt32
  var sentWindowWillLoad: UInt32
  var RESERVED: UInt32
  init()
  init(shouldCloseDocument: UInt32, shouldCascade: UInt32, nibIsLoaded: UInt32, nibNameIsPath: UInt32, settingWindowsContentViewController: UInt32, didInitWithCoder: UInt32, nibIsMakingConnections: UInt32, sentWindowWillLoad: UInt32, RESERVED: UInt32)
}

/*!
 These methods are used to support using Storyboards with your app.
 */
extension NSWindowController {
  @available(OSX 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSWindowController {
  @available(OSX 10.10, *)
  @IBAction func dismissController(sender: AnyObject?)
}
protocol NSWindowRestoration : NSObjectProtocol {
  @available(OSX 10.7, *)
  static func restoreWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void)
}
extension NSDocumentController : NSWindowRestoration {
  @available(OSX 10.7, *)
  class func restoreWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void)
}
extension NSApplication {
  @available(OSX 10.7, *)
  func restoreWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void) -> Bool
}
@available(OSX 10.7, *)
let NSApplicationDidFinishRestoringWindowsNotification: String
extension NSWindow {
  @available(OSX 10.7, *)
  var isRestorable: Bool
  @available(OSX 10.7, *)
  var restorationClass: AnyObject.Type?
  func disableSnapshotRestoration()
  func enableSnapshotRestoration()
}
extension NSResponder {
  @available(OSX 10.7, *)
  func encodeRestorableStateWith(coder: NSCoder)
  @available(OSX 10.7, *)
  func restoreStateWith(coder: NSCoder)
  @available(OSX 10.7, *)
  func invalidateRestorableState()
  @available(OSX 10.7, *)
  class func restorableStateKeyPaths() -> [String]
}
extension NSApplication {
  @available(OSX 10.7, *)
  func extendStateRestoration()
  @available(OSX 10.7, *)
  func completeStateRestoration()
}
extension NSDocument {
  @available(OSX 10.7, *)
  func restoreDocumentWindowWithIdentifier(identifier: String, state: NSCoder, completionHandler: (NSWindow?, NSError?) -> Void)
  @available(OSX 10.7, *)
  func encodeRestorableStateWith(coder: NSCoder)
  @available(OSX 10.7, *)
  func restoreStateWith(coder: NSCoder)
  @available(OSX 10.7, *)
  func invalidateRestorableState()
  @available(OSX 10.7, *)
  class func restorableStateKeyPaths() -> [String]
}
extension NSWindow {
  var hasCloseBox: Bool { get }
  var hasTitleBar: Bool { get }
  var isFloatingPanel: Bool { get }
  var isMiniaturizable: Bool { get }
  var isModalPanel: Bool { get }
  var isResizable: Bool { get }
  var isZoomable: Bool { get }
  var orderedIndex: Int
  func setIsMiniaturized(flag: Bool)
  func setIsVisible(flag: Bool)
  func setIsZoomed(flag: Bool)
  func handleCloseScriptCommand(command: NSCloseCommand) -> AnyObject?
  func handlePrint(command: NSScriptCommand) -> AnyObject?
  func handleSave(command: NSScriptCommand) -> AnyObject?
}
struct NSWorkspaceLaunchOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var AndPrint: NSWorkspaceLaunchOptions { get }
  static var WithErrorPresentation: NSWorkspaceLaunchOptions { get }
  static var InhibitingBackgroundOnly: NSWorkspaceLaunchOptions { get }
  static var WithoutAddingToRecents: NSWorkspaceLaunchOptions { get }
  static var WithoutActivation: NSWorkspaceLaunchOptions { get }
  static var Async: NSWorkspaceLaunchOptions { get }
  static var NewInstance: NSWorkspaceLaunchOptions { get }
  static var AndHide: NSWorkspaceLaunchOptions { get }
  static var AndHideOthers: NSWorkspaceLaunchOptions { get }
  static var Default: NSWorkspaceLaunchOptions { get }
  @available(OSX, introduced=10.3, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var AllowingClassicStartup: NSWorkspaceLaunchOptions { get }
  @available(OSX, introduced=10.3, deprecated=10.11, message="The Classic environment is no longer supported.")
  static var PreferringClassic: NSWorkspaceLaunchOptions { get }
}
struct NSWorkspaceIconCreationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ExcludeQuickDrawElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
  static var Exclude10_4ElementsIconCreationOption: NSWorkspaceIconCreationOptions { get }
}
class NSWorkspace : NSObject {
  class func shared() -> NSWorkspace
  var notificationCenter: NSNotificationCenter { get }
  func openFile(fullPath: String) -> Bool
  func openFile(fullPath: String, withApplication appName: String?) -> Bool
  func openFile(fullPath: String, withApplication appName: String?, andDeactivate flag: Bool) -> Bool
  func open(url: NSURL) -> Bool
  func launchApplication(appName: String) -> Bool
  @available(OSX 10.6, *)
  func launchApplicationAt(url: NSURL, options: NSWorkspaceLaunchOptions = [], configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func open(url: NSURL, options: NSWorkspaceLaunchOptions = [], configuration: [String : AnyObject]) throws -> NSRunningApplication
  @available(OSX 10.10, *)
  func openURLs(urls: [NSURL], withApplicationAt applicationURL: NSURL, options: NSWorkspaceLaunchOptions = [], configuration: [String : AnyObject]) throws -> NSRunningApplication
  func launchApplication(appName: String, showIcon: Bool, autolaunch: Bool) -> Bool
  func fullPathForApplication(appName: String) -> String?
  func selectFile(fullPath: String?, inFileViewerRootedAtPath rootFullPath: String) -> Bool
  @available(OSX 10.6, *)
  func activateFileViewerSelectingURLs(fileURLs: [NSURL])
  @available(OSX 10.6, *)
  func showSearchResultsForQueryString(queryString: String) -> Bool
  func noteFileSystemChanged(path: String)
  func getInfoForFile(fullPath: String, application appName: AutoreleasingUnsafeMutablePointer<NSString?>, type: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func isFilePackageAtPath(fullPath: String) -> Bool
  func iconForFile(fullPath: String) -> NSImage
  func iconForFiles(fullPaths: [String]) -> NSImage?
  func iconForFileType(fileType: String) -> NSImage
  func setIcon(image: NSImage?, forFile fullPath: String, options: NSWorkspaceIconCreationOptions = []) -> Bool
  @available(OSX 10.6, *)
  var fileLabels: [String] { get }
  @available(OSX 10.6, *)
  var fileLabelColors: [NSColor] { get }
  @available(OSX 10.6, *)
  func recycleURLs(URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)? = nil)
  @available(OSX 10.6, *)
  func duplicateURLs(URLs: [NSURL], completionHandler handler: (([NSURL : NSURL], NSError?) -> Void)? = nil)
  func getFileSystemInfoForPath(fullPath: String, isRemovable removableFlag: UnsafeMutablePointer<ObjCBool>, isWritable writableFlag: UnsafeMutablePointer<ObjCBool>, isUnmountable unmountableFlag: UnsafeMutablePointer<ObjCBool>, description: AutoreleasingUnsafeMutablePointer<NSString?>, type fileSystemType: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func unmountAndEjectDeviceAtPath(path: String) -> Bool
  @available(OSX 10.6, *)
  func unmountAndEjectDeviceAt(url: NSURL) throws
  func extendPowerOffBy(requested: Int) -> Int
  func hideOtherApplications()
  @available(OSX 10.6, *)
  func urlForApplicationWithBundleIdentifier(bundleIdentifier: String) -> NSURL?
  @available(OSX 10.6, *)
  func urlForApplicationToOpen(url: NSURL) -> NSURL?
  func absolutePathForAppBundleWithIdentifier(bundleIdentifier: String) -> String?
  func launchAppWithBundleIdentifier(bundleIdentifier: String, options: NSWorkspaceLaunchOptions = [], additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifier identifier: AutoreleasingUnsafeMutablePointer<NSNumber?>) -> Bool
  func openURLs(urls: [NSURL], withAppBundleIdentifier bundleIdentifier: String?, options: NSWorkspaceLaunchOptions = [], additionalEventParamDescriptor descriptor: NSAppleEventDescriptor?, launchIdentifiers identifiers: AutoreleasingUnsafeMutablePointer<NSArray?>) -> Bool
  @available(OSX 10.7, *)
  var frontmostApplication: NSRunningApplication? { get }
  @available(OSX 10.7, *)
  var menuBarOwningApplication: NSRunningApplication? { get }
  @available(OSX 10.5, *)
  func typeOfFile(absoluteFilePath: String) throws -> String
  @available(OSX 10.5, *)
  func localizedDescriptionForType(typeName: String) -> String?
  @available(OSX 10.5, *)
  func preferredFilenameExtensionForType(typeName: String) -> String?
  @available(OSX 10.5, *)
  func filenameExtension(filenameExtension: String, isValidForType typeName: String) -> Bool
  @available(OSX 10.5, *)
  func type(firstTypeName: String, conformsToType secondTypeName: String) -> Bool
  init()
}
extension NSWorkspace {
  @available(OSX 10.6, *)
  func setDesktopImageURL(url: NSURL, forScreen screen: NSScreen, options: [String : AnyObject]) throws
  @available(OSX 10.6, *)
  func desktopImageURLFor(screen: NSScreen) -> NSURL?
  @available(OSX 10.6, *)
  func desktopImageOptionsFor(screen: NSScreen) -> [String : AnyObject]?
}
@available(OSX 10.6, *)
let NSWorkspaceDesktopImageScalingKey: String
@available(OSX 10.6, *)
let NSWorkspaceDesktopImageAllowClippingKey: String
@available(OSX 10.6, *)
let NSWorkspaceDesktopImageFillColorKey: String
@available(OSX 10.6, *)
let NSWorkspaceApplicationKey: String
let NSWorkspaceWillLaunchApplicationNotification: String
let NSWorkspaceDidLaunchApplicationNotification: String
let NSWorkspaceDidTerminateApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidHideApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidUnhideApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidActivateApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidDeactivateApplicationNotification: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeLocalizedNameKey: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeURLKey: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeOldLocalizedNameKey: String
@available(OSX 10.6, *)
let NSWorkspaceVolumeOldURLKey: String
let NSWorkspaceDidMountNotification: String
let NSWorkspaceDidUnmountNotification: String
let NSWorkspaceWillUnmountNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidRenameVolumeNotification: String
let NSWorkspaceWillPowerOffNotification: String
let NSWorkspaceWillSleepNotification: String
let NSWorkspaceDidWakeNotification: String
@available(OSX 10.6, *)
let NSWorkspaceScreensDidSleepNotification: String
@available(OSX 10.6, *)
let NSWorkspaceScreensDidWakeNotification: String
let NSWorkspaceSessionDidBecomeActiveNotification: String
let NSWorkspaceSessionDidResignActiveNotification: String
@available(OSX 10.6, *)
let NSWorkspaceDidChangeFileLabelsNotification: String
@available(OSX 10.6, *)
let NSWorkspaceActiveSpaceDidChangeNotification: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationAppleEvent: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationArguments: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationEnvironment: String
@available(OSX 10.6, *)
let NSWorkspaceLaunchConfigurationArchitecture: String
extension NSWorkspace {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace frontmostApplication] instead.")
  func activeApplication() -> [NSObject : AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager mountedVolumeURLsIncludingResourceValuesForKeys:options:] instead.")
  func mountedLocalVolumePaths() -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager mountedVolumeURLsIncludingResourceValuesForKeys:options:] instead.")
  func mountedRemovableMedia() -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace openURL:] instead.")
  func openFile(fullPath: String, from anImage: NSImage?, at point: NSPoint, in aView: NSView?) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11)
  func performFileOperation(operation: String, source: String, destination: String, files: [AnyObject], tag: UnsafeMutablePointer<Int>) -> Bool
}
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager moveItemAtURL:toURL:error:] instead.")
let NSWorkspaceMoveOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager copyItemAtURL:toURL:error:] instead.")
let NSWorkspaceCopyOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager linkItemAtURL:toURL:error:] instead.")
let NSWorkspaceLinkOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceCompressOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceDecompressOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceEncryptOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="This operation is unimplemented.")
let NSWorkspaceDecryptOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFileManager removeItemAtURL:error:] instead.")
let NSWorkspaceDestroyOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace recycleURLs:completionHandler:] instead.")
let NSWorkspaceRecycleOperation: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSWorkspace duplicateURLs:completionHandler:] instead.")
let NSWorkspaceDuplicateOperation: String
@available(OSX, introduced=10.0, deprecated=10.11)
let NSWorkspaceDidPerformFileOperationNotification: String
