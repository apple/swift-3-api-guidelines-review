
@available(OSX 10.10, *)
class SKRegion : NSObject, NSCopying, NSCoding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnion(with region: SKRegion) -> Self
  func byDifference(from region: SKRegion) -> Self
  func byIntersection(with region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
