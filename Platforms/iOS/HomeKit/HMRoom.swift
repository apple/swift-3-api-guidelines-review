
@available(iOS 8.0, *)
class HMRoom : Object {
  var name: String { get }
  var accessories: [HMAccessory] { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
}
