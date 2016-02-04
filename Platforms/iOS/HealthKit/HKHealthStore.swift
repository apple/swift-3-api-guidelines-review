
@available(iOS 8.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatusForType(type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorizationToShareTypes(typesToShare: Set<HKSampleType>?, readTypes typesToRead: Set<HKObjectType>?, completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func handleAuthorizationForExtensionWithCompletion(completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func earliestPermittedSampleDate() -> NSDate
  func saveObject(object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func saveObjects(objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func deleteObject(object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func deleteObjects(objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func deleteObjectsOfType(objectType: HKObjectType, predicate: NSPredicate, withCompletion completion: (Bool, Int, NSError?) -> Void)
  func executeQuery(query: HKQuery)
  func stopQuery(query: HKQuery)
  @available(iOS 9.0, *)
  func splitTotalEnergy(totalEnergy: HKQuantity, startDate: NSDate, endDate: NSDate, resultsHandler: (HKQuantity?, HKQuantity?, NSError?) -> Void)
  func dateOfBirth() throws -> NSDate
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(iOS 9.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  init()
}
extension HKHealthStore {
  func addSamples(samples: [HKSample], toWorkout workout: HKWorkout, completion: (Bool, NSError?) -> Void)
}
extension HKHealthStore {
  func enableBackgroundDeliveryForType(type: HKObjectType, frequency: HKUpdateFrequency, withCompletion completion: (Bool, NSError?) -> Void)
  func disableBackgroundDeliveryForType(type: HKObjectType, withCompletion completion: (Bool, NSError?) -> Void)
  func disableAllBackgroundDeliveryWithCompletion(completion: (Bool, NSError?) -> Void)
}
@available(iOS 8.2, *)
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  @available(iOS 8.2, *)
  func preferredUnitsForQuantityTypes(quantityTypes: Set<HKQuantityType>, completion: ([HKQuantityType : HKUnit], NSError?) -> Void)
}
@available(iOS 8.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  init()
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
