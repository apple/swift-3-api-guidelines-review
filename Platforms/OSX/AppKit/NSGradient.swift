
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
@available(OSX 10.5, *)
class NSGradient : NSObject, NSCopying, NSCoding {
  convenience init?(startingColor startingColor: NSColor, endingColor endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace colorSpace: NSColorSpace)
  func drawFromPoint(_ startingPoint: NSPoint, toPoint endingPoint: NSPoint, options options: NSGradientDrawingOptions)
  func drawInRect(_ rect: NSRect, angle angle: CGFloat)
  func drawInBezierPath(_ path: NSBezierPath, angle angle: CGFloat)
  func drawFromCenter(_ startCenter: NSPoint, radius startRadius: CGFloat, toCenter endCenter: NSPoint, radius endRadius: CGFloat, options options: NSGradientDrawingOptions)
  func drawInRect(_ rect: NSRect, relativeCenterPosition relativeCenterPosition: NSPoint)
  func drawInBezierPath(_ path: NSBezierPath, relativeCenterPosition relativeCenterPosition: NSPoint)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(_ color: AutoreleasingUnsafeMutablePointer<NSColor?>, location location: UnsafeMutablePointer<CGFloat>, atIndex index: Int)
  func interpolatedColorAtLocation(_ location: CGFloat) -> NSColor
  @available(OSX 10.5, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
