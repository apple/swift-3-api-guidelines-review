
@available(watchOS 20000, *)
class HMCharacteristic : Object {
  var characteristicType: String { get }
  @available(watchOS 2.0, *)
  var localizedDescription: String { get }
  weak var service: @sil_weak HMService? { get }
  var properties: [String] { get }
  var metadata: HMCharacteristicMetadata? { get }
  @NSCopying var value: AnyObject? { get }
  var isNotificationEnabled: Bool { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func writeValue(value: AnyObject?, completionHandler completion: (Error?) -> Void)
  func readValue(completionHandler completion: (Error?) -> Void)
  func enableNotification(enable: Bool, completionHandler completion: (Error?) -> Void)
  init()
}
