
@available(iOS 8.0, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var primary: Bool { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func addAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func removeAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
  func assignAccessory(accessory: HMAccessory, toRoom room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func servicesWithTypes(serviceTypes: [String]) -> [HMService]?
  func unblockAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  @available(iOS 9.0, *)
  var currentUser: HMUser { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  var users: [HMUser] { get }
  @available(iOS 9.0, *)
  func manageUsersWithCompletionHandler(completion: (NSError?) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0)
  func addUserWithCompletionHandler(completion: (HMUser?, NSError?) -> Void)
  @available(iOS, introduced=8.0, deprecated=9.0)
  func removeUser(user: HMUser, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func homeAccessControlForUser(user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func addRoomWithName(roomName: String, completionHandler completion: (HMRoom?, NSError?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
  func addZoneWithName(zoneName: String, completionHandler completion: (HMZone?, NSError?) -> Void)
  func removeZone(zone: HMZone, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
  func addServiceGroupWithName(serviceGroupName: String, completionHandler completion: (HMServiceGroup?, NSError?) -> Void)
  func removeServiceGroup(group: HMServiceGroup, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func addActionSetWithName(actionSetName: String, completionHandler completion: (HMActionSet?, NSError?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func builtinActionSetOfType(actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
  func addTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
  func removeTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
}
@available(iOS 8.0, *)
protocol HMHomeDelegate : NSObjectProtocol {
  optional func homeDidUpdateName(home: HMHome)
  optional func home(home: HMHome, didAddAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didRemoveAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didAddUser user: HMUser)
  optional func home(home: HMHome, didRemoveUser user: HMUser)
  optional func home(home: HMHome, didUpdateRoom room: HMRoom, forAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didAddRoom room: HMRoom)
  optional func home(home: HMHome, didRemoveRoom room: HMRoom)
  optional func home(home: HMHome, didUpdateNameForRoom room: HMRoom)
  optional func home(home: HMHome, didAddZone zone: HMZone)
  optional func home(home: HMHome, didRemoveZone zone: HMZone)
  optional func home(home: HMHome, didUpdateNameForZone zone: HMZone)
  optional func home(home: HMHome, didAddRoom room: HMRoom, toZone zone: HMZone)
  optional func home(home: HMHome, didRemoveRoom room: HMRoom, fromZone zone: HMZone)
  optional func home(home: HMHome, didAddServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didRemoveServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didUpdateNameForServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didAddService service: HMService, toServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didRemoveService service: HMService, fromServiceGroup group: HMServiceGroup)
  optional func home(home: HMHome, didAddActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didRemoveActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateNameForActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateActionsForActionSet actionSet: HMActionSet)
  optional func home(home: HMHome, didAddTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didRemoveTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateNameForTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didEncounterError error: NSError, forAccessory accessory: HMAccessory)
}
@available(iOS 8.0, *)
let HMUserFailedAccessoriesKey: String
