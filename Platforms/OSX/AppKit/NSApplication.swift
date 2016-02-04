
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
  class func sharedApplication() -> NSApplication
  unowned(unsafe) var delegate: @sil_unmanaged NSApplicationDelegate?
  var context: NSGraphicsContext? { get }
  func hide(sender: AnyObject?)
  func unhide(sender: AnyObject?)
  func unhideWithoutActivation()
  func windowWithWindowNumber(windowNum: Int) -> NSWindow?
  unowned(unsafe) var mainWindow: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var keyWindow: @sil_unmanaged NSWindow? { get }
  var active: Bool { get }
  var hidden: Bool { get }
  var running: Bool { get }
  func deactivate()
  func activateIgnoringOtherApps(flag: Bool)
  func hideOtherApplications(sender: AnyObject?)
  func unhideAllApplications(sender: AnyObject?)
  func finishLaunching()
  func run()
  func runModalForWindow(theWindow: NSWindow) -> Int
  func stop(sender: AnyObject?)
  func stopModal()
  func stopModalWithCode(returnCode: Int)
  func abortModal()
  var modalWindow: NSWindow? { get }
  func beginModalSessionForWindow(theWindow: NSWindow) -> NSModalSession
  func runModalSession(session: NSModalSession) -> Int
  func endModalSession(session: NSModalSession)
  func terminate(sender: AnyObject?)
  func requestUserAttention(requestType: NSRequestUserAttentionType) -> Int
  func cancelUserAttentionRequest(request: Int)
  func nextEventMatchingMask(mask: Int, untilDate expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEventsMatchingMask(mask: Int, beforeEvent lastEvent: NSEvent?)
  func postEvent(event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  func sendEvent(theEvent: NSEvent)
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
  func reportException(theException: NSException)
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
  func validateUserInterfaceItem(anItem: NSValidatedUserInterfaceItem) -> Bool
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
  func accessibilityAttributedStringForRange(range: NSRange) -> NSAttributedString?
  @available(OSX 10.10, *)
  func accessibilityRangeForLine(line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityStringForRange(range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRangeForPosition(point: NSPoint) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRangeForIndex(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrameForRange(range: NSRange) -> NSRect
  @available(OSX 10.10, *)
  func accessibilityRTFForRange(range: NSRange) -> NSData?
  @available(OSX 10.10, *)
  func accessibilityStyleRangeForIndex(index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityLineForIndex(index: Int) -> Int
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
  optional func application(application: NSApplication, willPresentError error: NSError) -> NSError
  @available(OSX 10.7, *)
  optional func application(application: NSApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(OSX 10.7, *)
  optional func application(application: NSApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  @available(OSX 10.7, *)
  optional func application(application: NSApplication, didReceiveRemoteNotification userInfo: [String : AnyObject])
  @available(OSX 10.7, *)
  optional func application(app: NSApplication, willEncodeRestorableState coder: NSCoder)
  @available(OSX 10.7, *)
  optional func application(app: NSApplication, didDecodeRestorableState coder: NSCoder)
  @available(OSX 10.10, *)
  optional func application(application: NSApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(OSX 10.10, *)
  optional func application(application: NSApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]) -> Void) -> Bool
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
  optional func writeSelectionToPasteboard(pboard: NSPasteboard, types: [String]) -> Bool
  optional func readSelectionFromPasteboard(pboard: NSPasteboard) -> Bool
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
  func beginSheet(sheet: NSWindow, modalForWindow docWindow: NSWindow, modalDelegate: AnyObject?, didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
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
