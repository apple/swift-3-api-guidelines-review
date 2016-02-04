
func MPSSupportsMTLDevice(device: MTLDevice?) -> Bool
@available(iOS 9.0, *)
class MPSKernel : NSObject, NSCopying {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device: MTLDevice)
  func copyWithZone(zone: NSZone, device: MTLDevice?) -> Self
  convenience init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
