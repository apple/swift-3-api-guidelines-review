
@available(iOS 8.0, *)
class HMUser : Object {
  var name: String { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
