
@available(OSX 10.10, *)
class SKReachConstraints : NSObject, NSCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
  convenience init()
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
