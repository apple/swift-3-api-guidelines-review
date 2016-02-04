
@available(watchOS 2.0, *)
enum HKWorkoutActivityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AmericanFootball
  case Archery
  case AustralianFootball
  case Badminton
  case Baseball
  case Basketball
  case Bowling
  case Boxing
  case Climbing
  case Cricket
  case CrossTraining
  case Curling
  case Cycling
  case Dance
  case DanceInspiredTraining
  case Elliptical
  case EquestrianSports
  case Fencing
  case Fishing
  case FunctionalStrengthTraining
  case Golf
  case Gymnastics
  case Handball
  case Hiking
  case Hockey
  case Hunting
  case Lacrosse
  case MartialArts
  case MindAndBody
  case MixedMetabolicCardioTraining
  case PaddleSports
  case Play
  case PreparationAndRecovery
  case Racquetball
  case Rowing
  case Rugby
  case Running
  case Sailing
  case SkatingSports
  case SnowSports
  case Soccer
  case Softball
  case Squash
  case StairClimbing
  case SurfingSports
  case Swimming
  case TableTennis
  case Tennis
  case TrackAndField
  case TraditionalStrengthTraining
  case Volleyball
  case Walking
  case WaterFitness
  case WaterPolo
  case WaterSports
  case Wrestling
  case Yoga
  case Other
}
@available(watchOS 2.0, *)
enum HKWorkoutEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Pause
  case Resume
}
@available(watchOS 2.0, *)
class HKWorkoutEvent : NSObject, NSSecureCoding {
  var type: HKWorkoutEventType { get }
  @NSCopying var date: NSDate { get }
  convenience init(type: HKWorkoutEventType, date: NSDate)
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class HKWorkout : HKSample {
  var workoutActivityType: HKWorkoutActivityType { get }
  var workoutEvents: [HKWorkoutEvent]? { get }
  var duration: NSTimeInterval { get }
  var totalEnergyBurned: HKQuantity? { get }
  var totalDistance: HKQuantity? { get }
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, workoutEvents: [HKWorkoutEvent]?, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, duration: NSTimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, metadata: [String : AnyObject]?)
  @available(watchOS 2.0, *)
  convenience init(activityType workoutActivityType: HKWorkoutActivityType, startDate: NSDate, endDate: NSDate, duration: NSTimeInterval, totalEnergyBurned: HKQuantity?, totalDistance: HKQuantity?, device: HKDevice?, metadata: [String : AnyObject]?)
  init?(coder aDecoder: NSCoder)
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
