
class ScreenSaverView : NSView {
  class func backingStoreType() -> NSBackingStoreType
  class func performGammaFade() -> Bool
  convenience init?(frame: NSRect)
  init?(frame: NSRect, isPreview: Bool)
  var animationTimeInterval: NSTimeInterval
  func startAnimation()
  func stopAnimation()
  var animating: Bool { get }
  func drawRect(rect: NSRect)
  func animateOneFrame()
  func hasConfigureSheet() -> Bool
  func configureSheet() -> NSWindow?
  var preview: Bool { get }
  init?(coder: NSCoder)
  convenience init()
}
func SSRandomIntBetween(a: Int32, _ b: Int32) -> Int32
func SSRandomFloatBetween(a: CGFloat, _ b: CGFloat) -> CGFloat
func SSRandomPointForSizeWithinRect(size: NSSize, _ rect: NSRect) -> NSPoint
func SSCenteredRectInRect(innerRect: NSRect, _ outerRect: NSRect) -> NSRect
