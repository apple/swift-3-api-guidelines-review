
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  var shadowOffset: NSSize
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
