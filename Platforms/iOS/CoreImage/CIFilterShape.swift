
@available(iOS 9.0, *)
class CIFilterShape : Object, Copying {
  init(rect r: CGRect)
  func transformBy(m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetBy(x dx: Int32, y dy: Int32) -> CIFilterShape
  func unionWith(s2: CIFilterShape) -> CIFilterShape
  func unionWith(r: CGRect) -> CIFilterShape
  func intersectWith(s2: CIFilterShape) -> CIFilterShape
  func intersectWith(r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
