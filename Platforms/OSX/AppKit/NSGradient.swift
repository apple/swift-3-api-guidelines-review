
typealias NSGradientDrawingOptions = Int
var NSGradientDrawsBeforeStartingLocation: Int { get }
var NSGradientDrawsAfterEndingLocation: Int { get }
@available(OSX 10.5, *)
class NSGradient : NSObject, NSCopying, NSCoding {
  convenience init?(starting startingColor: NSColor, ending endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>, colorSpace: NSColorSpace)
  func draw(from startingPoint: NSPoint, to endingPoint: NSPoint, options: NSGradientDrawingOptions)
  func draw(in rect: NSRect, angle: CGFloat)
  func draw(in path: NSBezierPath, angle: CGFloat)
  func draw(fromCenter startCenter: NSPoint, radius startRadius: CGFloat, toCenter endCenter: NSPoint, radius endRadius: CGFloat, options: NSGradientDrawingOptions)
  func draw(in rect: NSRect, relativeCenterPosition: NSPoint)
  func draw(in path: NSBezierPath, relativeCenterPosition: NSPoint)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(color: AutoreleasingUnsafeMutablePointer<NSColor?>, location: UnsafeMutablePointer<CGFloat>, at index: Int)
  func interpolatedColor(atLocation location: CGFloat) -> NSColor
  convenience init()
  @available(OSX 10.5, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
