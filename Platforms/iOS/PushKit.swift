
@available(iOS 8.0, *)
class PKPushCredentials : NSObject {
  var type: String! { get }
  @NSCopying var token: NSData! { get }
  init()
}
@available(iOS 8.0, *)
class PKPushPayload : NSObject {
  var type: String! { get }
  var dictionaryPayload: [NSObject : AnyObject]! { get }
  init()
}
@available(iOS 8.0, *)
let PKPushTypeVoIP: String
@available(iOS 9.0, *)
let PKPushTypeComplication: String

/*!
 @class         PKPushRegistry
 @abstract      An instance of this class can be used to register for 3rd party notifications. The supported push
                notification types are listed above as NSString constants.
 */
@available(iOS 8.0, *)
class PKPushRegistry : NSObject {

  /*!
   @property      delegate
   @abstract      Setting a delegate is required to receive device push tokens and incoming pushes.
   */
  weak var delegate: @sil_weak PKPushRegistryDelegate!

  /*!
   @property      desiredPushTypes
   @abstract      An app requests registration for various types of pushes by setting this NSSet to the desired
                  PKPushType NSString constants. Push tokens and notifications will be delivered via delegate callback.
   */
  var desiredPushTypes: Set<NSObject>!

  /*!
   @method        pushTokenForType:
   @abstract      Access the locally cached push token for a specified PKPushType.
   @discussion    A push token returned here has previously been given to the delegate via handlePushTokenUpdate:forType:
                  callback.
   @param         type
                  This is a PKPushType NSString constant that is already in desiredPushTypes.
   @result        Returns the push token that can be used to send pushes to the device for the specified PKPushType.
                  Returns nil if no push token is available for this PKPushType at the time of invocation.
   */
  func pushTokenForType(type: String!) -> NSData!

  /*!
   @method        initWithQueue:
   @abstract      Instantiates a PKPushRegistry with a delegate callback dispatch queue.
   @param         queue
                  All delegate callbacks are performed asynchronously by PKPushRegistry on this queue.
   @result        A PKPushRegistry instance that can be used to register for push tokens and notifications for supported
                  push types.
   */
  init!(queue: dispatch_queue_t!)
  init()
}
protocol PKPushRegistryDelegate : NSObjectProtocol {

  /*!
   @method        pushRegistry:didUpdatePushCredentials:forType:
   @abstract      This method is invoked when new credentials (including push token) have been received for the specified
                  PKPushType.
   @param         registry
                  The PKPushRegistry instance responsible for the delegate callback.
   @param         credentials
                  The push credentials that can be used to send pushes to the device for the specified PKPushType.
   @param         type
                  This is a PKPushType NSString constant which is present in [registry desiredPushTypes].
   */
  @available(iOS 8.0, *)
  func pushRegistry(registry: PKPushRegistry!, didUpdatePushCredentials credentials: PKPushCredentials!, forType type: String!)

  /*!
   @method        pushRegistry:didReceiveIncomingPushWithPayload:forType:
   @abstract      This method is invoked when a push notification has been received for the specified PKPushType.
   @param         registry
                  The PKPushRegistry instance responsible for the delegate callback.
   @param         payload
                  The push payload sent by a developer via APNS server API.
   @param         type
                  This is a PKPushType NSString constant which is present in [registry desiredPushTypes].
   */
  @available(iOS 8.0, *)
  func pushRegistry(registry: PKPushRegistry!, didReceiveIncomingPushWith payload: PKPushPayload!, forType type: String!)

  /*!
   @method        pushRegistry:didInvalidatePushTokenForType:
   @abstract      This method is invoked if a previously provided push token is no longer valid for use. No action is
                  necessary to rerequest registration. This feedback can be used to update an app's server to no longer
                  send push notifications of the specified type to this device.
   @param         registry
                  The PKPushRegistry instance responsible for the delegate callback.
   @param         type
                  This is a PKPushType NSString constant which is present in [registry desiredPushTypes].
   */
  @available(iOS 8.0, *)
  optional func pushRegistry(registry: PKPushRegistry!, didInvalidatePushTokenForType type: String!)
}
