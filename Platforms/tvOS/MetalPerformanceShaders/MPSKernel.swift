
func MPSSupportsMTLDevice(_ device: MTLDevice?) -> Bool
@available(tvOS 9.0, *)
class MPSKernel : NSObject, NSCopying {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device device: MTLDevice)
  func copy(with zone: NSZone = nil, device device: MTLDevice?) -> Self
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
