
@available(watchOS 20000, *)
class HMServiceGroup : Object {
  var name: String { get }
  var services: [HMService] { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
