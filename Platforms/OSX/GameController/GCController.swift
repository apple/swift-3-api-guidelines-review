
let GCControllerDidConnectNotification: String
let GCControllerDidDisconnectNotification: String
enum GCControllerPlayerIndex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case IndexUnset
  case Index1
  case Index2
  case Index3
  case Index4
}
@available(OSX 10.9, *)
class GCController : Object {
  var controllerPausedHandler: ((GCController) -> Void)?
  @available(OSX 10.11, *)
  var handlerQueue: dispatch_queue_t
  var vendorName: String? { get }
  var isAttachedToDevice: Bool { get }
  var playerIndex: GCControllerPlayerIndex
  var gamepad: GCGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }
  @available(OSX 10.10, *)
  var motion: GCMotion? { get }
  class func controllers() -> [GCController]
  class func startWirelessControllerDiscovery(completionHandler completionHandler: (() -> Void)? = nil)
  class func stopWirelessControllerDiscovery()
  init()
}
