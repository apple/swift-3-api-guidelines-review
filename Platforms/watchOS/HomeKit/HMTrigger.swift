
@available(watchOS 20000, *)
class HMTrigger : Object {
  var name: String { get }
  var isEnabled: Bool { get }
  var actionSets: [HMActionSet] { get }
  @NSCopying var lastFireDate: Date? { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
