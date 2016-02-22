
struct NSAutoresizingMaskOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var viewNotSizable: NSAutoresizingMaskOptions { get }
  static var viewMinXMargin: NSAutoresizingMaskOptions { get }
  static var viewWidthSizable: NSAutoresizingMaskOptions { get }
  static var viewMaxXMargin: NSAutoresizingMaskOptions { get }
  static var viewMinYMargin: NSAutoresizingMaskOptions { get }
  static var viewHeightSizable: NSAutoresizingMaskOptions { get }
  static var viewMaxYMargin: NSAutoresizingMaskOptions { get }
}
enum NSBorderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noBorder
  case lineBorder
  case bezelBorder
  case grooveBorder
}
@available(OSX 10.6, *)
enum NSViewLayerContentsRedrawPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case never
  case onSetNeedsDisplay
  case duringViewResize
  case beforeViewResize
  @available(OSX 10.9, *)
  case crossfade
}
@available(OSX 10.6, *)
enum NSViewLayerContentsPlacement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case scaleAxesIndependently
  case scaleProportionallyToFit
  case scaleProportionallyToFill
  case center
  case top
  case topRight
  case right
  case bottomRight
  case bottom
  case bottomLeft
  case left
  case topLeft
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
  func ancestorShared(with aView: NSView) -> NSView?
  unowned(unsafe) var opaqueAncestor: @sil_unmanaged NSView? { get }
  var isHidden: Bool
  var isHiddenOrHasHiddenAncestor: Bool { get }
  func getRectsBeingDrawn(rects: UnsafeMutablePointer<UnsafePointer<NSRect>>, count: UnsafeMutablePointer<Int>)
  func needs(toDraw aRect: NSRect) -> Bool
  var wantsDefaultClipping: Bool { get }
  @available(OSX 10.5, *)
  func viewDidHide()
  @available(OSX 10.5, *)
  func viewDidUnhide()
  func addSubview(aView: NSView)
  func addSubview(aView: NSView, positioned place: NSWindowOrderingMode, relativeTo otherView: NSView?)
  func sortSubviews(compare: @convention(c) (NSView, NSView, UnsafeMutablePointer<Void>) -> NSComparisonResult, context: UnsafeMutablePointer<Void>)
  func viewWillMove(to newWindow: NSWindow?)
  func viewDidMoveToWindow()
  func viewWillMove(toSuperview newSuperview: NSView?)
  func viewDidMoveToSuperview()
  func didAddSubview(subview: NSView)
  func willRemoveSubview(subview: NSView)
  func removeFromSuperview()
  func replaceSubview(oldView: NSView, with newView: NSView)
  func removeFromSuperviewWithoutNeedingDisplay()
  @available(OSX 10.7, *)
  func viewDidChangeBackingProperties()
  var postsFrameChangedNotifications: Bool
  func resizeSubviews(oldSize oldSize: NSSize)
  func resize(oldSuperviewSize oldSize: NSSize)
  var autoresizesSubviews: Bool
  var autoresizingMask: NSAutoresizingMaskOptions
  func setFrameOrigin(newOrigin: NSPoint)
  func setFrameSize(newSize: NSSize)
  var frame: NSRect
  var frameRotation: CGFloat
  @available(OSX 10.5, *)
  var frameCenterRotation: CGFloat
  func setBoundsOrigin(newOrigin: NSPoint)
  func setBoundsSize(newSize: NSSize)
  var boundsRotation: CGFloat
  func translateOrigin(to translation: NSPoint)
  func scaleUnitSquare(to newUnitSize: NSSize)
  func rotate(byAngle angle: CGFloat)
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
  func convertPoint(toLayer aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertPoint(fromLayer aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertSize(toLayer aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertSize(fromLayer aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertRect(toLayer aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRect(fromLayer aRect: NSRect) -> NSRect
  @available(OSX 10.6, *)
  var canDrawConcurrently: Bool
  var canDraw: Bool { get }
  func setNeedsDisplayIn(invalidRect: NSRect)
  var needsDisplay: Bool
  func lockFocus()
  func unlockFocus()
  func lockFocusIfCanDraw() -> Bool
  func lockFocusIfCanDraw(in context: NSGraphicsContext) -> Bool
  class func focus() -> NSView?
  var visibleRect: NSRect { get }
  func display()
  func displayIfNeeded()
  func displayIfNeededIgnoringOpacity()
  func display(rect: NSRect)
  func displayIfNeeded(in rect: NSRect)
  func displayRectIgnoringOpacity(rect: NSRect)
  func displayIfNeeded(inRectIgnoringOpacity rect: NSRect)
  func draw(dirtyRect: NSRect)
  func displayRectIgnoringOpacity(aRect: NSRect, in context: NSGraphicsContext)
  func bitmapImageRepForCachingDisplay(in rect: NSRect) -> NSBitmapImageRep?
  func cacheDisplay(in rect: NSRect, to bitmapImageRep: NSBitmapImageRep)
  @available(OSX 10.5, *)
  func viewWillDraw()
  func scroll(aPoint: NSPoint)
  func scrollRectToVisible(aRect: NSRect) -> Bool
  func autoscroll(theEvent: NSEvent) -> Bool
  func adjustScroll(newVisible: NSRect) -> NSRect
  func scroll(aRect: NSRect, by delta: NSSize)
  @available(OSX 10.5, *)
  func translateRectsNeedingDisplay(in clipRect: NSRect, by delta: NSSize)
  func hitTest(aPoint: NSPoint) -> NSView?
  func mouse(aPoint: NSPoint, in aRect: NSRect) -> Bool
  func withTag(aTag: Int) -> NSView?
  var tag: Int { get }
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func acceptsFirstMouse(theEvent: NSEvent?) -> Bool
  func shouldDelayWindowOrdering(for theEvent: NSEvent) -> Bool
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
  func addTrackingRect(aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>, assumeInside flag: Bool) -> NSTrackingRectTag
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
  func menu(for event: NSEvent) -> NSMenu?
  class func defaultMenu() -> NSMenu?
  @available(OSX 10.11, *)
  func willOpenMenu(menu: NSMenu, with event: NSEvent)
  @available(OSX 10.11, *)
  func didCloseMenu(menu: NSMenu, with event: NSEvent?)
  var toolTip: String?
  func addToolTip(aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>) -> NSToolTipTag
  func removeToolTip(tag: NSToolTipTag)
  func removeAllToolTips()
  func viewWillStartLiveResize()
  func viewDidEndLiveResize()
  var inLiveResize: Bool { get }
  var preservesContentDuringLiveResize: Bool { get }
  var rectPreservedDuringLiveResize: NSRect { get }
  func getRectsExposedDuringLiveResize(exposedRects: UnsafeMutablePointer<NSRect>, count: UnsafeMutablePointer<Int>)
  @available(OSX 10.6, *)
  var inputContext: NSTextInputContext? { get }
  @available(OSX 10.8, *)
  func rectForSmartMagnification(at location: NSPoint, in visibleRect: NSRect) -> NSRect
  @available(OSX 10.8, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(OSX 10.7, *)
  func prepareForReuse()
  @available(OSX 10.9, *)
  class func isCompatibleWithResponsiveScrolling() -> Bool
  @available(OSX 10.9, *)
  func prepareContent(in rect: NSRect)
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
  func animation(forKey key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimation(forKey key: String) -> AnyObject?
  var identifier: String?
  func draggingEntered(sender: NSDraggingInfo) -> NSDragOperation
  func draggingUpdated(sender: NSDraggingInfo) -> NSDragOperation
  func draggingExited(sender: NSDraggingInfo?)
  func prepare(forDragOperation sender: NSDraggingInfo) -> Bool
  func performDragOperation(sender: NSDraggingInfo) -> Bool
  func concludeDragOperation(sender: NSDraggingInfo?)
  func draggingEnded(sender: NSDraggingInfo?)
  func wantsPeriodicDraggingUpdates() -> Bool
  @available(OSX 10.7, *)
  func updateDraggingItems(forDrag sender: NSDraggingInfo?)
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
  func accessibilityCell(forColumn column: Int, row: Int) -> AnyObject?
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

extension NSView : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
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
  func writeEPS(inside rect: NSRect, to pasteboard: NSPasteboard)
  func dataWithEPS(inside rect: NSRect) -> NSData
  func writePDF(inside rect: NSRect, to pasteboard: NSPasteboard)
  func dataWithPDF(inside rect: NSRect) -> NSData
  @warn_unqualified_access
  func print(sender: AnyObject?)
  func knowsPageRange(range: NSRangePointer) -> Bool
  var heightAdjustLimit: CGFloat { get }
  var widthAdjustLimit: CGFloat { get }
  func adjustPageWidthNew(newRight: UnsafeMutablePointer<CGFloat>, left oldLeft: CGFloat, right oldRight: CGFloat, limit rightLimit: CGFloat)
  func adjustPageHeightNew(newBottom: UnsafeMutablePointer<CGFloat>, top oldTop: CGFloat, bottom oldBottom: CGFloat, limit bottomLimit: CGFloat)
  func rect(forPage page: Int) -> NSRect
  func locationOf(print aRect: NSRect) -> NSPoint
  func drawPageBorder(borderSize: NSSize)
  @NSCopying var pageHeader: NSAttributedString { get }
  @NSCopying var pageFooter: NSAttributedString { get }
  func drawSheetBorder(borderSize: NSSize)
  var printJobTitle: String { get }
  func beginDocument()
  func endDocument()
  func beginPage(in aRect: NSRect, atPlacement location: NSPoint)
  func endPage()
}
extension NSView {
  @available(OSX 10.7, *)
  func beginDraggingSession(items: [NSDraggingItem], event: NSEvent, source: NSDraggingSource) -> NSDraggingSession
  var registeredDraggedTypes: [String] { get }
  func register(forDraggedTypes newTypes: [String])
  func unregisterDraggedTypes()
  func dragFile(filename: String, from rect: NSRect, slideBack aFlag: Bool, event: NSEvent) -> Bool
  func dragPromisedFiles(ofTypes typeArray: [String], from rect: NSRect, source sourceObject: AnyObject, slideBack aFlag: Bool, event: NSEvent) -> Bool
}
extension NSView {
  @available(OSX 10.5, *)
  func enterFullScreenMode(screen: NSScreen, withOptions options: [String : AnyObject]? = [:]) -> Bool
  @available(OSX 10.5, *)
  func exitFullScreenMode(options options: [String : AnyObject]? = [:])
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
  func showDefinition(for attrString: NSAttributedString?, at textBaselineOrigin: NSPoint)
  @available(OSX 10.6, *)
  func showDefinition(for attrString: NSAttributedString?, range targetRange: NSRange, options: [String : AnyObject]? = [:], baselineOriginProvider originProvider: ((NSRange) -> NSPoint)? = nil)
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
