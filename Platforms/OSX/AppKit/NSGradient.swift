
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
@available(OSX 10.5, *)
class NSGradient : Object, Copying, Coding {
  convenience init?(starting startingColor: NSColor, ending endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace: NSColorSpace)
  func draw(from startingPoint: Point, to endingPoint: Point, options: NSGradientDrawingOptions)
  func draw(in rect: Rect, angle: CGFloat)
  func draw(in path: NSBezierPath, angle: CGFloat)
  func drawFromCenter(startCenter: Point, radius startRadius: CGFloat, toCenter endCenter: Point, radius endRadius: CGFloat, options: NSGradientDrawingOptions)
  func draw(in rect: Rect, relativeCenterPosition: Point)
  func draw(in path: NSBezierPath, relativeCenterPosition: Point)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(color: AutoreleasingUnsafeMutablePointer<NSColor?>, location: UnsafeMutablePointer<CGFloat>, at index: Int)
  func interpolatedColor(atLocation location: CGFloat) -> NSColor
  convenience init()
  @available(OSX 10.5, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
