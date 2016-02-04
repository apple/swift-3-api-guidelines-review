
@available(OSX 10.11, *)
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
@available(OSX 10.11, *)
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotMipmapped
  case Nearest
  case Linear
}
@available(OSX 10.11, *)
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ClampToEdge
  @available(OSX 10.11, *)
  case MirrorClampToEdge
  case Repeat
  case MirrorRepeat
  case ClampToZero
}
@available(OSX 10.11, *)
class MTLSamplerDescriptor : NSObject, NSCopying {
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
  @available(OSX 10.11, *)
  var compareFunction: MTLCompareFunction
  var label: String?
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
protocol MTLSamplerState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
