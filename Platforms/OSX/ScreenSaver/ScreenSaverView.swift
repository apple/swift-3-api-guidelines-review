
class ScreenSaverView : NSView {
  class func backingStoreType() -> NSBackingStoreType
  class func performGammaFade() -> Bool
  convenience init?(frame frame: NSRect)
  init?(frame frame: NSRect, isPreview isPreview: Bool)
  var animationTimeInterval: NSTimeInterval
  func startAnimation()
  func stopAnimation()
  var isAnimating: Bool { get }
  func draw(_ rect: NSRect)
  func animateOneFrame()
  func hasConfigureSheet() -> Bool
  func configureSheet() -> NSWindow?
  var isPreview: Bool { get }
  init?(coder coder: NSCoder)
  convenience init()
}
func SSRandomIntBetween(_ a: Int32, _ b: Int32) -> Int32
func SSRandomFloatBetween(_ a: CGFloat, _ b: CGFloat) -> CGFloat
func SSRandomPointForSizeWithinRect(_ size: NSSize, _ rect: NSRect) -> NSPoint
func SSCenteredRectInRect(_ innerRect: NSRect, _ outerRect: NSRect) -> NSRect
