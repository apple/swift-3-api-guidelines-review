
class CARemoteLayerServer : NSObject {
  class func shared() -> CARemoteLayerServer
  var serverPort: mach_port_t { get }
}
extension CALayer {
  /*not inherited*/ init(remoteClientId client_id: UInt32)
}
