
@available(iOS 8.0, *)
class HMServiceGroup : Object {
  var name: String { get }
  var services: [HMService] { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  func updateName(name: String, completionHandler completion: (Error?) -> Void)
  func addService(service: HMService, completionHandler completion: (Error?) -> Void)
  func removeService(service: HMService, completionHandler completion: (Error?) -> Void)
}
