
enum NSCellType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case nullCellType
  case textCellType
  case imageCellType
}
enum NSCellAttribute : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case cellDisabled
  case cellState
  case pushInCell
  case cellEditable
  case changeGrayCell
  case cellHighlighted
  case cellLightsByContents
  case cellLightsByGray
  case changeBackgroundCell
  case cellLightsByBackground
  case cellIsBordered
  case cellHasOverlappingImage
  case cellHasImageHorizontal
  case cellHasImageOnLeftOrBottom
  case cellChangesContents
  case cellIsInsetButton
  case cellAllowsMixedState
}
enum NSCellImagePosition : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case noImage
  case imageOnly
  case imageLeft
  case imageRight
  case imageBelow
  case imageAbove
  case imageOverlaps
}
@available(OSX 10.5, *)
enum NSImageScaling : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case scaleProportionallyDown
  case scaleAxesIndependently
  case scaleNone
  case scaleProportionallyUpOrDown
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var noCellMask: NSCellStyleMask { get }
  static var contentsCellMask: NSCellStyleMask { get }
  static var pushInCellMask: NSCellStyleMask { get }
  static var changeGrayCellMask: NSCellStyleMask { get }
  static var changeBackgroundCellMask: NSCellStyleMask { get }
}
enum NSControlTint : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case defaultControlTint
  case blueControlTint
  case graphiteControlTint
  case clearControlTint
}
enum NSControlSize : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case regularControlSize
  case smallControlSize
  case miniControlSize
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
  init(state state: UInt32, highlighted highlighted: UInt32, disabled disabled: UInt32, editable editable: UInt32, type type: NSCellType, vCentered vCentered: UInt32, hCentered hCentered: UInt32, bordered bordered: UInt32, bezeled bezeled: UInt32, selectable selectable: UInt32, scrollable scrollable: UInt32, continuous continuous: UInt32, actOnMouseDown actOnMouseDown: UInt32, isLeaf isLeaf: UInt32, invalidObjectValue invalidObjectValue: UInt32, invalidFont invalidFont: UInt32, lineBreakMode lineBreakMode: NSLineBreakMode, weakTargetHelperFlag weakTargetHelperFlag: UInt32, allowsAppearanceEffects allowsAppearanceEffects: UInt32, singleLineMode singleLineMode: UInt32, actOnMouseDragged actOnMouseDragged: UInt32, isLoaded isLoaded: UInt32, truncateLastLine truncateLastLine: UInt32, dontActOnMouseUp dontActOnMouseUp: UInt32, isWhite isWhite: UInt32, useUserKeyEquivalent useUserKeyEquivalent: UInt32, showsFirstResponder showsFirstResponder: UInt32, focusRingType focusRingType: UInt32, wasSelectable wasSelectable: UInt32, hasInvalidObject hasInvalidObject: UInt32, allowsEditingTextAttributes allowsEditingTextAttributes: UInt32, importsGraphics importsGraphics: UInt32, alignment alignment: NSTextAlignment, layoutDirectionRTL layoutDirectionRTL: UInt32, backgroundStyle backgroundStyle: UInt32, cellReserved2 cellReserved2: UInt32, refusesFirstResponder refusesFirstResponder: UInt32, needsHighlightedText needsHighlightedText: UInt32, dontAllowsUndo dontAllowsUndo: UInt32, currentlyEditing currentlyEditing: UInt32, allowsMixedState allowsMixedState: UInt32, inMixedState inMixedState: UInt32, sendsActionOnEndEditing sendsActionOnEndEditing: UInt32, inSendAction inSendAction: UInt32, menuWasSet menuWasSet: UInt32, controlTint controlTint: UInt32, controlSize controlSize: UInt32, branchImageDisabled branchImageDisabled: UInt32, drawingInRevealover drawingInRevealover: UInt32, needsHighlightedTextHint needsHighlightedTextHint: UInt32)
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
  func sendAction(on mask: Int) -> Int
  var isContinuous: Bool
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
  func compare(_ otherCell: AnyObject) -> NSComparisonResult
  var intValue: Int32
  var floatValue: Float
  var doubleValue: Double
  func takeIntValueFrom(_ sender: AnyObject?)
  func takeFloatValueFrom(_ sender: AnyObject?)
  func takeDoubleValueFrom(_ sender: AnyObject?)
  func takeStringValueFrom(_ sender: AnyObject?)
  func takeObjectValueFrom(_ sender: AnyObject?)
  var image: NSImage?
  var controlTint: NSControlTint
  var controlSize: NSControlSize
  var representedObject: AnyObject?
  func cellAttribute(_ aParameter: NSCellAttribute) -> Int
  func setCellAttribute(_ aParameter: NSCellAttribute, to value: Int)
  func imageRect(forBounds theRect: NSRect) -> NSRect
  func titleRect(forBounds theRect: NSRect) -> NSRect
  func drawingRect(forBounds theRect: NSRect) -> NSRect
  var cellSize: NSSize { get }
  func cellSize(forBounds aRect: NSRect) -> NSSize
  func highlightColor(withFrame cellFrame: NSRect, in controlView: NSView) -> NSColor
  func calcDrawInfo(_ aRect: NSRect)
  func setUpFieldEditorAttributes(_ textObj: NSText) -> NSText
  func drawInterior(withFrame cellFrame: NSRect, in controlView: NSView)
  func draw(withFrame cellFrame: NSRect, in controlView: NSView)
  func highlight(_ flag: Bool, withFrame cellFrame: NSRect, in controlView: NSView)
  var mouseDownFlags: Int { get }
  func getPeriodicDelay(_ delay: UnsafeMutablePointer<Float>, interval interval: UnsafeMutablePointer<Float>)
  func startTracking(at startPoint: NSPoint, in controlView: NSView) -> Bool
  func continueTracking(_ lastPoint: NSPoint, at currentPoint: NSPoint, in controlView: NSView) -> Bool
  func stopTracking(_ lastPoint: NSPoint, at stopPoint: NSPoint, in controlView: NSView, mouseIsUp flag: Bool)
  func trackMouse(_ theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView, untilMouseUp flag: Bool) -> Bool
  func edit(withFrame aRect: NSRect, in controlView: NSView, editor textObj: NSText, delegate anObject: AnyObject?, event theEvent: NSEvent)
  func select(withFrame aRect: NSRect, in controlView: NSView, editor textObj: NSText, delegate anObject: AnyObject?, start selStart: Int, length selLength: Int)
  func endEditing(_ textObj: NSText)
  func resetCursorRect(_ cellFrame: NSRect, in controlView: NSView)
  var menu: NSMenu?
  func menu(for event: NSEvent, in cellFrame: NSRect, of view: NSView) -> NSMenu?
  class func defaultMenu() -> NSMenu?
  var sendsActionOnEndEditing: Bool
  var baseWritingDirection: NSWritingDirection
  var lineBreakMode: NSLineBreakMode
  var allowsUndo: Bool
  @available(OSX 10.5, *)
  var integerValue: Int
  @available(OSX 10.5, *)
  func takeIntegerValueFrom(_ sender: AnyObject?)
  @available(OSX 10.5, *)
  var truncatesLastVisibleLine: Bool
  @available(OSX 10.6, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(OSX 10.6, *)
  func fieldEditor(for aControlView: NSView) -> NSTextView?
  @available(OSX 10.6, *)
  var usesSingleLineMode: Bool
  @available(OSX 10.7, *)
  func draggingImageComponents(withFrame frame: NSRect, in view: NSView) -> [NSDraggingImageComponent]
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  var identifier: String?
  func accessibilityFrame() -> NSRect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPoint(forScreenPoint point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityLayoutSize(forScreenSize size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityScreenPoint(forLayoutPoint point: NSPoint) -> NSPoint
  @available(OSX 10.10, *)
  func accessibilityScreenSize(forLayoutSize size: NSSize) -> NSSize
  @available(OSX 10.10, *)
  func accessibilityCell(forColumn column: Int, row row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedString(for range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRange(forLine line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityString(for range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRange(forPosition point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRange(for index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrame(for range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTF(for range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRange(for index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLine(for index: Int) -> Int
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
  func isAccessibilitySelectorAllowed(_ selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(_ accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(_ accessibilityFrame: NSRect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(_ accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> NSPoint
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(_ accessibilityActivationPoint: NSPoint)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(_ accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> NSURL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(_ accessibilityURL: NSURL?)
  @available(OSX 10.10, *)
  func accessibilityValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityValue(_ accessibilityValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityValueDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityValueDescription(_ accessibilityValueDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVisibleChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleChildren(_ accessibilityVisibleChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySubrole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySubrole(_ accessibilitySubrole: String?)
  @available(OSX 10.10, *)
  func accessibilityTitle() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityTitle(_ accessibilityTitle: String?)
  @available(OSX 10.10, *)
  func accessibilityTitleUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTitleUIElement(_ accessibilityTitleUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityNextContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityNextContents(_ accessibilityNextContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityOrientation() -> NSAccessibilityOrientation
  @available(OSX 10.10, *)
  func setAccessibilityOrientation(_ accessibilityOrientation: NSAccessibilityOrientation)
  @available(OSX 10.10, *)
  func accessibilityOverflowButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityOverflowButton(_ accessibilityOverflowButton: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityParent(_ accessibilityParent: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityPlaceholderValue() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityPlaceholderValue(_ accessibilityPlaceholderValue: String?)
  @available(OSX 10.10, *)
  func accessibilityPreviousContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityPreviousContents(_ accessibilityPreviousContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRole() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRole(_ accessibilityRole: String?)
  @available(OSX 10.10, *)
  func accessibilityRoleDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityRoleDescription(_ accessibilityRoleDescription: String?)
  @available(OSX 10.10, *)
  func accessibilitySearchButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchButton(_ accessibilitySearchButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilitySearchMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilitySearchMenu(_ accessibilitySearchMenu: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilitySelected() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilitySelected(_ accessibilitySelected: Bool)
  @available(OSX 10.10, *)
  func accessibilitySelectedChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedChildren(_ accessibilitySelectedChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityServesAsTitleForUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityServesAsTitleForUIElements(_ accessibilityServesAsTitleForUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityShownMenu() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityShownMenu(_ accessibilityShownMenu: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinValue(_ accessibilityMinValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMaxValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMaxValue(_ accessibilityMaxValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityLinkedUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLinkedUIElements(_ accessibilityLinkedUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWindow(_ accessibilityWindow: AnyObject?)
  @available(OSX 10.10, *)
  func setAccessibilityIdentifier(_ accessibilityIdentifier: String?)
  @available(OSX 10.10, *)
  func accessibilityHelp() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHelp(_ accessibilityHelp: String?)
  @available(OSX 10.10, *)
  func accessibilityFilename() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityFilename(_ accessibilityFilename: String?)
  @available(OSX 10.10, *)
  func isAccessibilityExpanded() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityExpanded(_ accessibilityExpanded: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEdited() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEdited(_ accessibilityEdited: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityEnabled() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityEnabled(_ accessibilityEnabled: Bool)
  @available(OSX 10.10, *)
  func accessibilityChildren() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityChildren(_ accessibilityChildren: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityClearButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityClearButton(_ accessibilityClearButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCancelButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCancelButton(_ accessibilityCancelButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityProtectedContent() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityProtectedContent(_ accessibilityProtectedContent: Bool)
  @available(OSX 10.10, *)
  func accessibilityContents() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityContents(_ accessibilityContents: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabel() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityLabel(_ accessibilityLabel: String?)
  @available(OSX 10.10, *)
  func isAccessibilityAlternateUIVisible() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityAlternateUIVisible(_ accessibilityAlternateUIVisible: Bool)
  @available(OSX 10.10, *)
  func accessibilitySharedFocusElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedFocusElements(_ accessibilitySharedFocusElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityApplicationFocusedUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityApplicationFocusedUIElement(_ accessibilityApplicationFocusedUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMainWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMainWindow(_ accessibilityMainWindow: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityHidden() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityHidden(_ accessibilityHidden: Bool)
  @available(OSX 10.10, *)
  func isAccessibilityFrontmost() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityFrontmost(_ accessibilityFrontmost: Bool)
  @available(OSX 10.10, *)
  func accessibilityFocusedWindow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFocusedWindow(_ accessibilityFocusedWindow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityWindows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityWindows(_ accessibilityWindows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityExtrasMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityExtrasMenuBar(_ accessibilityExtrasMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMenuBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMenuBar(_ accessibilityMenuBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnTitles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnTitles(_ accessibilityColumnTitles: [AnyObject]?)
  @available(OSX 10.10, *)
  func isAccessibilityOrderedByRow() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityOrderedByRow(_ accessibilityOrderedByRow: Bool)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnits(_ accessibilityHorizontalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnits(_ accessibilityVerticalUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityHorizontalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalUnitDescription(_ accessibilityHorizontalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityVerticalUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalUnitDescription(_ accessibilityVerticalUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHandles() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityHandles(_ accessibilityHandles: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityWarningValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityWarningValue(_ accessibilityWarningValue: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCriticalValue() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCriticalValue(_ accessibilityCriticalValue: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityDisclosed() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityDisclosed(_ accessibilityDisclosed: Bool)
  @available(OSX 10.10, *)
  func accessibilityDisclosedByRow() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedByRow(_ accessibilityDisclosedByRow: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosedRows() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDisclosedRows(_ accessibilityDisclosedRows: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDisclosureLevel() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityDisclosureLevel(_ accessibilityDisclosureLevel: Int)
  @available(OSX 10.10, *)
  func accessibilityMarkerUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerUIElements(_ accessibilityMarkerUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityMarkerValues() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerValues(_ accessibilityMarkerValues: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMarkerGroupUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerGroupUIElement(_ accessibilityMarkerGroupUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityUnits() -> NSAccessibilityUnits
  @available(OSX 10.10, *)
  func setAccessibilityUnits(_ accessibilityUnits: NSAccessibilityUnits)
  @available(OSX 10.10, *)
  func accessibilityUnitDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityUnitDescription(_ accessibilityUnitDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityRulerMarkerType() -> NSAccessibilityRulerMarkerType
  @available(OSX 10.10, *)
  func setAccessibilityRulerMarkerType(_ accessibilityRulerMarkerType: NSAccessibilityRulerMarkerType)
  @available(OSX 10.10, *)
  func accessibilityMarkerTypeDescription() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityMarkerTypeDescription(_ accessibilityMarkerTypeDescription: String?)
  @available(OSX 10.10, *)
  func accessibilityHorizontalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHorizontalScrollBar(_ accessibilityHorizontalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityVerticalScrollBar() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityVerticalScrollBar(_ accessibilityVerticalScrollBar: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityAllowedValues() -> [NSNumber]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(_ accessibilityAllowedValues: [NSNumber]?)
  @available(OSX 10.10, *)
  func accessibilityLabelUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityLabelUIElements(_ accessibilityLabelUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityLabelValue() -> Float
  @available(OSX 10.10, *)
  func setAccessibilityLabelValue(_ accessibilityLabelValue: Float)
  @available(OSX 10.10, *)
  func accessibilitySplitters() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySplitters(_ accessibilitySplitters: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityDecrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDecrementButton(_ accessibilityDecrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityIncrementButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityIncrementButton(_ accessibilityIncrementButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityTabs() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityTabs(_ accessibilityTabs: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityHeader() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityHeader(_ accessibilityHeader: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityColumnCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityColumnCount(_ accessibilityColumnCount: Int)
  @available(OSX 10.10, *)
  func accessibilityRowCount() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityRowCount(_ accessibilityRowCount: Int)
  @available(OSX 10.10, *)
  func accessibilityIndex() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityIndex(_ accessibilityIndex: Int)
  @available(OSX 10.10, *)
  func accessibilityColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumns(_ accessibilityColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRows(_ accessibilityRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleRows(_ accessibilityVisibleRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedRows() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedRows(_ accessibilitySelectedRows: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleColumns(_ accessibilityVisibleColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedColumns() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedColumns(_ accessibilitySelectedColumns: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySortDirection() -> NSAccessibilitySortDirection
  @available(OSX 10.10, *)
  func setAccessibilitySortDirection(_ accessibilitySortDirection: NSAccessibilitySortDirection)
  @available(OSX 10.10, *)
  func accessibilityRowHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityRowHeaderUIElements(_ accessibilityRowHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilitySelectedCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedCells(_ accessibilitySelectedCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCells() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCells(_ accessibilityVisibleCells: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityColumnHeaderUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilityColumnHeaderUIElements(_ accessibilityColumnHeaderUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityRowIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityRowIndexRange(_ accessibilityRowIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityColumnIndexRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityColumnIndexRange(_ accessibilityColumnIndexRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityInsertionPointLineNumber() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityInsertionPointLineNumber(_ accessibilityInsertionPointLineNumber: Int)
  @available(OSX 10.10, *)
  func accessibilitySharedCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySharedCharacterRange(_ accessibilitySharedCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySharedTextUIElements() -> [AnyObject]?
  @available(OSX 10.10, *)
  func setAccessibilitySharedTextUIElements(_ accessibilitySharedTextUIElements: [AnyObject]?)
  @available(OSX 10.10, *)
  func accessibilityVisibleCharacterRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilityVisibleCharacterRange(_ accessibilityVisibleCharacterRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilityNumberOfCharacters() -> Int
  @available(OSX 10.10, *)
  func setAccessibilityNumberOfCharacters(_ accessibilityNumberOfCharacters: Int)
  @available(OSX 10.10, *)
  func accessibilitySelectedText() -> String?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedText(_ accessibilitySelectedText: String?)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRange() -> NSRange
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRange(_ accessibilitySelectedTextRange: NSRange)
  @available(OSX 10.10, *)
  func accessibilitySelectedTextRanges() -> [NSValue]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(_ accessibilitySelectedTextRanges: [NSValue]?)
  @available(OSX 10.10, *)
  func accessibilityToolbarButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityToolbarButton(_ accessibilityToolbarButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityModal() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityModal(_ accessibilityModal: Bool)
  @available(OSX 10.10, *)
  func accessibilityProxy() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityProxy(_ accessibilityProxy: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMain() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMain(_ accessibilityMain: Bool)
  @available(OSX 10.10, *)
  func accessibilityFullScreenButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityFullScreenButton(_ accessibilityFullScreenButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityGrowArea() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityGrowArea(_ accessibilityGrowArea: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityDocument() -> String?
  @available(OSX 10.10, *)
  func setAccessibilityDocument(_ accessibilityDocument: String?)
  @available(OSX 10.10, *)
  func accessibilityDefaultButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityDefaultButton(_ accessibilityDefaultButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityCloseButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityCloseButton(_ accessibilityCloseButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityZoomButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityZoomButton(_ accessibilityZoomButton: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityMinimizeButton() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityMinimizeButton(_ accessibilityMinimizeButton: AnyObject?)
  @available(OSX 10.10, *)
  func isAccessibilityMinimized() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityMinimized(_ accessibilityMinimized: Bool)
}
extension NSCell {
  var refusesFirstResponder: Bool
  var acceptsFirstResponder: Bool { get }
  var showsFirstResponder: Bool
  func performClick(_ sender: AnyObject?)
  var focusRingType: NSFocusRingType
  class func defaultFocusRingType() -> NSFocusRingType
  @available(OSX 10.7, *)
  func drawFocusRingMask(withFrame cellFrame: NSRect, in controlView: NSView)
  @available(OSX 10.7, *)
  func focusRingMaskBounds(forFrame cellFrame: NSRect, in controlView: NSView) -> NSRect
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: NSCellHitResult { get }
  static var contentArea: NSCellHitResult { get }
  static var editableTextArea: NSCellHitResult { get }
  static var trackableArea: NSCellHitResult { get }
}
extension NSCell {
  @available(OSX 10.5, *)
  func hitTest(for event: NSEvent, in cellFrame: NSRect, of controlView: NSView) -> NSCellHitResult
}
extension NSCell {
  @available(OSX 10.5, *)
  func expansionFrame(withFrame cellFrame: NSRect, in view: NSView) -> NSRect
  @available(OSX 10.5, *)
  func draw(withExpansionFrame cellFrame: NSRect, in view: NSView)
}
@available(OSX 10.5, *)
enum NSBackgroundStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case light
  case dark
  case raised
  case lowered
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
func NSDrawThreePartImage(_ frame: NSRect, _ startCap: NSImage?, _ centerFill: NSImage?, _ endCap: NSImage?, _ vertical: Bool, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
@available(OSX 10.5, *)
func NSDrawNinePartImage(_ frame: NSRect, _ topLeftCorner: NSImage, _ topEdgeFill: NSImage, _ topRightCorner: NSImage, _ leftEdgeFill: NSImage, _ centerFill: NSImage, _ rightEdgeFill: NSImage, _ bottomLeftCorner: NSImage, _ bottomEdgeFill: NSImage, _ bottomRightCorner: NSImage, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
var NSAnyType: Int { get }
var NSIntType: Int { get }
var NSPositiveIntType: Int { get }
var NSFloatType: Int { get }
var NSPositiveFloatType: Int { get }
var NSDoubleType: Int { get }
var NSPositiveDoubleType: Int { get }
