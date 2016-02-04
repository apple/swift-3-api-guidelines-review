
@available(iOS 8.0, *)
class HMZone : NSObject {
  var name: String { get }
  var rooms: [HMRoom] { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
}
