
@available(iOS 9.0, *)
class MPSImageConvolution : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  var bias: Float
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int, weights kernelWeights: UnsafePointer<Float>)
  convenience init(device device: MTLDevice)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageBox : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int)
  convenience init()
}
class MPSImageTent : MPSImageBox {
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageGaussianBlur : MPSUnaryImageKernel {
  init(device device: MTLDevice, sigma sigma: Float)
  var sigma: Float { get }
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageSobel : MPSUnaryImageKernel {
  convenience init(device device: MTLDevice)
  init(device device: MTLDevice, linearGrayColorTransform transform: UnsafePointer<Float>)
  var colorTransform: UnsafePointer<Float> { get }
  convenience init()
}
