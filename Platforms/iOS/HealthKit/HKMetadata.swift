
@available(iOS 8.0, *)
let HKMetadataKeyDeviceSerialNumber: String
@available(iOS 8.0, *)
let HKMetadataKeyBodyTemperatureSensorLocation: String
@available(iOS 8.0, *)
enum HKBodyTemperatureSensorLocation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Other
  case Armpit
  case Body
  case Ear
  case Finger
  case GastroIntestinal
  case Mouth
  case Rectum
  case Toe
  case EarDrum
  case TemporalArtery
  case Forehead
}
@available(iOS 8.0, *)
let HKMetadataKeyHeartRateSensorLocation: String
@available(iOS 8.0, *)
enum HKHeartRateSensorLocation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Other
  case Chest
  case Wrist
  case Finger
  case Hand
  case EarLobe
  case Foot
}
@available(iOS 8.0, *)
let HKMetadataKeyFoodType: String
@available(iOS 8.0, *)
let HKMetadataKeyUDIDeviceIdentifier: String
@available(iOS 8.0, *)
let HKMetadataKeyUDIProductionIdentifier: String
@available(iOS 8.0, *)
let HKMetadataKeyDigitalSignature: String
@available(iOS 8.0, *)
let HKMetadataKeyExternalUUID: String
@available(iOS 8.0, *)
let HKMetadataKeyTimeZone: String
@available(iOS 8.0, *)
let HKMetadataKeyDeviceName: String
@available(iOS 8.0, *)
let HKMetadataKeyDeviceManufacturerName: String
@available(iOS 8.0, *)
let HKMetadataKeyWasTakenInLab: String
@available(iOS 8.0, *)
let HKMetadataKeyReferenceRangeLowerLimit: String
@available(iOS 8.0, *)
let HKMetadataKeyReferenceRangeUpperLimit: String
@available(iOS 8.0, *)
let HKMetadataKeyWasUserEntered: String
@available(iOS 8.0, *)
let HKMetadataKeyWorkoutBrandName: String
@available(iOS 8.0, *)
let HKMetadataKeyGroupFitness: String
@available(iOS 8.0, *)
let HKMetadataKeyIndoorWorkout: String
@available(iOS 8.0, *)
let HKMetadataKeyCoachedWorkout: String
@available(iOS 9.0, *)
let HKMetadataKeySexualActivityProtectionUsed: String
@available(iOS 9.0, *)
let HKMetadataKeyMenstrualCycleStart: String
