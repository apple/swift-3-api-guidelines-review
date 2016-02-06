
@available(iOS 8.0, *)
class HMAccessory : Object {
  var name: String { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  @NSCopying var identifier: UUID { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var isReachable: Bool { get }
  var isBridged: Bool { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var identifiersForBridgedAccessories: [UUID]? { get }
  @available(iOS 9.0, *)
  var uniqueIdentifiersForBridgedAccessories: [UUID]? { get }
  @available(iOS 9.0, *)
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  var isBlocked: Bool { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func identify(completionHandler completion: (Error?) -> Void)
  init()
}
@available(iOS 8.0, *)
protocol HMAccessoryDelegate : ObjectProtocol {
  optional func accessoryDidUpdateName(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, didUpdateNameFor service: HMService)
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeFor service: HMService)
  optional func accessoryDidUpdateServices(accessory: HMAccessory)
  optional func accessoryDidUpdateReachability(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueFor characteristic: HMCharacteristic)
}
