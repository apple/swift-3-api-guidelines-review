
@available(iOS 8.0, *)
class HMAccessory : NSObject {
  var name: String { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  @NSCopying var identifier: NSUUID { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  weak var delegate: @sil_weak HMAccessoryDelegate?
  var reachable: Bool { get }
  var bridged: Bool { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var identifiersForBridgedAccessories: [NSUUID]? { get }
  @available(iOS 9.0, *)
  var uniqueIdentifiersForBridgedAccessories: [NSUUID]? { get }
  @available(iOS 9.0, *)
  var category: HMAccessoryCategory { get }
  weak var room: @sil_weak HMRoom? { get }
  var services: [HMService] { get }
  var blocked: Bool { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func identifyWithCompletionHandler(completion: (NSError?) -> Void)
  init()
}
@available(iOS 8.0, *)
protocol HMAccessoryDelegate : NSObjectProtocol {
  optional func accessoryDidUpdateName(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, didUpdateNameForService service: HMService)
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeForService service: HMService)
  optional func accessoryDidUpdateServices(accessory: HMAccessory)
  optional func accessoryDidUpdateReachability(accessory: HMAccessory)
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueForCharacteristic characteristic: HMCharacteristic)
}
