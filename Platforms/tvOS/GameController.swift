

/**
 Use these constants with NSNotificationCenter to listen to connection and disconnection events.
 
 Use GCControllerDidConnectNotification for observing connections of controllers.
 Use GCControllerDidDisconnectNotification for observing disconnections of controllers.
 
 Connections and disconnections of controllers will also be reflected in the controllers array
 of the GCController class.
 
 The 'object' property of the notification will contain the GCController that was connected or disconnected.
 For example:
 
 - (void)controllerDidConnect:(NSNotification *)note {
 
 GCController *controller = note.object;
 
 ....
 }
 
 @see NSNotificationCenter
 @see GCController.controllers
 */
let GCControllerDidConnectNotification: String
let GCControllerDidDisconnectNotification: String
@available(tvOS 9.0, *)
class GCEventViewController : UIViewController {

  /**
   Controllers can be used to control the general UIKit user interface and for many views that is
   the default behavior. By using a controller event view controller you get fine grained control
   over whether the controller events go trough the UIEvent & UIResponder chain, or if they are
   decoupled from the UI and all incoming data is served via GCController.
  
   Defaults to NO - suppressing UIEvents from game controllers and presenting them via the GCController
   API whilst this controller's view or any of it's subviews are the first responders. If you are not
   using any UIView components or UIEvents in your application you should leave this as NO and process
   your game controller events via the normal GCController API.
   
   If set to YES the controller input will start flowing through UIEvent and the UIResponder
   chain will be used. This gives you fine grained control over the event handling of the
   controlled view and its subviews. You should stop using GCController instances and the corresponding
   profiles if you no longer need to read input from them.
   
   Note that unlike UIView.userInteractionEnabled this only controls the flow of game controller events.
   
   @see GCController
   @see UIView.userInteractionEnabled
   */
  var isControllerUserInteractionEnabled: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

/**
 This is the player index that a connected controller will have if it has never been assigned a player index on the current system.
 Controllers retain the player index they have been assigned between game sessions, so if you wish to unset the player index of a
 controller set it back to this value.
 */
enum GCControllerPlayerIndex : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case IndexUnset
  case Index1
  case Index2
  case Index3
  case Index4
}

/**
 Controllers are available to an application that links to GameController.framework. There are 2 ways to access controllers
 paired to the system, adopt both to ensure the best user experience:
 
 1: Querying for the the current array or controllers using [GCController controllers].
 2: Registering for Connection/Disconnection notifications from NSNotificationCenter.
 
 Only controllers that support one of the allowed profiles, such as GCGamepad, will be enumerated. Check for the profile
 supported before using a controller in your application. Ignore a controller that doesn't support a profile that suits
 your application, as the user will expect their controller to either be fully supported or not supported at all.
  */
@available(tvOS 7.0, *)
class GCController : NSObject {

  /**
   Set this block to be notified when a user intends to suspend or resume the current game state. A controller will have a button
   dedicated to suspending and resuming play and invoking context sensitive actions. During event handling the system will
   notify the application using this block such that the application can handle the suspension and resumption from the given controller.
   
   Use this to implement your canonical transition to a pause menu for example if that is your application's desired handling
   of suspension in play. You may pause and resume base don game state as well so the event is only called each time the
   pause/resume button is pressed.
   */
  var controllerPausedHandler: ((GCController) -> Void)?
  var handlerQueue: dispatch_queue_t

  /**
   A vendor supplied name. May be nil, and is not guaranteed to be unique. This should not be used as a key in a dictionary,
   but simply as a way to present some basic information about the controller in testing or to the user.
   */
  var vendorName: String? { get }

  /**
   A controller may be form fitting or otherwise closely attached to the device. This closeness to other inputs on the device
   may suggest that interaction with the device may use other inputs easily. This is presented to developers to allow them to
   make informed descisions about UI and interactions to choose for their game in this situation.
   */
  var isAttachedToDevice: Bool { get }

  /**
   A player index for the controller, defaults to GCControllerPlayerIndexUnset.
   
   This can be set both for the application to keep track of controllers and as a signal to make a controller display a player
   index on a set of LEDs or some other mechanism.
   
   A controller is not guranteed to have a visual display of the playerIndex, playerIndex does not persist for a controller
   with regards to a system.
   
   Negative values less than GCControllerPlayerIndexUnset will just map back to GCControllerPlayerIndexUnset when read back.
   */
  var playerIndex: GCControllerPlayerIndex

  /**
   Gets the profile for the controller that suits current application.
   
   There are two supported profiles, with an additional optional profile for motion as well. 
   Each controller may be able to map its inputs into all profiles or just one kind of profile. Query for the controller
   profile that suits your game, the simplest kind will be supported by the broadest variety
   of controllers. A controller supporting the Extended Gamepad profile for example supports the Gamepad profile and more.
   As such it can always be used just in the Gamepad profile if that suits the game.
   
   A physical controller that supports a profile must support it completely. That means that all buttons and axis inputs must
   be valid inputs that a developer can utilize.
   
   If a controller does not support the given profile the returned value will be nil. Use this to filter controllers if the
   application requires a specific kind of profile.
   @see motion
   */
  var gamepad: GCGamepad? { get }
  var microGamepad: GCMicroGamepad? { get }
  var extendedGamepad: GCExtendedGamepad? { get }

  /**
   Gets the motion input profile. This profile is optional and may be available if the controller is attached to a device that supports motion.
   If this is nil the controller does not support motion input and only the gamepad & extendedGamepad profiles are available.
   @see gamepad
   @see extendedGamepad
   */
  @available(tvOS 8.0, *)
  var motion: GCMotion? { get }

  /**
   Get a list of controllers currently attached to the system.
   
   @see GCControllerDidConnectNotification
   @see GCControllerDidDisconnectNotification
   */
  class func controllers() -> [GCController]

  /**
   Start discovery of new wireless controllers that are discoverable. This is an asynchronous and the supplied completionHandler
   will get called once no more devices can be found. If there are already multiple controllers available for use, there
   may be little reason to automatically start discovery of new wireless controllers. In this situation it may be best to
   allow the user to start discovery manually via in-game UI.
   
   Once discovery has started new controllers will notify themselves as connected via GCControllerDidConnectNotification.
   As the notification arrives the controller is also available in the controllers array.
  
   The completionHandler could be used to update UI and/or game state to indicate that no more controllers will be found
   and the current set of controllers is what is available for use in the game.
   
   If a completionHandler was provided, it will be called once when discovery stops. Either from an explicit call to
   stopWirelessControllerDiscovery or from timing out or stopping in its natural course of operation. Thus the
   completionHandler will at most be called once per call to startWirelessControllerDiscoveryWithCompletionHandler:.
   
   The completionHandler may also not get called at all, if for example startWirelessControllerDiscoveryWithCompletionHandler:
   is called multiple times during dicovery. For this case the net effect is that the completionHandler is replaced with each call
   and only the last one set before discovery stops will be called.
   
   @param completionHandler an optional handler that is called when discovery stops. (may be nil, in which case you will not be notified when discovery stops)
   @see stopWirelessControllerDiscovery
   @see controllers
   */
  class func startWirelessControllerDiscovery(completionHandler completionHandler: (() -> Void)? = nil)

  /**
   If no more controllers are needed, depending on game state or number of controllers supported by a game, the discovery
   process can be stopped. Calling stopWirelessControllerDiscovery when no discovery is currently in progress will return
   immediately without any effect, thus it is safe to call even if the completionHandler of
   startWirelessControllerDiscoveryWithCompletionHandler: has been called.
   
   @see startWirelessControllerDiscoveryWithCompletionHandler:
   */
  class func stopWirelessControllerDiscovery()
  init()
}
@available(tvOS 7.0, *)
class GCControllerAxisInput : GCControllerElement {
  var valueChangedHandler: GCControllerAxisValueChangedHandler?

  /**
   A normalized value for the input, between -1 and 1 for axis inputs. The values are deadzoned and saturated before they are returned
   so there is no value ouside the range. Deadzoning does not remove values from the range, the full 0 to 1 magnitude of values
   are possible from the input.
  
   As an axis is often used in a digital sense, you can rely on a value of 0 meaning the axis is inside the deadzone.
   Any value greater than or less than zero is not in the deadzone.
   */
  var value: Float { get }
  init()
}

/**
 Set this block if you want to be notified when the value on this axis changes.
 
 @param axis the element that has been modified.
 @param value the value the axis was set to at the time the valueChangedHandler fired.
 */
typealias GCControllerAxisValueChangedHandler = (GCControllerAxisInput, Float) -> Void
@available(tvOS 7.0, *)
class GCControllerButtonInput : GCControllerElement {
  var valueChangedHandler: GCControllerButtonValueChangedHandler?

  /**
   Set this block if you want to be notified when only the pressed state on this button changes. This
   will get called less often than the valueChangedHandler with the additional feature of the pressed state
   being different to the last time it was called.
   */
  @available(tvOS 8.0, *)
  var pressedChangedHandler: GCControllerButtonValueChangedHandler?

  /**
   A normalized value for the input. Between 0 and 1 for button inputs. Values are saturated and thus never exceed the range of [0, 1].
   @see valueChangedHandler
   @see pressed
   */
  var value: Float { get }

  /**
   Buttons are mostly used in a digital sense, thus we have a recommended method for checking for pressed state instead of
   interpreting the value.
   
   As a general guideline a button is pressed if the value exceeds 0. However there may be hysterisis applied
   to counter noisy input values, thus incidental values around the threshold value may not trigger a change
   in pressed state.
   @see pressedChangedHandler
   @see value
   */
  var isPressed: Bool { get }
  init()
}

/**
 Set this block if you want to be notified when the value on this button changes.
 
 @param button the element that has been modified.
 @param value the value the button was set to at the time the valueChangedHandler fired.
 @param pressed the pressed state of the button at the time the valueChangedHandler fired.
 @see value
 @see pressed
 */
typealias GCControllerButtonValueChangedHandler = (GCControllerButtonInput, Float, Bool) -> Void

/**
 A direction pad is a common grouping of 2 axis inputs where the input can also be interpreted as 2 sets of mutually exclusive button pairs.
 Only one button in each pair, {up, down} and {left, right}, can be pressed at any one time.
 */
@available(tvOS 7.0, *)
class GCControllerDirectionPad : GCControllerElement {
  var valueChangedHandler: GCControllerDirectionPadValueChangedHandler?
  var xAxis: GCControllerAxisInput { get }
  var yAxis: GCControllerAxisInput { get }
  var up: GCControllerButtonInput { get }
  var down: GCControllerButtonInput { get }
  var left: GCControllerButtonInput { get }
  var right: GCControllerButtonInput { get }
  init()
}

/**
 Set this block if you want to be notified when the value on this axis changes.
 
 @param dpad the direction pad collection whose axis have been modified.
 @param xValue the value the x axis was set to at the time the valueChangedHandler fired.
 @param yValue the value the y axis was set to at the time the valueChangedHandler fired.
 */
typealias GCControllerDirectionPadValueChangedHandler = (GCControllerDirectionPad, Float, Float) -> Void

/**
 Every controller element knows which collection it belongs to and whether its input value is analog or digital.
 */
@available(tvOS 7.0, *)
class GCControllerElement : NSObject {
  weak var collection: @sil_weak GCControllerElement? { get }

  /**
   Check if the element can support more than just digital values, such as decimal ranges between 0 and 1.
   Defaults to YES for most elements.
   */
  var isAnalog: Bool { get }
  init()
}

/**
 Extended Gamepad profile. Has all the physical features of a Standard Gamepad and more.
 
 In comparison to the Standard gamepad, The directional pad on an Extended gamepad is optionally analog
 as the two thumbsticks provided are required to be analog.
 
 All controller profiles provide a base level of information about the controller they belong to.
 
 A profile maps the hardware notion of a controller into a logical controller. One that a developer can
 design for and depend on, no matter the underlying hardware.
 */
@available(tvOS 7.0, *)
class GCExtendedGamepad : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCExtendedGamepadValueChangedHandler?

  /**
   Polls the state vector of the controller and saves it to a snapshot. The snapshot is stored in a device independent
   format that can be serialized and used at a later date. This is useful for features such as quality assurance,
   save game or replay functionality among many.
   
   If your application is heavily multithreaded this may also be useful to guarantee atomicity of input handling as
   a snapshot will not change based on user input once it is taken.
   */
  func saveSnapshot() -> GCExtendedGamepadSnapshot

  /**
   Required to be analog in the Extended profile. All the elements of this directional input are thus analog.
   */
  var dpad: GCControllerDirectionPad { get }

  /**
   All face buttons are required to be analog in the Extended profile. These must be arranged
   in the diamond pattern given below:
   
     Y
    / \
   X   B
    \ /
     A
   
   */
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }

  /**
   A thumbstick is a 2-axis control that is physically required to be analog. All the elements of this directional input are thus analog.
   */
  var leftThumbstick: GCControllerDirectionPad { get }

  /**
   A thumbstick is a 2-axis control that is physically required to be analog. All the elements of this directional input are thus analog.
   */
  var rightThumbstick: GCControllerDirectionPad { get }

  /**
   Shoulder buttons are required to be analog inputs.
   */
  var leftShoulder: GCControllerButtonInput { get }

  /**
   Shoulder buttons are required to be analog inputs.
   */
  var rightShoulder: GCControllerButtonInput { get }

  /**
   Triggers are required to be analog inputs. Common uses would be acceleration and decelleration in a driving game for example.
   */
  var leftTrigger: GCControllerButtonInput { get }
  var rightTrigger: GCControllerButtonInput { get }
  init()
}

/**
 Set this block if you want to be notified when a value on a element changed. If multiple elements have changed this block will be called
 for each element that changed. As elements in a collection, such as the axis in a dpad, tend to change at the same time and thus
 will only call this once with the collection as the element.
 
 @param gamepad this gamepad that is being used to map the raw input data into logical values on controller elements such as the dpad or the buttons.
 @param element the element that has been modified.
 */
typealias GCExtendedGamepadValueChangedHandler = (GCExtendedGamepad, GCControllerElement) -> Void

/**
 A GCExtendedGamepadSnapshot snapshot is a concrete GCExtendedGamepad implementation. It can be used directly in an
 application to implement controller input replays. It is also returned as the result of polling a controller.
 
 The current snapshotData is readily available to access as NSData. A developer can serialize this to any
 destination necessary using the NSData API.
 
 The data contains some version of a GCExtendedGamepadSnapShotData structure.

 @see -[GCExtendedGamepad saveSnapshot]
 */
@available(tvOS 7.0, *)
class GCExtendedGamepadSnapshot : GCExtendedGamepad {
  @NSCopying var snapshotData: NSData
  init(snapshotData data: NSData)
  init(controller: GCController, snapshotData data: NSData)
  init()
}
struct GCExtendedGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  var leftThumbstickX: Float
  var leftThumbstickY: Float
  var rightThumbstickX: Float
  var rightThumbstickY: Float
  var leftTrigger: Float
  var rightTrigger: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float, leftThumbstickX: Float, leftThumbstickY: Float, rightThumbstickX: Float, rightThumbstickY: Float, leftTrigger: Float, rightTrigger: Float)
}

/**Fills out a v100 snapshot from any compatible NSData source
 
 @return NO if data is nil, snapshotData is nil or the contents of data does not contain a compatible snapshot. YES for all other cases.
 */
@available(tvOS 7.0, *)
func GCExtendedGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCExtendedGamepadSnapShotDataV100>, _ data: NSData?) -> Bool

/**Creates an NSData object from a v100 snapshot.
 If the version and size is not set in the snapshot the data will automatically have version 0x100 and sizeof(GCExtendedGamepadSnapShotDataV100) set as the values implicitly.
 
 @return nil if the snapshot is NULL, otherwise an NSData instance compatible with GCExtendedGamepadSnapshot.snapshotData
 */
@available(tvOS 7.0, *)
func NSDataFromGCExtendedGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCExtendedGamepadSnapShotDataV100>) -> NSData?

/**
 Standard Gamepad profile.
 
 All controller profiles provide a base level of information about the controller they belong to.
 
 A profile maps the hardware notion of a controller into a logical controller. One that a developer can design for
 and depend on, no matter the underlying hardware.
 */
@available(tvOS 7.0, *)
class GCGamepad : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCGamepadValueChangedHandler?

  /**
   Polls the state vector of the controller and saves it to a snapshot. The snapshot is stored in a device independent
   format that can be serialized and used at a later date. This is useful for features such as quality assurance,
   save game or replay functionality among many.
   
   If your application is heavily multithreaded this may also be useful to guarantee atomicity of input handling as
   a snapshot will not change based on user input once it is taken.
   */
  func saveSnapshot() -> GCGamepadSnapshot

  /**
   Required to be analog in the Standard profile. All the elements of this directional input are thus analog.
   */
  var dpad: GCControllerDirectionPad { get }

  /**
   All face buttons are required to be analog in the Standard profile. These must be arranged
   in the diamond pattern given below:
   
     Y
    / \
   X   B
    \ /
     A
   
   */
  var buttonA: GCControllerButtonInput { get }
  var buttonB: GCControllerButtonInput { get }
  var buttonX: GCControllerButtonInput { get }
  var buttonY: GCControllerButtonInput { get }

  /**
   Shoulder buttons are required to be analog inputs.
   */
  var leftShoulder: GCControllerButtonInput { get }

  /**
   Shoulder buttons are required to be analog inputs.
   */
  var rightShoulder: GCControllerButtonInput { get }
  init()
}

/**
 Set this block if you want to be notified when a value on a element changed. If multiple elements have changed this block will be called
 for each element that changed. As elements in a collection, such as the axis in a dpad, tend to change at the same time and thus
 will only call this once with the collection as the element.
 
 @param gamepad this gamepad that is being used to map the raw input data into logical values on controller elements such as the dpad or the buttons.
 @param element the element that has been modified.
 */
typealias GCGamepadValueChangedHandler = (GCGamepad, GCControllerElement) -> Void

/**
 A GCGamepadSnapshot snapshot is a concrete GCGamepad implementation. It can be used directly in an
 application to implement controller input replays. It is also returned as the result of polling
 a controller.
 
 The current snapshotData is readily available to access as NSData. A developer can serialize this to any
 destination necessary using the NSData API.
 
 The data contains some version of a GCGamepadSnapShotData structure.
 
 @see -[GCGamepad saveSnapshot]
 */
@available(tvOS 7.0, *)
class GCGamepadSnapshot : GCGamepad {
  @NSCopying var snapshotData: NSData
  init(snapshotData data: NSData)
  init(controller: GCController, snapshotData data: NSData)
  init()
}
struct GCGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float)
}

/**Fills out a v100 snapshot from any compatible NSData source
 
 @return NO if data is nil, snapshotData is nil or the contents of data does not contain a compatible snapshot. YES for all other cases.
 */
@available(tvOS 7.0, *)
func GCGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>, _ data: NSData?) -> Bool

/**Creates an NSData object from a v100 snapshot.
 If the version and size is not set in the snapshot the data will automatically have version 0x100 and sizeof(GCGamepadSnapShotDataV100) set as the values implicitly.
 
 @return nil if the snapshot is NULL, otherwise an NSData instance compatible with GCGamepadSnapshot.snapshotData
 */
@available(tvOS 7.0, *)
func NSDataFromGCGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>) -> NSData?

/**
 Micro Gamepad profile.
 
 All controller profiles provide a base level of information about the controller they belong to.
 
 A profile maps the hardware notion of a controller into a logical controller. One that a developer can design for
 and depend on, no matter the underlying hardware.
 */
@available(tvOS 9.0, *)
class GCMicroGamepad : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMicroGamepadValueChangedHandler?

  /**
   Polls the state vector of the controller and saves it to a snapshot. The snapshot is stored in a device independent
   format that can be serialized and used at a later date. This is useful for features such as quality assurance,
   save game or replay functionality among many.
   
   If your application is heavily multithreaded this may also be useful to guarantee atomicity of input handling as
   a snapshot will not change based on user input once it is taken.
   
   @see GCMicroGamepadSnapshot
   */
  func saveSnapshot() -> GCMicroGamepadSnapshot

  /**
   Optionally analog in the Micro profile. All the elements of this directional input are either analog or digital.
   */
  var dpad: GCControllerDirectionPad { get }

  /**
   The Micro profile has two buttons that are optionally analog in the Micro profile.
   Button A is the primary action button, it indicates affirmative action and should be used to advance in menus
   or perform the primary action in gameplay.
   */
  var buttonA: GCControllerButtonInput { get }

  /**
   Button X is the secondary action button, it indicates an alternate affirmative action and should be used to perform
   a secondary action. If there is no secondary action it should be used as equivalent to buttonA.
   
   Unlike on other profiles there is no negative button on this profile. Instead the GCController's pause handler should be
   used to present menu content or to retreat in a menu flow.
   @see buttonA
   @see GCController.controllerPausedHandler
   */
  var buttonX: GCControllerButtonInput { get }

  /**
   The Micro profile can use the raw position values of the touchpad on the remote as D-pad values, or it can create a virtual dpad centered around the first conact point with the surface.
   
   If NO; a smaller sliding window is created around the initial touch point and subsequent movement is relative to that center. Movement outside the window will slide the window with it to re-center it. This is great for surfaces where there is no clear sense of a middle and drift over time is an issue.
   
   If YES; the absolute values are used and any drift will have to managed manually either through user traning or by a developer using the dpad.
   
   The default value for this property is NO, meaing a sliding window is used for the dpad.
   */
  var reportsAbsoluteDpadValues: Bool

  /**
   Allows the Micro profile to monitor the orientation of the controller, if the controller is positioned in landscape orientation, D-pad input values will be transposed 90 degrees to match the new orientation.
   
   The default value for this property is NO.
   */
  var allowsRotation: Bool
  init()
}

/**
 Set this block if you want to be notified when a value on a element changed. If multiple elements have changed this block will be called
 for each element that changed. As elements in a collection, such as the axis in a dpad, tend to change at the same time and thus
 will only call this once with the collection as the element.
 
 @param gamepad this gamepad that is being used to map the raw input data into logical values on controller elements such as the dpad or the buttons.
 @param element the element that has been modified.
 */
typealias GCMicroGamepadValueChangedHandler = (GCMicroGamepad, GCControllerElement) -> Void

/**
 A GCMicroGamepadSnapshot snapshot is a concrete GCMicroGamepad implementation. It can be used directly in an
 application to implement controller input replays. It is also returned as the result of polling
 a controller.
 
 The current snapshotData is readily available to access as NSData. A developer can serialize this to any
 destination necessary using the NSData API.
 
 The data contains some version of a GCMicroGamepadSnapShotData structure.
 
 @see -[GCMicroGamepad saveSnapshot]
 */
@available(tvOS 7.0, *)
class GCMicroGamepadSnapshot : GCMicroGamepad {
  @NSCopying var snapshotData: NSData
  init(snapshotData data: NSData)
  init(controller: GCController, snapshotData data: NSData)
  init()
}
struct GCMicroGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonX: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonX: Float)
}

/**Fills out a v100 snapshot from any compatible NSData source
 
 @return NO if data is nil, snapshotData is nil or the contents of data does not contain a compatible snapshot. YES for all other cases.
 */
@available(tvOS 7.0, *)
func GCMicroGamepadSnapShotDataV100FromNSData(snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>, _ data: NSData?) -> Bool

/**Creates an NSData object from a v100 snapshot.
 If the version and size is not set in the snapshot the data will automatically have version 0x100 and sizeof(GCMicroGamepadSnapShotDataV100) set as the values implicitly.
 
 @return nil if the snapshot is NULL, otherwise an NSData instance compatible with GCGamepadSnapshot.snapshotData
 */
@available(tvOS 7.0, *)
func NSDataFromGCMicroGamepadSnapShotDataV100(snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>) -> NSData?

/**
 A 3 dimensional acceleration vector measured as scalar multiples of earth's gravitational acceleration, G.
 
 The azimuth direction is assumed to be (0, 0, 1), so a device held at rest with the z axis aligned with the azimuth
 is assumed to have gravitation applying the vector (0, 0, -1).
 
 @field x X-axis acceleration as a scalar multiple of earth's gravitational acceleration, G.
 @field y Y-axis acceleration as a scalar multiple of earth's gravitational acceleration, G.
 @field z Z-axis acceleration as a scalar multiple of earth's gravitational acceleration, G.
 */
struct GCAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}

/**
 A structure containing 3-axis rotation rate data.
 
 
 @field x   X-axis rotation rate in radians/second. The sign follows the right hand
            rule (i.e. if the right hand is wrapped around the X axis such that the 
            tip of the thumb points toward positive X, a positive rotation is one
            toward the tips of the other 4 fingers).
 
 @field y   Y-axis rotation rate in radians/second. The sign follows the right hand 
            rule (i.e. if the right hand is wrapped around the Y axis such that the 
            tip of the thumb points toward positive Y, a positive rotation is one   
            toward the tips of the other 4 fingers).
 @field z
            Z-axis rotation rate in radians/second. The sign follows the right hand
            rule (i.e. if the right hand is wrapped around the Z axis such that the
            tip of the thumb points toward positive Z, a positive rotation is one
            toward the tips of the other 4 fingers).
 */
struct GCRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}

/**
 A structure containing 3-axis rotation data. The angles are rotated in order or pitch then yaw then roll.
 
 
 @field pitch X-axis rotation in radians. The sign follows the right hand
 rule (i.e. if the right hand is wrapped around the X axis such that the
 tip of the thumb points toward positive X, a positive rotation is one
 toward the tips of the other 4 fingers).
 
 @field yaw   Y-axis rotation in radians. The sign follows the right hand
 rule (i.e. if the right hand is wrapped around the Y axis such that the
 tip of the thumb points toward positive Y, a positive rotation is one
 toward the tips of the other 4 fingers).
 
 @field roll  Z-axis rotation in radians. The sign follows the right hand
 rule (i.e. if the right hand is wrapped around the Z axis such that the
 tip of the thumb points toward positive Z, a positive rotation is one
 toward the tips of the other 4 fingers).
 */
struct GCEulerAngles {
  var pitch: Double
  var yaw: Double
  var roll: Double
  init()
  init(pitch: Double, yaw: Double, roll: Double)
}

/**
 Represents a quaternion (one way of parameterizing attitude).
 If q is an instance of GCQuaternion, mathematically it represents the following quaternion:
 
 		q.x*i + q.y*j + q.z*k + q.w
 
 */
struct GCQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}

/**
 A profile for getting motion input from a controller that has the ability to measure acceleration
 and rotation rate. 
 
 You check for the availablity of motion inputs by getting the motion property
 of a controller. If that returns a nil value; motion is not available. A non-nil value is a valid
 GCMotion profile that is able to provide motion input.
 
 @see GCController.motion
 */
@available(tvOS 8.0, *)
class GCMotion : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMotionValueChangedHandler?

  /**
   The gravity vector expressed in the controller's reference frame.
   
   Note that the total acceleration of the controller is equal to gravity plus userAcceleration.
   
   @see userAcceleration
   */
  var gravity: GCAcceleration { get }

  /**
   The acceleration that the user is giving to the controller.
   
   Note that the total acceleration of the controller is equal to gravity plus userAcceleration.
   
   @see userAcceleration
   */
  var userAcceleration: GCAcceleration { get }

  /**
   The current attitude of the controller.
   
   @note Remotes can not determine a stable attitude so the values will be (0,0,0,1) at all times.
   @see GCMicroGamepad
   */
  var attitude: GCQuaternion { get }

  /**
   The current rotation rate of the controller.
   
   @note Remotes can not determine a stable rotation rate so the values will be (0,0,0) at all times.
   @see GCMicroGamepad
   */
  var rotationRate: GCRotationRate { get }
  init()
}

/**
 Called whenever a motion value changed.
 */
typealias GCMotionValueChangedHandler = (GCMotion) -> Void
