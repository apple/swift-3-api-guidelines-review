
@available(iOS 8.0, *)
class HMTrigger : NSObject {
  var name: String { get }
  var enabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  @NSCopying var lastFireDate: NSDate? { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)
  func enable(enable: Bool, completionHandler completion: (NSError?) -> Void)
}
