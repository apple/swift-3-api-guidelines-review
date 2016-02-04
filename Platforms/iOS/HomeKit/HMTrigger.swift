
@available(iOS 8.0, *)
class HMTrigger : Object {
  var name: String { get }
  var isEnabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  @NSCopying var lastFireDate: Date? { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)
  func enable(enable: Bool, completionHandler completion: (Error?) -> Void)
}
