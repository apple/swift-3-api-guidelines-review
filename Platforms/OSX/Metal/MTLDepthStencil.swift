
@available(OSX 10.11, *)
enum MTLCompareFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Never
  case Less
  case Equal
  case LessEqual
  case Greater
  case NotEqual
  case GreaterEqual
  case Always
}
@available(OSX 10.11, *)
enum MTLStencilOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Keep
  case Zero
  case Replace
  case IncrementClamp
  case DecrementClamp
  case Invert
  case IncrementWrap
  case DecrementWrap
}
@available(OSX 10.11, *)
class MTLStencilDescriptor : Object, Copying {
  var stencilCompareFunction: MTLCompareFunction
  var stencilFailureOperation: MTLStencilOperation
  var depthFailureOperation: MTLStencilOperation
  var depthStencilPassOperation: MTLStencilOperation
  var readMask: UInt32
  var writeMask: UInt32
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class MTLDepthStencilDescriptor : Object, Copying {
  var depthCompareFunction: MTLCompareFunction
  var isDepthWriteEnabled: Bool
  @NSCopying var frontFaceStencil: MTLStencilDescriptor!
  @NSCopying var backFaceStencil: MTLStencilDescriptor!
  var label: String?
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
protocol MTLDepthStencilState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
