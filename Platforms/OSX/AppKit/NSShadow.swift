
class NSShadow : NSObject, NSCopying, NSCoding {
  var shadowOffset: NSSize
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
