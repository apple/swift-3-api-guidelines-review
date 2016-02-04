
@available(watchOS 2.0, *)
let HKErrorDomain: String
@available(watchOS 2.0, *)
enum HKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NoError
  case ErrorHealthDataUnavailable
  case ErrorHealthDataRestricted
  case ErrorInvalidArgument
  case ErrorAuthorizationDenied
  case ErrorAuthorizationNotDetermined
  case ErrorDatabaseInaccessible
  case ErrorUserCanceled
  @available(watchOS 2.0, *)
  case ErrorAnotherWorkoutSessionStarted
  @available(watchOS 2.0, *)
  case ErrorUserExitedWorkoutSession
}
@available(watchOS 2.0, *)
enum HKUpdateFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case Hourly
  case Daily
  case Weekly
}
@available(watchOS 2.0, *)
enum HKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case SharingDenied
  case SharingAuthorized
}
enum HKBiologicalSex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSet
  @available(watchOS 2.0, *)
  case Female
  @available(watchOS 2.0, *)
  case Male
  @available(watchOS 2.0, *)
  case Other
}
@available(watchOS 2.0, *)
enum HKBloodType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSet
  case APositive
  case ANegative
  case BPositive
  case BNegative
  case ABPositive
  case ABNegative
  case OPositive
  case ONegative
}
@available(watchOS 2.0, *)
enum HKCategoryValueSleepAnalysis : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InBed
  case Asleep
}
@available(watchOS 2.0, *)
enum HKCategoryValueAppleStandHour : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stood
  case Idle
}
@available(watchOS 2.0, *)
enum HKFitzpatrickSkinType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSet
  case I
  case II
  case III
  case IV
  case V
  case VI
}
@available(watchOS 2.0, *)
enum HKCategoryValueCervicalMucusQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Dry
  case Sticky
  case Creamy
  case Watery
  case EggWhite
}
@available(watchOS 2.0, *)
enum HKCategoryValueOvulationTestResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Negative
  case Positive
  case Indeterminate
}
@available(watchOS 2.0, *)
enum HKCategoryValueMenstrualFlow : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Light
  case Medium
  case Heavy
}
@available(watchOS 2.0, *)
enum HKCategoryValue : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotApplicable
}