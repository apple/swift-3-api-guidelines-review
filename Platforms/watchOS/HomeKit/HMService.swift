
@available(watchOS 20000, *)
class HMService : Object {
  weak var accessory: @sil_weak HMAccessory? { get }
  var serviceType: String { get }
  @available(watchOS 2.0, *)
  var localizedDescription: String { get }
  var name: String { get }
  var associatedServiceType: String? { get }
  var characteristics: [HMCharacteristic] { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  @available(watchOS 2.0, *)
  var isUserInteractive: Bool { get }
  init()
}
