
let AVBNullEUI64: UInt64
@available(OSX 10.10, *)
class AVBCentralManager : NSObject {
  func startControllerMatching()
  func didAddInterface(_ interface: AVBInterface)
  func didRemoveInterface(_ interface: AVBInterface)
  func streamingEnabledInterfacesOnly() -> Bool
  class func nextAvailableDynamicEntityID() -> UInt64
  class func releaseDynamicEntityID(_ entityID: UInt64)
  class func nextAvailableDynamicEntityModelID() -> UInt64
  class func releaseDynamicEntityModelID(_ entityModelID: UInt64)
}
