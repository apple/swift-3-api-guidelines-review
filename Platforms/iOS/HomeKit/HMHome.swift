
@available(iOS 8.0, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var primary: Bool { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(_ name: String, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func addAccessory(_ accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func removeAccessory(_ accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func assignAccessory(_ accessory: HMAccessory, toRoom room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func servicesWithTypes(_ serviceTypes: [String]) -> [HMService]?
  func unblockAccessory(_ accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  @available(iOS 9.0, *)
  var currentUser: HMUser { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var users: [HMUser] { get }
  @available(iOS 9.0, *)
  func manageUsersWithCompletionHandler(_ completion: (NSError?) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0)
  func addUserWithCompletionHandler(_ completion: (HMUser?, NSError?) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0)
  func removeUser(_ user: HMUser, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func homeAccessControlForUser(_ user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func addRoomWithName(_ roomName: String, completionHandler completion: (HMRoom?, NSError?) -> Void)
  func removeRoom(_ room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
  func addZoneWithName(_ zoneName: String, completionHandler completion: (HMZone?, NSError?) -> Void)
  func removeZone(_ zone: HMZone, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
  func addServiceGroupWithName(_ serviceGroupName: String, completionHandler completion: (HMServiceGroup?, NSError?) -> Void)
  func removeServiceGroup(_ group: HMServiceGroup, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func addActionSetWithName(_ actionSetName: String, completionHandler completion: (HMActionSet?, NSError?) -> Void)
  func removeActionSet(_ actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func executeActionSet(_ actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func builtinActionSetOfType(_ actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
  func addTrigger(_ trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
  func removeTrigger(_ trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
}
@available(iOS 8.0, *)
protocol HMHomeDelegate : NSObjectProtocol {
  optional func homeDidUpdateName(_ home: HMHome)
  optional func home(_ home: HMHome, didAddAccessory accessory: HMAccessory)
  optional func home(_ home: HMHome, didRemoveAccessory accessory: HMAccessory)
  optional func home(_ home: HMHome, didAddUser user: HMUser)
  optional func home(_ home: HMHome, didRemoveUser user: HMUser)
  optional func home(_ home: HMHome, didUpdateRoom room: HMRoom, forAccessory accessory: HMAccessory)
  optional func home(_ home: HMHome, didAddRoom room: HMRoom)
  optional func home(_ home: HMHome, didRemoveRoom room: HMRoom)
  optional func home(_ home: HMHome, didUpdateNameForRoom room: HMRoom)
  optional func home(_ home: HMHome, didAddZone zone: HMZone)
  optional func home(_ home: HMHome, didRemoveZone zone: HMZone)
  optional func home(_ home: HMHome, didUpdateNameForZone zone: HMZone)
  optional func home(_ home: HMHome, didAddRoom room: HMRoom, toZone zone: HMZone)
  optional func home(_ home: HMHome, didRemoveRoom room: HMRoom, fromZone zone: HMZone)
  optional func home(_ home: HMHome, didAddServiceGroup group: HMServiceGroup)
  optional func home(_ home: HMHome, didRemoveServiceGroup group: HMServiceGroup)
  optional func home(_ home: HMHome, didUpdateNameForServiceGroup group: HMServiceGroup)
  optional func home(_ home: HMHome, didAddService service: HMService, toServiceGroup group: HMServiceGroup)
  optional func home(_ home: HMHome, didRemoveService service: HMService, fromServiceGroup group: HMServiceGroup)
  optional func home(_ home: HMHome, didAddActionSet actionSet: HMActionSet)
  optional func home(_ home: HMHome, didRemoveActionSet actionSet: HMActionSet)
  optional func home(_ home: HMHome, didUpdateNameForActionSet actionSet: HMActionSet)
  optional func home(_ home: HMHome, didUpdateActionsForActionSet actionSet: HMActionSet)
  optional func home(_ home: HMHome, didAddTrigger trigger: HMTrigger)
  optional func home(_ home: HMHome, didRemoveTrigger trigger: HMTrigger)
  optional func home(_ home: HMHome, didUpdateNameForTrigger trigger: HMTrigger)
  optional func home(_ home: HMHome, didUpdateTrigger trigger: HMTrigger)
  optional func home(_ home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(_ home: HMHome, didEncounterError error: NSError, forAccessory accessory: HMAccessory)
}
@available(iOS 8.0, *)
let HMUserFailedAccessoriesKey: String
