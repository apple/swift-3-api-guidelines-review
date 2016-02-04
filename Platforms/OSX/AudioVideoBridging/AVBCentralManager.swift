
let AVBNullEUI64: UInt64
@available(OSX 10.10, *)
class AVBCentralManager : Object {
  func startControllerMatching()
  func didAdd(interface: AVBInterface)
  func didRemove(interface: AVBInterface)
  func streamingEnabledInterfacesOnly() -> Bool
  class func nextAvailableDynamicEntityID() -> UInt64
  class func releaseDynamicEntityID(entityID: UInt64)
  class func nextAvailableDynamicEntityModelID() -> UInt64
  class func releaseDynamicEntityModelID(entityModelID: UInt64)
  init()
}
