
@available(iOS 8.0, *)
class HMZone : Object {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addRoom(room: HMRoom, completionHandler completion: (Error?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (Error?) -> Void)
}
