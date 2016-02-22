
@available(iOS 9.0, *)
class MPSImageAreaMax : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageAreaMin : MPSImageAreaMax {
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageDilate : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int, values values: UnsafePointer<Float>)
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageErode : MPSImageDilate {
  init(device device: MTLDevice, kernelWidth kernelWidth: Int, kernelHeight kernelHeight: Int, values values: UnsafePointer<Float>)
  convenience init()
}
