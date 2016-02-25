
@available(watchOS 20000, *)
class HMAccessory : NSObject {
  var name: String { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var reachable: Bool { get }
  var bridged: Bool { get }
  @available(watchOS 2.0, *)
  var uniqueIdentifiersForBridgedAccessories: [NSUUID]? { get }
  @available(watchOS 2.0, *)
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  var blocked: Bool { get }
  func identifyWithCompletionHandler(_ completion: (NSError?) -> Void)
}
@available(watchOS 20000, *)
protocol HMAccessoryDelegate : NSObjectProtocol {
  optional func accessoryDidUpdateName(_ accessory: HMAccessory)
  optional func accessory(_ accessory: HMAccessory, didUpdateNameForService service: HMService)
  optional func accessory(_ accessory: HMAccessory, didUpdateAssociatedServiceTypeForService service: HMService)
  optional func accessoryDidUpdateServices(_ accessory: HMAccessory)
  optional func accessoryDidUpdateReachability(_ accessory: HMAccessory)
  optional func accessory(_ accessory: HMAccessory, service service: HMService, didUpdateValueForCharacteristic characteristic: HMCharacteristic)
}
