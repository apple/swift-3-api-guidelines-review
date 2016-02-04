
@available(iOS 8.0, *)
class HMService : Object {
  weak var accessory: @sil_weak HMAccessory? { get }
  var serviceType: String { get }
  @available(iOS 9.0, *)
  var localizedDescription: String { get }
  var name: String { get }
  var associatedServiceType: String? { get }
  var characteristics: [HMCharacteristic] { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  @available(iOS 9.0, *)
  var isUserInteractive: Bool { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func updateAssociatedServiceType(serviceType: String?, completionHandler completion: (Error?) -> Void)
  init()
}
