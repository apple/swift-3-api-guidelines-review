
@available(iOS 8.0, *)
enum HMCharacteristicValueDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Open
  case Closed
  case Opening
  case Closing
  case Stopped
}
@available(iOS 8.0, *)
enum HMCharacteristicValueHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case Heat
  case Cool
  case Auto
}
@available(iOS 8.0, *)
enum HMCharacteristicValueRotationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clockwise
  case CounterClockwise
}
@available(iOS 8.0, *)
enum HMCharacteristicValueTemperatureUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Celsius
  case Fahrenheit
}
@available(iOS 8.0, *)
enum HMCharacteristicValueLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unsecured
  case Secured
  case Jammed
  case Unknown
}
@available(iOS 8.0, *)
enum HMCharacteristicValueLockMechanismLastKnownAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SecuredUsingPhysicalMovementInterior
  case UnsecuredUsingPhysicalMovementInterior
  case SecuredUsingPhysicalMovementExterior
  case UnsecuredUsingPhysicalMovementExterior
  case SecuredWithKeypad
  case UnsecuredWithKeypad
  case SecuredRemotely
  case UnsecuredRemotely
  case SecuredWithAutomaticSecureTimeout
  case SecuredUsingPhysicalMovement
  case UnsecuredUsingPhysicalMovement
}
@available(iOS 9.0, *)
enum HMCharacteristicValueAirParticulateSize : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Size2_5
  case Size10
}
@available(iOS 9.0, *)
enum HMCharacteristicValueAirQuality : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Excellent
  case Good
  case Fair
  case Inferior
  case Poor
}
@available(iOS 9.0, *)
enum HMCharacteristicValuePositionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Closing
  case Opening
  case Stopped
}
@available(iOS 9.0, *)
enum HMCharacteristicValueCurrentSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StayArm
  case AwayArm
  case NightArm
  case Disarmed
  case Triggered
}
@available(iOS 9.0, *)
enum HMCharacteristicValueTargetSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StayArm
  case AwayArm
  case NightArm
  case Disarm
}
