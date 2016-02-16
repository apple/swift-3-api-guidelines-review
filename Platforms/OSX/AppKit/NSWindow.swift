
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
  case none
  case readOnly
  case readWrite
}
@available(OSX 10.5, *)
enum NSWindowBackingLocation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case videoMemory
  case mainMemory
}
@available(OSX 10.5, *)
struct NSWindowCollectionBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var `default`: NSWindowCollectionBehavior { get }
  static var canJoinAllSpaces: NSWindowCollectionBehavior { get }
  static var moveToActiveSpace: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var managed: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var transient: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var stationary: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var participatesInCycle: NSWindowCollectionBehavior { get }
  @available(OSX 10.6, *)
  static var ignoresCycle: NSWindowCollectionBehavior { get }
  @available(OSX 10.7, *)
  static var fullScreenPrimary: NSWindowCollectionBehavior { get }
  @available(OSX 10.7, *)
  static var fullScreenAuxiliary: NSWindowCollectionBehavior { get }
  @available(OSX 10.11, *)
  static var fullScreenAllowsTiling: NSWindowCollectionBehavior { get }
  @available(OSX 10.11, *)
  static var fullScreenDisallowsTiling: NSWindowCollectionBehavior { get }
}
@available(OSX 10.7, *)
enum NSWindowAnimationBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case none
  case documentWindow
  case utilityWindow
  case alertPanel
}
var NSWindowNumberListAllApplications: Int { get }
var NSWindowNumberListAllSpaces: Int { get }
@available(OSX 10.9, *)
struct NSWindowOcclusionState : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var visible: NSWindowOcclusionState { get }
}
typealias NSWindowNumberListOptions = Int
enum NSSelectionDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case directSelection
  case selectingNext
  case selectingPrevious
}
enum NSWindowButton : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case closeButton
  case miniaturizeButton
  case zoomButton
  case toolbarButton
  case documentIconButton
  @available(OSX 10.7, *)
  case documentVersionsButton
  @available(OSX 10.7, *)
  case fullScreenButton
}
@available(OSX 10.10, *)
enum NSWindowTitleVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case visible
  case hidden
}
var NSEventDurationForever: Double { get }
class NSWindow : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceValidations, NSUserInterfaceItemIdentification, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  class func frameRect(forContentRect cRect: Rect, styleMask aStyle: Int) -> Rect
  class func contentRect(forFrameRect fRect: Rect, styleMask aStyle: Int) -> Rect
  class func minFrameWidth(title aTitle: String, styleMask aStyle: Int) -> CGFloat
  class func defaultDepthLimit() -> NSWindowDepth
  func frameRect(forContentRect contentRect: Rect) -> Rect
  func contentRect(forFrameRect frameRect: Rect) -> Rect
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  var title: String
  @available(OSX 10.10, *)
  var titleVisibility: NSWindowTitleVisibility
  @available(OSX 10.10, *)
  var titlebarAppearsTransparent: Bool
  @available(OSX 10.10, *)
  var contentLayoutRect: Rect { get }
  @available(OSX 10.10, *)
  var contentLayoutGuide: AnyObject? { get }
  @available(OSX 10.10, *)
  var titlebarAccessoryViewControllers: [NSTitlebarAccessoryViewController]
  @available(OSX 10.10, *)
  func addTitlebarAccessoryViewController(childViewController: NSTitlebarAccessoryViewController)
  @available(OSX 10.10, *)
  func insertTitlebarAccessoryViewController(childViewController: NSTitlebarAccessoryViewController, at index: Int)
  @available(OSX 10.10, *)
  func removeTitlebarAccessoryViewController(at index: Int)
  @available(OSX 10.5, *)
  @NSCopying var representedURL: URL?
  var representedFilename: String
  func setTitleWithRepresentedFilename(filename: String)
  var isExcludedFromWindowsMenu: Bool
  var contentView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSWindowDelegate?
  var windowNumber: Int { get }
  var styleMask: Int
  func fieldEditor(createFlag: Bool, for anObject: AnyObject?) -> NSText?
  func endEditing(for anObject: AnyObject?)
  func constrainFrameRect(frameRect: Rect, to screen: NSScreen?) -> Rect
  func setFrame(frameRect: Rect, display flag: Bool)
  func setContentSize(aSize: Size)
  func setFrameOrigin(aPoint: Point)
  func setFrameTopLeftPoint(aPoint: Point)
  func cascadeTopLeft(from topLeftPoint: Point) -> Point
  var frame: Rect { get }
  func animationResizeTime(newFrame: Rect) -> TimeInterval
  func setFrame(frameRect: Rect, display displayFlag: Bool, animate animateFlag: Bool)
  @available(OSX 10.6, *)
  var inLiveResize: Bool { get }
  var showsResizeIndicator: Bool
  var resizeIncrements: Size
  var aspectRatio: Size
  var contentResizeIncrements: Size
  var contentAspectRatio: Size
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
  func validRequestor(forSendType sendType: String, returnType: String) -> AnyObject?
  @NSCopying var backgroundColor: NSColor!
  @available(OSX 10.5, *)
  func setContentBorderThickness(thickness: CGFloat, for edge: RectEdge)
  @available(OSX 10.5, *)
  func contentBorderThickness(for edge: RectEdge) -> CGFloat
  @available(OSX 10.5, *)
  func setAutorecalculatesContentBorderThickness(flag: Bool, for edge: RectEdge)
  @available(OSX 10.5, *)
  func autorecalculatesContentBorderThickness(for edge: RectEdge) -> Bool
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
  func order(place: NSWindowOrderingMode, relativeTo otherWin: Int)
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
  func convertRect(toScreen aRect: Rect) -> Rect
  @available(OSX 10.7, *)
  func convertRect(fromScreen aRect: Rect) -> Rect
  @available(OSX 10.7, *)
  func convertRectToBacking(aRect: Rect) -> Rect
  @available(OSX 10.7, *)
  func convertRectFromBacking(aRect: Rect) -> Rect
  @available(OSX 10.7, *)
  func backingAlignedRect(aRect: Rect, options: AlignmentOptions = []) -> Rect
  @available(OSX 10.7, *)
  var backingScaleFactor: CGFloat { get }
  func performClose(sender: AnyObject?)
  func performMiniaturize(sender: AnyObject?)
  func performZoom(sender: AnyObject?)
  var isOneShot: Bool
  func dataWithEPS(inside rect: Rect) -> Data
  func dataWithPDF(inside rect: Rect) -> Data
  @warn_unqualified_access
  func print(sender: AnyObject?)
  func disableCursorRects()
  func enableCursorRects()
  func discardCursorRects()
  var areCursorRectsEnabled: Bool { get }
  func invalidateCursorRects(for aView: NSView)
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
  func saveFrame(usingName name: String)
  func setFrameUsingName(name: String, force: Bool) -> Bool
  func setFrameUsingName(name: String) -> Bool
  func setFrameAutosaveName(name: String) -> Bool
  var frameAutosaveName: String { get }
  class func removeFrame(usingName name: String)
  func cacheImage(in aRect: Rect)
  func restoreCachedImage()
  func discardCachedImage()
  var minSize: Size
  var maxSize: Size
  var contentMinSize: Size
  var contentMaxSize: Size
  @available(OSX 10.11, *)
  var minFullScreenContentSize: Size
  @available(OSX 10.11, *)
  var maxFullScreenContentSize: Size
  @available(OSX 10.10, *)
  func trackEvents(matching mask: NSEventMask, timeout: TimeInterval, mode: String, handler trackingHandler: (NSEvent, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextEvent(matchingMask mask: Int) -> NSEvent?
  func nextEvent(matchingMask mask: Int, until expiration: Date?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEvents(matchingMask mask: Int, before lastEvent: NSEvent?)
  func post(event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  var acceptsMouseMovedEvents: Bool
  var ignoresMouseEvents: Bool
  var deviceDescription: [String : AnyObject] { get }
  func send(theEvent: NSEvent)
  var mouseLocationOutsideOfEventStream: Point { get }
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
  class func windowNumbers(options options: NSWindowNumberListOptions) -> [Number]?
  @available(OSX 10.6, *)
  class func windowNumber(at point: Point, belowWindowWithWindowNumber windowNumber: Int) -> Int
  @available(OSX 10.9, *)
  var occlusionState: NSWindowOcclusionState { get }
  @available(OSX 10.10, *)
  var contentViewController: NSViewController?
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  @available(OSX 10.11, *)
  func performDrag(event: NSEvent)
  convenience init()
  init?(coder: Coder)
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animation(forKey key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimation(forKey key: String) -> AnyObject?
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  var identifier: String?
  @available(OSX 10.9, *)
  var appearance: NSAppearance?
  @available(OSX 10.9, *)
  var effectiveAppearance: NSAppearance { get }
  func accessibilityFrame() -> Rect
  func accessibilityParent() -> AnyObject?
  func isAccessibilityFocused() -> Bool
  func accessibilityIdentifier() -> String
  @available(OSX 10.10, *)
  func accessibilityLayoutPoint(forScreenPoint point: Point) -> Point
  @available(OSX 10.10, *)
  func accessibilityLayoutSize(forScreenSize size: Size) -> Size
  @available(OSX 10.10, *)
  func accessibilityScreenPoint(forLayoutPoint point: Point) -> Point
  @available(OSX 10.10, *)
  func accessibilityScreenSize(forLayoutSize size: Size) -> Size
  @available(OSX 10.10, *)
  func accessibilityCell(forColumn column: Int, row: Int) -> AnyObject?
  @available(OSX 10.10, *)
  func accessibilityAttributedString(for range: NSRange) -> AttributedString?
  @available(OSX 10.10, *)
  func accessibilityRange(forLine line: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityString(for range: NSRange) -> String?
  @available(OSX 10.10, *)
  func accessibilityRange(forPosition point: Point) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityRange(for index: Int) -> NSRange
  @available(OSX 10.10, *)
  func accessibilityFrame(for range: NSRange) -> Rect
  @available(OSX 10.10, *)
  func accessibilityRTF(for range: NSRange) -> Data?
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
  func isAccessibilitySelectorAllowed(selector: Selector) -> Bool
  @available(OSX 10.10, *)
  func isAccessibilityElement() -> Bool
  @available(OSX 10.10, *)
  func setAccessibilityElement(accessibilityElement: Bool)
  @available(OSX 10.10, *)
  func setAccessibilityFrame(accessibilityFrame: Rect)
  @available(OSX 10.10, *)
  func setAccessibilityFocused(accessibilityFocused: Bool)
  @available(OSX 10.10, *)
  func accessibilityActivationPoint() -> Point
  @available(OSX 10.10, *)
  func setAccessibilityActivationPoint(accessibilityActivationPoint: Point)
  @available(OSX 10.10, *)
  func accessibilityTopLevelUIElement() -> AnyObject?
  @available(OSX 10.10, *)
  func setAccessibilityTopLevelUIElement(accessibilityTopLevelUIElement: AnyObject?)
  @available(OSX 10.10, *)
  func accessibilityURL() -> URL?
  @available(OSX 10.10, *)
  func setAccessibilityURL(accessibilityURL: URL?)
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
  func accessibilityAllowedValues() -> [Number]?
  @available(OSX 10.10, *)
  func setAccessibilityAllowedValues(accessibilityAllowedValues: [Number]?)
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
  func accessibilitySelectedTextRanges() -> [Value]?
  @available(OSX 10.10, *)
  func setAccessibilitySelectedTextRanges(accessibilitySelectedTextRanges: [Value]?)
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
  func selectKeyView(following aView: NSView)
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
  func drag(anImage: NSImage, at baseLocation: Point, offset initialOffset: Size, event: NSEvent, pasteboard pboard: NSPasteboard, source sourceObj: AnyObject, slideBack slideFlag: Bool)
  func register(forDraggedTypes newTypes: [String])
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
protocol NSWindowDelegate : ObjectProtocol {
  optional func windowShouldClose(sender: AnyObject) -> Bool
  optional func windowWillReturnFieldEditor(sender: NSWindow, to client: AnyObject?) -> AnyObject?
  optional func windowWillResize(sender: NSWindow, to frameSize: Size) -> Size
  optional func windowWillUseStandardFrame(window: NSWindow, defaultFrame newFrame: Rect) -> Rect
  optional func windowShouldZoom(window: NSWindow, toFrame newFrame: Rect) -> Bool
  @available(OSX 10.0, *)
  optional func windowWillReturnUndoManager(window: NSWindow) -> UndoManager?
  optional func window(window: NSWindow, willPositionSheet sheet: NSWindow, using rect: Rect) -> Rect
  @available(OSX 10.5, *)
  optional func window(window: NSWindow, shouldPopUpDocumentPathMenu menu: NSMenu) -> Bool
  @available(OSX 10.5, *)
  optional func window(window: NSWindow, shouldDragDocumentWith event: NSEvent, from dragImageLocation: Point, with pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willUseFullScreenContentSize proposedSize: Size) -> Size
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willUseFullScreenPresentationOptions proposedOptions: NSApplicationPresentationOptions = []) -> NSApplicationPresentationOptions
  @available(OSX 10.7, *)
  optional func customWindowsToEnterFullScreen(for window: NSWindow) -> [NSWindow]?
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, startCustomAnimationToEnterFullScreenWithDuration duration: TimeInterval)
  @available(OSX 10.7, *)
  optional func windowDidFail(toEnterFullScreen window: NSWindow)
  @available(OSX 10.7, *)
  optional func customWindowsToExitFullScreen(for window: NSWindow) -> [NSWindow]?
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, startCustomAnimationToExitFullScreenWithDuration duration: TimeInterval)
  @available(OSX 10.9, *)
  optional func customWindowsToEnterFullScreen(for window: NSWindow, on screen: NSScreen) -> [NSWindow]?
  @available(OSX 10.9, *)
  optional func window(window: NSWindow, startCustomAnimationToEnterFullScreenOn screen: NSScreen, withDuration duration: TimeInterval)
  @available(OSX 10.7, *)
  optional func windowDidFail(toExitFullScreen window: NSWindow)
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willResizeForVersionBrowserWithMaxPreferredSize maxPreferredFrameSize: Size, maxAllowedSize maxAllowedFrameSize: Size) -> Size
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, willEncodeRestorableState state: Coder)
  @available(OSX 10.7, *)
  optional func window(window: NSWindow, didDecodeRestorableState state: Coder)
  optional func windowDidResize(notification: Notification)
  optional func windowDidExpose(notification: Notification)
  optional func windowWillMove(notification: Notification)
  optional func windowDidMove(notification: Notification)
  optional func windowDidBecomeKey(notification: Notification)
  optional func windowDidResignKey(notification: Notification)
  optional func windowDidBecomeMain(notification: Notification)
  optional func windowDidResignMain(notification: Notification)
  optional func windowWillClose(notification: Notification)
  optional func windowWillMiniaturize(notification: Notification)
  optional func windowDidMiniaturize(notification: Notification)
  optional func windowDidDeminiaturize(notification: Notification)
  optional func windowDidUpdate(notification: Notification)
  optional func windowDidChangeScreen(notification: Notification)
  optional func windowDidChangeScreenProfile(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowDidChangeBackingProperties(notification: Notification)
  optional func windowWillBeginSheet(notification: Notification)
  optional func windowDidEndSheet(notification: Notification)
  @available(OSX 10.6, *)
  optional func windowWillStartLiveResize(notification: Notification)
  @available(OSX 10.6, *)
  optional func windowDidEndLiveResize(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowWillEnterFullScreen(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowDidEnterFullScreen(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowWillExitFullScreen(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowDidExitFullScreen(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowWillEnterVersionBrowser(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowDidEnterVersionBrowser(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowWillExitVersionBrowser(notification: Notification)
  @available(OSX 10.7, *)
  optional func windowDidExitVersionBrowser(notification: Notification)
  @available(OSX 10.9, *)
  optional func windowDidChangeOcclusionState(notification: Notification)
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
