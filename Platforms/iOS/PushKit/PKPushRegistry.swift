
@available(iOS 8.0, *)
let PKPushTypeVoIP: String
@available(iOS 9.0, *)
let PKPushTypeComplication: String
@available(iOS 8.0, *)
class PKPushRegistry : Object {
  weak var delegate: @sil_weak PKPushRegistryDelegate!
  var desiredPushTypes: Set<Object>!
  func pushToken(forType type: String!) -> Data!
  init!(queue: dispatch_queue_t!)
  init()
}
protocol PKPushRegistryDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  func pushRegistry(registry: PKPushRegistry!, didUpdate credentials: PKPushCredentials!, forType type: String!)
  @available(iOS 8.0, *)
  func pushRegistry(registry: PKPushRegistry!, didReceiveIncomingPushWith payload: PKPushPayload!, forType type: String!)
  @available(iOS 8.0, *)
  optional func pushRegistry(registry: PKPushRegistry!, didInvalidatePushTokenForType type: String!)
}
