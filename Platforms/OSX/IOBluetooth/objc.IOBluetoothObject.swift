
class IOBluetoothObject : NSObject, NSCopying {
  init()
  func copy(with zone: NSZone = nil) -> AnyObject
}
var kBluetoothTargetDoesNotRespondToCallbackExceptionName: String { get }
