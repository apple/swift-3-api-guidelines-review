
let NSGraphicsContextDestinationAttributeName: String
let NSGraphicsContextRepresentationFormatAttributeName: String
let NSGraphicsContextPSFormat: String
let NSGraphicsContextPDFFormat: String
enum NSImageInterpolation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Low
  @available(OSX 10.6, *)
  case Medium
  case High
}
class NSGraphicsContext : NSObject {
  /*not inherited*/ init?(attributes attributes: [String : AnyObject])
  /*not inherited*/ init(window window: NSWindow)
  /*not inherited*/ init?(bitmapImageRep bitmapRep: NSBitmapImageRep)
  @available(OSX 10.10, *)
  /*not inherited*/ init(CGContext graphicsPort: CGContext, flipped initialFlippedState: Bool)
  class func currentContext() -> NSGraphicsContext?
  class func setCurrentContext(_ context: NSGraphicsContext?)
  class func currentContextDrawingToScreen() -> Bool
  class func saveGraphicsState()
  class func restoreGraphicsState()
  var attributes: [String : AnyObject]? { get }
  var drawingToScreen: Bool { get }
  func saveGraphicsState()
  func restoreGraphicsState()
  func flushGraphics()
  @available(OSX 10.10, *)
  var CGContext: CGContext { get }
  var flipped: Bool { get }
}
extension NSGraphicsContext {
  var shouldAntialias: Bool
  var imageInterpolation: NSImageInterpolation
  var patternPhase: NSPoint
  var compositingOperation: NSCompositingOperation
  @available(OSX 10.5, *)
  var colorRenderingIntent: NSColorRenderingIntent
}
extension NSGraphicsContext {
  var CIContext: CIContext? { get }
}
extension NSGraphicsContext {
  @available(OSX, introduced=10.0, deprecated=10.10)
  class func setGraphicsState(_ gState: Int)
  /*not inherited*/ init(graphicsPort graphicsPort: UnsafeMutablePointer<Void>, flipped initialFlippedState: Bool)
  var graphicsPort: UnsafeMutablePointer<Void> { get }
}
