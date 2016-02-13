
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(tvOS 8.0, *)
class CIKernel : Object {
  @available(tvOS 8.0, *)
  class func kernels(string: String) -> [CIKernel]?
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  var name: String { get }
  @available(tvOS 9.0, *)
  func setROISelector(method: Selector)
  @available(tvOS 8.0, *)
  func apply(extent extent: CGRect, roiCallback callback: CIKernelROICallback, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 8.0, *)
class CIColorKernel : CIKernel {
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  func apply(extent extent: CGRect, arguments args: [AnyObject]?) -> CIImage?
  init()
}
@available(tvOS 8.0, *)
class CIWarpKernel : CIKernel {
  @available(tvOS 8.0, *)
  convenience init?(string: String)
  @available(tvOS 8.0, *)
  func apply(extent extent: CGRect, roiCallback callback: CIKernelROICallback, inputImage image: CIImage, arguments args: [AnyObject]?) -> CIImage?
  init()
}
