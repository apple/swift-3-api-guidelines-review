
@available(watchOS 2.0, *)
let HKMetadataKeyDeviceSerialNumber: String
@available(watchOS 2.0, *)
let HKMetadataKeyBodyTemperatureSensorLocation: String
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let HKMetadataKeyHeartRateSensorLocation: String
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let HKMetadataKeyFoodType: String
@available(watchOS 2.0, *)
let HKMetadataKeyUDIDeviceIdentifier: String
@available(watchOS 2.0, *)
let HKMetadataKeyUDIProductionIdentifier: String
@available(watchOS 2.0, *)
let HKMetadataKeyDigitalSignature: String
@available(watchOS 2.0, *)
let HKMetadataKeyExternalUUID: String
@available(watchOS 2.0, *)
let HKMetadataKeyTimeZone: String
@available(watchOS 2.0, *)
let HKMetadataKeyDeviceName: String
@available(watchOS 2.0, *)
let HKMetadataKeyDeviceManufacturerName: String
@available(watchOS 2.0, *)
let HKMetadataKeyWasTakenInLab: String
@available(watchOS 2.0, *)
let HKMetadataKeyReferenceRangeLowerLimit: String
@available(watchOS 2.0, *)
let HKMetadataKeyReferenceRangeUpperLimit: String
@available(watchOS 2.0, *)
let HKMetadataKeyWasUserEntered: String
@available(watchOS 2.0, *)
let HKMetadataKeyWorkoutBrandName: String
@available(watchOS 2.0, *)
let HKMetadataKeyGroupFitness: String
@available(watchOS 2.0, *)
let HKMetadataKeyIndoorWorkout: String
@available(watchOS 2.0, *)
let HKMetadataKeyCoachedWorkout: String
@available(watchOS 2.0, *)
let HKMetadataKeySexualActivityProtectionUsed: String
@available(watchOS 2.0, *)
let HKMetadataKeyMenstrualCycleStart: String
