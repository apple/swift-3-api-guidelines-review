
@available(watchOS 20000, *)
class HMHome : NSObject {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var primary: Bool { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func servicesWithTypes(serviceTypes: [String]) -> [HMService]?
}
extension HMHome {
  @available(watchOS 2.0, *)
  var currentUser: HMUser { get }
  @available(watchOS 2.0, *)
  func homeAccessControlForUser(user: HMUser) -> HMHomeAccessControl
}
extension HMHome {
  var rooms: [HMRoom] { get }
  func roomForEntireHome() -> HMRoom
}
extension HMHome {
  var zones: [HMZone] { get }
}
extension HMHome {
  var serviceGroups: [HMServiceGroup] { get }
}
extension HMHome {
  var actionSets: [HMActionSet] { get }
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  @available(watchOS 2.0, *)
  func builtinActionSetOfType(actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
}
@available(watchOS 20000, *)
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
@available(watchOS 20000, *)
let HMUserFailedAccessoriesKey: String
