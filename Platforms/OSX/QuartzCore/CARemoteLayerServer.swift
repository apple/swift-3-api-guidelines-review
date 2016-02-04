
class CARemoteLayerServer : NSObject {
  class func sharedServer() -> CARemoteLayerServer
  var serverPort: mach_port_t { get }
  init()
}
extension CALayer {
  /*not inherited*/ init(remoteClientId client_id: UInt32)
}
