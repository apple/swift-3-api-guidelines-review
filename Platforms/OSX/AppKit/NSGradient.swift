
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
@available(OSX 10.5, *)
class NSGradient : Object, Copying, Coding {
  convenience init?(starting startingColor: NSColor, ending endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace: NSColorSpace)
  func drawFrom(startingPoint: Point, to endingPoint: Point, options: NSGradientDrawingOptions)
  func drawIn(rect: Rect, angle: CGFloat)
  func drawIn(path: NSBezierPath, angle: CGFloat)
  func drawFromCenter(startCenter: Point, radius startRadius: CGFloat, toCenter endCenter: Point, radius endRadius: CGFloat, options: NSGradientDrawingOptions)
  func drawIn(rect: Rect, relativeCenterPosition: Point)
  func drawIn(path: NSBezierPath, relativeCenterPosition: Point)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(color: AutoreleasingUnsafeMutablePointer<NSColor?>, location: UnsafeMutablePointer<CGFloat>, at index: Int)
  func interpolatedColorAtLocation(location: CGFloat) -> NSColor
  convenience init()
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
