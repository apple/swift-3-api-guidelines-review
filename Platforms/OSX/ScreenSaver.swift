
class ScreenSaverDefaults : UserDefaults {
  convenience init?(forModuleWithName inModuleName: String)
  convenience init()
  @available(OSX 10.9, *)
  init?(suiteName suitename: String?)
}
class ScreenSaverView : NSView {
  class func backingStoreType() -> NSBackingStoreType
  class func performGammaFade() -> Bool
  convenience init?(frame: Rect)
  init?(frame: Rect, isPreview: Bool)
  var animationTimeInterval: TimeInterval
  func startAnimation()
  func stopAnimation()
  var isAnimating: Bool { get }
  func draw(rect: Rect)
  func animateOneFrame()
  func hasConfigureSheet() -> Bool
  func configureSheet() -> NSWindow?
  var isPreview: Bool { get }
  init?(coder: Coder)
  convenience init()
}
func SSRandomIntBetween(a: Int32, _ b: Int32) -> Int32
func SSRandomFloatBetween(a: CGFloat, _ b: CGFloat) -> CGFloat
func SSRandomPointForSizeWithinRect(size: Size, _ rect: Rect) -> Point
func SSCenteredRectInRect(innerRect: Rect, _ outerRect: Rect) -> Rect
