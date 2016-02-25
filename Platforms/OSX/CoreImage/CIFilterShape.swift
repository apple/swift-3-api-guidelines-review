
@available(OSX 10.4, *)
class CIFilterShape : NSObject, NSCopying {
  init(rect r: CGRect)
  func transformBy(_ m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetByX(_ dx: Int32, y dy: Int32) -> CIFilterShape
  func unionWith(_ s2: CIFilterShape) -> CIFilterShape
  func unionWithRect(_ r: CGRect) -> CIFilterShape
  func intersectWith(_ s2: CIFilterShape) -> CIFilterShape
  func intersectWithRect(_ r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  @available(OSX 10.4, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
