
@available(tvOS 6.0, *)
class NSShadow : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(tvOS 6.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
