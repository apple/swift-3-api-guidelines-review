
@available(watchOS 2.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatusForType(_ type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorizationToShareTypes(_ typesToShare: Set<HKSampleType>?, readTypes typesToRead: Set<HKObjectType>?, completion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func earliestPermittedSampleDate() -> NSDate
  func saveObject(_ object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func saveObjects(_ objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func deleteObject(_ object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func deleteObjects(_ objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func deleteObjectsOfType(_ objectType: HKObjectType, predicate predicate: NSPredicate, withCompletion completion: (Bool, Int, NSError?) -> Void)
  func executeQuery(_ query: HKQuery)
  func stopQuery(_ query: HKQuery)
  @available(watchOS 2.0, *)
  func splitTotalEnergy(_ totalEnergy: HKQuantity, startDate startDate: NSDate, endDate endDate: NSDate, resultsHandler resultsHandler: (HKQuantity?, HKQuantity?, NSError?) -> Void)
  func dateOfBirth() throws -> NSDate
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(watchOS 2.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
}
extension HKHealthStore {
  func addSamples(_ samples: [HKSample], toWorkout workout: HKWorkout, completion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func startWorkoutSession(_ workoutSession: HKWorkoutSession)
  @available(watchOS 2.0, *)
  func endWorkoutSession(_ workoutSession: HKWorkoutSession)
}
extension HKHealthStore {
}
@available(watchOS 2.0, *)
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  @available(watchOS 2.0, *)
  func preferredUnitsForQuantityTypes(_ quantityTypes: Set<HKQuantityType>, completion completion: ([HKQuantityType : HKUnit], NSError?) -> Void)
}
@available(watchOS 2.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
