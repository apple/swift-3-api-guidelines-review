
@available(watchOS 20000, *)
class HMZone : Object {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
