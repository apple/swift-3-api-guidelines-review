
@available(iOS 8.0, *)
class SKReachConstraints : NSObject, NSCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
  convenience init()
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
