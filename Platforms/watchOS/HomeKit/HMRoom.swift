
@available(watchOS 20000, *)
class HMRoom : Object {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
