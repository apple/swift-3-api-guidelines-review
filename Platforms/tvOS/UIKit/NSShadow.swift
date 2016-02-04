
@available(tvOS 6.0, *)
class NSShadow : NSObject, NSCopying, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(tvOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
