
@available(watchOS 20000, *)
class HMUser : Object {
  var name: String { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
