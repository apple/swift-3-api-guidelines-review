
@available(iOS 8.0, *)
class HMServiceGroup : NSObject {
  var name: String { get }
  var services: [HMService] { get }
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
  func addService(service: HMService, completionHandler completion: (NSError?) -> Void)
  func removeService(service: HMService, completionHandler completion: (NSError?) -> Void)
}
