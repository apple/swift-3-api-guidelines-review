

/*!
 * @abstract Represent an accessory in the home.
 *
 * @discussion This class represents an accessory in the home. There is a one to
 *             one relationship between a physical accessory and an object of this
 *             class. An accessory is composed of one or more services.
 */
@available(iOS 8.0, *)
class HMAccessory : NSObject {

  /*!
   * @brief The name of the accessory.
   *
   * @discussion Returns the accessory's name that is associated with HomeKit. The initial value is the name
   *             provided by the accessory information service of the accessory.
   */
  var name: String { get }

  /*!
   * @brief A unique identifier for the accessory.
   *
   * @discussion Use uniqueIdentifier to obtain the identifier for this object.
   */
  @available(iOS, introduced=8.0, deprecated=9.0)
  @NSCopying var identifier: NSUUID { get }

  /*!
   * @brief A unique identifier for the accessory.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief Delegate object that receives updates on the state of the accessory.
   */
  weak var delegate: @sil_weak HMAccessoryDelegate?

  /*!
   * @brief TRUE if the accessory is currently reachable, FALSE otherwise.
   */
  var reachable: Bool { get }

  /*!
   * @brief This property indicates whether this accessory is behind a bridge. If it is TRUE,
   *        the accessory cannot be removed from the home directly. Only the bridge that owns
   *        this accessory can be removed and removing the bridge will remove this accessory
   *        from the home.
   */
  var bridged: Bool { get }

  /*!
   * @brief If this accessory is a bridge, this property is an array of NSUUID objects that,
   *        each of which represents the 'uniqueIdentifier' of the accessory vended by the bridge.
   *
   * @discussion Use uniqueIdentifiersForBridgedAccessories to obtain the identifiers for the
   *             bridged accessories.
   */
  @available(iOS, introduced=8.0, deprecated=9.0)
  var identifiersForBridgedAccessories: [NSUUID]? { get }

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
  @available(iOS 9.0, *)
  var uniqueIdentifiersForBridgedAccessories: [NSUUID]? { get }

  /*!
   * @brief Category information for the accessory. 
   */
  @available(iOS 9.0, *)
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
  var blocked: Bool { get }

  /*!
   * @brief This method is used to change the name of the accessory.
   *
   * @param name New name for the accessory.
   *
   * @discussion The new name is stored in HomeKit and not on the accessory.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief This method is used to have an accessory identify itself.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func identifyWithCompletionHandler(completion: (NSError?) -> Void)
  init()
}

/*!
 * @brief This defines the protocol for a delegate to receive updates about
 *        different aspects of an accessory
 */
@available(iOS 8.0, *)
protocol HMAccessoryDelegate : NSObjectProtocol {

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
  optional func accessory(accessory: HMAccessory, didUpdateNameForService service: HMService)

  /*!
   * @brief Informs the delegate when the associated service type of a service is modified.
   *
   * @param accessory Sender of the message.
   *
   * @param service Service whose associated service type was modified.
   */
  optional func accessory(accessory: HMAccessory, didUpdateAssociatedServiceTypeForService service: HMService)

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
  optional func accessory(accessory: HMAccessory, service: HMService, didUpdateValueForCharacteristic characteristic: HMCharacteristic)
}

/*! 
 * @brief This class is used to discover new accessories in the home
 *        that have never been paired with and therefore not part of the home.
 */
@available(iOS 8.0, *)
class HMAccessoryBrowser : NSObject {

  /*!
   * @brief Delegate that receives updates on the state of the accessories discovered.
   */
  weak var delegate: @sil_weak HMAccessoryBrowserDelegate?

  /*!
   * @brief This is the array of HMAccessory objects that represents new
   *        accessories that were discovered as part of a search session.
   *        This array is not updated when a search session is not in progress.
   */
  var discoveredAccessories: [HMAccessory] { get }

  /*!
   * @brief Starts searching for accessories that are not associated to any home.
   *
   * @discussion If any accessories are discovered, updates are sent to the delegate.
   *             This will only scan for any accessories that are already on the
   *             infrastructure IP network or any Bluetooth LE accessories.
   *             The array of discovered accessories will be updated when this method
   *             is called, so applications should clear and reload any stored copies
   *             of that array or previous new accessory objects.
   *
   */
  func startSearchingForNewAccessories()

  /*!
   * @brief Stops searching for new accessories.
   *
   * @discussion After this method is called, updates will not be sent to the delegate
   *             if new accessories are found or removed. Scanning may continue for system
   *             reasons or if other delegates are still in active searching sessions.
   *             The array of discovered accessories will not be updated until 
   *             startSearchingForNewAccessories is called.
   */
  func stopSearchingForNewAccessories()
  init()
}

/*!
 * @brief This delegate receives updates about new accessories in the home.
 */
@available(iOS 8.0, *)
protocol HMAccessoryBrowserDelegate : NSObjectProtocol {

  /*!
   * @brief Informs the delegate about new accessories discovered in the home.
   *
   * @param browser Sender of the message.
   *
   * @param accessory New accessory that was discovered.
   */
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didFindNewAccessory accessory: HMAccessory)

  /*!
   * @brief Informs the delegate about new accessories removed from the home.
   *
   * @param browser Sender of the message.
   *
   * @param accessory Accessory that was previously discovered but are no longer reachable.
   * 	            This method is also invoked when an accessory is added to a home.
   */
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didRemoveNewAccessory accessory: HMAccessory)
}

/*!
 * @brief This class is used to represent an accessory category.
 */
@available(iOS 9.0, *)
class HMAccessoryCategory : NSObject {

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
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeOther: String

/*!
 * @brief Category type for Security System.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeSecuritySystem: String

/*!
 * @brief Category type for Bridge.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeBridge: String

/*!
 * @brief Category type for Door.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeDoor: String

/*!
 * @brief Category type for Door Lock.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeDoorLock: String

/*!
 * @brief Category type for Fan.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeFan: String

/*!
 * @brief Category type for Garage Door Opener.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeGarageDoorOpener: String

/*!
 * @brief Category type for Lightbulb.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeLightbulb: String

/*!
 * @brief Category type for Outlet.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeOutlet: String

/*!
 * @brief Category type for Programmable Switch.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeProgrammableSwitch: String

/*!
 * @brief Category type for Sensor.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeSensor: String

/*!
 * @brief Category type for Switch.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeSwitch: String

/*!
 * @brief Category type for Thermostat.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeThermostat: String

/*!
 * @brief Category type for Window.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeWindow: String

/*!
 * @brief Category type for Window Covering.
 */
@available(iOS 9.0, *)
let HMAccessoryCategoryTypeWindowCovering: String

/*!
 * @brief This class is used to represent a generic action.
 */
@available(iOS 8.0, *)
class HMAction : NSObject {

  /*!
   * @brief A unique identifier for the action.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
  init()
}

/*!
 * @brief This class represents a collection of action objects that can be executed. 
 *        The order of execution of these actions is undefined.
 */
@available(iOS 8.0, *)
class HMActionSet : NSObject {

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
  var executing: Bool { get }

  /*!
   * @brief Specifies the action set type - user-defined or one of the builtin types.
   *        Builtin action sets cannot be removed from the home.
   */
  @available(iOS 9.0, *)
  var actionSetType: String { get }

  /*!
   * @brief A unique identifier for the action set.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief This method is used to change the name of the action set.
   *
   * @param name New name for the action set.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Adds an action to the action set.
   *
   * @param action Action object to add to the action set.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addAction(action: HMAction, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Removes an existing action from the action set.
   *
   * @param action Action object to remove from the action set.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeAction(action: HMAction, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief Builtin action set type for WakeUp
 */
@available(iOS 9.0, *)
let HMActionSetTypeWakeUp: String

/*!
 * @brief Type for builtin action set Sleep
 */
@available(iOS 9.0, *)
let HMActionSetTypeSleep: String

/*!
 * @brief Type for builtin action set HomeDeparture
 */
@available(iOS 9.0, *)
let HMActionSetTypeHomeDeparture: String

/*!
 * @brief Type for builtin action set HomeArrival
 */
@available(iOS 9.0, *)
let HMActionSetTypeHomeArrival: String

/*!
 * @brief Type for user-defined action sets
 */
@available(iOS 9.0, *)
let HMActionSetTypeUserDefined: String

/*!
 * @brief Represent a characteristic on a service of an accessory.
 */
@available(iOS 8.0, *)
class HMCharacteristic : NSObject {

  /*!
   * @brief The type of the characteristic, e.g. HMCharacteristicTypePowerState.
   */
  var characteristicType: String { get }

  /*!
   * @brief The localized description of the characteristic.
   */
  @available(iOS 9.0, *)
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
  var notificationEnabled: Bool { get }

  /*!
   * @brief A unique identifier for the characteristic.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

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
  func writeValue(value: AnyObject?, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Reads the value of the characteristic. The updated value can be read from the 'value' property of the characteristic.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func readValueWithCompletionHandler(completion: (NSError?) -> Void)

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
  func enableNotification(enable: Bool, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Sets/clears authorization data used when writing to the characteristic.
   *
   * @param data New authorization data to use. Specify nil to remove authorization data.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateAuthorizationData(data: NSData?, completionHandler completion: (NSError?) -> Void)
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

/*!
 @enum      HMCharacteristicValueHeatingCooling

 @constant  HMCharacteristicValueHeatingCoolingOff      Heating/cooling is off.
 @constant  HMCharacteristicValueHeatingCoolingHeat     Heating/cooling is heating.
 @constant  HMCharacteristicValueHeatingCoolingCool     Heating/cooling is cooling.
 @constant  HMCharacteristicValueHeatingCoolingAuto     Heating/cooling is auto.
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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

/*!
 @enum      HMCharacteristicValueAirParticulateSize

 @constant  HMCharacteristicValueAirParticulateSize2_5          Air particulate size of 2.5 micrometers.
 @constant  HMCharacteristicValueAirParticulateSize10           Air particulate size of 10 micrometers.
 */
@available(iOS 9.0, *)
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

/*!
 @enum      HMCharacteristicValuePositionState

 @constant  HMCharacteristicValuePositionStateClosing           Position is moving towards minimum value.
 @constant  HMCharacteristicValuePositionStateOpening           Position is moving towards maximum value.
 @constant  HMCharacteristicValuePositionStateStopped           Position is Stopped.
 */
@available(iOS 9.0, *)
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

/*!
 @enum      HMCharacteristicValueTargetSecuritySystemState

 @constant  HMCharacteristicValueTargetSecuritySystemStateStayArm        Home is occupied and residents are active.
 @constant  HMCharacteristicValueTargetSecuritySystemStateAwayArm        Home is unoccupied.
 @constant  HMCharacteristicValueTargetSecuritySystemStateNightArm       Home is occupied and residents are sleeping.
 @constant  HMCharacteristicValueTargetSecuritySystemStateDisarm         Disarm.
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class HMCharacteristicEvent : HMEvent {

  /*!
   * @brief Initializes a new characteristic event object
   *
   * @param characteristic The characteristic bound to the event.
   *
   * @param triggerValue The value of the characteristic that triggers the event. 
   *                     Specifying nil as the trigger value corresponds to any change in the value of the
   *                     characteristic.
   *
   * @return Instance object representing the characteristic event.
   */
  init(characteristic: HMCharacteristic, triggerValue: NSCopying?)

  /*!
   * @brief The characteristic associated with the event.
   */
  var characteristic: HMCharacteristic { get }

  /*!
   * @brief The value of the characteristic that triggers the event.
   *        A value of nil corresponds to any change in the value of the characteristic.
   */
  @NSCopying var triggerValue: NSCopying? { get }

  /*!
   * @brief This method is used to change trigger value for the characteristic.
   *
   * @param triggerValue New trigger value for the characteristic.
   *                     Specifying nil as the trigger value corresponds to any change in the value of the
   *                     characteristic.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateTriggerValue(triggerValue: NSCopying?, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief This class defines the metadata for a characteristic. Metadata provides
 *		  further information about a characteristic’s value, which can be used
 * 		  for presentation purposes.
 */
@available(iOS 8.0, *)
class HMCharacteristicMetadata : NSObject {

  /*!
   * @brief The minimum value for the characteristic if it has a format of "int" or "float".
   */
  var minimumValue: NSNumber? { get }

  /*!
   * @brief The maximum value for the characteristic if it has a format of "int" or "float".
   */
  var maximumValue: NSNumber? { get }

  /*!
   * @brief Step value for the characteristic that indicates the minimum step value allowed if it has a format of "int" or "float".
   */
  var stepValue: NSNumber? { get }

  /*!
   * @brief Max length value for the characteristic that indicates the maximum number of UTF-8 characters allowed if it has a format of "string".
   */
  var maxLength: NSNumber? { get }

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
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatBool: String

/*!
 * @brief Describes that the value format is an integer.
 *
 * @discussion The value is an NSNumber containing a signed 32-bit integer with a range [-2147483648, 2147483647].
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatInt: String

/*!
 * @brief Describes that the value format is a float.
 *
 * @discussion The value is an NSNumber containing a 32-bit float.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatFloat: String

/*!
 * @brief Describes that the value format is a string.
 *
 * @discussion The value is an NSString.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatString: String

/*!
 * @brief Describes that the value format is an array.
 *
 * @discussion The value is an NSArray.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatArray: String

/*!
 * @brief Describes that the value format is a dictionary.
 *
 * @discussion The value is an NSDictionary.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatDictionary: String

/*!
 * @brief Describes that the value format is an unsigned 8-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 8-bit integer with a range [0, 255].
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatUInt8: String

/*!
 * @brief Describes that the value format is an unsigned 16-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 16-bit integer with a range [0, 65535].
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatUInt16: String

/*!
 * @brief Describes that the value format is an unsigned 32-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 32-bit integer with a range [0, 4294967295].
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatUInt32: String

/*!
 * @brief Describes that the value format is an unsigned 64-bit integer.
 *
 * @discussion The value is an NSNumber containing an unsigned 64-bit integer with a range [0, 18446744073709551615].
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatUInt64: String

/*!
 * @brief Describes that the value format is a data blob.
 *
 * @discussion The value is an NSData containing the bytes of data.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatData: String

/*!
 * @brief Describes that the value format is a TLV8.
 *
 * @discussion The value is an NSData containing a set of one or more TLV8's, which are packed type-length-value items with an 8-bit type, 8-bit length, and N-byte value.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataFormatTLV8: String

/*!
 * @brief Describes that the unit of the characteristic is in Celsius.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataUnitsCelsius: String

/*!
 * @brief Describes that the unit of the characteristic is in Fahrenheit.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataUnitsFahrenheit: String

/*!
 * @brief Describes that the unit of the characteristic is a percentage.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataUnitsPercentage: String

/*!
 * @brief Describes that the unit of the characteristic is an arc degree.
 */
@available(iOS 8.0, *)
let HMCharacteristicMetadataUnitsArcDegree: String

/*!
 * @brief Describes that the unit of the characteristic is in seconds.
 */
@available(iOS 8.3, *)
let HMCharacteristicMetadataUnitsSeconds: String

/*!
 * @brief This constant specifies that the characteristic supports notifications
 *        using the event connection established by the controller. The
 *        event connection provides unidirectional communication from the
 *        accessory to the controller.
 */
@available(iOS 8.0, *)
let HMCharacteristicPropertySupportsEventNotification: String

/*!
 * @brief This constant specifies that the characteristic is readable.
 */
@available(iOS 8.0, *)
let HMCharacteristicPropertyReadable: String

/*!
 * @brief This constant specifies that the characteristic is writable.
 */
@available(iOS 8.0, *)
let HMCharacteristicPropertyWritable: String

/*!
 * @brief Characteristic type for power state. The value of the characteristic is a boolean.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypePowerState: String

/*!
 * @brief Characteristic type for hue. The value of the characteristic is a float value in arc degrees.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeHue: String

/*!
 * @brief Characteristic type for saturation. The value of the characteristic is a float value in percent.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeSaturation: String

/*!
 * @brief Characteristic type for brightness. The value of the characteristic is an int value in percent.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeBrightness: String

/*!
 * @brief Characteristic type for temperature units. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueTemperatureUnit.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeTemperatureUnits: String

/*!
 * @brief Characteristic type for current temperature. The value of the characteristic is a float value in Celsius.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeCurrentTemperature: String

/*!
 * @brief Characteristic type for target temperature. The value of the characteristic is a float value in Celsius.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeTargetTemperature: String

/*!
 * @brief Characteristic type for heating/cooling mode. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueHeatingCooling and indicates the current heating/cooling mode.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeCurrentHeatingCooling: String

/*!
 * @brief Characteristic type for target heating/cooling mode. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueHeatingCooling and indicates the target heating/cooling mode.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeTargetHeatingCooling: String

/*!
 * @brief Characteristic type for cooling threshold temperature. The value of the characteristic is a float value in Celsius.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeCoolingThreshold: String

/*!
 * @brief Characteristic type for heating threshold temperature. The value of the characteristic is a float value in Celsius.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeHeatingThreshold: String

/*!
 * @brief Characteristic type for current relative humidity. The value of the characteristic is a float value in percent.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeCurrentRelativeHumidity: String

/*!
 * @brief Characteristic type for target relative humidity. The value of the characteristic is a float value in percent.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeTargetRelativeHumidity: String

/*!
 * @brief Characteristic type for current door state. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueDoorState and indicates the current door state.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeCurrentDoorState: String

/*!
 * @brief Characteristic type for target door state. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueDoorState and indicates the target door state.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeTargetDoorState: String

/*!
 * @brief Characteristic type for obstruction detected. The value of the characteristic is a boolean value.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeObstructionDetected: String

/*!
 * @brief Characteristic type for name. The value of the characteristic is a string.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeName: String

/*!
 * @brief Characteristic type for manufacturer. The value of the characteristic is a string.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeManufacturer: String

/*!
 * @brief Characteristic type for model. The value of the characteristic is a string.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeModel: String

/*!
 * @brief Characteristic type for serial number. The value of the characteristic is a string.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeSerialNumber: String

/*!
 * @brief Characteristic type for identify. The characteristic is write-only that takes a boolean.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeIdentify: String

/*!
 * @brief Characteristic type for rotation direction. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueRotationDirection and indicates the fan rotation direction.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeRotationDirection: String

/*!
 * @brief Characteristic type for rotation speed. The value of the characteristic is a float representing
 *        the percentage of maximum speed.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeRotationSpeed: String

/*!
 * @brief Characteristic type for outlet in use. The value of the characteristic is a boolean, which is true
 *        if the outlet is in use.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeOutletInUse: String

/*!
 * @brief Characteristic type for version. The value of the characteristic is a string.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeVersion: String

/*!
 * @brief Characteristic type for logs. The value of the characteristic is TLV8 data wrapped in an NSData.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeLogs: String

/*!
 * @brief Characteristic type for audio feedback. The value of the characteristic is a boolean.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeAudioFeedback: String

/*!
 * @brief Characteristic type for admin only access. The value of the characteristic is a boolean.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeAdminOnlyAccess: String

/*!
 * @brief Characteristic type for Security System Alarm Type. The value of the characteristic is a uint8.
 *        indicating the type of alarm triggered by a security system service. This characteristic has a value
 *        of 1 when the alarm type is not known and a value of 0 indicates that the alarm conditions are cleared.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeSecuritySystemAlarmType: String

/*!
 * @brief Characteristic type for motion detected. The value of the characteristic is a boolean.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeMotionDetected: String

/*!
 * @brief Characteristic type for current lock mechanism state. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueLockMechanismState.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeCurrentLockMechanismState: String

/*!
 * @brief Characteristic type for target lock mechanism state. The value of the characteristic is either
 *        HMCharacteristicValueLockMechanismStateUnsecured, or HMCharacteristicValueLockMechanismStateSecured,
 *        as defined by HMCharacteristicValueLockMechanismState.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeTargetLockMechanismState: String

/*!
 * @brief Characteristic type for the last known action for a lock mechanism. The value of the characteristic is one of the values
 *        defined for HMCharacteristicValueLockMechanismLastKnownAction.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeLockMechanismLastKnownAction: String

/*!
 * @brief Characteristic type for the control point for lock management. The characteristic is write-only that takes TLV8 data wrapped in an NSData.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeLockManagementControlPoint: String

/*!
 * @brief Characteristic type for the auto secure timeout for lock management. The value of the characteristic is an unsigned 
          32-bit integer representing the number of seconds.
 */
@available(iOS 8.0, *)
let HMCharacteristicTypeLockManagementAutoSecureTimeout: String

/*!
 * @brief Characteristic type for density of air-particulate matter. The value of the characteristic is
 *        in units of micrograms/m^2.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeAirParticulateDensity: String

/*!
 * @brief Characteristic type for size of air-particulate matter. The value of the characteristic is
 *        one of the values defined for HMCharacteristicValueAirParticulateSize.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeAirParticulateSize: String

/*!
 * @brief Characteristic type for air quality. The value of the characteristic is
 *        one of the values defined for HMCharacteristicValueAirQuality.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeAirQuality: String

/*!
 * @brief Characteristic type for battery level. The value of the characteristic is an uint8
 *        value in percent.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeBatteryLevel: String

/*!
 * @brief Characteristic type for carbon dioxide detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates carbon dioxide levels are normal.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCarbonDioxideDetected: String

/*!
 * @brief Characteristic type for carbon dioxide level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCarbonDioxideLevel: String

/*!
 * @brief Characteristic type for carbon dioxide peak level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCarbonDioxidePeakLevel: String

/*!
 * @brief Characteristic type for carbon monoxide detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates carbon monoxide levels are normal.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCarbonMonoxideDetected: String

/*!
 * @brief Characteristic type for carbon monoxide level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCarbonMonoxideLevel: String

/*!
 * @brief Characteristic type for carbon monoxide peak level.
 *        The value of the characteristic is a float value in units of ppm.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCarbonMonoxidePeakLevel: String

/*!
 * @brief Characteristic type for Charging state. The value of the characteristic is a uint8.
 *        A value of 1 indicates charging is in progress.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeChargingState: String

/*!
 * @brief Characteristic type for Contact sensor state. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates that contact is detected; a value of 1 indicates no contact is detected.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeContactState: String

/*!
 * @brief Characteristic type for current horizontal tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCurrentHorizontalTilt: String

/*!
 * @brief Characteristic type for current light level. The value of the characteristic in units of lux.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCurrentLightLevel: String

/*!
 * @brief Characteristic type for current position of a door/window. The value of the characteristic is an
 *        uint8 value in percent.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCurrentPosition: String

/*!
 * @brief Characteristic type for current security system state. The value of the characteristic is one of
 *        the values defined for HMCharacteristicValueCurrentSecuritySystemState.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCurrentSecuritySystemState: String

/*!
 * @brief Characteristic type for current vertical tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeCurrentVerticalTilt: String

/*!
 * @brief Characteristic type for firmware version. The value of the characteristic is a string value
 *        describing the firmware version of the accessory.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeFirmwareVersion: String

/*!
 * @brief Characteristic type for hardware version. The value of the characteristic is a string value
 *        describing the hardware version of the accessory.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeHardwareVersion: String

/*!
 * @brief Characteristic type for Hold Position. The value of the characteristic is a boolean
 *        indicating that the current position should be held/maintained.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeHoldPosition: String

/*!
 * @brief Characteristic type for programmable switch input event. The value of the characteristic is an int
 *        that can change based on the type of programmable switch. For a binary programmable switch, a value of 0
 *        indicates OFF (and 1 indicates ON). For a slider programmable switch, the value indicates the level.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeInputEvent: String

/*!
 * @brief Characteristic type for leak detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no leak is detected; a value of 1 indicates that a leak is detected.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeLeakDetected: String

/*!
 * @brief Characteristic type for Occupancy Detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no occupancy is detected; a value of 1 indicates that occupancy is detected.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeOccupancyDetected: String

/*!
 * @brief Characteristic type for programmable switch output state. This value is to be used for presentation
 *        purposes. For a binary programmable switch, a value of 1 can be used to present a state of ON.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeOutputState: String

/*!
 * @brief Characteristic type for Position state. The value of the characteristic is one of the
 *        one of the values defined for HMCharacteristicValuePositionState.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypePositionState: String

/*!
 * @brief Characteristic type for Smoke Detected. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no leak is detected; a value of 1 indicates that a leak is detected.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeSmokeDetected: String

/*!
 * @brief Characteristic type for software version. The value of the characteristic is a string value
 *        describing the software version of the accessory.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeSoftwareVersion: String

/*!
 * @brief Characteristic type to indicate status of a service is active. The value of the characteristic is a boolean.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeStatusActive: String

/*!
 * @brief Characteristic type to indicate status of a service is fault. The value of the characteristic is a uint8 value.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeStatusFault: String

/*!
 * @brief Characteristic type to indicate status of a service is jammed. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates that the service is not jammed; a value of 1 indicates that the service is jammed.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeStatusJammed: String

/*!
 * @brief Characteristic type to indicate status of a service is low battery. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates battery level is normal; a value of 1 indicates that battery level is low.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeStatusLowBattery: String

/*!
 * @brief Characteristic type to indicate status of a service is tampered. The value of the characteristic is a uint8 value.
 *        A value of 0 indicates no tampering has been detected; a value of 1 indicates that a tampering has been detected.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeStatusTampered: String

/*!
 * @brief Characteristic type for target horizontal tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeTargetHorizontalTilt: String

/*!
 * @brief Characteristic type for target security system state. The value of the characteristic is one of
 *        the values defined for HMCharacteristicValueTargetSecuritySystemState.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeTargetSecuritySystemState: String

/*!
 * @brief Characteristic type for target position of a door/window. The value of the characteristic is an
 *        uint8 value in percent. For shades/awnings, a value of 0 indicates no shade and a value of 100
 *        indicates most shade. For blinds, a value of 0 indicates most light is allowed in and 100
 *        indicates least light is allowed.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeTargetPosition: String

/*!
 * @brief Characteristic type for target vertical tilt angle. The value is a float representing the angle in arc degrees.
 */
@available(iOS 9.0, *)
let HMCharacteristicTypeTargetVerticalTilt: String

/*!
 * @brief This class is used to represent an entry in an action set that writes a specific
 *        value to a characteristic.
 */
@available(iOS 8.0, *)
class HMCharacteristicWriteAction : HMAction {

  /*!
   * @brief Initializer method that ties the action to a particular characteristic.
   *
   * @param characteristic The characteristic bound to the action.
   *
   * @param targetValue The target value for the characteristic.
   *
   * @return Instance object representing the characteristic write action.
   */
  init(characteristic: HMCharacteristic, targetValue: NSCopying)

  /*!
   * @brief The characteristic associated with the action.
   */
  var characteristic: HMCharacteristic { get }

  /*!
   * @brief The target value for the action.
   */
  @NSCopying var targetValue: NSCopying { get }

  /*!
   * @brief This method is used to change target value for the characteristic.
   *
   * @param targetValue New target value for the characteristic.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateTargetValue(targetValue: NSCopying, completionHandler completion: (NSError?) -> Void)
}
@available(iOS 8.0, *)
let HMErrorDomain: String

/*!
 * @brief This enumeration describes the possible error constants that can be
 *        returned from the the HomeKit APIs.
 */
@available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  case CannotRemoveBuiltinActionSet
  @available(iOS 9.0, *)
  case LocationForHomeDisabled
  @available(iOS 9.0, *)
  case NotAuthorizedForLocationServices
}

extension HMErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/*!
 * @brief This class is used to represent a generic HomeKit event.
 */
@available(iOS 9.0, *)
class HMEvent : NSObject {

  /*!
   * @brief A unique identifier for the event.
   */
  @NSCopying var uniqueIdentifier: NSUUID { get }
  init()
}

/*!
 * @brief Event corresponding to sunrise
 */
@available(iOS 9.0, *)
let HMSignificantEventSunrise: String

/*!
 * @brief Event corresponding to sunset
 */
@available(iOS 9.0, *)
let HMSignificantEventSunset: String

/*!
 * @brief Specifies the key path for a characteristic in a NSPredicate
 */
@available(iOS 9.0, *)
let HMCharacteristicKeyPath: String

/*!
 * @brief Specifies the key path for a characteristic value in a NSPredicate
 */
@available(iOS 9.0, *)
let HMCharacteristicValueKeyPath: String

/*!
 * @brief Triggers based on events.
 *
 * @discussion This class represents a trigger that is based on events.
 */
@available(iOS 9.0, *)
class HMEventTrigger : HMTrigger {

  /*!
   * @brief Initializes a new event trigger object.
   *
   * @param name Name of the event trigger.
   *
   * @param events Array of events that can trigger the evaluation of the trigger. Note: The trigger will
   *               be evaluated if any one of the events is true.
   *
   * @param predicate The predicate to evaluate before executing any of the actions sets associated to this
   *                  event.
   *
   * @return Instance object representing the event trigger.
   */
  init(name: String, events: [HMEvent], predicate: NSPredicate?)

  /*!
   * @brief The events associated with the trigger.
   */
  var events: [HMEvent] { get }

  /*!
   * @brief The predicate to evaluate before executing the action sets associated with the trigger.
   */
  @NSCopying var predicate: NSPredicate? { get }

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
  class func predicateForEvaluatingTriggerOccurringBeforeSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate

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
  class func predicateForEvaluatingTriggerOccurringAfterSignificantEvent(significantEvent: String, applyingOffset offset: NSDateComponents?) -> NSPredicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred before the time specified.
   *
   * @param dateComponents Date components representing the time to compare against when the event occurs.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringBeforeDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred at the time specified.
   *
   * @param dateComponents Date components representing the time to compare against when the event occurs.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringOnDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate

  /*!
   * @brief Creates a predicate that will evaluate whether the event occurred at or after the time specified.
   *
   * @param dateComponents Date components representing the time to compare against when the event occurs.
   *
   * @return Predicate object representing a condition to evaluate before executing the action set.
   */
  class func predicateForEvaluatingTriggerOccurringAfterDateWithComponents(dateComponents: NSDateComponents) -> NSPredicate

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
  class func predicateForEvaluatingTriggerWithCharacteristic(characteristic: HMCharacteristic, relatedBy operatorType: NSPredicateOperatorType, toValue value: AnyObject) -> NSPredicate

  /*!
   * @brief Adds a new event to the event trigger.
   *
   * @param event Event to add to the event trigger.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Removes the specified event from the event trigger.
   *
   * @param event Event to remove from the event trigger.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeEvent(event: HMEvent, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief This method replaces the predicate used to evaluate execution of the action sets associated with the trigger.
   *
   * @param predicate The new predicate for the event trigger.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request,
   *                   error will be nil on success. 
   */
  func updatePredicate(predicate: NSPredicate?, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief Represents a home.
 *
 * @discussion This class represents a home and is the entry point to communicate and
 *             configure different accessories in the home. This is also used to manage
 *             all the rooms, zones, service groups, users, triggers, and action sets in
 *             the home.
 */
@available(iOS 8.0, *)
class HMHome : NSObject {

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
  var primary: Bool { get }

  /*!
   * @brief A unique identifier for the home.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief This method is used to change the name of the home.
   *
   * @param name New name for the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {

  /*!
   * @brief Array of HMAccessory objects that represents all accessories added to the home. 
   */
  var accessories: [HMAccessory] { get }

  /*!
   * @brief Adds a new accessory to the home.
   *
   * @param accessory Accessory to add to the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Removes an accessory from the home.
   *
   * @param accessory Accessory to remove from the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Assigns a new room for the accessory.
   *
   * @discussion When an accessory is added to a home, it is automatically assigned the room corresponding to
   *             + [HMHome roomForEntireHome]. This method is used to change the room assigned to an accessory.
   *
   * @param accessory Accessory whose rooms needs to modified
   *
   * @param room New room for the accessory.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func assignAccessory(accessory: HMAccessory, toRoom room: HMRoom, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Queries all services that match the specified types.
   *
   * @param serviceTypes Array of NSString objects that specifies the service types to match.
   *
   * @return Array of HMService objects that match the specified service types, 
   *         nil if no matching services were found.
   */
  func servicesWithTypes(serviceTypes: [String]) -> [HMService]?

  /*!
   * @brief unblock a blocked accessory.
   *
   * @discussion A misbehaving accessory will automatically be blocked.  After that all requests to
   *              the accessory will fail.  This API must be used to explicitly unblock the accessory
   *
   * @param accessory accessory to be unblocked
   *
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func unblockAccessory(accessory: HMAccessory, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {

  /*!
   * @brief HMUser object representing the current user of the home.
   */
  @available(iOS 9.0, *)
  var currentUser: HMUser { get }

  /*!
   * @brief Array of HMUser objects that represent all users associated with the home.
   */
  @available(iOS, introduced=8.0, deprecated=9.0)
  var users: [HMUser] { get }

  /*!
   * @brief Presents a view controller to manage users of the home.
   *
   * @discussion This API is available only for users that have administrator access to the home.
   *
   * @param completion Block that is invoked once user management is completed.
   *                   The completion block is fired to allow clients to know when the user has dismissed the view.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success. If the user does not have administrator privileges the error code will be set to
   *                   HMErrorCodeInsufficientPrivileges.
   */
  @available(iOS 9.0, *)
  func manageUsersWithCompletionHandler(completion: (NSError?) -> Void)

  /*!
   * @brief Adds a user to the home.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The HMUser object provides a reference to the user that was added to the home.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success. The userInfo dictionary will contain the HMUserFailedAccessoriesKey which provides
   *                   more details on the accessories that failed to add the user.
   */
  @available(iOS, introduced=8.0, deprecated=9.0)
  func addUserWithCompletionHandler(completion: (HMUser?, NSError?) -> Void)

  /*!
   * @brief Removes a user from the home.
   *
   * @param user HMUser whose access is being revoked.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success. The userInfo dictionary will contain the HMUserFailedAccessoriesKey which provides
   *                   more details on the accessories that failed to remove the user.
   */
  @available(iOS, introduced=8.0, deprecated=9.0)
  func removeUser(user: HMUser, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Retrieve the access level of the user associated with the home.
   */
  @available(iOS 9.0, *)
  func homeAccessControlForUser(user: HMUser) -> HMHomeAccessControl
}
extension HMHome {

  /*!
   * @brief Array of HMRoom objects that represents all rooms in the home.
   */
  var rooms: [HMRoom] { get }

  /*!
   * @brief Adds a room to the home.
   *
   * @param roomName Name of the room to add to the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   * 	                 The HMRoom is the new room added to the home.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addRoomWithName(roomName: String, completionHandler completion: (HMRoom?, NSError?) -> Void)

  /*!
   * @brief Removes a room from the home. 
   * @discussion Any references to this room will be removed from all properties
   *             of the home. For example, the room will be removed from the zone.
   *             Any accessories associated contained by this room will be moved to
   *             the room provided by - [HMHome roomForEntireHome].
   *
   * @param room Room to remove from the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)

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

  /*!
   * @brief Adds a zone to the home.
   *
   * @param zoneName Name of the zone to add to the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   * 	                 The HMZone is the new zone added to the home.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addZoneWithName(zoneName: String, completionHandler completion: (HMZone?, NSError?) -> Void)

  /*!
   * @brief Removes a zone from the home.
   *
   * @param zone Zone to remove from the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeZone(zone: HMZone, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {

  /*!
   * @brief Array of HMServiceGroup objects that represents all service groups in the home.
   */
  var serviceGroups: [HMServiceGroup] { get }

  /*!
   * @brief Adds a service group to the home.
   *
   * @param serviceGroupName Name of the service group to add to the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   * 	                 The HMServiceGroup is the new service group added to the home.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addServiceGroupWithName(serviceGroupName: String, completionHandler completion: (HMServiceGroup?, NSError?) -> Void)

  /*!
   * @brief Removes a service group from the home.
   *
   * @param group Service group to remove from the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeServiceGroup(group: HMServiceGroup, completionHandler completion: (NSError?) -> Void)
}
extension HMHome {

  /*!
   * @brief Array of HMActionSet objects that represents all the action sets in the home.
   */
  var actionSets: [HMActionSet] { get }

  /*!
   * @brief Adds a new action set to the home.
   *
   * @param actionSetName Name of the action set to add to the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   * 	                 The HMActionSet parameter is the new action set added to the home.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addActionSetWithName(actionSetName: String, completionHandler completion: (HMActionSet?, NSError?) -> Void)

  /*!
   * @brief Removes an existing action set from the home.
   *
   * @param actionSet Action set to remove from the home. A builtin action set cannot be removed.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Executes all the actions within an action set.
   *
   * @param actionSet Action set to execute.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func executeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Retrieve a built-in action set for the home.
   *
   * @param type Type of the builtin action set. Supported action set types are HMActionSetTypeWakeUp,
   *             HMActionSetTypeSleep, HMActionSetTypeHomeDeparture and HMActionSetTypeHomeArrival.
   *
   * @return Reference to the built-in action set corresponding to type argument,
   *         nil if no matching action set is found.
   */
  @available(iOS 9.0, *)
  func builtinActionSetOfType(actionSetType: String) -> HMActionSet?
}
extension HMHome {

  /*!
   * @brief Array of HMTrigger objects that represents all the triggers in the home.
   */
  var triggers: [HMTrigger] { get }

  /*!
   * @brief Adds a trigger to the home. Unless the trigger object is added to the home, it cannot be 
   *        activated.
   *
   * @discussion  Triggers are specific to an iOS device and are not synced across multiple devices to
   *              ensure that the action sets are executed only once.
   *
   * @param trigger Trigger to add to the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   * 	                 The HMTrigger parameter is the new trigger added to the home.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Removes a trigger from the home. If the trigger is active, they are automatically deactivated.
   *
   * @param trigger Trigger to remove from the home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeTrigger(trigger: HMTrigger, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief This delegate receives update on the various accessories, action sets, groups and triggers 
 *        managed in the home.
 */
@available(iOS 8.0, *)
protocol HMHomeDelegate : NSObjectProtocol {

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
  optional func home(home: HMHome, didAddAccessory accessory: HMAccessory)

  /*!
   * @brief Informs the delegate of removal of an accessory from the home.
   *
   * @param home Sender of the message.
   *
   * @param accessory Accessory that was removed from the home.
   */
  optional func home(home: HMHome, didRemoveAccessory accessory: HMAccessory)

  /*!
   * @brief Informs the delegate that a user was added to the home.
   *
   * @param home Sender of this message.
   *
   * @param user User who was granted access to the home.
   */
  optional func home(home: HMHome, didAddUser user: HMUser)

  /*!
   * @brief Informs the delegate that a user was removed from the home.
   *
   * @param home Sender of this message.
   *
   * @param user User whose access was revoked from the home.
   */
  optional func home(home: HMHome, didRemoveUser user: HMUser)

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
  optional func home(home: HMHome, didAddRoom room: HMRoom)

  /*!
   * @brief Informs the delegate of removal of a room from the home.
   *
   * @param home Sender of the message.
   *
   * @param room Room that was removed from the home.
   */
  optional func home(home: HMHome, didRemoveRoom room: HMRoom)

  /*!
   * @brief Informs the delegate that the name of a room was modified
   *
   * @param home Sender of this message.
   *
   * @param room Room that was modified.
   */
  optional func home(home: HMHome, didUpdateNameForRoom room: HMRoom)

  /*!
   * @brief Informs the delegate of addition of a zone to the home.
   *
   * @param home Sender of the message.
   *
   * @param zone Zone that was added to the home.
   */
  optional func home(home: HMHome, didAddZone zone: HMZone)

  /*!
   * @brief Informs the delegate of removal of a zone from the home.
   *
   * @param home Sender of the message.
   *
   * @param zone Zone that was removed from the home.
   */
  optional func home(home: HMHome, didRemoveZone zone: HMZone)

  /*!
   * @brief Informs the delegate that the name of a zone was modified.
   *
   * @param home Sender of this message.
   *
   * @param zone Zone that was modified.
   */
  optional func home(home: HMHome, didUpdateNameForZone zone: HMZone)

  /*!
   * @brief Informs the delegate that the room was added to a zone.
   *
   * @param home Sender of this message.
   *
   * @param room Room that was added to the zone.
   *
   * @param zone Zone that was modified.
   */
  optional func home(home: HMHome, didAddRoom room: HMRoom, toZone zone: HMZone)

  /*!
   * @brief Informs the delegate that the room was removed from a zone.
   *
   * @param home Sender of this message.
   *
   * @param room Room that was removed from the zone.
   *
   * @param zone Zone that was modified.
   */
  optional func home(home: HMHome, didRemoveRoom room: HMRoom, fromZone zone: HMZone)

  /*!
   * @brief Informs the delegate that a service group was added to the home.
   *
   * @param home Sender of the message.
   *
   * @param group Service group that was added to the home.
   */
  optional func home(home: HMHome, didAddServiceGroup group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that a service group was removed from the home.
   *
   * @param home Sender of the message.
   *
   * @param group Service group that was removed from the home.
   */
  optional func home(home: HMHome, didRemoveServiceGroup group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that the name of a service group was modified.
   *
   * @param home Sender of this message.
   *
   * @param group The service group that was modfied.
   */
  optional func home(home: HMHome, didUpdateNameForServiceGroup group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that a service was added to a service group.
   *
   * @param home Sender of this message.
   *
   * @param service Service that was added to the service group.
   *
   * @param group Service group that was modified.
   */
  optional func home(home: HMHome, didAddService service: HMService, toServiceGroup group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that a service was removed from a service group.
   *
   * @param home Sender of this message.
   *
   * @param service Service that was removed from the service group.
   *
   * @param group Service group that was modified.
   */
  optional func home(home: HMHome, didRemoveService service: HMService, fromServiceGroup group: HMServiceGroup)

  /*!
   * @brief Informs the delegate that an action set was added to the home.
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was added to the home.
   */
  optional func home(home: HMHome, didAddActionSet actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate that an action set was removed from the home.
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was removed from the home.
   */
  optional func home(home: HMHome, didRemoveActionSet actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate that the name of an action set was modified.
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was modified.
   */
  optional func home(home: HMHome, didUpdateNameForActionSet actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate that the actions of an action set was modified.
   * This indicates that an action was added/removed or modified (value replaced)
   *
   * @param home Sender of this message.
   *
   * @param actionSet Action set that was modified.
   */
  optional func home(home: HMHome, didUpdateActionsForActionSet actionSet: HMActionSet)

  /*!
   * @brief Informs the delegate of the addition of a trigger to the home.
   *
   * @param home Sender of the message.
   *
   * @param trigger Trigger that was added to the home.
   */
  optional func home(home: HMHome, didAddTrigger trigger: HMTrigger)

  /*!
   * @brief Informs the delegate of removal of a trigger from the home.
   *
   * @param home Sender of the message.
   *
   * @param trigger Trigger that was removed from the home.
   */
  optional func home(home: HMHome, didRemoveTrigger trigger: HMTrigger)

  /*!
   * @brief Informs the delegate that the name of the trigger was modified.
   *
   * @param home Sender of this message.
   *
   * @param trigger Trigger that was modified.
   */
  optional func home(home: HMHome, didUpdateNameForTrigger trigger: HMTrigger)

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
  optional func home(home: HMHome, didEncounterError error: NSError, forAccessory accessory: HMAccessory)
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
@available(iOS 8.0, *)
let HMUserFailedAccessoriesKey: String

/*!
 * @brief Represents the access control of a user associated with a home.
 */
@available(iOS 9.0, *)
class HMHomeAccessControl : NSObject {

  /*!
   * @brief Specifies if the user has administrative privileges for the home.
   */
  var administrator: Bool { get }
}

/*!
 * @brief Manages collection of one or more homes.
 *
 * @discussion This class is responsible for managing a collection of homes. 
 */
@available(iOS 8.0, *)
class HMHomeManager : NSObject {

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

  /*!
   * @brief This method is used to change the primary home.
   *
   * @param home New primary home.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updatePrimaryHome(home: HMHome, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Adds a new home to the collection.
   *
   * @param homeName Name of the  home to create and add to the collection.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   *
   */
  func addHomeWithName(homeName: String, completionHandler completion: (HMHome?, NSError?) -> Void)

  /*!
   * @brief Removes an existing home from the collection.
   *
   * @param home Home object that needs to be removed from the collection.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeHome(home: HMHome, completionHandler completion: (NSError?) -> Void)
  init()
}

/*!
 * @brief This delegate receives updates on homes being managed via the home manager.
 */
@available(iOS 8.0, *)
protocol HMHomeManagerDelegate : NSObjectProtocol {

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
  optional func homeManager(manager: HMHomeManager, didAddHome home: HMHome)

  /*!
   * @brief Informs the delegate when an existing home is removed.
   *
   * @param manager Sender of this message.
   *
   * @param home Home that was removed.
   */
  optional func homeManager(manager: HMHomeManager, didRemoveHome home: HMHome)
}

/*!
 * @brief This class represents an event that is evaluated based on entry to and/or
 *        exit from a Region
 */
@available(iOS 9.0, *)
class HMLocationEvent : HMEvent {
}

/*!
 * @brief This class describes a room in the home.
 */
@available(iOS 8.0, *)
class HMRoom : NSObject {

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
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief This method is used to change the name of the room.
   *
   * @param name New name for the room.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief Represents a service provided by an accessory.
 *
 * @discussion This class represents a service provided by an accessory in the home.
 *             A service is composed of one or more characteristics that can be 
 *             modified.
 */
@available(iOS 8.0, *)
class HMService : NSObject {

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
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief Indicates if this service supports user interaction or not.
   *
   * @discussion Applications should use this property to filter out services that the users
   *             should not directly interact with, e.g. HMServiceTypeAccessoryInformation.
   */
  @available(iOS 9.0, *)
  var userInteractive: Bool { get }

  /*!
   * @brief This method is used to change the name of the service.
   *
   * @param name New name for the service.
   *
   * @discussion The new name is stored in HomeKit and not on the accessory.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief This method is used to set up the service type of the device connected to a switch or an outlet.
   *
   * @param serviceType Service type of the device connected to a switch/outlet service.
   *
   * @discussion This method is only valid for services of type HMServiceTypeOutlet and HMServiceTypeSwitch.
   *             serviceType can be any of the HomeKit Accessory Profile defined services (except HMServiceTypeOutlet
   *             or HMServiceTypeSwitch) that supports HMCharacteristicTypePowerState characteristic.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateAssociatedServiceType(serviceType: String?, completionHandler completion: (NSError?) -> Void)
  init()
}

/*!
 * @abstract Used to describe a collection of HMService objects
 *
 * @discussion This class is used to group a collection of HMService objects.
 *             This allows for association of a set of accessory services into a group.
 *             Eg. A collection of lights can be grouped as the "Desk Lamps" service group.
 */
@available(iOS 8.0, *)
class HMServiceGroup : NSObject {

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
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief This method is used to change the name of the service group.
   *
   * @param name New name for the service group.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Adds an service to this service group. The service and the group must be part of the same
   *        home. A service can be added to multiple service groups, e.g., a light can be added
   *        to "Desk Lamps" as well as "Dimmable Lamps" service groups.
   *
   * @param service Service to add to this group.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addService(service: HMService, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Removes an service from this service group.
   *
   * @param service Service to remove from this group.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeService(service: HMService, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief Service type for lightbulb.
 */
@available(iOS 8.0, *)
let HMServiceTypeLightbulb: String

/*!
 * @brief Service type for switch.
 */
@available(iOS 8.0, *)
let HMServiceTypeSwitch: String

/*!
 * @brief Service type for thermostat.
 */
@available(iOS 8.0, *)
let HMServiceTypeThermostat: String

/*!
 * @brief Service type for garage door opener.
 */
@available(iOS 8.0, *)
let HMServiceTypeGarageDoorOpener: String

/*!
 * @brief Service type for accessory information.
 */
@available(iOS 8.0, *)
let HMServiceTypeAccessoryInformation: String

/*!
 * @brief Service type for fan.
 */
@available(iOS 8.0, *)
let HMServiceTypeFan: String

/*!
 * @brief Service type for outlet.
 */
@available(iOS 8.0, *)
let HMServiceTypeOutlet: String

/*!
 * @brief Service type for lock mechanism.
 */
@available(iOS 8.0, *)
let HMServiceTypeLockMechanism: String

/*!
 * @brief Service type for lock management.
 */
@available(iOS 8.0, *)
let HMServiceTypeLockManagement: String

/*!
 * @brief Service type for air quality sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeAirQualitySensor: String

/*!
 * @brief Service type for battery.
 */
@available(iOS 9.0, *)
let HMServiceTypeBattery: String

/*!
 * @brief Service type for carbon dioxide sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeCarbonDioxideSensor: String

/*!
 * @brief Service type for carbon monoxide sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeCarbonMonoxideSensor: String

/*!
 * @brief Service type for contact sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeContactSensor: String

/*!
 * @brief Service type for door.
 */
@available(iOS 9.0, *)
let HMServiceTypeDoor: String

/*!
 * @brief Service type for humidity sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeHumiditySensor: String

/*!
 * @brief Service type for leak sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeLeakSensor: String

/*!
 * @brief Service type for light sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeLightSensor: String

/*!
 * @brief Service type for motion sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeMotionSensor: String

/*!
 * @brief Service type for occupancy sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeOccupancySensor: String

/*!
 * @brief Service type for security system.
 */
@available(iOS 9.0, *)
let HMServiceTypeSecuritySystem: String

/*!
 * @brief Service type for stateful programmable switch.
 */
@available(iOS 9.0, *)
let HMServiceTypeStatefulProgrammableSwitch: String

/*!
 * @brief Service type for stateless programmable switch.
 */
@available(iOS 9.0, *)
let HMServiceTypeStatelessProgrammableSwitch: String

/*!
 * @brief Service type for smoke sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeSmokeSensor: String

/*!
 * @brief Service type for temperature sensor.
 */
@available(iOS 9.0, *)
let HMServiceTypeTemperatureSensor: String

/*!
 * @brief Service type for window.
 */
@available(iOS 9.0, *)
let HMServiceTypeWindow: String

/*!
 * @brief Service type for window covering.
 */
@available(iOS 9.0, *)
let HMServiceTypeWindowCovering: String

/*!
 * @brief Timer based trigger.
 *
 * @discussion This class represents a trigger that is based on timers.
 */
@available(iOS 8.0, *)
class HMTimerTrigger : HMTrigger {

  /*!
   * @brief Initialize a new HMTimerTrigger object.
   *
   * @param name Name for the trigger.
   *
   * @param fireDate The initial fire date for the timer trigger. The seconds value must be zero.
   *                 HMErrorCodeDateMustBeOnSpecifiedBoundaries will be returned when adding the trigger
   *                 to a home if the fireDate includes a seconds value other than 0.
   *
   * @param timeZone The time zone of the initial fire date. A value of nil indicates default timezone.
   *
   * @param recurrence The recurrence interval to fire the trigger. A value of nil indicates that the
   *                   trigger is non-repeating. The minimum reccurence interval is 5 minutes, maximum
   *                   recurrence interval is 5 weeks and the recurrence interval must be specified in
   *                   multiples of whole minutes.
   *
   * @param recurrenceCalendar The calendar corresponding to a recurring timer trigger. May be nil.
   *
   * @discussion Validity checks are performed when the trigger is added to the home and the NSError in
   *             the completion block for addTrigger: method indicates the reason for the failure:
   *             HMErrorCodeDateMustBeOnSpecifiedBoundaries is returned if the seconds/nanoseconds fields
   *             in recurrence interval or seconds field in fireDate have a value other than 0.
   *             HMErrorCodeRecurrenceTooSmall is returned if recurrence interval is less than 5 minutes.
   *             HMErrorCodeRecurrenceTooLarge is returned if recurrence interval is greater than 5 weeks.
   *             HMErrorCodeFireDateInPast is returned if recurrence is nil and fireDate is in the past.
   */
  init(name: String, fireDate: NSDate, timeZone: NSTimeZone?, recurrence: NSDateComponents?, recurrenceCalendar: NSCalendar?)

  /*!
   * @brief Specifies when, in an absolute time, the trigger should fire the first time.
   *
   * @discussion Timer triggers are only set at the top of the minute. When the timer trigger fires,
   *             it will typically fire within 1 minute of the scheduled fire date or calculated
   *             recurrence fire date, depending on how the system is managing its resources.
   */
  @NSCopying var fireDate: NSDate { get }

  /*!
   * @brief Set the time zone to interpret the fire date in. 
   * 
   * @discussion If this value is nil and the user switches time zones, the time the trigger is
   *             fired will be adjusted to account for the time zone change. If this value is
   *             non-nil, the trigger will fire at the specified time in the specific time zone.
   */
  @NSCopying var timeZone: NSTimeZone? { get }

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
  @NSCopying var recurrence: NSDateComponents? { get }

  /*!
   * @brief The calendar corresponding to a recurring timer trigger.
   */
  @NSCopying var recurrenceCalendar: NSCalendar? { get }

  /*!
   * @brief This method is used to change the fire date of a timer trigger.
   *
   * @param fireDate New fire date for the trigger. The seconds value must be zero.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request,
   *                   error will be nil on success. HMErrorCodeDateMustBeOnSpecifiedBoundaries will
   *                   be returned if the fireDate includes a seconds value other than 0.
   */
  func updateFireDate(fireDate: NSDate, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief This method is used to change the time zone of the fire date of a timer trigger.
   *
   * @param timeZone New time zone for the trigger. Passing a nil indicates that the default
   *                 (system) timezone is used.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request,
   *                   error will be nil on success.
   */
  func updateTimeZone(timeZone: NSTimeZone?, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief This method is used to change the recurrence interval for a timer trigger.
   *
   * @param recurrence New recurrence interval for the trigger. Passing a nil indicates that
   *                   the trigger is non-repeating. The minimum recurrence interval is 5 minutes,
   *                   maximum recurrence interval is 5 weeks and the recurrence interval must be specified
   *                   in multiples of whole minutes.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request:
   *                   HMErrorCodeDateMustBeOnSpecifiedBoundaries is returned if the seconds/nanoseconds
   *                   fields have a value other than 0;
   *                   HMErrorCodeRecurrenceTooSmall is returned if the recurrence interval is less than
   *                   5 minutes;
   *                   HMErrorCodeRecurrenceTooLarge is returned if the recurrence interval is
   *                   greater than 5 weeks. *                   error will be nil on success.
   */
  func updateRecurrence(recurrence: NSDateComponents?, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief Represents a trigger event.
 *
 * @discussion This class describes a trigger which is an event that can
 *             be used to execute one or more action sets when the event fires.
 */
@available(iOS 8.0, *)
class HMTrigger : NSObject {

  /*!
   * @brief Name of the trigger.
   */
  var name: String { get }

  /*!
   * @brief State of the trigger.
   *
   * @discussion TRUE if the trigger is enable, FALSE otherwise.
   */
  var enabled: Bool { get }

  /*!
   * @abstract Array of HMActionSet objects that represent all the action sets associated
   *           with this trigger.
   */
  var actionSets: [HMActionSet] { get }

  /*!
   * @brief The date that this trigger was most recently fired.
   */
  @NSCopying var lastFireDate: NSDate? { get }

  /*!
   * @brief A unique identifier for the trigger.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief This method is used to change the name of the trigger.
   *
   * @param name New name for the trigger.
   *
   * @param completion Block that is invoked once the request is processed.
   *                   The NSError provides more information on the status of the request.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Registers an action set to be executed when the trigger is fired.
   *
   * @param actionSet HMActionSet to execute when the trigger fires. The order of execution of the
   *                  action set is not guaranteed.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request.
   */
  func addActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief De-registers an action set from the trigger.
   *
   * @param actionSet The HMActionSet to disassociate from the trigger. 
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request.
   */
  func removeActionSet(actionSet: HMActionSet, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Enables or disables the trigger. 
   * @discussion In order for the trigger to be enabled the following criteria must be met:
   *             1. The trigger must be added to a home.
   *             2. The trigger must have at least one action set associated with it.
   *             3. Each action set added to the trigger must have at least one action.
   *             4. For HMTimerTrigger: The next fire date of the timer trigger must be less
   *                than 5 weeks in the future. The fire date of a one-shot timer trigger
   *                must be in the future.
   *
   * @param enable Setting this to TRUE will enable the trigger, FALSE will disable it.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request.
   */
  func enable(enable: Bool, completionHandler completion: (NSError?) -> Void)
}

/*!
 * @brief This class describes a user in the home.
 */
@available(iOS 8.0, *)
class HMUser : NSObject {

  /*!
   * @brief Name of the user.
   */
  var name: String { get }

  /*!
   * @brief A unique identifier for the user.
   */
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }
}

/*!
 * @brief Used to describe a collection of HMRoom objects
 *
 * @discussion This class is used to group a collection of rooms.
 *             This allows for association of a set of rooms into a group.
 *             Eg. "Living Room" and "Kitchen" rooms can be grouped together
 *             in the "Downstairs" zone.
 */
@available(iOS 8.0, *)
class HMZone : NSObject {

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
  @available(iOS 9.0, *)
  @NSCopying var uniqueIdentifier: NSUUID { get }

  /*!
   * @brief This method is used to change the name of the zone.
   *
   * @param name New name for the zone.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func updateName(name: String, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Adds a room to a zone.
   *
   * @discussion Both the room and the zone should be part of the home.  A room can be added to multiple
   *             zones, e.g., a room "Kitchen" can be added to "Downstairs" as well as "Outdoor" zones.
   *
   * @param room Room to add to this zone.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func addRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)

  /*!
   * @brief Removes a room from the zone.
   *
   * @param room Room to remove from this zone.
   *
   * @param completion Block that is invoked once the request is processed. 
   *                   The NSError provides more information on the status of the request, error
   *                   will be nil on success.
   */
  func removeRoom(room: HMRoom, completionHandler completion: (NSError?) -> Void)
}
