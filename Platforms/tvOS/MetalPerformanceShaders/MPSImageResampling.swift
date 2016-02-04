
@available(tvOS 9.0, *)
class MPSImageLanczosScale : MPSUnaryImageKernel {
  var scaleTransform: UnsafePointer<MPSScaleTransform>
  init(device: MTLDevice)
  convenience init()
}
