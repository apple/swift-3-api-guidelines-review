
@available(watchOS 20000, *)
class HMHome : Object {
  weak var delegate: @sil_weak HMHomeDelegate?
  var name: String { get }
  var isPrimary: Bool { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
extension HMHome {
  var accessories: [HMAccessory] { get }
  func services(withTypes serviceTypes: [String]) -> [HMService]?
}
extension HMHome {
  @available(watchOS 2.0, *)
  var currentUser: HMUser { get }
  @available(watchOS 2.0, *)
  func homeAccessControl(for user: HMUser) -> HMHomeAccessControl
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
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  @available(watchOS 2.0, *)
  func builtinActionSetOf(type actionSetType: String) -> HMActionSet?
}
extension HMHome {
  var triggers: [HMTrigger] { get }
}
@available(watchOS 20000, *)
protocol HMHomeDelegate : ObjectProtocol {
  optional func homeDidUpdateName(home: HMHome)
  optional func home(home: HMHome, didAdd accessory: HMAccessory)
  optional func home(home: HMHome, didRemove accessory: HMAccessory)
  optional func home(home: HMHome, didAdd user: HMUser)
  optional func home(home: HMHome, didRemove user: HMUser)
  optional func home(home: HMHome, didUpdateRoom room: HMRoom, for accessory: HMAccessory)
  optional func home(home: HMHome, didAdd room: HMRoom)
  optional func home(home: HMHome, didRemove room: HMRoom)
  optional func home(home: HMHome, didUpdateNameFor room: HMRoom)
  optional func home(home: HMHome, didAdd zone: HMZone)
  optional func home(home: HMHome, didRemove zone: HMZone)
  optional func home(home: HMHome, didUpdateNameFor zone: HMZone)
  optional func home(home: HMHome, didAdd room: HMRoom, to zone: HMZone)
  optional func home(home: HMHome, didRemove room: HMRoom, from zone: HMZone)
  optional func home(home: HMHome, didAdd group: HMServiceGroup)
  optional func home(home: HMHome, didRemove group: HMServiceGroup)
  optional func home(home: HMHome, didUpdateNameFor group: HMServiceGroup)
  optional func home(home: HMHome, didAdd service: HMService, to group: HMServiceGroup)
  optional func home(home: HMHome, didRemove service: HMService, from group: HMServiceGroup)
  optional func home(home: HMHome, didAdd actionSet: HMActionSet)
  optional func home(home: HMHome, didRemove actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateNameFor actionSet: HMActionSet)
  optional func home(home: HMHome, didUpdateActionsFor actionSet: HMActionSet)
  optional func home(home: HMHome, didAdd trigger: HMTrigger)
  optional func home(home: HMHome, didRemove trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateNameFor trigger: HMTrigger)
  optional func home(home: HMHome, didUpdateTrigger trigger: HMTrigger)
  optional func home(home: HMHome, didUnblockAccessory accessory: HMAccessory)
  optional func home(home: HMHome, didEncounterError error: Error, for accessory: HMAccessory)
}
@available(watchOS 20000, *)
let HMUserFailedAccessoriesKey: String
