
@available(iOS 9.0, *)
class MPSImageThresholdBinary : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var maximumValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageThresholdBinaryInverse : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var maximumValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageThresholdTruncate : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageThresholdToZero : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
@available(iOS 9.0, *)
class MPSImageThresholdToZeroInverse : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
  convenience init()
}
