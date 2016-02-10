
@available(watchOS 2.0, *)
class HKHealthStore : Object {
  class func isHealthDataAvailable() -> Bool
  func authorizationStatus(forType type: HKObjectType) -> HKAuthorizationStatus
  func requestAuthorizationToShare(typesToShare: Set<HKSampleType>?, read typesToRead: Set<HKObjectType>?, completion: (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func earliestPermittedSampleDate() -> Date
  func save(object: HKObject, withCompletion completion: (Bool, Error?) -> Void)
  func save(objects: [HKObject], withCompletion completion: (Bool, Error?) -> Void)
  func delete(object: HKObject, withCompletion completion: (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func delete(objects: [HKObject], withCompletion completion: (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func deleteObjects(of objectType: HKObjectType, predicate: Predicate, withCompletion completion: (Bool, Int, Error?) -> Void)
  func execute(query: HKQuery)
  func stop(query: HKQuery)
  @available(watchOS 2.0, *)
  func splitTotalEnergy(totalEnergy: HKQuantity, start startDate: Date, end endDate: Date, resultsHandler: (HKQuantity?, HKQuantity?, Error?) -> Void)
  func dateOfBirth() throws -> Date
  func biologicalSex() throws -> HKBiologicalSexObject
  func bloodType() throws -> HKBloodTypeObject
  @available(watchOS 2.0, *)
  func fitzpatrickSkinType() throws -> HKFitzpatrickSkinTypeObject
  init()
}
extension HKHealthStore {
  func add(samples: [HKSample], to workout: HKWorkout, completion: (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func start(workoutSession: HKWorkoutSession)
  @available(watchOS 2.0, *)
  func end(workoutSession: HKWorkoutSession)
}
extension HKHealthStore {
}
@available(watchOS 2.0, *)
let HKUserPreferencesDidChangeNotification: String
extension HKHealthStore {
  @available(watchOS 2.0, *)
  func preferredUnits(forQuantityTypes quantityTypes: Set<HKQuantityType>, completion: ([HKQuantityType : HKUnit], Error?) -> Void)
}
@available(watchOS 2.0, *)
class HKBiologicalSexObject : Object, Copying, SecureCoding {
  var biologicalSex: HKBiologicalSex { get }
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKBloodTypeObject : Object, Copying, SecureCoding {
  var bloodType: HKBloodType { get }
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKFitzpatrickSkinTypeObject : Object, Copying, SecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
