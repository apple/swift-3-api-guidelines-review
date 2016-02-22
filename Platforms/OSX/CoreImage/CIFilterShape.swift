
@available(OSX 10.4, *)
class CIFilterShape : NSObject, NSCopying {
  init(rect r: CGRect)
  func transform(by m: CGAffineTransform, interior flag: Bool) -> CIFilterShape
  func insetBy(x dx: Int32, y dy: Int32) -> CIFilterShape
  func union(_ s2: CIFilterShape) -> CIFilterShape
  func union(_ r: CGRect) -> CIFilterShape
  func intersect(_ s2: CIFilterShape) -> CIFilterShape
  func intersect(_ r: CGRect) -> CIFilterShape
  var extent: CGRect { get }
  init()
  @available(OSX 10.4, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
