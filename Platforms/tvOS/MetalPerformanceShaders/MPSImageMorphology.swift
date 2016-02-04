
@available(tvOS 9.0, *)
class MPSImageAreaMax : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
@available(tvOS 9.0, *)
class MPSImageAreaMin : MPSImageAreaMax {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  convenience init()
}
@available(tvOS 9.0, *)
class MPSImageDilate : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
  convenience init()
}
@available(tvOS 9.0, *)
class MPSImageErode : MPSImageDilate {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
  convenience init()
}
