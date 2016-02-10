
@available(iOS 8.0, *)
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nearest
  case linear
}
@available(iOS 8.0, *)
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notMipmapped
  case nearest
  case linear
}
@available(iOS 8.0, *)
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clampToEdge
  case `repeat`
  case mirrorRepeat
  case clampToZero
}
@available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  var lodAverage: Bool
  @available(iOS 9.0, *)
  var compareFunction: MTLCompareFunction
  var label: String?
  init()
  @available(iOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
protocol MTLSamplerState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
