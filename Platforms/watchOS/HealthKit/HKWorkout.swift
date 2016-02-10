
@available(watchOS 2.0, *)
enum HKWorkoutActivityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case americanFootball
  case archery
  case australianFootball
  case badminton
  case baseball
  case basketball
  case bowling
  case boxing
  case climbing
  case cricket
  case crossTraining
  case curling
  case cycling
  case dance
  case danceInspiredTraining
  case elliptical
  case equestrianSports
  case fencing
  case fishing
  case functionalStrengthTraining
  case golf
  case gymnastics
  case handball
  case hiking
  case hockey
  case hunting
  case lacrosse
  case martialArts
  case mindAndBody
  case mixedMetabolicCardioTraining
  case paddleSports
  case play
  case preparationAndRecovery
  case racquetball
  case rowing
  case rugby
  case running
  case sailing
  case skatingSports
  case snowSports
  case soccer
  case softball
  case squash
  case stairClimbing
  case surfingSports
  case swimming
  case tableTennis
  case tennis
  case trackAndField
  case traditionalStrengthTraining
  case volleyball
  case walking
  case waterFitness
  case waterPolo
  case waterSports
  case wrestling
  case yoga
  case other
}
@available(watchOS 2.0, *)
enum HKWorkoutEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case pause
  case resume
}
@available(watchOS 2.0, *)
class HKWorkoutEvent : Object, SecureCoding {
  var type: HKWorkoutEventType { get }
  @NSCopying var date: Date { get }
  convenience init(type: HKWorkoutEventType, date: Date)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
class HKWorkout : HKSample {
  var workoutActivityType: HKWorkoutActivityType { get }
  var workoutEvents: [HKWorkoutEvent]? { get }
  var duration: TimeInterval { get }
  var totalEnergyBurned: HKQuantity? { get }
  var totalDistance: HKQuantity? { get }
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, start startDate: Date, end endDate: Date, duration: TimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutDuration: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutTotalDistance: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutTotalEnergyBurned: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkoutType: String
@available(watchOS 2.0, *)
let HKWorkoutSortIdentifierDuration: String
@available(watchOS 2.0, *)
let HKWorkoutSortIdentifierTotalDistance: String
@available(watchOS 2.0, *)
let HKWorkoutSortIdentifierTotalEnergyBurned: String
