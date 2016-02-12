
@available(tvOS 9.0, *)
class CIFilterShape : Object, Copying {
  init(rect r: CGRect)
  func transform(by m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetBy(x dx: Int32, y dy: Int32) -> CIFilterShape
  func union(s2: CIFilterShape) -> CIFilterShape
  func union(r: CGRect) -> CIFilterShape
  func intersect(s2: CIFilterShape) -> CIFilterShape
  func intersect(r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(tvOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
