
@available(tvOS 8.0, *)
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
@available(tvOS 8.0, *)
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotMipmapped
  case Nearest
  case Linear
}
@available(tvOS 8.0, *)
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ClampToEdge
  case Repeat
  case MirrorRepeat
  case ClampToZero
}
@available(tvOS 8.0, *)
class MTLSamplerDescriptor : Object, Copying {
  var minFilter: MTLSamplerMinMagFilter
  var magFilter: MTLSamplerMinMagFilter
  var mipFilter: MTLSamplerMipFilter
  var maxAnisotropy: Int
  var sAddressMode: MTLSamplerAddressMode
  var tAddressMode: MTLSamplerAddressMode
  var rAddressMode: MTLSamplerAddressMode
  var normalizedCoordinates: Bool
  var lodMinClamp: Float
  var lodMaxClamp: Float
  @available(tvOS 9.0, *)
  var lodAverage: Bool
  @available(tvOS 9.0, *)
  var compareFunction: MTLCompareFunction
  var label: String?
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
protocol MTLSamplerState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
