
@available(iOS 8.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatus(for type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorization(toShare typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?, completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func handleAuthorizationForExtension(completion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func earliestPermittedSampleDate() -> NSDate
  func save(object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func save(objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func delete(object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func delete(objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func deleteObjects(of objectType: HKObjectType, predicate: NSPredicate, withCompletion completion: (Bool, Int, NSError?) -> Void)
  func execute(query: HKQuery)
  func stop(query: HKQuery)
  @available(iOS 9.0, *)
  func splitTotalEnergy(totalEnergy: HKQuantity, start startDate: NSDate, end endDate: NSDate, resultsHandler: (HKQuantity?, HKQuantity?, NSError?) -> Void)
  func dateOfBirth() throws -> NSDate
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(iOS 9.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  init()
}
extension HKHealthStore {
  func add(samples: [HKSample], to workout: HKWorkout, completion: (Bool, NSError?) -> Void)
}
extension HKHealthStore {
  func enableBackgroundDelivery(for type: HKObjectType, frequency: HKUpdateFrequency, withCompletion completion: (Bool, NSError?) -> Void)
  func disableBackgroundDelivery(for type: HKObjectType, withCompletion completion: (Bool, NSError?) -> Void)
  func disableAllBackgroundDelivery(completion completion: (Bool, NSError?) -> Void)
}
@available(iOS 8.2, *)
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  @available(iOS 8.2, *)
  func preferredUnits(for quantityTypes: Set<HKQuantityType>, completion: ([HKQuantityType : HKUnit], NSError?) -> Void)
}
@available(iOS 8.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  init()
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
