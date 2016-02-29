
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var `default`: NSApplicationPresentationOptions { get }
  static var autoHideDock: NSApplicationPresentationOptions { get }
  static var hideDock: NSApplicationPresentationOptions { get }
  static var autoHideMenuBar: NSApplicationPresentationOptions { get }
  static var hideMenuBar: NSApplicationPresentationOptions { get }
  static var disableAppleMenu: NSApplicationPresentationOptions { get }
  static var disableProcessSwitching: NSApplicationPresentationOptions { get }
  static var disableForceQuit: NSApplicationPresentationOptions { get }
  static var disableSessionTermination: NSApplicationPresentationOptions { get }
  static var disableHideApplication: NSApplicationPresentationOptions { get }
  static var disableMenuBarTransparency: NSApplicationPresentationOptions { get }
  @available(OSX 10.7, *)
  static var fullScreen: NSApplicationPresentationOptions { get }
  @available(OSX 10.7, *)
  static var autoHideToolbar: NSApplicationPresentationOptions { get }
  @available(OSX 10.11.2, *)
  static var disableCursorLocationAssistance: NSApplicationPresentationOptions { get }
}
@available(OSX 10.9, *)
struct NSApplicationOcclusionState : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var visible: NSApplicationOcclusionState { get }
}
typealias NSModalSession = COpaquePointer
class NSApplication : NSResponder, NSUserInterfaceValidations, NSAccessibilityElementProtocol, NSAccessibility {
  class func shared() -> NSApplication
  unowned(unsafe) var delegate: @sil_unmanaged NSApplicationDelegate?
  var context: NSGraphicsContext? { get }
  func hide(_ sender: AnyObject?)
  func unhide(_ sender: AnyObject?)
  func unhideWithoutActivation()
  func window(withWindowNumber windowNum: Int) -> NSWindow?
  unowned(unsafe) var mainWindow: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var keyWindow: @sil_unmanaged NSWindow? { get }
  var isActive: Bool { get }
  var isHidden: Bool { get }
  var isRunning: Bool { get }
  func deactivate()
  func activateIgnoringOtherApps(_ flag: Bool)
  func hideOtherApplications(_ sender: AnyObject?)
  func unhideAllApplications(_ sender: AnyObject?)
  func finishLaunching()
  func run()
  func runModal(for theWindow: NSWindow) -> Int
  func stop(_ sender: AnyObject?)
  func stopModal()
  func stopModal(withCode returnCode: Int)
  func abortModal()
  var modalWindow: NSWindow? { get }
  func beginModalSession(for theWindow: NSWindow) -> NSModalSession
  func run(_ session: NSModalSession) -> Int
  func end(_ session: NSModalSession)
  func terminate(_ sender: AnyObject?)
  func requestUserAttention(_ requestType: NSRequestUserAttentionType) -> Int
  func cancelUserAttentionRequest(_ request: Int)
  func nextEvent(matchingMask mask: Int, until expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEvents(matchingMask mask: Int, before lastEvent: NSEvent?)
  func post(_ event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  func send(_ theEvent: NSEvent)
  func preventWindowOrdering()
  func makeWindowsPerform(_ aSelector: Selector, inOrder flag: Bool) -> NSWindow?
  var windows: [NSWindow] { get }
  func setWindowsNeedUpdate(_ needUpdate: Bool)
  func updateWindows()
  var mainMenu: NSMenu?
  @available(OSX 10.6, *)
  var helpMenu: NSMenu?
  var applicationIconImage: NSImage!
  @available(OSX 10.6, *)
  func activationPolicy() -> NSApplicationActivationPolicy
  @available(OSX 10.6, *)
  func setActivationPolicy(_ activationPolicy: NSApplicationActivationPolicy) -> Bool
  @available(OSX 10.5, *)
  var dockTile: NSDockTile { get }
  func sendAction(_ theAction: Selector, to theTarget: AnyObject?, from sender: AnyObject?) -> Bool
  func target(forAction theAction: Selector) -> AnyObject?
  func target(forAction theAction: Selector, to theTarget: AnyObject?, from sender: AnyObject?) -> AnyObject?
  func report(_ theException: NSException)
  class func detachDrawingThread(_ selector: Selector, toTarget target: AnyObject, with argument: AnyObject?)
  func reply(toApplicationShouldTerminate shouldTerminate: Bool)
  func reply(toOpenOrPrint reply: NSApplicationDelegateReply)
  func orderFrontCharacterPalette(_ sender: AnyObject?)
  @available(OSX 10.6, *)
  var presentationOptions: NSApplicationPresentationOptions
  @available(OSX 10.6, *)
  var currentSystemPresentationOptions: NSApplicationPresentationOptions { get }
  @available(OSX 10.9, *)
  var occlusionState: NSApplicationOcclusionState { get }
  func validate(_ anItem: NSValidatedUserInterfaceItem) -> Bool
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
  init(_hidden _hidden: UInt32, _appleEventActivationInProgress _appleEventActivationInProgress: UInt32, _active _active: UInt32, _hasBeenRun _hasBeenRun: UInt32, _doingUnhide _doingUnhide: UInt32, _delegateReturnsValidRequestor _delegateReturnsValidRequestor: UInt32, _deactPending _deactPending: UInt32, _invalidState _invalidState: UInt32, _invalidEvent _invalidEvent: UInt32, _postedWindowsNeedUpdateNote _postedWindowsNeedUpdateNote: UInt32, _wantsToActivate _wantsToActivate: UInt32, _doingHide _doingHide: UInt32, _dontSendShouldTerminate _dontSendShouldTerminate: UInt32, _ignoresFullScreen _ignoresFullScreen: UInt32, _finishedLaunching _finishedLaunching: UInt32, _hasEventDelegate _hasEventDelegate: UInt32, _appDying _appDying: UInt32, _didNSOpenOrPrint _didNSOpenOrPrint: UInt32, _inDealloc _inDealloc: UInt32, _pendingDidFinish _pendingDidFinish: UInt32, _hasKeyFocus _hasKeyFocus: UInt32, _panelsNonactivating _panelsNonactivating: UInt32, _hiddenOnLaunch _hiddenOnLaunch: UInt32, _openStatus _openStatus: UInt32, _batchOrdering _batchOrdering: UInt32, _waitingForTerminationReply _waitingForTerminationReply: UInt32, _windowMoveDisabled _windowMoveDisabled: UInt32, _enumeratingMemoryPressureHandlers _enumeratingMemoryPressureHandlers: UInt32, _didTryRestoringPersistentState _didTryRestoringPersistentState: UInt32, _reservedN _reservedN: UInt32, _mightBeSwitching _mightBeSwitching: UInt32)
}
var NSApp: NSApplication!
enum NSRequestUserAttentionType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case criticalRequest
  case informationalRequest
}
enum NSApplicationDelegateReply : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case success
  case cancel
  case failure
}
extension NSApplication {
  var windowsMenu: NSMenu?
  func arrangeInFront(_ sender: AnyObject?)
  func removeWindowsItem(_ win: NSWindow)
  func addWindowsItem(_ win: NSWindow, title aString: String, filename isFilename: Bool)
  func changeWindowsItem(_ win: NSWindow, title aString: String, filename isFilename: Bool)
  func updateWindowsItem(_ win: NSWindow)
  func miniaturizeAll(_ sender: AnyObject?)
}
extension NSApplication {
  @available(OSX 10.6, *)
  var isFullKeyboardAccessEnabled: Bool { get }
}
enum NSApplicationTerminateReply : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case terminateCancel
  case terminateNow
  case terminateLater
}
enum NSApplicationPrintReply : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case printingCancelled
  case printingSuccess
  case printingFailure
  case printingReplyLater
}
protocol NSApplicationDelegate : NSObjectProtocol {
  optional func applicationShouldTerminate(_ sender: NSApplication) -> NSApplicationTerminateReply
  optional func application(_ sender: NSApplication, openFile filename: String) -> Bool
  optional func application(_ sender: NSApplication, openFiles filenames: [String])
  optional func application(_ sender: NSApplication, openTempFile filename: String) -> Bool
  optional func applicationShouldOpenUntitledFile(_ sender: NSApplication) -> Bool
  optional func applicationOpenUntitledFile(_ sender: NSApplication) -> Bool
  optional func application(_ sender: AnyObject, openFileWithoutUI filename: String) -> Bool
  optional func application(_ sender: NSApplication, printFile filename: String) -> Bool
  optional func application(_ application: NSApplication, printFiles fileNames: [String], withSettings printSettings: [String : AnyObject], showPrintPanels showPrintPanels: Bool) -> NSApplicationPrintReply
  optional func applicationShouldTerminate(afterLastWindowClosed sender: NSApplication) -> Bool
  optional func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool
  optional func applicationDockMenu(_ sender: NSApplication) -> NSMenu?
  optional func application(_ application: NSApplication, willPresentError error: NSError) -> NSError
  @available(OSX 10.7, *)
  optional func application(_ application: NSApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(OSX 10.7, *)
  optional func application(_ application: NSApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  @available(OSX 10.7, *)
  optional func application(_ application: NSApplication, didReceiveRemoteNotification userInfo: [String : AnyObject])
  @available(OSX 10.7, *)
  optional func application(_ app: NSApplication, willEncodeRestorableState coder: NSCoder)
  @available(OSX 10.7, *)
  optional func application(_ app: NSApplication, didDecodeRestorableState coder: NSCoder)
  @available(OSX 10.10, *)
  optional func application(_ application: NSApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(OSX 10.10, *)
  optional func application(_ application: NSApplication, continue userActivity: NSUserActivity, restorationHandler restorationHandler: ([AnyObject]) -> Void) -> Bool
  @available(OSX 10.10, *)
  optional func application(_ application: NSApplication, didFailToContinueUserActivityWithType userActivityType: String, error error: NSError)
  @available(OSX 10.10, *)
  optional func application(_ application: NSApplication, didUpdate userActivity: NSUserActivity)
  optional func applicationWillFinishLaunching(_ notification: NSNotification)
  optional func applicationDidFinishLaunching(_ notification: NSNotification)
  optional func applicationWillHide(_ notification: NSNotification)
  optional func applicationDidHide(_ notification: NSNotification)
  optional func applicationWillUnhide(_ notification: NSNotification)
  optional func applicationDidUnhide(_ notification: NSNotification)
  optional func applicationWillBecomeActive(_ notification: NSNotification)
  optional func applicationDidBecomeActive(_ notification: NSNotification)
  optional func applicationWillResignActive(_ notification: NSNotification)
  optional func applicationDidResignActive(_ notification: NSNotification)
  optional func applicationWillUpdate(_ notification: NSNotification)
  optional func applicationDidUpdate(_ notification: NSNotification)
  optional func applicationWillTerminate(_ notification: NSNotification)
  optional func applicationDidChangeScreenParameters(_ notification: NSNotification)
  @available(OSX 10.9, *)
  optional func applicationDidChangeOcclusionState(_ notification: NSNotification)
}
extension NSApplication {
  var servicesMenu: NSMenu?
  func registerServicesMenuSendTypes(_ sendTypes: [String], returnTypes returnTypes: [String])
}
protocol NSServicesMenuRequestor : NSObjectProtocol {
  optional func writeSelection(to pboard: NSPasteboard, types types: [String]) -> Bool
  optional func readSelection(from pboard: NSPasteboard) -> Bool
}
extension NSApplication {
  var servicesProvider: AnyObject?
}
extension NSApplication {
  func orderFrontStandardAboutPanel(_ sender: AnyObject?)
  func orderFrontStandardAboutPanel(options optionsDictionary: [String : AnyObject] = [:])
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.7, *)
  static var none: NSRemoteNotificationType { get }
  @available(OSX 10.7, *)
  static var badge: NSRemoteNotificationType { get }
  @available(OSX 10.8, *)
  static var sound: NSRemoteNotificationType { get }
  @available(OSX 10.8, *)
  static var alert: NSRemoteNotificationType { get }
}
extension NSApplication {
  @available(OSX 10.7, *)
  func register(forRemoteNotificationTypes types: NSRemoteNotificationType)
  @available(OSX 10.7, *)
  func unregisterForRemoteNotifications()
  @available(OSX 10.7, *)
  var enabledRemoteNotificationTypes: NSRemoteNotificationType { get }
}
func NSApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Int32
func NSApplicationLoad() -> Bool
func NSShowsServicesMenuItem(_ itemName: String) -> Bool
func NSSetShowsServicesMenuItem(_ itemName: String, _ enabled: Bool) -> Int
func NSUpdateDynamicServices()
func NSPerformService(_ itemName: String, _ pboard: NSPasteboard?) -> Bool
func NSRegisterServicesProvider(_ provider: AnyObject?, _ name: String)
func NSUnregisterServicesProvider(_ name: String)
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
  func beginSheet(_ sheet: NSWindow, modalFor docWindow: NSWindow, modalDelegate modalDelegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -[NSWindow endSheet:] instead")
  func endSheet(_ sheet: NSWindow)
  @available(OSX, introduced=10.0, deprecated=10.10, message="Use -[NSWindow endSheet:returnCode:] instead")
  func endSheet(_ sheet: NSWindow, returnCode returnCode: Int)
}
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseStop instead")
var NSRunStoppedResponse: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseAbort instead")
var NSRunAbortedResponse: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseContinue instead")
var NSRunContinuesResponse: Int { get }
