
@available(iOS 9.0, *)
class CIFilterShape : Object, Copying {
  init(rect r: CGRect)
  func transform(by m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetBy(x dx: Int32, y dy: Int32) -> CIFilterShape
  func union(with s2: CIFilterShape) -> CIFilterShape
  func union(withRect r: CGRect) -> CIFilterShape
  func intersect(with s2: CIFilterShape) -> CIFilterShape
  func intersect(withRect r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(iOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
