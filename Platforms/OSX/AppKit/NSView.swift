
struct NSAutoresizingMaskOptions : OptionSetType {
  init(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case noBorder
  case lineBorder
  case bezelBorder
  case grooveBorder
}
@available(OSX 10.6, *)
enum NSViewLayerContentsRedrawPolicy : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
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
  init(aboutToResize aboutToResize: UInt32, isOpaque isOpaque: UInt32, unused3 unused3: UInt32, hasNotMessedWithIsFlipped hasNotMessedWithIsFlipped: UInt32, ignoreHitTest ignoreHitTest: UInt32, specialArchiving specialArchiving: UInt32, needsDisplayForBounds needsDisplayForBounds: UInt32, isFlipped isFlipped: UInt32, removingWithoutInvalidation removingWithoutInvalidation: UInt32, needsBoundsChangeNote needsBoundsChangeNote: UInt32, boundsChangeNotesSuspended boundsChangeNotesSuspended: UInt32, unused2 unused2: UInt32, needsFrameChangeNote needsFrameChangeNote: UInt32, frameChangeNotesSuspended frameChangeNotesSuspended: UInt32, canDrawSubviewsIntoLayer canDrawSubviewsIntoLayer: UInt32, allowsVibrancy allowsVibrancy: UInt32, needsDisplay needsDisplay: UInt32, wantsGState wantsGState: UInt32, autoresizeSubviews autoresizeSubviews: UInt32, autosizing autosizing: UInt32, rotatedOrScaledFromBase rotatedOrScaledFromBase: UInt32, rotatedFromBase rotatedFromBase: UInt32)
}
typealias _VFlags = __VFlags
typealias NSTrackingRectTag = Int
typealias NSToolTipTag = Int
class NSView : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceItemIdentification, NSDraggingDestination, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibility {
  init(frame frameRect: NSRect)
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var superview: @sil_unmanaged NSView? { get }
  var subviews: [NSView]
  func isDescendant(of aView: NSView) -> Bool
  func ancestorShared(with aView: NSView) -> NSView?
  unowned(unsafe) var opaqueAncestor: @sil_unmanaged NSView? { get }
  var isHidden: Bool
  var isHiddenOrHasHiddenAncestor: Bool { get }
  func getRectsBeingDrawn(_ rects: UnsafeMutablePointer<UnsafePointer<NSRect>>, count count: UnsafeMutablePointer<Int>)
  func needs(toDraw aRect: NSRect) -> Bool
  var wantsDefaultClipping: Bool { get }
  @available(OSX 10.5, *)
  func viewDidHide()
  @available(OSX 10.5, *)
  func viewDidUnhide()
  func addSubview(_ aView: NSView)
  func addSubview(_ aView: NSView, positioned place: NSWindowOrderingMode, relativeTo otherView: NSView?)
  func sortSubviews(_ compare: @convention(c) (NSView, NSView, UnsafeMutablePointer<Void>) -> NSComparisonResult, context context: UnsafeMutablePointer<Void>)
  func viewWillMove(to newWindow: NSWindow?)
  func viewDidMoveToWindow()
  func viewWillMove(toSuperview newSuperview: NSView?)
  func viewDidMoveToSuperview()
  func didAddSubview(_ subview: NSView)
  func willRemoveSubview(_ subview: NSView)
  func removeFromSuperview()
  func replaceSubview(_ oldView: NSView, with newView: NSView)
  func removeFromSuperviewWithoutNeedingDisplay()
  @available(OSX 10.7, *)
  func viewDidChangeBackingProperties()
  var postsFrameChangedNotifications: Bool
  func resizeSubviews(withOldSize oldSize: NSSize)
  func resize(withOldSuperviewSize oldSize: NSSize)
  var autoresizesSubviews: Bool
  var autoresizingMask: NSAutoresizingMaskOptions
  func setFrameOrigin(_ newOrigin: NSPoint)
  func setFrameSize(_ newSize: NSSize)
  var frame: NSRect
  var frameRotation: CGFloat
  @available(OSX 10.5, *)
  var frameCenterRotation: CGFloat
  func setBoundsOrigin(_ newOrigin: NSPoint)
  func setBoundsSize(_ newSize: NSSize)
  var boundsRotation: CGFloat
  func translateOrigin(to translation: NSPoint)
  func scaleUnitSquare(to newUnitSize: NSSize)
  func rotate(byAngle angle: CGFloat)
  var bounds: NSRect
  var isFlipped: Bool { get }
  var isRotatedFromBase: Bool { get }
  var isRotatedOrScaledFromBase: Bool { get }
  var isOpaque: Bool { get }
  func convert(_ aPoint: NSPoint, from aView: NSView?) -> NSPoint
  func convert(_ aPoint: NSPoint, to aView: NSView?) -> NSPoint
  func convert(_ aSize: NSSize, from aView: NSView?) -> NSSize
  func convert(_ aSize: NSSize, to aView: NSView?) -> NSSize
  func convert(_ aRect: NSRect, from aView: NSView?) -> NSRect
  func convert(_ aRect: NSRect, to aView: NSView?) -> NSRect
  @available(OSX 10.7, *)
  func backingAlignedRect(_ aRect: NSRect, options options: NSAlignmentOptions = []) -> NSRect
  func centerScanRect(_ aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertPointToBacking(_ aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertPointFromBacking(_ aPoint: NSPoint) -> NSPoint
  @available(OSX 10.7, *)
  func convertSizeToBacking(_ aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertSizeFromBacking(_ aSize: NSSize) -> NSSize
  @available(OSX 10.7, *)
  func convertRectToBacking(_ aRect: NSRect) -> NSRect
  @available(OSX 10.7, *)
  func convertRectFromBacking(_ aRect: NSRect) -> NSRect
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
  func setNeedsDisplayIn(_ invalidRect: NSRect)
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
  func display(_ rect: NSRect)
  func displayIfNeeded(in rect: NSRect)
  func displayRectIgnoringOpacity(_ rect: NSRect)
  func displayIfNeeded(inRectIgnoringOpacity rect: NSRect)
  func draw(_ dirtyRect: NSRect)
  func displayRectIgnoringOpacity(_ aRect: NSRect, in context: NSGraphicsContext)
  func bitmapImageRepForCachingDisplay(in rect: NSRect) -> NSBitmapImageRep?
  func cacheDisplay(in rect: NSRect, to bitmapImageRep: NSBitmapImageRep)
  @available(OSX 10.5, *)
  func viewWillDraw()
  func scroll(_ aPoint: NSPoint)
  func scrollRectToVisible(_ aRect: NSRect) -> Bool
  func autoscroll(_ theEvent: NSEvent) -> Bool
  func adjustScroll(_ newVisible: NSRect) -> NSRect
  func scroll(_ aRect: NSRect, by delta: NSSize)
  @available(OSX 10.5, *)
  func translateRectsNeedingDisplay(in clipRect: NSRect, by delta: NSSize)
  func hitTest(_ aPoint: NSPoint) -> NSView?
  func mouse(_ aPoint: NSPoint, in aRect: NSRect) -> Bool
  func withTag(_ aTag: Int) -> NSView?
  var tag: Int { get }
  func acceptsFirstMouse(_ theEvent: NSEvent?) -> Bool
  func shouldDelayWindowOrdering(for theEvent: NSEvent) -> Bool
  var needsPanelToBecomeKey: Bool { get }
  var mouseDownCanMoveWindow: Bool { get }
  @available(OSX 10.6, *)
  var acceptsTouchEvents: Bool
  @available(OSX 10.6, *)
  var wantsRestingTouches: Bool
  func addCursorRect(_ aRect: NSRect, cursor anObj: NSCursor)
  func removeCursorRect(_ aRect: NSRect, cursor anObj: NSCursor)
  func discardCursorRects()
  func resetCursorRects()
  func addTrackingRect(_ aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>, assumeInside flag: Bool) -> NSTrackingRectTag
  func removeTrackingRect(_ tag: NSTrackingRectTag)
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
  func addTrackingArea(_ trackingArea: NSTrackingArea)
  @available(OSX 10.5, *)
  func removeTrackingArea(_ trackingArea: NSTrackingArea)
  @available(OSX 10.5, *)
  var trackingAreas: [NSTrackingArea] { get }
  @available(OSX 10.5, *)
  func updateTrackingAreas()
  var postsBoundsChangedNotifications: Bool
  var enclosingScrollView: NSScrollView? { get }
  func menu(for event: NSEvent) -> NSMenu?
  class func defaultMenu() -> NSMenu?
  @available(OSX 10.11, *)
  func willOpenMenu(_ menu: NSMenu, with event: NSEvent)
  @available(OSX 10.11, *)
  func didCloseMenu(_ menu: NSMenu, with event: NSEvent?)
  var toolTip: String?
  func addToolTip(_ aRect: NSRect, owner anObject: AnyObject, userData data: UnsafeMutablePointer<Void>) -> NSToolTipTag
  func removeToolTip(_ tag: NSToolTipTag)
  func removeAllToolTips()
  func viewWillStartLiveResize()
  func viewDidEndLiveResize()
  var inLiveResize: Bool { get }
  var preservesContentDuringLiveResize: Bool { get }
  var rectPreservedDuringLiveResize: NSRect { get }
  func getRectsExposedDuringLiveResize(_ exposedRects: UnsafeMutablePointer<NSRect>, count count: UnsafeMutablePointer<Int>)
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
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animation(forKey key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimation(forKey key: String) -> AnyObject?
  var identifier: String?
  func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation
  func draggingUpdated(_ sender: NSDraggingInfo) -> NSDragOperation
  func draggingExited(_ sender: NSDraggingInfo?)
  func prepare(forDragOperation sender: NSDraggingInfo) -> Bool
  func performDragOperation(_ sender: NSDraggingInfo) -> Bool
  func concludeDragOperation(_ sender: NSDraggingInfo?)
  func draggingEnded(_ sender: NSDraggingInfo?)
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

extension NSView : CustomPlaygroundQuickLookable {
}
struct __VFlags2 {
  var nextKeyViewRefCount: UInt32
  var previousKeyViewRefCount: UInt32
  var isVisibleRect: UInt32
  var hasToolTip: UInt32
  var cachedIsFlipped: UInt32
  var menuWasSet: UInt32
  init()
  init(nextKeyViewRefCount nextKeyViewRefCount: UInt32, previousKeyViewRefCount previousKeyViewRefCount: UInt32, isVisibleRect isVisibleRect: UInt32, hasToolTip hasToolTip: UInt32, cachedIsFlipped cachedIsFlipped: UInt32, menuWasSet menuWasSet: UInt32)
}
extension NSObject {
  @available(OSX 10.7, *)
  class func layer(_ layer: CALayer, shouldInheritContentsScale newScale: CGFloat, from window: NSWindow) -> Bool
  @available(OSX 10.7, *)
  func layer(_ layer: CALayer, shouldInheritContentsScale newScale: CGFloat, from window: NSWindow) -> Bool
}
extension NSObject {
  class func view(_ view: NSView, stringForToolTip tag: NSToolTipTag, point point: NSPoint, userData data: UnsafeMutablePointer<Void>) -> String
  func view(_ view: NSView, stringForToolTip tag: NSToolTipTag, point point: NSPoint, userData data: UnsafeMutablePointer<Void>) -> String
}
extension NSView {
  unowned(unsafe) var nextKey: @sil_unmanaged NSView?
  unowned(unsafe) var previousKey: @sil_unmanaged NSView? { get }
  unowned(unsafe) var nextValidKey: @sil_unmanaged NSView? { get }
  unowned(unsafe) var previousValidKey: @sil_unmanaged NSView? { get }
  var canBecomeKeyView: Bool { get }
  func setKeyboardFocusRingNeedsDisplayIn(_ rect: NSRect)
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
  func print(_ sender: AnyObject?)
  func knowsPageRange(_ range: NSRangePointer) -> Bool
  var heightAdjustLimit: CGFloat { get }
  var widthAdjustLimit: CGFloat { get }
  func adjustPageWidthNew(_ newRight: UnsafeMutablePointer<CGFloat>, left oldLeft: CGFloat, right oldRight: CGFloat, limit rightLimit: CGFloat)
  func adjustPageHeightNew(_ newBottom: UnsafeMutablePointer<CGFloat>, top oldTop: CGFloat, bottom oldBottom: CGFloat, limit bottomLimit: CGFloat)
  func rect(forPage page: Int) -> NSRect
  func location(ofPrint aRect: NSRect) -> NSPoint
  func drawPageBorder(with borderSize: NSSize)
  @NSCopying var pageHeader: NSAttributedString { get }
  @NSCopying var pageFooter: NSAttributedString { get }
  func drawSheetBorder(with borderSize: NSSize)
  var printJobTitle: String { get }
  func beginDocument()
  func endDocument()
  func beginPage(in aRect: NSRect, atPlacement location: NSPoint)
  func endPage()
}
extension NSView {
  @available(OSX 10.7, *)
  func beginDraggingSession(with items: [NSDraggingItem], event event: NSEvent, source source: NSDraggingSource) -> NSDraggingSession
  var registeredDraggedTypes: [String] { get }
  func register(forDraggedTypes newTypes: [String])
  func unregisterDraggedTypes()
  func dragFile(_ filename: String, from rect: NSRect, slideBack aFlag: Bool, event event: NSEvent) -> Bool
  func dragPromisedFiles(ofTypes typeArray: [String], from rect: NSRect, source sourceObject: AnyObject, slideBack aFlag: Bool, event event: NSEvent) -> Bool
}
extension NSView {
  @available(OSX 10.5, *)
  func enterFullScreenMode(_ screen: NSScreen, withOptions options: [String : AnyObject]? = [:]) -> Bool
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
  func showDefinition(for attrString: NSAttributedString?, range targetRange: NSRange, options options: [String : AnyObject]? = [:], baselineOriginProvider originProvider: ((NSRange) -> NSPoint)? = nil)
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
  func addGestureRecognizer(_ gestureRecognizer: NSGestureRecognizer)
  @available(OSX 10.10, *)
  func removeGestureRecognizer(_ gestureRecognizer: NSGestureRecognizer)
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
