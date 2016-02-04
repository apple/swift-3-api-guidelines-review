
@available(iOS 8.0, *)
class HMCharacteristic : Object {
  var characteristicType: String { get }
  @available(iOS 9.0, *)
  var localizedDescription: String { get }
  weak var service: @sil_weak HMService? { get }
  var properties: [String] { get }
  var metadata: HMCharacteristicMetadata? { get }
  @NSCopying var value: AnyObject? { get }
  var isNotificationEnabled: Bool { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func writeValue(value: AnyObject?, completionHandler completion: (Error?) -> Void)
  func readValueWithCompletionHandler(completion: (Error?) -> Void)
  func enableNotification(enable: Bool, completionHandler completion: (Error?) -> Void)
  func updateAuthorizationData(data: Data?, completionHandler completion: (Error?) -> Void)
  init()
}
