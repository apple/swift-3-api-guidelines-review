
@available(tvOS 9.0, *)
class MPSImageMedian : MPSUnaryImageKernel {
  var kernelDiameter: Int { get }
  init(device: MTLDevice, kernelDiameter: Int)
  class func maxKernelDiameter() -> Int
  class func minKernelDiameter() -> Int
  convenience init()
}
