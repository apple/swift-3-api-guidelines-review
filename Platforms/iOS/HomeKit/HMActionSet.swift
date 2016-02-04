
@available(iOS 8.0, *)
class HMActionSet : Object {
  var name: String { get }
  var actions: Set<HMAction> { get }
  var isExecuting: Bool { get }
  @available(iOS 9.0, *)
  var actionSetType: String { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addAction(action: HMAction, completionHandler completion: (Error?) -> Void)
  func removeAction(action: HMAction, completionHandler completion: (Error?) -> Void)
}
@available(iOS 9.0, *)
let HMActionSetTypeWakeUp: String
@available(iOS 9.0, *)
let HMActionSetTypeSleep: String
@available(iOS 9.0, *)
let HMActionSetTypeHomeDeparture: String
@available(iOS 9.0, *)
let HMActionSetTypeHomeArrival: String
@available(iOS 9.0, *)
let HMActionSetTypeUserDefined: String
