
@available(iOS 6.0, *)
class NSShadow : NSObject, NSCopying, NSCoding {
  init?(coder aDecoder: NSCoder)
  var shadowOffset: CGSize
  var shadowBlurRadius: CGFloat
  var shadowColor: AnyObject?
  @available(iOS 6.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func encode(with aCoder: NSCoder)
}
