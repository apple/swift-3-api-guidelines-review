
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
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case readOnly
  case readWrite
}
@available(OSX 10.5, *)
enum NSWindowBackingLocation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case videoMemory
  case mainMemory
}
@available(OSX 10.5, *)
struct NSWindowCollectionBehavior : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: Int)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var visible: NSWindowOcclusionState { get }
}
typealias NSWindowNumberListOptions = Int
enum NSSelectionDirection : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case directSelection
  case selectingNext
  case selectingPrevious
}
enum NSWindowButton : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case visible
  case hidden
}
var NSEventDurationForever: Double { get }
class NSWindow : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceValidations, NSUserInterfaceItemIdentification, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  class func frameRect(forContentRect cRect: NSRect, styleMask aStyle: Int) -> NSRect
  class func contentRect(forFrameRect fRect: NSRect, styleMask aStyle: Int) -> NSRect
  class func minFrameWidth(withTitle aTitle: String, styleMask aStyle: Int) -> CGFloat
  class func defaultDepthLimit() -> NSWindowDepth
  func frameRect(forContentRect contentRect: NSRect) -> NSRect
  func contentRect(forFrameRect frameRect: NSRect) -> NSRect
  init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen screen: NSScreen?)
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
  func addTitlebarAccessoryViewController(_ childViewController: NSTitlebarAccessoryViewController)
  @available(OSX 10.10, *)
  func insertTitlebarAccessoryViewController(_ childViewController: NSTitlebarAccessoryViewController, at index: Int)
  @available(OSX 10.10, *)
  func removeTitlebarAccessoryViewController(at index: Int)
  @available(OSX 10.5, *)
  @NSCopying var representedURL: NSURL?
  var representedFilename: String
  func setTitleWithRepresentedFilename(_ filename: String)
  var isExcludedFromWindowsMenu: Bool
  var contentView: NSView?
  unowned(unsafe) var delegate: @sil_unmanaged NSWindowDelegate?
  var windowNumber: Int { get }
  var styleMask: Int
  func fieldEditor(_ createFlag: Bool, for anObject: AnyObject?) -> NSText?
  func endEditing(for anObject: AnyObject?)
  func constrainFrameRect(_ frameRect: NSRect, to screen: NSScreen?) -> NSRect
  func setFrame(_ frameRect: NSRect, display flag: Bool)
  func setContentSize(_ aSize: NSSize)
  func setFrameOrigin(_ aPoint: NSPoint)
  func setFrameTopLeftPoint(_ aPoint: NSPoint)
  func cascadeTopLeft(from topLeftPoint: NSPoint) -> NSPoint
  var frame: NSRect { get }
  func animationResizeTime(_ newFrame: NSRect) -> NSTimeInterval
  func setFrame(_ frameRect: NSRect, display displayFlag: Bool, animate animateFlag: Bool)
  @available(OSX 10.6, *)
  var inLiveResize: Bool { get }
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
  func makeFirstResponder(_ aResponder: NSResponder?) -> Bool
  unowned(unsafe) var firstResponder: @sil_unmanaged NSResponder { get }
  var resizeFlags: Int { get }
  func close()
  var isReleasedWhenClosed: Bool
  func miniaturize(_ sender: AnyObject?)
  func deminiaturize(_ sender: AnyObject?)
  var isZoomed: Bool { get }
  func zoom(_ sender: AnyObject?)
  var isMiniaturized: Bool { get }
  @NSCopying var backgroundColor: NSColor!
  @available(OSX 10.5, *)
  func setContentBorderThickness(_ thickness: CGFloat, for edge: NSRectEdge)
  @available(OSX 10.5, *)
  func contentBorderThickness(for edge: NSRectEdge) -> CGFloat
  @available(OSX 10.5, *)
  func setAutorecalculatesContentBorderThickness(_ flag: Bool, for edge: NSRectEdge)
  @available(OSX 10.5, *)
  func autorecalculatesContentBorderThickness(for edge: NSRectEdge) -> Bool
  @available(OSX 10.6, *)
  var isMovable: Bool
  var isMovableByWindowBackground: Bool
  var hidesOnDeactivate: Bool
  var canHide: Bool
  func center()
  func makeKeyAndOrderFront(_ sender: AnyObject?)
  func orderFront(_ sender: AnyObject?)
  func orderBack(_ sender: AnyObject?)
  func orderOut(_ sender: AnyObject?)
  func order(_ place: NSWindowOrderingMode, relativeTo otherWin: Int)
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
  func convertRect(toScreen aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRect(fromScreen aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectToBacking(_ aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromBacking(_ aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func backingAlignedRect(_ aRect: NSRect, options options: NSAlignmentOptions = []) -> NSRect
  @available(OSX 10.7, *)
  var backingScaleFactor: CGFloat { get }
  func performClose(_ sender: AnyObject?)
  func performMiniaturize(_ sender: AnyObject?)
  func performZoom(_ sender: AnyObject?)
  var isOneShot: Bool
  func dataWithEPS(inside rect: NSRect) -> NSData
  func dataWithPDF(inside rect: NSRect) -> NSData
  @warn_unqualified_access
  func print(_ sender: AnyObject?)
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
  func setDynamicDepthLimit(_ flag: Bool)
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
  func toggleFullScreen(_ sender: AnyObject?)
  var stringWithSavedFrame: String { get }
  func setFrameFrom(_ string: String)
  func saveFrame(usingName name: String)
  func setFrameUsingName(_ name: String, force force: Bool) -> Bool
  func setFrameUsingName(_ name: String) -> Bool
  func setFrameAutosaveName(_ name: String) -> Bool
  var frameAutosaveName: String { get }
  class func removeFrame(usingName name: String)
  func cacheImage(in aRect: NSRect)
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
  func trackEvents(matching mask: NSEventMask, timeout timeout: NSTimeInterval, mode mode: String, handler trackingHandler: (NSEvent, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextEvent(matchingMask mask: Int) -> NSEvent?
  func nextEvent(matchingMask mask: Int, until expiration: NSDate?, inMode mode: String, dequeue deqFlag: Bool) -> NSEvent?
  func discardEvents(matchingMask mask: Int, before lastEvent: NSEvent?)
  func post(_ event: NSEvent, atStart flag: Bool)
  var currentEvent: NSEvent? { get }
  var acceptsMouseMovedEvents: Bool
  var ignoresMouseEvents: Bool
  var deviceDescription: [String : AnyObject] { get }
  func send(_ theEvent: NSEvent)
  var mouseLocationOutsideOfEventStream: NSPoint { get }
  unowned(unsafe) var windowController: @sil_unmanaged NSWindowController?
  @available(OSX 10.9, *)
  func beginSheet(_ sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)? = nil)
  @available(OSX 10.9, *)
  func beginCriticalSheet(_ sheetWindow: NSWindow, completionHandler handler: ((NSModalResponse) -> Void)? = nil)
  @available(OSX 10.9, *)
  func endSheet(_ sheetWindow: NSWindow)
  @available(OSX 10.9, *)
  func endSheet(_ sheetWindow: NSWindow, returnCode returnCode: NSModalResponse)
  @available(OSX 10.9, *)
  var sheets: [NSWindow] { get }
  var attachedSheet: NSWindow? { get }
  var isSheet: Bool { get }
  @available(OSX 10.9, *)
  var sheetParent: NSWindow? { get }
  class func standardWindowButton(_ b: NSWindowButton, forStyleMask styleMask: Int) -> NSButton?
  func standardWindowButton(_ b: NSWindowButton) -> NSButton?
  func addChildWindow(_ childWin: NSWindow, ordered place: NSWindowOrderingMode)
  func removeChildWindow(_ childWin: NSWindow)
  var childWindows: [NSWindow]? { get }
  unowned(unsafe) var parent: @sil_unmanaged NSWindow?
  var graphicsContext: NSGraphicsContext? { get }
  @available(OSX 10.6, *)
  var colorSpace: NSColorSpace?
  @available(OSX 10.6, *)
  class func windowNumbers(withOptions options: NSWindowNumberListOptions) -> [NSNumber]?
  @available(OSX 10.6, *)
  class func windowNumber(at point: NSPoint, belowWindowWithWindowNumber windowNumber: Int) -> Int
  @available(OSX 10.9, *)
  var occlusionState: NSWindowOcclusionState { get }
  @available(OSX 10.10, *)
  var contentViewController: NSViewController?
  @available(OSX 10.10, *)
  convenience init(contentViewController contentViewController: NSViewController)
  @available(OSX 10.11, *)
  func performDrag(with event: NSEvent)
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animation(forKey key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimation(forKey key: String) -> AnyObject?
  func validate(_ anItem: NSValidatedUserInterfaceItem) -> Bool
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
  init(backing backing: UInt32, visible visible: UInt32, isMainWindow isMainWindow: UInt32, isKeyWindow isKeyWindow: UInt32, hidesOnDeactivate hidesOnDeactivate: UInt32, dontFreeWhenClosed dontFreeWhenClosed: UInt32, oneShot oneShot: UInt32, deferred deferred: UInt32, cursorRectsDisabled cursorRectsDisabled: UInt32, haveFreeCursorRects haveFreeCursorRects: UInt32, validCursorRects validCursorRects: UInt32, docEdited docEdited: UInt32, dynamicDepthLimit dynamicDepthLimit: UInt32, worksWhenModal worksWhenModal: UInt32, limitedBecomeKey limitedBecomeKey: UInt32, needsFlush needsFlush: UInt32, viewsNeedDisplay viewsNeedDisplay: UInt32, ignoredFirstMouse ignoredFirstMouse: UInt32, repostedFirstMouse repostedFirstMouse: UInt32, windowDying windowDying: UInt32, tempHidden tempHidden: UInt32, floatingPanel floatingPanel: UInt32, wantsToBeOnMainScreen wantsToBeOnMainScreen: UInt32, optimizedDrawingOk optimizedDrawingOk: UInt32, optimizeDrawing optimizeDrawing: UInt32, titleIsRepresentedFilename titleIsRepresentedFilename: UInt32, excludedFromWindowsMenu excludedFromWindowsMenu: UInt32, depthLimit depthLimit: UInt32, delegateReturnsValidRequestor delegateReturnsValidRequestor: UInt32, lmouseupPending lmouseupPending: UInt32, rmouseupPending rmouseupPending: UInt32, wantsToDestroyRealWindow wantsToDestroyRealWindow: UInt32, wantsToRegDragTypes wantsToRegDragTypes: UInt32, sentInvalidateCursorRectsMsg sentInvalidateCursorRectsMsg: UInt32, avoidsActivation avoidsActivation: UInt32, frameSavedUsingTitle frameSavedUsingTitle: UInt32, didRegDragTypes didRegDragTypes: UInt32, delayedOneShot delayedOneShot: UInt32, postedNeedsDisplayNote postedNeedsDisplayNote: UInt32, postedInvalidCursorRectsNote postedInvalidCursorRectsNote: UInt32, initialFirstResponderTempSet initialFirstResponderTempSet: UInt32, autodisplay autodisplay: UInt32, tossedFirstEvent tossedFirstEvent: UInt32, isImageCache isImageCache: UInt32, autolayoutEngagedSomewhere autolayoutEngagedSomewhere: UInt32, hasRegisteredBackdropViews hasRegisteredBackdropViews: UInt32, hasSubLevel hasSubLevel: UInt32, keyViewSelectionDirection keyViewSelectionDirection: UInt32, defaultButtonCellKETemporarilyDisabled defaultButtonCellKETemporarilyDisabled: UInt32, defaultButtonCellKEDisabled defaultButtonCellKEDisabled: UInt32, menuHasBeenSet menuHasBeenSet: UInt32, wantsToBeModal wantsToBeModal: UInt32, showingModalFrame showingModalFrame: UInt32, isTerminating isTerminating: UInt32, makingFirstResponderForMouseDown makingFirstResponderForMouseDown: UInt32, needsZoom needsZoom: UInt32, sentWindowNeedsDisplayMsg sentWindowNeedsDisplayMsg: UInt32, unused unused: UInt32)
}
extension NSWindow {
  unowned(unsafe) var initialFirstResponder: @sil_unmanaged NSView?
  func selectNextKeyView(_ sender: AnyObject?)
  func selectPreviousKeyView(_ sender: AnyObject?)
  func selectKeyView(following aView: NSView)
  func selectKeyViewPreceding(_ aView: NSView)
  var keyViewSelectionDirection: NSSelectionDirection { get }
  var defaultButtonCell: NSButtonCell?
  func disableKeyEquivalentForDefaultButtonCell()
  func enableKeyEquivalentForDefaultButtonCell()
  var autorecalculatesKeyViewLoop: Bool
  func recalculateKeyViewLoop()
}
extension NSWindow {
  var toolbar: NSToolbar?
  func toggleToolbarShown(_ sender: AnyObject?)
  func runToolbarCustomizationPalette(_ sender: AnyObject?)
  var showsToolbarButton: Bool
}
extension NSWindow {
  func drag(_ anImage: NSImage, at baseLocation: NSPoint, offset initialOffset: NSSize, event event: NSEvent, pasteboard pboard: NSPasteboard, source sourceObj: AnyObject, slideBack slideFlag: Bool)
  func register(forDraggedTypes newTypes: [String])
  func unregisterDraggedTypes()
}
extension NSWindow {
  convenience init?(windowRef windowRef: UnsafeMutablePointer<Void>)
  var windowRef: UnsafeMutablePointer<Void> { get }
}
extension NSWindow {
  @available(OSX, introduced=10.0, deprecated=10.11, message="This method does not do anything and should not be called.")
  class func menuChanged(_ menu: NSMenu)
  @available(OSX, introduced=10.0, deprecated=10.10)
  func gState() -> Int
  @available(OSX, introduced=10.0, deprecated=10.10)
  func useOptimizedDrawing(_ flag: Bool)
  @available(OSX, introduced=10.0, deprecated=10.10)
  func canStoreColor() -> Bool
}
protocol NSWindowDelegate : NSObjectProtocol {
  optional func windowShouldClose(_ sender: AnyObject) -> Bool
  optional func windowWillReturnFieldEditor(_ sender: NSWindow, to client: AnyObject?) -> AnyObject?
  optional func windowWillResize(_ sender: NSWindow, to frameSize: NSSize) -> NSSize
  optional func windowWillUseStandardFrame(_ window: NSWindow, defaultFrame newFrame: NSRect) -> NSRect
  optional func windowShouldZoom(_ window: NSWindow, toFrame newFrame: NSRect) -> Bool
  @available(OSX 10.0, *)
  optional func windowWillReturnUndoManager(_ window: NSWindow) -> NSUndoManager?
  optional func window(_ window: NSWindow, willPositionSheet sheet: NSWindow, using rect: NSRect) -> NSRect
  @available(OSX 10.5, *)
  optional func window(_ window: NSWindow, shouldPopUpDocumentPathMenu menu: NSMenu) -> Bool
  @available(OSX 10.5, *)
  optional func window(_ window: NSWindow, shouldDragDocumentWith event: NSEvent, from dragImageLocation: NSPoint, with pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, willUseFullScreenContentSize proposedSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, willUseFullScreenPresentationOptions proposedOptions: NSApplicationPresentationOptions = []) -> NSApplicationPresentationOptions
  @available(OSX 10.7, *)
  optional func customWindowsToEnterFullScreen(for window: NSWindow) -> [NSWindow]?
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, startCustomAnimationToEnterFullScreenWithDuration duration: NSTimeInterval)
  @available(OSX 10.7, *)
  optional func windowDidFail(toEnterFullScreen window: NSWindow)
  @available(OSX 10.7, *)
  optional func customWindowsToExitFullScreen(for window: NSWindow) -> [NSWindow]?
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, startCustomAnimationToExitFullScreenWithDuration duration: NSTimeInterval)
  @available(OSX 10.9, *)
  optional func customWindowsToEnterFullScreen(for window: NSWindow, on screen: NSScreen) -> [NSWindow]?
  @available(OSX 10.9, *)
  optional func window(_ window: NSWindow, startCustomAnimationToEnterFullScreenOn screen: NSScreen, withDuration duration: NSTimeInterval)
  @available(OSX 10.7, *)
  optional func windowDidFail(toExitFullScreen window: NSWindow)
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, willResizeForVersionBrowserWithMaxPreferredSize maxPreferredFrameSize: NSSize, maxAllowedSize maxAllowedFrameSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, willEncodeRestorableState state: NSCoder)
  @available(OSX 10.7, *)
  optional func window(_ window: NSWindow, didDecodeRestorableState state: NSCoder)
  optional func windowDidResize(_ notification: NSNotification)
  optional func windowDidExpose(_ notification: NSNotification)
  optional func windowWillMove(_ notification: NSNotification)
  optional func windowDidMove(_ notification: NSNotification)
  optional func windowDidBecomeKey(_ notification: NSNotification)
  optional func windowDidResignKey(_ notification: NSNotification)
  optional func windowDidBecomeMain(_ notification: NSNotification)
  optional func windowDidResignMain(_ notification: NSNotification)
  optional func windowWillClose(_ notification: NSNotification)
  optional func windowWillMiniaturize(_ notification: NSNotification)
  optional func windowDidMiniaturize(_ notification: NSNotification)
  optional func windowDidDeminiaturize(_ notification: NSNotification)
  optional func windowDidUpdate(_ notification: NSNotification)
  optional func windowDidChangeScreen(_ notification: NSNotification)
  optional func windowDidChangeScreenProfile(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidChangeBackingProperties(_ notification: NSNotification)
  optional func windowWillBeginSheet(_ notification: NSNotification)
  optional func windowDidEndSheet(_ notification: NSNotification)
  @available(OSX 10.6, *)
  optional func windowWillStartLiveResize(_ notification: NSNotification)
  @available(OSX 10.6, *)
  optional func windowDidEndLiveResize(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillEnterFullScreen(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidEnterFullScreen(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillExitFullScreen(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidExitFullScreen(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillEnterVersionBrowser(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidEnterVersionBrowser(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowWillExitVersionBrowser(_ notification: NSNotification)
  @available(OSX 10.7, *)
  optional func windowDidExitVersionBrowser(_ notification: NSNotification)
  @available(OSX 10.9, *)
  optional func windowDidChangeOcclusionState(_ notification: NSNotification)
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
