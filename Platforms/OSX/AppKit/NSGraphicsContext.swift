
let NSGraphicsContextDestinationAttributeName: String
let NSGraphicsContextRepresentationFormatAttributeName: String
let NSGraphicsContextPSFormat: String
let NSGraphicsContextPDFFormat: String
enum NSImageInterpolation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case none
  case low
  @available(OSX 10.6, *)
  case medium
  case high
}
class NSGraphicsContext : Object {
  /*not inherited*/ init?(attributes: [String : AnyObject] = [:])
  /*not inherited*/ init(window: NSWindow)
  /*not inherited*/ init?(bitmapImageRep bitmapRep: NSBitmapImageRep)
  @available(OSX 10.10, *)
  /*not inherited*/ init(cgContext graphicsPort: CGContext, flipped initialFlippedState: Bool)
  class func current() -> NSGraphicsContext?
  class func setCurrentContext(context: NSGraphicsContext?)
  class func currentContextDrawingToScreen() -> Bool
  class func saveGraphicsState()
  class func restoreGraphicsState()
  var attributes: [String : AnyObject]? { get }
  var isDrawingToScreen: Bool { get }
  func saveGraphicsState()
  func restoreGraphicsState()
  func flushGraphics()
  @available(OSX 10.10, *)
  var cgContext: CGContext { get }
  var isFlipped: Bool { get }
  init()
}
extension NSGraphicsContext {
  var shouldAntialias: Bool
  var imageInterpolation: NSImageInterpolation
  var patternPhase: Point
  var compositingOperation: NSCompositingOperation
  @available(OSX 10.5, *)
  var colorRenderingIntent: NSColorRenderingIntent
}
extension NSGraphicsContext {
  var ciContext: CIContext? { get }
}
extension NSGraphicsContext {
  @available(OSX, introduced=10.0, deprecated=10.10)
  class func setGraphicsState(gState: Int)
  /*not inherited*/ init(graphicsPort: UnsafeMutablePointer<Void>, flipped initialFlippedState: Bool)
  var graphicsPort: UnsafeMutablePointer<Void> { get }
}
