
@available(iOS 8.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatusForType(_ type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorizationToShareTypes(_ typesToShare: Set<HKSampleType>?, readTypes typesToRead: Set<HKObjectType>?, completion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func handleAuthorizationForExtensionWithCompletion(_ completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func earliestPermittedSampleDate() -> NSDate
  func saveObject(_ object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func saveObjects(_ objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func deleteObject(_ object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func deleteObjects(_ objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func deleteObjectsOfType(_ objectType: HKObjectType, predicate predicate: NSPredicate, withCompletion completion: (Bool, Int, NSError?) -> Void)
  func executeQuery(_ query: HKQuery)
  func stopQuery(_ query: HKQuery)
  @available(iOS 9.0, *)
  func splitTotalEnergy(_ totalEnergy: HKQuantity, startDate startDate: NSDate, endDate endDate: NSDate, resultsHandler resultsHandler: (HKQuantity?, HKQuantity?, NSError?) -> Void)
  func dateOfBirth() throws -> NSDate
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(iOS 9.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
}
extension HKHealthStore {
  func addSamples(_ samples: [HKSample], toWorkout workout: HKWorkout, completion completion: (Bool, NSError?) -> Void)
}
extension HKHealthStore {
  func enableBackgroundDeliveryForType(_ type: HKObjectType, frequency frequency: HKUpdateFrequency, withCompletion completion: (Bool, NSError?) -> Void)
  func disableBackgroundDeliveryForType(_ type: HKObjectType, withCompletion completion: (Bool, NSError?) -> Void)
  func disableAllBackgroundDeliveryWithCompletion(_ completion: (Bool, NSError?) -> Void)
}
@available(iOS 8.2, *)
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  @available(iOS 8.2, *)
  func preferredUnitsForQuantityTypes(_ quantityTypes: Set<HKQuantityType>, completion completion: ([HKQuantityType : HKUnit], NSError?) -> Void)
}
@available(iOS 8.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
