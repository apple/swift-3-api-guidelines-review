
func MPSSupportsMTLDevice(device: MTLDevice?) -> Bool
@available(iOS 9.0, *)
class MPSKernel : Object, Copying {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device: MTLDevice)
  func copy(withZone zone: Zone = nil, device: MTLDevice?) -> Self
  convenience init()
  @available(iOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
