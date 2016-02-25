
@available(OSX 10.10, *)
class SKReachConstraints : NSObject, NSCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit lowerAngleLimit: CGFloat, upperAngleLimit upperAngleLimit: CGFloat)
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
