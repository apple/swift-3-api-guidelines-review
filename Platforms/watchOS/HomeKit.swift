

/*!
 * @abstract Represent an accessory in the home.
 *
 * @discussion This class represents an accessory in the home. There is a one to
 *             one relationship between a physical accessory and an object of this
 *             class. An accessory is composed of one or more services.
 */
@available(watchOS 20000, *)
class HMAccessory : Object {

  /*!
   * @brief The name of the accessory.
   *
   * @discussion Returns the accessory's name that is associated with HomeKit. The initial value is the name
   *             provided by the accessory information service of the accessory.
   */
  var name: String { get }

  /*!
   * @brief A unique identifier for the accessory.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }

  /*!
   * @brief Delegate object that receives updates on the state of the accessory.
   */
  weak var delegate: @sil_weak HMAccessoryDelegate?

  /*!
   * @brief TRUE if the accessory is currently reachable, FALSE otherwise.
   */
  var isReachable: Bool { get }

  /*!
   * @brief This property indicates whether this accessory is behind a bridge. If it is TRUE,
   *        the accessory cannot be removed from the home directly. Only the bridge that owns
   *        this accessory can be removed and removing the bridge will remove this accessory
   *        from the home.
   */
  var isBridged: Bool { get }

  /*!
   * @brief If this accessory is a bridge, this property is an array of NSUUID objects that,
   *        each of which represents the 'uniqueIdentifier' of the accessory vended by the bridge.
   *
   * @discussion An accessory can be standalone, a bridge, or hosted behind a bridge.
   *                  - A standalone accessory would have its 'bridged' property set to FALSE and
   *                    its 'uniqueIdentifiersForBridgedAccessories' property set to nil.
   *                  - An accessory that is a bridge would have its 'bridged' property set to FALSE,
   *                    but have a non-empty 'uniqueIdentifiersForBridgedAccessories' property.
   *                  - An accessory behind a bridge would have its 'bridged' property set to TRUE and
   *                    its 'uniqueIdentifiersForBridgedAccessories' property set to nil.
   */
  @available(watchOS 2.0, *)
  var uniqueIdentifiersForBridgedAccessories: [UUID]? { get }

  /*!
   * @brief Category information for the accessory. 
   */
  @available(watchOS 2.0, *)
  var category: HMAccessoryCategory { get }

  /*!
   * @brief Room containing the accessory.
   */
  weak var room: @sil_weak HMRoom? { get }

  /*!
   * @brief Array of HMService objects that represent all the services provided by the accessory.
   */
  var services: [HMService] { get }

  /*!
   * @brief TRUE if the accessory is blocked, FALSE otherwise.
   */
  var isBlocked: Bool { get }

  /*!
   * @brief This method is used to have an accessory identify itself.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func identifyWithCompletionHandler(completion: (Error?) -> Void)
  init()
}

/*!
 * @brief This defines the protocol for a delegate to receive updates about
 *        different aspects of an accessory
 */
@available(watchOS 20000, *)
protocol HMAccessoryDelegate : ObjectProtocol {

  /*!
   * @brief Informs the delegate when the name of the accessory is modified.
   *
   * @param accessory Sender of the message.
   */
  optional func accessoryDidUpdateName(accessory: HMAccessory)

  /*!
   * @brief Informs the delegate when the name of a service is modfied.
   *
   * @param accessory Sender of the message.
   *
   * @param service Service whose name was modified.
   */
  optional func accessory(accessory: HMAccessory, didUpdateNameFor service: HMService)

  /*!
   * @brief Informs the delegate when the associated service type of a service is modified.
   *
   * @param accessory Sender of the message.
   *
   * @param service Service whose associated service type was modified.
   */
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeFor service: HMService)

  /*!
   * @brief Informs the delegate when the services on the accessory have been dynamically updated.
   *        The services discovered are accessible via the 'services' property of the accessory.
   *
   * @param accessory Sender of the message.
   */
  optional func accessoryDidUpdateServices(accessory: HMAccessory)

  /*!
   * @brief Informs the delegate when the reachability of the accessory changes.
   *
   * @param accessory Sender of the message.
   */
  optional func accessoryDidUpdateReachability(accessory: HMAccessory)

  /*!
   * @brief Informs the delegate of a change in value of a characteristic. 
   *
   * @param accessory Sender of this messqage
   *
   * @param service HMService that contains the characteristic whose value was modified.
   *
   * @param characteristic The characteristic whose value was changed.
   */
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueFor characteristic: HMCharacteristic)
}

/*!
 * @brief This class is used to represent an accessory category.
 */
@available(watchOS 20000, *)
class HMAccessoryCategory : Object {

  /*!
   * @brief A type identifier that represents the category.
   */
  var categoryType: String { get }

  /*!
   * @brief The localized description of the category.
   */
  var localizedDescription: String { get }
  init()
}

/*!
 * @brief Category type for Other.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeOther: String

/*!
 * @brief Category type for Security System.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeSecuritySystem: String

/*!
 * @brief Category type for Bridge.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeBridge: String

/*!
 * @brief Category type for Door.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeDoor: String

/*!
 * @brief Category type for Door Lock.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeDoorLock: String

/*!
 * @brief Category type for Fan.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeFan: String

/*!
 * @brief Category type for Garage Door Opener.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeGarageDoorOpener: String

/*!
 * @brief Category type for Lightbulb.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeLightbulb: String

/*!
 * @brief Category type for Outlet.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeOutlet: String

/*!
 * @brief Category type for Programmable Switch.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeProgrammableSwitch: String

/*!
 * @brief Category type for Sensor.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeSensor: String

/*!
 * @brief Category type for Switch.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeSwitch: String

/*!
 * @brief Category type for Thermostat.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeThermostat: String

/*!
 * @brief Category type for Window.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeWindow: String

/*!
 * @brief Category type for Window Covering.
 */
@available(watchOS 20000, *)
let HMAccessoryCategoryTypeWindowCovering: String

/*!
 * @brief This class is used to represent a generic action.
 */
@available(watchOS 20000, *)
class HMAction : Object {

  /*!
   * @brief A unique identifier for the action.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
  init()
}

/*!
 * @brief This class represents a collection of action objects that can be executed. 
 *        The order of execution of these actions is undefined.
 */
@available(watchOS 20000, *)
class HMActionSet : Object {

  /*!
   * @brief The name of the action set.
   */
  var name: String { get }

  /*!
   * @brief Set of HMAction objects that represent the individual items of the action set.
   */
  var actions: Set<HMAction> { get }

  /*!
   * @brief Specifies whether the action set is currently executing or not.
   */
  var isExecuting: Bool { get }

  /*!
   * @brief Specifies the action set type - user-defined or one of the builtin types.
   *        Builtin action sets cannot be removed from the home.
   */
  @available(watchOS 2.0, *)
  var actionSetType: String { get }

  /*!
   * @brief A unique identifier for the action set.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}

/*!
 * @brief Builtin action set type for WakeUp
 */
@available(watchOS 20000, *)
let HMActionSetTypeWakeUp: String

/*!
 * @brief Type for builtin action set Sleep
 */
@available(watchOS 20000, *)
let HMActionSetTypeSleep: String

/*!
 * @brief Type for builtin action set HomeDeparture
 */
@available(watchOS 20000, *)
let HMActionSetTypeHomeDeparture: String

/*!
 * @brief Type for builtin action set HomeArrival
 */
@available(watchOS 20000, *)
let HMActionSetTypeHomeArrival: String

/*!
 * @brief Type for user-defined action sets
 */
@available(watchOS 20000, *)
let HMActionSetTypeUserDefined: String

/*!
 * @brief Represent a characteristic on a service of an accessory.
 */
@available(watchOS 20000, *)
class HMCharacteristic : Object {

  /*!
   * @brief The type of the characteristic, e.g. HMCharacteristicTypePowerState.
   */
  var characteristicType: String { get }

  /*!
   * @brief The localized description of the characteristic.
   */
  @available(watchOS 2.0, *)
  var localizedDescription: String { get }

  /*!
   * @brief Service that contains this characteristic.
   */
  weak var service: @sil_weak HMService? { get }

  /*!
   * @brief Array that describes the properties of the characteristic.
   *
   * @discussion This value corresponds to the properties associated with this characteristic.
   *             The contents of the array are one or more HMCharacteristicProperty constants.
   */
  var properties: [String] { get }

  /*!
   * @brief Meta data associated with the characteristic.
   */
  var metadata: HMCharacteristicMetadata? { get }

  /*!
   * @brief The value of the characteristic.
   *
   * @discussion The value is a cached value that may have been updated as a result of prior
   *             interaction with the accessory.
   */
  @NSCopying var value: AnyObject? { get }

  /*!
   * @brief Specifies whether the characteristic has been enabled to send notifications.
   *
   * @discussion This property is reset to NO if the reachability of the accessory is NO.
   */
  var isNotificationEnabled: Bool { get }

  /*!
   * @brief A unique identifier for the characteristic.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }

  /*!
   * @brief Modifies the value of the characteristic.
   *
   * @param value The value to be written.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   *
   * @discussion The value being written is validated against the metadata, format and permissions.
   *             The value written may be bounded by metadata for characteristics with int and 
   *             float format. If validation fails, the error provided to the completion handler
   *             indicates the type of failure.
   */
  func writeValue(value: AnyObject?, completionHandler completion: (Error?) -> Void)

  /*!
   * @brief Reads the value of the characteristic. The updated value can be read from the 'value' property of the characteristic.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func readValueWithCompletionHandler(completion: (Error?) -> Void)

  /*!
   * @brief Enables/disables notifications or indications for the value of a specified characteristic.
   *
   * @param enabled A Boolean value indicating whether you wish to receive notifications or 
   *                indications whenever the characteristic’s value changes.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func enableNotification(enable: Bool, completionHandler completion: (Error?) -> Void)
  init()
}

/*!
 @enum      HMCharacteristicValueDoorState

 @constant  HMCharacteristicValueDoorStateOpen          Door is fully open.
 @constant  HMCharacteristicValueDoorStateClosed        Door is fully closed.
 @constant  HMCharacteristicValueDoorStateOpening       Door is actively opening.
 @constant  HMCharacteristicValueDoorStateClosing       Door is actively closed.
 @constant  HMCharacteristicValueDoorStateStopped       Door is not moving, and is not fully open nor fully closed.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueDoorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Open
  case Closed
  case Opening
  case Closing
  case Stopped
}

/*!
 @enum      HMCharacteristicValueHeatingCooling

 @constant  HMCharacteristicValueHeatingCoolingOff      Heating/cooling is off.
 @constant  HMCharacteristicValueHeatingCoolingHeat     Heating/cooling is heating.
 @constant  HMCharacteristicValueHeatingCoolingCool     Heating/cooling is cooling.
 @constant  HMCharacteristicValueHeatingCoolingAuto     Heating/cooling is auto.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueHeatingCooling : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Off
  case Heat
  case Cool
  case Auto
}

/*!
 @enum      HMCharacteristicValueRotationDirection

 @constant  HMCharacteristicValueRotationDirectionClockwise             Clockwise rotation.
 @constant  HMCharacteristicValueRotationDirectionCounterClockwise      Counter-clockwise rotation.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueRotationDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clockwise
  case CounterClockwise
}

/*!
 @enum      HMCharacteristicValueTemperatureUnit

 @constant  HMCharacteristicValueTemperatureUnitCelsius                 Temperature unit in Celsius.
 @constant  HMCharacteristicValueTemperatureUnitFahrenheit              Temperature unit in Fahrenheit.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueTemperatureUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Celsius
  case Fahrenheit
}

/*!
 @enum      HMCharacteristicValueLockMechanismState

 @constant  HMCharacteristicValueLockMechanismStateUnsecured            Lock mechanism is unsecured.
 @constant  HMCharacteristicValueLockMechanismStateSecured              Lock mechanism is secured.
 @constant  HMCharacteristicValueLockMechanismStateJammed               Lock mechanism is jammed.
 @constant  HMCharacteristicValueLockMechanismStateUnknown              Lock mechanism is unknown.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueLockMechanismState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unsecured
  case Secured
  case Jammed
  case Unknown
}

/*!
 @enum      HMCharacteristicValueLockMechanismLastKnownAction

 @constant  HMCharacteristicValueLockMechanismLastKnownActionSecuredUsingPhysicalMovementInterior       Last known action was secured using physical movement, interior.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionUnsecuredUsingPhysicalMovementInterior     Last known action was unsecured using physical movement, interior.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionSecuredUsingPhysicalMovementExterior       Last known action was secured using physical movement, exterior.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionUnsecuredUsingPhysicalMovementExterior     Last known action was unsecured using physical movement, exterior.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionSecuredWithKeypad                          Last known action was secured with keypad.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionUnsecuredWithKeypad                        Last known action was unsecured with keypad.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionSecuredRemotely                            Last known action was secured remotely.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionUnsecuredRemotely                          Last known action was unsecured remotely.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionSecuredWithAutomaticSecureTimeout          Last known action was secured automatically after timeout.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionSecuredUsingPhysicalMovement               Last known action was secured using physical movement.
 @constant  HMCharacteristicValueLockMechanismLastKnownActionUnsecuredUsingPhysicalMovement             Last known action was unsecured using physical movement.
 */
@available(watchOS 20000, *)
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

/*!
 @enum      HMCharacteristicValueAirParticulateSize

 @constant  HMCharacteristicValueAirParticulateSize2_5          Air particulate size of 2.5 micrometers.
 @constant  HMCharacteristicValueAirParticulateSize10           Air particulate size of 10 micrometers.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueAirParticulateSize : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Size2_5
  case Size10
}

/*!
 @enum      HMCharacteristicValueAirQuality

 @constant  HMCharacteristicValueAirQualityUnknown              Air quality is unknown.
 @constant  HMCharacteristicValueAirQualityExcellent            Air quality is excellent.
 @constant  HMCharacteristicValueAirQualityGood                 Air quality is good.
 @constant  HMCharacteristicValueAirQualityFair                 Air quality is fair.
 @constant  HMCharacteristicValueAirQualityInferior             Air quality is inferior.
 @constant  HMCharacteristicValueAirQualityPoor                 Air quality is poor.
 */
@available(watchOS 20000, *)
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

/*!
 @enum      HMCharacteristicValuePositionState

 @constant  HMCharacteristicValuePositionStateClosing           Position is moving towards minimum value.
 @constant  HMCharacteristicValuePositionStateOpening           Position is moving towards maximum value.
 @constant  HMCharacteristicValuePositionStateStopped           Position is Stopped.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValuePositionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Closing
  case Opening
  case Stopped
}

/*!
 @enum      HMCharacteristicValueCurrentSecuritySystemState

 @constant  HMCharacteristicValueCurrentSecuritySystemStateStayArm       Home is occupied and residents are active.
 @constant  HMCharacteristicValueCurrentSecuritySystemStateAwayArm       Home is unoccupied.
 @constant  HMCharacteristicValueCurrentSecuritySystemStateNightArm      Home is occupied and residents are sleeping.
 @constant  HMCharacteristicValueCurrentSecuritySystemStateDisarmed      SecuritySystem is disarmed.
 @constant  HMCharacteristicValueCurrentSecuritySystemStateTriggered     SecuritySystem is triggered.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueCurrentSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StayArm
  case AwayArm
  case NightArm
  case Disarmed
  case Triggered
}

/*!
 @enum      HMCharacteristicValueTargetSecuritySystemState

 @constant  HMCharacteristicValueTargetSecuritySystemStateStayArm        Home is occupied and residents are active.
 @constant  HMCharacteristicValueTargetSecuritySystemStateAwayArm        Home is unoccupied.
 @constant  HMCharacteristicValueTargetSecuritySystemStateNightArm       Home is occupied and residents are sleeping.
 @constant  HMCharacteristicValueTargetSecuritySystemStateDisarm         Disarm.
 */
@available(watchOS 20000, *)
enum HMCharacteristicValueTargetSecuritySystemState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StayArm
  case AwayArm
  case NightArm
  case Disarm
}

/*!
 * @brief This class represents an event that is evaluated based on the value of a characteristic
 *        set to a particular value.
 */
@available(watchOS 20000, *)
class HMCharacteristicEvent : HMEvent {

  /*!
   * @brief The characteristic associated with the event.
   */
  var characteristic: HMCharacteristic { get }

  /*!
   * @brief The value of the characteristic that triggers the event.
   *        A value of nil corresponds to any change in the value of the characteristic.
   */
  @NSCopying var triggerValue: Copying? { get }
}

/*!
 * @brief This class defines the metadata for a characteristic. Metadata provides
 *		  further information about a characteristic’s value, which can be used
 * 		  for presentation purposes.
 */
@available(watchOS 20000, *)
class HMCharacteristicMetadata : Object {

  /*!
   * @brief The minimum value for the characteristic if it has a format of "int" or "float".
   */
  var minimumValue: Number? { get }

  /*!
   * @brief The maximum value for the characteristic if it has a format of "int" or "float".
   */
  var maximumValue: Number? { get }

  /*!
   * @brief Step value for the characteristic that indicates the minimum step value allowed if it has a format of "int" or "float".
   */
  var stepValue: Number? { get }

  /*!
   * @brief Max length value for the characteristic that indicates the maximum number of UTF-8 characters allowed if it has a format of "string".
   */
  var maxLength: Number? { get }

  /*!
   * @brief The format of the value. Refer to HMCharacteristicMetadataFormat constants for supported units.
   */
  var format: String? { get }

  /*!
   * @brief The units of the value. Refer to HMCharacteristicMetadataUnits constants for supported units.
   */
  var units: String? { get }

  /*!
   * @brief Manufacturer provided description for the characteristic to present to the user.
   */
  var manufacturerDescription: String? { get }
  init()
}

/*!
 * @brief Describes that the value format is boolean.
 *
 * @discussion The value is an NSNumber containing the boolean value.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatBool: String

/*!
 * @brief Describes that the value format is an integer.
 *
 * @discussion The value is an NSNumber containing a signed 32-bit integer with a range [-2147483648, 2147483647].
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatInt: String

/*!
 * @brief Describes that the value format is a float.
 *
 * @discussion The value is an NSNumber containing a 32-bit float.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatFloat: String

/*!
 * @brief Describes that the value format is a string.
 *
 * @discussion The value is an NSString.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatString: String

/*!
 * @brief Describes that the value format is an array.
 *
 * @discussion The value is an NSArray.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatArray: String

/*!
 * @brief Describes that the value format is a dictionary.
 *
 * @discussion The value is an NSDictionary.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatDictionary: String

/*!
 * @brief Describes that the value format is an unsigned 8-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 8-bit integer with a range [0, 255].
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt8: String

/*!
 * @brief Describes that the value format is an unsigned 16-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 16-bit integer with a range [0, 65535].
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt16: String

/*!
 * @brief Describes that the value format is an unsigned 32-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 32-bit integer with a range [0, 4294967295].
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt32: String

/*!
 * @brief Describes that the value format is an unsigned 64-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 64-bit integer with a range [0, 18446744073709551615].
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt64: String

/*!
 * @brief Describes that the value format is a data blob.
 *
 * @discussion The value is an NSData containing the bytes of data.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatData: String

/*!
 * @brief Describes that the value format is a TLV8.
 *
 * @discussion The value is an NSData containing a set of one or more TLV8's, which are packed type-length-value items with an 8-bit type, 8-bit length, and N-byte value.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatTLV8: String

/*!
 * @brief Describes that the unit of the characteristic is in Celsius.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsCelsius: String

/*!
 * @brief Describes that the unit of the characteristic is in Fahrenheit.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsFahrenheit: String

/*!
 * @brief Describes that the unit of the characteristic is a percentage.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsPercentage: String

/*!
 * @brief Describes that the unit of the characteristic is an arc degree.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsArcDegree: String

/*!
 * @brief Describes that the unit of the characteristic is in seconds.
 */
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsSeconds: String

/*!
 * @brief This constant specifies that the characteristic supports notifications
 *        using the event connection established by the controller. The
 *        event connection provides unidirectional communication from the
 *        accessory to the controller.
 */
@available(watchOS 20000, *)
let HMCharacteristicPropertySupportsEventNotification: String

/*!
 * @brief This constant specifies that the characteristic is readable.
 */
@available(watchOS 20000, *)
let HMCharacteristicPropertyReadable: String

/*!
 * @brief This constant specifies that the characteristic is writable.
 */
@available(watchOS 20000, *)
let HMCharacteristicPropertyWritable: String

/*!
 * @brief Characteristic type for power state. The value of the characteristic is a boolean.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypePowerState: String

/*!
 * @brief Characteristic type for hue. The value of the characteristic is a float value in arc degrees.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeHue: String

/*!
 * @brief Characteristic type for saturation. The value of the characteristic is a float value in percent.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeSaturation: String

/*!
 * @brief Characteristic type for brightness. The value of the characteristic is an int value in percent.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeBrightness: String

/*!
 * @brief Characteristic type for temperature units. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueTemperatureUnit.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTemperatureUnits: String

/*!
 * @brief Characteristic type for current temperature. The value of the characteristic is a float value in Celsius.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentTemperature: String

/*!
 * @brief Characteristic type for target temperature. The value of the characteristic is a float value in Celsius.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetTemperature: String

/*!
 * @brief Characteristic type for heating/cooling mode. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueHeatingCooling and indicates the current heating/cooling mode.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentHeatingCooling: String

/*!
 * @brief Characteristic type for target heating/cooling mode. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueHeatingCooling and indicates the target heating/cooling mode.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetHeatingCooling: String

/*!
 * @brief Characteristic type for cooling threshold temperature. The value of the characteristic is a float value in Celsius.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCoolingThreshold: String

/*!
 * @brief Characteristic type for heating threshold temperature. The value of the characteristic is a float value in Celsius.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeHeatingThreshold: String

/*!
 * @brief Characteristic type for current relative humidity. The value of the characteristic is a float value in percent.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentRelativeHumidity: String

/*!
 * @brief Characteristic type for target relative humidity. The value of the characteristic is a float value in percent.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetRelativeHumidity: String

/*!
 * @brief Characteristic type for current door state. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueDoorState and indicates the current door state.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentDoorState: String

/*!
 * @brief Characteristic type for target door state. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueDoorState and indicates the target door state.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetDoorState: String

/*!
 * @brief Characteristic type for obstruction detected. The value of the characteristic is a boolean value.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeObstructionDetected: String

/*!
 * @brief Characteristic type for name. The value of the characteristic is a string.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeName: String

/*!
 * @brief Characteristic type for manufacturer. The value of the characteristic is a string.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeManufacturer: String

/*!
 * @brief Characteristic type for model. The value of the characteristic is a string.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeModel: String

/*!
 * @brief Characteristic type for serial number. The value of the characteristic is a string.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeSerialNumber: String

/*!
 * @brief Characteristic type for identify. The characteristic is write-only that takes a boolean.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeIdentify: String

/*!
 * @brief Characteristic type for rotation direction. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueRotationDirection and indicates the fan rotation direction.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeRotationDirection: String

/*!
 * @brief Characteristic type for rotation speed. The value of the characteristic is a float representing
 *        the percentage of maximum speed.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeRotationSpeed: String

/*!
 * @brief Characteristic type for outlet in use. The value of the characteristic is a boolean, which is true
 *        if the outlet is in use.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeOutletInUse: String

/*!
 * @brief Characteristic type for version. The value of the characteristic is a string.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeVersion: String

/*!
 * @brief Characteristic type for logs. The value of the characteristic is TLV8 data wrapped in an NSData.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeLogs: String

/*!
 * @brief Characteristic type for audio feedback. The value of the characteristic is a boolean.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeAudioFeedback: String

/*!
 * @brief Characteristic type for admin only access. The value of the characteristic is a boolean.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeAdminOnlyAccess: String

/*!
 * @brief Characteristic type for Security System Alarm Type. The value of the characteristic is a uint8.
 *        indicating the type of alarm triggered by a security system service. This characteristic has a value
 *        of 1 when the alarm type is not known and a value of 0 indicates that the alarm conditions are cleared.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeSecuritySystemAlarmType: String

/*!
 * @brief Characteristic type for motion detected. The value of the characteristic is a boolean.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeMotionDetected: String

/*!
 * @brief Characteristic type for current lock mechanism state. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueLockMechanismState.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentLockMechanismState: String

/*!
 * @brief Characteristic type for target lock mechanism state. The value of the characteristic is either
 *        HMCharacteristicValueLockMechanismStateUnsecured, or HMCharacteristicValueLockMechanismStateSecured,
 *        as defined by HMCharacteristicValueLockMechanismState.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetLockMechanismState: String

/*!
 * @brief Characteristic type for the last known action for a lock mechanism. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueLockMechanismLastKnownAction.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeLockMechanismLastKnownAction: String

/*!
 * @brief Characteristic type for the control point for lock management. The characteristic is write-only that takes TLV8 data wrapped in an NSData.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeLockManagementControlPoint: String

/*!
 * @brief Characteristic type for the auto secure timeout for lock management. The value of the characteristic is an unsigned 
          32-bit integer representing the number of seconds.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeLockManagementAutoSecureTimeout: String

/*!
 * @brief Characteristic type for density of air-particulate matter. The value of the characteristic is
 *        in units of micrograms/m^2.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeAirParticulateDensity: String

/*!
 * @brief Characteristic type for size of air-particulate matter. The value of the characteristic is
 *        one of the values defined for HMCharacteristicValueAirParticulateSize.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeAirParticulateSize: String

/*!
 * @brief Characteristic type for air quality. The value of the characteristic is
 *        one of the values defined for HMCharacteristicValueAirQuality.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeAirQuality: String

/*!
 * @brief Characteristic type for battery level. The value of the characteristic is an uint8
 *        value in percent.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeBatteryLevel: String

/*!
 * @brief Characteristic type for carbon dioxide detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates carbon dioxide levels are normal.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCarbonDioxideDetected: String

/*!
 * @brief Characteristic type for carbon dioxide level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCarbonDioxideLevel: String

/*!
 * @brief Characteristic type for carbon dioxide peak level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCarbonDioxidePeakLevel: String

/*!
 * @brief Characteristic type for carbon monoxide detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates carbon monoxide levels are normal.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCarbonMonoxideDetected: String

/*!
 * @brief Characteristic type for carbon monoxide level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCarbonMonoxideLevel: String

/*!
 * @brief Characteristic type for carbon monoxide peak level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCarbonMonoxidePeakLevel: String

/*!
 * @brief Characteristic type for Charging state. The value of the characteristic is a uint8.
 *        A value of 1 indicates charging is in progress.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeChargingState: String

/*!
 * @brief Characteristic type for Contact sensor state. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates that contact is detected; a value of 1 indicates no contact is detected.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeContactState: String

/*!
 * @brief Characteristic type for current horizontal tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentHorizontalTilt: String

/*!
 * @brief Characteristic type for current light level. The value of the characteristic in units of lux.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentLightLevel: String

/*!
 * @brief Characteristic type for current position of a door/window. The value of the characteristic is an
 *        uint8 value in percent.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentPosition: String

/*!
 * @brief Characteristic type for current security system state. The value of the characteristic is one of
 *        the values defined for HMCharacteristicValueCurrentSecuritySystemState.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentSecuritySystemState: String

/*!
 * @brief Characteristic type for current vertical tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeCurrentVerticalTilt: String

/*!
 * @brief Characteristic type for firmware version. The value of the characteristic is a string value
 *        describing the firmware version of the accessory.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeFirmwareVersion: String

/*!
 * @brief Characteristic type for hardware version. The value of the characteristic is a string value
 *        describing the hardware version of the accessory.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeHardwareVersion: String

/*!
 * @brief Characteristic type for Hold Position. The value of the characteristic is a boolean
 *        indicating that the current position should be held/maintained.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeHoldPosition: String

/*!
 * @brief Characteristic type for programmable switch input event. The value of the characteristic is an int
 *        that can change based on the type of programmable switch. For a binary programmable switch, a value of 0
 *        indicates OFF (and 1 indicates ON). For a slider programmable switch, the value indicates the level.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeInputEvent: String

/*!
 * @brief Characteristic type for leak detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no leak is detected; a value of 1 indicates that a leak is detected.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeLeakDetected: String

/*!
 * @brief Characteristic type for Occupancy Detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no occupancy is detected; a value of 1 indicates that occupancy is detected.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeOccupancyDetected: String

/*!
 * @brief Characteristic type for programmable switch output state. This value is to be used for presentation
 *        purposes. For a binary programmable switch, a value of 1 can be used to present a state of ON.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeOutputState: String

/*!
 * @brief Characteristic type for Position state. The value of the characteristic is one of the
 *        one of the values defined for HMCharacteristicValuePositionState.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypePositionState: String

/*!
 * @brief Characteristic type for Smoke Detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no leak is detected; a value of 1 indicates that a leak is detected.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeSmokeDetected: String

/*!
 * @brief Characteristic type for software version. The value of the characteristic is a string value
 *        describing the software version of the accessory.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeSoftwareVersion: String

/*!
 * @brief Characteristic type to indicate status of a service is active. The value of the characteristic is a boolean.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeStatusActive: String

/*!
 * @brief Characteristic type to indicate status of a service is fault. The value of the characteristic is a uint8 value.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeStatusFault: String

/*!
 * @brief Characteristic type to indicate status of a service is jammed. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates that the service is not jammed; a value of 1 indicates that the service is jammed.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeStatusJammed: String

/*!
 * @brief Characteristic type to indicate status of a service is low battery. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates battery level is normal; a value of 1 indicates that battery level is low.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeStatusLowBattery: String

/*!
 * @brief Characteristic type to indicate status of a service is tampered. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no tampering has been detected; a value of 1 indicates that a tampering has been detected.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeStatusTampered: String

/*!
 * @brief Characteristic type for target horizontal tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetHorizontalTilt: String

/*!
 * @brief Characteristic type for target security system state. The value of the characteristic is one of
 *        the values defined for HMCharacteristicValueTargetSecuritySystemState.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetSecuritySystemState: String

/*!
 * @brief Characteristic type for target position of a door/window. The value of the characteristic is an
 *        uint8 value in percent. For shades/awnings, a value of 0 indicates no shade and a value of 100
 *        indicates most shade. For blinds, a value of 0 indicates most light is allowed in and 100
 *        indicates least light is allowed.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetPosition: String

/*!
 * @brief Characteristic type for target vertical tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(watchOS 20000, *)
let HMCharacteristicTypeTargetVerticalTilt: String

/*!
 * @brief This class is used to represent an entry in an action set that writes a specific
 *        value to a characteristic.
 */
@available(watchOS 20000, *)
class HMCharacteristicWriteAction : HMAction {

  /*!
   * @brief The characteristic associated with the action.
   */
  var characteristic: HMCharacteristic { get }

  /*!
   * @brief The target value for the action.
   */
  @NSCopying var targetValue: Copying { get }
}
@available(watchOS 2.0, *)
let HMErrorDomain: String

/*!
 * @brief This enumeration describes the possible error constants that can be
 *        returned from the the HomeKit APIs.
 */
@available(watchOS 20000, *)
enum HMErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlreadyExists
  case NotFound
  case InvalidParameter
  case AccessoryNotReachable
  case ReadOnlyCharacteristic
  case WriteOnlyCharacteristic
  case NotificationNotSupported
  case OperationTimedOut
  case AccessoryPoweredOff
  case AccessDenied
  case ObjectAssociatedToAnotherHome
  case ObjectNotAssociatedToAnyHome
  case ObjectAlreadyAssociatedToHome
  case AccessoryIsBusy
  case OperationInProgress
  case AccessoryOutOfResources
  case InsufficientPrivileges
  case AccessoryPairingFailed
  case InvalidDataFormatSpecified
  case NilParameter
  case UnconfiguredParameter
  case InvalidClass
  case OperationCancelled
  case RoomForHomeCannotBeInZone
  case NoActionsInActionSet
  case NoRegisteredActionSets
  case MissingParameter
  case FireDateInPast
  case RoomForHomeCannotBeUpdated
  case ActionInAnotherActionSet
  case ObjectWithSimilarNameExistsInHome
  case HomeWithSimilarNameExists
  case RenameWithSimilarName
  case CannotRemoveNonBridgeAccessory
  case NameContainsProhibitedCharacters
  case NameDoesNotStartWithValidCharacters
  case UserIDNotEmailAddress
  case UserDeclinedAddingUser
  case UserDeclinedRemovingUser
  case UserDeclinedInvite
  case UserManagementFailed
  case RecurrenceTooSmall
  case InvalidValueType
  case ValueLowerThanMinimum
  case ValueHigherThanMaximum
  case StringLongerThanMaximum
  case HomeAccessNotAuthorized
  case OperationNotSupported
  case MaximumObjectLimitReached
  case AccessorySentInvalidResponse
  case StringShorterThanMinimum
  case GenericError
  case SecurityFailure
  case CommunicationFailure
  case MessageAuthenticationFailed
  case InvalidMessageSize
  case AccessoryDiscoveryFailed
  case ClientRequestError
  case AccessoryResponseError
  case NameDoesNotEndWithValidCharacters
  case AccessoryIsBlocked
  case InvalidAssociatedServiceType
  case ActionSetExecutionFailed
  case ActionSetExecutionPartialSuccess
  case ActionSetExecutionInProgress
  case AccessoryOutOfCompliance
  case DataResetFailure
  case NotificationAlreadyEnabled
  case RecurrenceMustBeOnSpecifiedBoundaries
  case DateMustBeOnSpecifiedBoundaries
  case CannotActivateTriggerTooFarInFuture
  case RecurrenceTooLarge
  case ReadWritePartialSuccess
  case ReadWriteFailure
  case NotSignedIntoiCloud
  case KeychainSyncNotEnabled
  case CloudDataSyncInProgress
  case NetworkUnavailable
  case AddAccessoryFailed
  case MissingEntitlement
  case CannotUnblockNonBridgeAccessory
  case DeviceLocked
  @available(watchOS 2.0, *)
  case CannotRemoveBuiltinActionSet
  @available(watchOS 2.0, *)
  case LocationForHomeDisabled
  @available(watchOS 2.0, *)
  case NotAuthorizedForLocationServices
}

/*!
 * @brief This class is used to represent a generic HomeKit event.
 */
@available(watchOS 20000, *)
class HMEvent : Object {

  /*!
   * @brief A unique identifier for the event.
   */
  @NSCopying var uniqueIdentifier: UUID { get }
  init()
}

/*!
 * @brief Event corresponding to sunrise
 */
@available(watchOS 20000, *)
let HMSignificantEventSunrise: String

/*!
 * @brief Event corresponding to sunset
 */
@available(watchOS 20000, *)
let HMSignificantEventSunset: String

/*!
 * @brief Specifies the key path for a characteristic in a NSPredicate
 */
@available(watchOS 20000, *)
let HMCharacteristicKeyPath: String

/*!
 * @brief Specifies the key path for a characteristic value in a NSPredicate
 */
@available(watchOS 20000, *)
let HMCharacteristicValueKeyPath: String

/*!
 * @brief Triggers based on events.
 *
 * @discussion This class represents a trigger that is based on events.
 */
@available(watchOS 20000, *)
class HMEventTrigger : HMTrigger {

  /*!
   * @brief The events associated with the trigger.
   */
  var events: [HMEvent] { get }

  /*!
   * @brief The predicate to evaluate before executing the action sets associated with the trigger.
   */
  @NSCopying var predicate: Predicate? { get }

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred before a significant event.
   *
   * @param significantEvent The significant event to compare against.
   *                         The valid values are: HMSignificantEventSunrise and HMSignificantEventSunset.
   *
   * @param offset An offset from the time of the signficant event. To specify an offset before the significant event, the
   *               properties of the NSDateComponents must be negative value. e.g. To specify 30 mins before sunset, the
   *               'minute' property must be set to -30.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred before a significant event.
   *
   * @param significantEvent The significant event to compare against.
   *                         The valid values are: HMSignificantEventSunrise and HMSignificantEventSunset.
   *
   * @param offset An offset from the time of the signficant event. To specify an offset after the significant event, the
   *               properties of the NSDateComponents must be positive value. e.g. To specify 30 mins after sunset, the
   *               'minute' property must be set to 30.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: DateComponents?) -> Predicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred before the time specified.
   *
   * @param dateComponents Date components representing the time to compare against when the event occurs.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringBeforeDateWith(dateComponents: DateComponents) -> Predicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred at the time specified.
   *
   * @param dateComponents Date components representing the time to compare against when the event occurs.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringOnDateWith(dateComponents: DateComponents) -> Predicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred at or after the time specified.
   *
   * @param dateComponents Date components representing the time to compare against when the event occurs.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringAfterDateWith(dateComponents: DateComponents) -> Predicate

  /*!
   * @brief Creates a predicate that will evaluate whether a characteristic value is related to the specified value.
   *
   * @param characteristic The characteristic that is evaluated as part of the predicate.
   *
   * @param operatorType The relation between the characteristic and the target value. 
   *                     This can be either Less Than, Greater Than, Less Than or Equal, Greater Than or Equal, Equal, or Not Equal.
   *                     Anything else will cause an exception to be thrown.
   *
   * @param value The value of the characteristic to compare when evaluating the predicate.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerWith(characteristic: HMCharacteristic, relatedBy operatorType: PredicateOperatorType, toValue value: AnyObject) -> Predicate
}

/*!
 * @brief Represents a home.
 *
 * @discussion This class represents a home and is the entry point to communicate and
 *             configure different accessories in the home. This is also used to manage
 *             all the rooms, zones, service groups, users, triggers, and action sets in
 *             the home.
 */
@available(watchOS 20000, *)
class HMHome : Object {

  /*!
   * @brief Delegate that receives updates on the state of the home.
   */
  weak var delegate: @sil_weak HMHomeDelegate?

  /*!
   * @brief The name of the home.
   */
  var name: String { get }

  /*!
   * @brief Specifies whether this home is the primary home.
   */
  var isPrimary: Bool { get }

  /*!
   * @brief A unique identifier for the home.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
extension HMHome {

  /*!
   * @brief Array of HMAccessory objects that represents all accessories added to the home. 
   */
  var accessories: [HMAccessory] { get }

  /*!
   * @brief Queries all services that match the specified types.
   *
   * @param serviceTypes Array of NSString objects that specifies the service types to match.
   *
   * @return Array of HMService objects that match the specified service types, 
   *         nil if no matching services were found.
   */
  func servicesWithTypes(serviceTypes: [String]) -> [HMService]?
}
extension HMHome {

  /*!
   * @brief HMUser object representing the current user of the home.
   */
  @available(watchOS 2.0, *)
  var currentUser: HMUser { get }

  /*!
   * @brief Retrieve the access level of the user associated with the home.
   */
  @available(watchOS 2.0, *)
  func homeAccessControlFor(user: HMUser) -> HMHomeAccessControl
}
extension HMHome {

  /*!
   * @brief Array of HMRoom objects that represents all rooms in the home.
   */
  var rooms: [HMRoom] { get }

  /*!
   * @brief This method returns a room that represents the entire home. This can be used to assign a room
   *        to a service that is not necessarily located in one particular room.
   *
   * @return HMRoom that represents the home.
   */
  func roomForEntireHome() -> HMRoom
}
extension HMHome {

  /*!
   * @brief Array of HMZone objects that represents all the zones in the home.
   */
  var zones: [HMZone] { get }
}
extension HMHome {

  /*!
   * @brief Array of HMServiceGroup objects that represents all service groups in the home.
   */
  var serviceGroups: [HMServiceGroup] { get }
}
extension HMHome {

  /*!
   * @brief Array of HMActionSet objects that represents all the action sets in the home.
   */
  var actionSets: [HMActionSet] { get }

  /*!
   * @brief Executes all the actions within an action set.
   *
   * @param actionSet Action set to execute.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (Error?) -> Void)

  /*!
   * @brief Retrieve a built-in action set for the home.
   *
   * @param type Type of the builtin action set. Supported action set types are HMActionSetTypeWakeUp,
   *             HMActionSetTypeSleep, HMActionSetTypeHomeDeparture and HMActionSetTypeHomeArrival.
   *
   * @return Reference to the built-in action set corresponding to type argument,
   *         nil if no matching action set is found.
   */
  @available(watchOS 2.0, *)
  func builtinActionSetOfType(actionSetType: String) -> HMActionSet?
}
extension HMHome {

  /*!
   * @brief Array of HMTrigger objects that represents all the triggers in the home.
   */
  var triggers: [HMTrigger] { get }
}

/*!
 * @brief This delegate receives update on the various accessories, action sets, groups and triggers 
 *        managed in the home.
 */
@available(watchOS 20000, *)
protocol HMHomeDelegate : ObjectProtocol {

  /*!
   * @brief Informs the delegate of a change in the name of a home.
   *
   * @param home Sender of this message.
   */
  optional func homeDidUpdateName(home: HMHome)

  /*!
   * @brief Informs the delegate of addition of an accessory to the home.
   *
   * @param home Sender of the message.
   *
   * @param accessory Accessory that was added to the home.
   */
  optional func home(home: HMHome, didAdd accessory: HMAccessory)

  /*!
   * @brief Informs the delegate of removal of an accessory from the home.
   *
   * @param home Sender of the message.
   *
   * @param accessory Accessory that was removed from the home.
   */
  optional func home(home: HMHome, didRemove accessory: HMAccessory)

  /*!
   * @brief Informs the delegate that a user was added to the home.
   *
   * @param home Sender of this message.
   *
   * @param user User who was granted access to the home.
   */
  optional func home(home: HMHome, didAdd user: HMUser)

  /*!
   * @brief Informs the delegate that a user was removed from the home.
   *
   * @param home Sender of this message.
   *
   * @param user User whose access was revoked from the home.
   */
  optional func home(home: HMHome, didRemove user: HMUser)

  /*!
   * @brief Informs the delegate when a new room is assigned to an accessory
   *
   * @param home Sender of the message.
   *
   * @param room New room for the accessory.
   *
   * @param accessory Accessory that was assigned a new room.
   */
  optional func home(home: HMHome, didUpdateRoom room: HMRoom, forAccessory accessory: HMAccessory)

  /*!
   * @brief Informs the delegate of addition of a room to the home.
   *
   * @param home Sender of the message.
   *
   * @param room Room that was added to the home.
   */
  optional func home(home: HMHome, didAdd room: HMRoom)

  /*!
   * @brief Informs the delegate of removal of a room from the home.
   *
   * @param home Sender of the message.
   *
   * @param room Room that was removed from the home.
   */
  optional func home(home: HMHome, didRemove room: HMRoom)

  /*!
   * @brief Informs the delegate that the name of a room was modified
   *
   * @param home Sender of this message.
   *
   * @param room Room that was modified.
   */
  optional func home(home: HMHome, didUpdateNameFor room: HMRoom)

  /*!
   * @brief Informs the delegate of addition of a zone to the home.
   *
   * @param home Sender of the message.
   *
   * @param zone Zone that was added to the home.
   */
  optional func home(home: HMHome, didAdd zone: HMZone)

  /*!
   * @brief Informs the delegate of removal of a zone from the home.
   *
   * @param home Sender of the message.
   *
   * @param zone Zone that was removed from the home.
   */
  optional func home(home: HMHome, didRemove zone: HMZone)

  /*!
   * @brief Informs the delegate that the name of a zone was modified.
   *
   * @param home Sender of this message.
   *
   * @param zone Zone that was modified.
   */
  optional func home(home: HMHome, didUpdateNameFor zone: HMZone)

  /*!
   * @brief Informs the delegate that the room was added to a zone.
   *
   * @param home Sender of this message.
   *
   * @param room Room that was added to the zone.
   *
   * @param zone Zone that was modified.
   */
  optional func home(home: HMHome, didAdd room: HMRoom, to zone: HMZone)

  /*!
   * @brief Informs the delegate that the room was removed from a zone.
   *
   * @param home Sender of this message.
   *
   * @param room Room that was removed from the zone.
   *
   * @param zone Zone that was modified.
   */
  optional func home(home: HMHome, didRemove room: HMRoom, from zone: HMZone)

  /*!
   * @brief Informs the delegate that a service group was added to the home.
   *
   * @param home Sender of the message.
   *
   * @param group Service group that was added to the home.
   */
  optional func home(home: HMHome, didAdd group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that a service group was removed from the home.
   *
   * @param home Sender of the message.
   *
   * @param group Service group that was removed from the home.
   */
  optional func home(home: HMHome, didRemove group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that the name of a service group was modified.
   *
   * @param home Sender of this message.
   *
   * @param group The service group that was modfied.
   */
  optional func home(home: HMHome, didUpdateNameFor group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that a service was added to a service group.
   *
   * @param home Sender of this message.
   *
   * @param service Service that was added to the service group.
   *
   * @param group Service group that was modified.
   */
  optional func home(home: HMHome, didAdd service: HMService, to group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that a service was removed from a service group.
   *
   * @param home Sender of this message.
   *
   * @param service Service that was removed from the service group.
   *
   * @param group Service group that was modified.
   */
  optional func home(home: HMHome, didRemove service: HMService, from group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that an action set was added to the home.
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was added to the home.
   */
  optional func home(home: HMHome, didAdd actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate that an action set was removed from the home.
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was removed from the home.
   */
  optional func home(home: HMHome, didRemove actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate that the name of an action set was modified.
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was modified.
   */
  optional func home(home: HMHome, didUpdateNameFor actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate that the actions of an action set was modified.
   * This indicates that an action was added/removed or modified (value replaced)
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was modified.
   */
  optional func home(home: HMHome, didUpdateActionsFor actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate of the addition of a trigger to the home.
   *
   * @param home Sender of the message.
   *
   * @param trigger Trigger that was added to the home.
   */
  optional func home(home: HMHome, didAdd trigger: HMTrigger)

  /*!
   * @brief Informs the delegate of removal of a trigger from the home.
   *
   * @param home Sender of the message.
   *
   * @param trigger Trigger that was removed from the home.
   */
  optional func home(home: HMHome, didRemove trigger: HMTrigger)

  /*!
   * @brief Informs the delegate that the name of the trigger was modified.
   *
   * @param home Sender of this message.
   *
   * @param trigger Trigger that was modified.
   */
  optional func home(home: HMHome, didUpdateNameFor trigger: HMTrigger)

  /*!
   * @brief Informs the delegate whenever a trigger is updated. For example, this method may be
   *        invoked when a trigger is activated, when a trigger fires, or when the action sets 
   *        associated with a trigger are modified.
   *
   * @param home Sender of this message.
   *
   * @param trigger The trigger that was updated.
   */
  optional func home(home: HMHome, didUpdateTrigger trigger: HMTrigger)

  /*!
   * @brief Informs the delegate that an accessory has been unblocked
   *
   * @param home Sender of this message.
   *
   * @param accessory Accessory that was unblocked
   */
  optional func home(home: HMHome, didUnblockAccessory accessory: HMAccessory)

  /*!
   * @brief Informs the delegate that a configured accessory encountered an error. The 
   *        delegate should check the blocked state of the accessory
   *
   * @param home Sender of this message.
   *
   * @param error Error encountered by accessory.
   *
   * @param accessory Accessory that encountered the error
   */
  optional func home(home: HMHome, didEncounterError error: Error, forAccessory accessory: HMAccessory)
}

/*!
 * @brief Key that provides more details on the accessories that failed during an 
 *        addUser:completionHandler: or removeUser:completionHandler: call. 
 *
 * @discussion The value associated with this key is an NSArray of NSDictionary objects. Each dictionary
 *             contains the UUID of the accessory that failed to the added/removed and the value
 *             corresponding to the dictionary key is an NSError that provides more details on the
 *             underlying error for that accessory.
 */
@available(watchOS 20000, *)
let HMUserFailedAccessoriesKey: String

/*!
 * @brief Represents the access control of a user associated with a home.
 */
@available(watchOS 20000, *)
class HMHomeAccessControl : Object {

  /*!
   * @brief Specifies if the user has administrative privileges for the home.
   */
  var isAdministrator: Bool { get }
}

/*!
 * @brief Manages collection of one or more homes.
 *
 * @discussion This class is responsible for managing a collection of homes. 
 */
@available(watchOS 20000, *)
class HMHomeManager : Object {

  /*!
   * @brief Delegate that receives updates on the collection of homes.
   */
  weak var delegate: @sil_weak HMHomeManagerDelegate?

  /*!
   * @brief The primary home for this collection.
   */
  var primaryHome: HMHome? { get }

  /*!
   * @brief Array of HMHome objects that represents the homes associated with the home manager.
   *
   * @discussion When a new home manager is created, this array is inialized as an empty array. It is
   *             not guaranteed to be filled with the list of homes, represented as HMHome objects,
   *             until the homeManagerDidUpdateHomes: delegate method has been invoked.
   */
  var homes: [HMHome] { get }
  init()
}

/*!
 * @brief This delegate receives updates on homes being managed via the home manager.
 */
@available(watchOS 20000, *)
protocol HMHomeManagerDelegate : ObjectProtocol {

  /*!
   * @brief Informs the delegate when homes configured by the user have been detected by the system.
   *
   * @discussion This delegate method is also invoked to inform an application of significant changes
   *             to the home configuration. Applications should use this as a cue to invalidate their
   *             current references to HomeKit objects and refresh their views with the new list of homes.
   *
   * @param manager Sender of this message.
   */
  optional func homeManagerDidUpdateHomes(manager: HMHomeManager)

  /*!
   * @brief Informs the delegate when the primary home is modified.
   *
   * @param manager Sender of this message.
   */
  optional func homeManagerDidUpdatePrimaryHome(manager: HMHomeManager)

  /*!
   * @brief Informs the delegate when a new home is added.
   *
   * @param manager Sender of this message.
   *
   * @param home New home that was added.
   */
  optional func homeManager(manager: HMHomeManager, didAdd home: HMHome)

  /*!
   * @brief Informs the delegate when an existing home is removed.
   *
   * @param manager Sender of this message.
   *
   * @param home Home that was removed.
   */
  optional func homeManager(manager: HMHomeManager, didRemove home: HMHome)
}

/*!
 * @brief This class represents an event that is evaluated based on entry to and/or
 *        exit from a Region
 */
@available(watchOS 20000, *)
class HMLocationEvent : HMEvent {
}

/*!
 * @brief This class describes a room in the home.
 */
@available(watchOS 20000, *)
class HMRoom : Object {

  /*!
   * @brief Name of the room.
   */
  var name: String { get }

  /*!
   * @brief Array of HMAccessory objects that correspond to the accessories 
   *        associated with this room.
   */
  var accessories: [HMAccessory] { get }

  /*!
   * @brief A unique identifier for the room.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}

/*!
 * @brief Represents a service provided by an accessory.
 *
 * @discussion This class represents a service provided by an accessory in the home.
 *             A service is composed of one or more characteristics that can be 
 *             modified.
 */
@available(watchOS 20000, *)
class HMService : Object {

  /*!
   * @brief Accessory that provides this service.
   */
  weak var accessory: @sil_weak HMAccessory? { get }

  /*!
   * @brief The type of the service, e.g. HMServiceTypeLightbulb.
   */
  var serviceType: String { get }

  /*!
   * @brief The localized description of the service.
   */
  @available(watchOS 2.0, *)
  var localizedDescription: String { get }

  /*!
   * @brief Name for the service.
   *
   * @discussion Returns the service's name that is associated with HomeKit. The initial value is the value of
   *             the name characteristic of the service, if it has one.
   */
  var name: String { get }

  /*!
   * @brief For HMServiceTypeOutlet and HMServiceTypeSwitch, this is the type of the associated service.
   *
   * @discussion This could be any of the HomeKit Accessory Profile defined services (except HMServiceTypeOutlet
   *             or HMServiceTypeSwitch) that supports HMCharacteristicTypePowerState characteristic.
   */
  var associatedServiceType: String? { get }

  /*!
   * @brief Array of HMCharacteristic objects that represents all the characteristics
   *        provided by the service.
   */
  var characteristics: [HMCharacteristic] { get }

  /*!
   * @brief A unique identifier for the service.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }

  /*!
   * @brief Indicates if this service supports user interaction or not.
   *
   * @discussion Applications should use this property to filter out services that the users
   *             should not directly interact with, e.g. HMServiceTypeAccessoryInformation.
   */
  @available(watchOS 2.0, *)
  var isUserInteractive: Bool { get }
  init()
}

/*!
 * @abstract Used to describe a collection of HMService objects
 *
 * @discussion This class is used to group a collection of HMService objects.
 *             This allows for association of a set of accessory services into a group.
 *             Eg. A collection of lights can be grouped as the "Desk Lamps" service group.
 */
@available(watchOS 20000, *)
class HMServiceGroup : Object {

  /*!
   * @brief Name of the service group.
   */
  var name: String { get }

  /*!
   * @brief Array of HMService objects that correspond to the services contained in this group.
   */
  var services: [HMService] { get }

  /*!
   * @brief A unique identifier for the service group.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}

/*!
 * @brief Service type for lightbulb.
 */
@available(watchOS 20000, *)
let HMServiceTypeLightbulb: String

/*!
 * @brief Service type for switch.
 */
@available(watchOS 20000, *)
let HMServiceTypeSwitch: String

/*!
 * @brief Service type for thermostat.
 */
@available(watchOS 20000, *)
let HMServiceTypeThermostat: String

/*!
 * @brief Service type for garage door opener.
 */
@available(watchOS 20000, *)
let HMServiceTypeGarageDoorOpener: String

/*!
 * @brief Service type for accessory information.
 */
@available(watchOS 20000, *)
let HMServiceTypeAccessoryInformation: String

/*!
 * @brief Service type for fan.
 */
@available(watchOS 20000, *)
let HMServiceTypeFan: String

/*!
 * @brief Service type for outlet.
 */
@available(watchOS 20000, *)
let HMServiceTypeOutlet: String

/*!
 * @brief Service type for lock mechanism.
 */
@available(watchOS 20000, *)
let HMServiceTypeLockMechanism: String

/*!
 * @brief Service type for lock management.
 */
@available(watchOS 20000, *)
let HMServiceTypeLockManagement: String

/*!
 * @brief Service type for air quality sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeAirQualitySensor: String

/*!
 * @brief Service type for battery.
 */
@available(watchOS 20000, *)
let HMServiceTypeBattery: String

/*!
 * @brief Service type for carbon dioxide sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeCarbonDioxideSensor: String

/*!
 * @brief Service type for carbon monoxide sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeCarbonMonoxideSensor: String

/*!
 * @brief Service type for contact sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeContactSensor: String

/*!
 * @brief Service type for door.
 */
@available(watchOS 20000, *)
let HMServiceTypeDoor: String

/*!
 * @brief Service type for humidity sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeHumiditySensor: String

/*!
 * @brief Service type for leak sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeLeakSensor: String

/*!
 * @brief Service type for light sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeLightSensor: String

/*!
 * @brief Service type for motion sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeMotionSensor: String

/*!
 * @brief Service type for occupancy sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeOccupancySensor: String

/*!
 * @brief Service type for security system.
 */
@available(watchOS 20000, *)
let HMServiceTypeSecuritySystem: String

/*!
 * @brief Service type for stateful programmable switch.
 */
@available(watchOS 20000, *)
let HMServiceTypeStatefulProgrammableSwitch: String

/*!
 * @brief Service type for stateless programmable switch.
 */
@available(watchOS 20000, *)
let HMServiceTypeStatelessProgrammableSwitch: String

/*!
 * @brief Service type for smoke sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeSmokeSensor: String

/*!
 * @brief Service type for temperature sensor.
 */
@available(watchOS 20000, *)
let HMServiceTypeTemperatureSensor: String

/*!
 * @brief Service type for window.
 */
@available(watchOS 20000, *)
let HMServiceTypeWindow: String

/*!
 * @brief Service type for window covering.
 */
@available(watchOS 20000, *)
let HMServiceTypeWindowCovering: String

/*!
 * @brief Timer based trigger.
 *
 * @discussion This class represents a trigger that is based on timers.
 */
@available(watchOS 20000, *)
class HMTimerTrigger : HMTrigger {

  /*!
   * @brief Specifies when, in an absolute time, the trigger should fire the first time.
   *
   * @discussion Timer triggers are only set at the top of the minute. When the timer trigger fires,
   *             it will typically fire within 1 minute of the scheduled fire date or calculated
   *             recurrence fire date, depending on how the system is managing its resources.
   */
  @NSCopying var fireDate: Date { get }

  /*!
   * @brief Set the time zone to interpret the fire date in. 
   * 
   * @discussion If this value is nil and the user switches time zones, the time the trigger is
   *             fired will be adjusted to account for the time zone change. If this value is
   *             non-nil, the trigger will fire at the specified time in the specific time zone.
   */
  @NSCopying var timeZone: TimeZone? { get }

  /*!
   * @brief The date components that specify how a trigger is to be repeated. 
   *
   * @discussion This value must be nil if the trigger should not repeat. The date component
   *             values are relative to the initial fire date of the trigger. If the
   *             calendar value of the recurrence is nil, the current calendar
   *             will be used to calculate the recurrence interval. Recurrence example: if a
   *             trigger should repeat every hour, set the 'hour' property of the
   *             recurrence to 1. The minimum recurrence interval is 5 minutes, maximum recurrence
   *             interval is 5 weeks and the recurrence interval must be specified in multiples of
   *             whole minutes. Examples are 5 minutes, 6 minutes, 1 day, 2 weeks.
   *
   */
  @NSCopying var recurrence: DateComponents? { get }

  /*!
   * @brief The calendar corresponding to a recurring timer trigger.
   */
  @NSCopying var recurrenceCalendar: Calendar? { get }
}

/*!
 * @brief Represents a trigger event.
 *
 * @discussion This class describes a trigger which is an event that can
 *             be used to execute one or more action sets when the event fires.
 */
@available(watchOS 20000, *)
class HMTrigger : Object {

  /*!
   * @brief Name of the trigger.
   */
  var name: String { get }

  /*!
   * @brief State of the trigger.
   *
   * @discussion TRUE if the trigger is enable, FALSE otherwise.
   */
  var isEnabled: Bool { get }

  /*!
   * @abstract Array of HMActionSet objects that represent all the action sets associated
   *           with this trigger.
   */
  var actionSets: [HMActionSet] { get }

  /*!
   * @brief The date that this trigger was most recently fired.
   */
  @NSCopying var lastFireDate: Date? { get }

  /*!
   * @brief A unique identifier for the trigger.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}

/*!
 * @brief This class describes a user in the home.
 */
@available(watchOS 20000, *)
class HMUser : Object {

  /*!
   * @brief Name of the user.
   */
  var name: String { get }

  /*!
   * @brief A unique identifier for the user.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}

/*!
 * @brief Used to describe a collection of HMRoom objects
 *
 * @discussion This class is used to group a collection of rooms.
 *             This allows for association of a set of rooms into a group.
 *             Eg. "Living Room" and "Kitchen" rooms can be grouped together
 *             in the "Downstairs" zone.
 */
@available(watchOS 20000, *)
class HMZone : Object {

  /*!
   * @brief Name of the zone.
   */
  var name: String { get }

  /*!
   * @brief Array of HMRoom objects that correspond to the rooms contained in this zone.
   */
  var rooms: [HMRoom] { get }

  /*!
   * @brief A unique identifier for the zone.
   */
  @available(watchOS 2.0, *)
  @NSCopying var uniqueIdentifier: UUID { get }
}
