
@available(watchOS 2.0, *)
class HKHealthStore : NSObject {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatus(for type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorization(toShare typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?, completion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func earliestPermittedSampleDate() -> NSDate
  func save(_ object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  func save(_ objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  func delete(_ object: HKObject, withCompletion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func delete(_ objects: [HKObject], withCompletion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func deleteObjects(of objectType: HKObjectType, predicate predicate: NSPredicate, withCompletion completion: (Bool, Int, NSError?) -> Void)
  func execute(_ query: HKQuery)
  func stop(_ query: HKQuery)
  @available(watchOS 2.0, *)
  func splitTotalEnergy(_ totalEnergy: HKQuantity, start startDate: NSDate, end endDate: NSDate, resultsHandler resultsHandler: (HKQuantity?, HKQuantity?, NSError?) -> Void)
  func dateOfBirth() throws -> NSDate
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(watchOS 2.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
}
extension HKHealthStore {
  func add(_ samples: [HKSample], to workout: HKWorkout, completion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func start(_ workoutSession: HKWorkoutSession)
  @available(watchOS 2.0, *)
  func end(_ workoutSession: HKWorkoutSession)
}
extension HKHealthStore {
}
@available(watchOS 2.0, *)
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  @available(watchOS 2.0, *)
  func preferredUnits(for quantityTypes: Set<HKQuantityType>, completion completion: ([HKQuantityType : HKUnit], NSError?) -> Void)
}
@available(watchOS 2.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
