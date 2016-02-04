
struct MPSKernelOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 9.0, *)
  static var None: MPSKernelOptions { get }
  @available(tvOS 9.0, *)
  static var SkipAPIValidation: MPSKernelOptions { get }
  @available(tvOS 9.0, *)
  static var AllowReducedPrecision: MPSKernelOptions { get }
}
enum MPSImageEdgeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case Zero
  @available(tvOS 9.0, *)
  case Clamp
}
struct MPSOffset {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
struct MPSOrigin {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct MPSSize {
  var width: Double
  var height: Double
  var depth: Double
  init()
  init(width: Double, height: Double, depth: Double)
}
struct MPSRegion {
  var origin: MPSOrigin
  var size: MPSSize
  init()
  init(origin: MPSOrigin, size: MPSSize)
}
let MPSRectNoClip: MTLRegion
struct MPSScaleTransform {
  var scaleX: Double
  var scaleY: Double
  var translateX: Double
  var translateY: Double
  init()
  init(scaleX: Double, scaleY: Double, translateX: Double, translateY: Double)
}
typealias MPSCopyAllocator = (MPSKernel, MTLCommandBuffer, MTLTexture) -> MTLTexture
