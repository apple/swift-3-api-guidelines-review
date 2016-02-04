
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
@available(OSX 10.5, *)
class NSGradient : NSObject, NSCopying, NSCoding {
  convenience init?(startingColor: NSColor, endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace: NSColorSpace)
  func drawFromPoint(startingPoint: NSPoint, toPoint endingPoint: NSPoint, options: NSGradientDrawingOptions)
  func drawInRect(rect: NSRect, angle: CGFloat)
  func drawInBezierPath(path: NSBezierPath, angle: CGFloat)
  func drawFromCenter(startCenter: NSPoint, radius startRadius: CGFloat, toCenter endCenter: NSPoint, radius endRadius: CGFloat, options: NSGradientDrawingOptions)
  func drawInRect(rect: NSRect, relativeCenterPosition: NSPoint)
  func drawInBezierPath(path: NSBezierPath, relativeCenterPosition: NSPoint)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(color: AutoreleasingUnsafeMutablePointer<NSColor?>, location: UnsafeMutablePointer<CGFloat>, atIndex index: Int)
  func interpolatedColorAtLocation(location: CGFloat) -> NSColor
  convenience init()
  @available(OSX 10.5, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
