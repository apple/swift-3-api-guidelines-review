
@available(iOS 9.0, *)
class MPSImageMedian : MPSUnaryImageKernel {
  var kernelDiameter: Int { get }
  init(device device: MTLDevice, kernelDiameter kernelDiameter: Int)
  class func maxKernelDiameter() -> Int
  class func minKernelDiameter() -> Int
}
