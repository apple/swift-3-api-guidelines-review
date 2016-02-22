
@available(watchOS 20000, *)
class HMAccessory : NSObject {
  var name: String { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var isReachable: Bool { get }
  var isBridged: Bool { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifiersForBridgedAccessories: [NSUUID]? { get }
  @available(watchOS 2.0, *)
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  var isBlocked: Bool { get }
  func identify(completionHandler completion: (NSError?) -> Void)
  init()
}
@available(watchOS 20000, *)
protocol HMAccessoryDelegate : NSObjectProtocol {
  optional func accessoryDidUpdateName(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, didUpdateNameFor service: HMService)
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeFor service: HMService)
  optional func accessoryDidUpdateServices(accessory: HMAccessory)
  optional func accessoryDidUpdateReachability(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueFor characteristic: HMCharacteristic)
}
