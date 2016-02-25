
@available(OSX 10.10, *)
class SKRegion : NSObject, NSCopying, NSCoding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius radius: Float)
  init(size size: CGSize)
  init(path path: CGPath)
  func inverse() -> Self
  func byUnion(with region: SKRegion) -> Self
  func byDifference(from region: SKRegion) -> Self
  func byIntersection(with region: SKRegion) -> Self
  func contains(_ point: CGPoint) -> Bool
  @available(OSX 10.10, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
