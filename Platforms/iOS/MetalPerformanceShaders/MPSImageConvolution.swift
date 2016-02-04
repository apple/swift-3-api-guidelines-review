
@available(iOS 9.0, *)
class MPSImageConvolution : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  var bias: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, weights kernelWeights: UnsafePointer<Float>)
  convenience init(device: MTLDevice)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageBox : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
class MPSImageTent : MPSImageBox {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageGaussianBlur : MPSUnaryImageKernel {
  init(device: MTLDevice, sigma: Float)
  var sigma: Float { get }
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageSobel : MPSUnaryImageKernel {
  convenience init(device: MTLDevice)
  init(device: MTLDevice, linearGrayColorTransform transform: UnsafePointer<Float>)
  var colorTransform: UnsafePointer<Float> { get }
  convenience init()
}
