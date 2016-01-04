

/*! @enum SCNActionTimingMode
 @abstract The modes that an action can use to adjust the apparent timing of the action.
 */
@available(OSX 10.10, *)
enum SCNActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}

/**
 A custom timing function for SCNActions. Input time will be between 0.0 and 1.0
 over the duration of the action. Return values must be 0.0-1.0 and increasing
 and the function must return 1.0 when the input time reaches 1.0.
 */
typealias SCNActionTimingFunction = (Float) -> Float
protocol SCNActionable : NSObjectProtocol {

  /*!
   @method runAction:
   @abstract Adds an action to the list of actions executed by the node.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction)

  /*!
   @method runAction:completionHandler:
   @abstract Adds an action to the list of actions executed by the node. Your block is called when the action completes.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction, completionHandler block: (() -> Void)?)

  /*!
   @method runAction:forKey:
   @abstract Adds an identifiable action to the list of actions executed by the node.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction, forKey key: String?)

  /*!
   @method runAction:forKey:completionHandler:
   @abstract Adds an identifiable action to the list of actions executed by the node. Your block is called when the action completes.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)

  /*!
   @method hasActions
   @abstract Returns a Boolean value that indicates whether the node is executing actions.
   */
  @available(OSX 10.10, *)
  var hasActions: Bool { get }

  /*!
   @method actionForKey:
   @abstract Returns an action associated with a specific key.
   */
  @available(OSX 10.10, *)
  func actionForKey(key: String) -> SCNAction?

  /*!
   @method removeActionForKey:
   @abstract Removes an action associated with a specific key.
   */
  @available(OSX 10.10, *)
  func removeActionForKey(key: String)

  /*!
   @method removeAllActions
   @abstract Ends and removes all actions from the node.
   */
  @available(OSX 10.10, *)
  func removeAllActions()

  /*!
   @method actionKeys
   @abstract Returns an array containing the keys of all actions currently attached to the receiver.
   */
  @available(OSX 10.10, *)
  var actionKeys: [String] { get }
}
@available(OSX 10.10, *)
class SCNAction : NSObject, NSCopying, NSSecureCoding {

  /*!
   @property duration
   @abstract This is the expected duration of an action’s animation. The actual time an action takes to complete is modified by the speed property of the action.
   */
  var duration: NSTimeInterval

  /*!
   @property timingMode
   @abstract The timing mode used to execute an action.
   */
  var timingMode: SCNActionTimingMode

  /** When set, prodives a custom timing via a block. Applies after
   the 'timingMode' property is taken into account, defaults to nil
   @see SCNActionTimingFunction
   */
  var timingFunction: SCNActionTimingFunction?

  /*!
   @property speed
   @abstract A speed factor that modifies how fast an action runs. Defaults to 1.
   */
  var speed: CGFloat

  /*!
   @method reversedAction
   @abstract Creates an action that reverses the behavior of another action.
   */
  func reversedAction() -> SCNAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, z deltaZ: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func moveBy(delta: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func moveTo(location: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateByX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval) -> SCNAction
  class func rotateToX(xAngle: CGFloat, y yAngle: CGFloat, z zAngle: CGFloat, duration: NSTimeInterval, shortestUnitArc: Bool) -> SCNAction
  class func rotateByAngle(angle: CGFloat, aroundAxis axis: SCNVector3, duration: NSTimeInterval) -> SCNAction
  class func rotateToAxisAngle(axisAngle: SCNVector4, duration: NSTimeInterval) -> SCNAction
  class func scaleBy(scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func scaleTo(scale: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func sequence(actions: [SCNAction]) -> SCNAction
  class func group(actions: [SCNAction]) -> SCNAction
  class func repeatAction(action: SCNAction, count: Int) -> SCNAction
  class func repeatActionForever(action: SCNAction) -> SCNAction
  class func fadeInWithDuration(sec: NSTimeInterval) -> SCNAction
  class func fadeOutWithDuration(sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityBy(factor: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  class func fadeOpacityTo(opacity: CGFloat, duration sec: NSTimeInterval) -> SCNAction
  @available(OSX 10.11, *)
  class func hide() -> SCNAction
  @available(OSX 10.11, *)
  class func unhide() -> SCNAction
  class func waitForDuration(sec: NSTimeInterval) -> SCNAction
  class func waitForDuration(sec: NSTimeInterval, withRange durationRange: NSTimeInterval) -> SCNAction
  class func removeFromParentNode() -> SCNAction
  class func runBlock(block: (SCNNode) -> Void) -> SCNAction
  class func runBlock(block: (SCNNode) -> Void, queue: dispatch_queue_t) -> SCNAction
  class func javaScriptActionWithScript(script: String, duration seconds: NSTimeInterval) -> SCNAction
  class func customActionWithDuration(seconds: NSTimeInterval, actionBlock block: (SCNNode, CGFloat) -> Void) -> SCNAction

  /** Creates an action that plays a sound
   @param source The audio source to play (see SCNAudioSource.h)
   @param waitForCompletion If YES, then the duration of this action is the same
   as the length of the audio playback. If NO, the action is considered
   to have completed immediately.*/
  @available(OSX 10.11, *)
  class func playAudioSource(source: SCNAudioSource, waitForCompletion wait: Bool) -> SCNAction
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @typedef SCNAnimationEventBlock
 @discussion Signature for the block executed when the animation event is triggered.
 */
typealias SCNAnimationEventBlock = (CAAnimation, AnyObject, Bool) -> Void

/*!
 @class SCNAnimationEvent
 @abstract SCNAnimationEvent encapsulate a block to trigger at a specific time.
 */
@available(OSX 10.9, *)
class SCNAnimationEvent : NSObject {

  /*!
   @method animationEventWithKeyTime:block:
   @abstract Returns an animation event instance
   @param time The relative time to trigger the event.
   @param eventBlock The block to call when the event is triggered.
   @discussion "time" is relative to animation duration and therefor it has to be a value in the range [0,1].
   */
  convenience init(keyTime time: CGFloat, block eventBlock: SCNAnimationEventBlock)
  init()
}

/*!
 @protocol SCNAnimatable
 @abstract The SCNAnimatable protocol defines an animatable property. Objects that implement this protocol can be animated through these methods.
*/
protocol SCNAnimatable : NSObjectProtocol {

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}

/*!
 @category CAAnimation (CAAnimation)
 @abstract Extends the CAAnimation class for SceneKit explicit animations.
 */
extension CAAnimation {

  /*!
   @property usesSceneTimeBase
   @abstract Determines whether the receiver is evaluated using the scene time or the system time. Defaults to NO.
   @discussion A scene-time based animation is evaluated using the "sceneTime" value of the renderer that renders the scene.
   */
  var usesSceneTimeBase: Bool

  /*!
   @property fadeInDuration
   @abstract Determines the receiver's fade-in duration.
   @discussion When the fadeInDuration is greater than zero, the effect of the animation progressively increase from 0% to 100% during the specified duration.
   */
  @available(OSX 10.9, *)
  var fadeInDuration: CGFloat

  /*!
   @property fadeOutDuration
   @abstract Determines the receiver's fade-out duration.
   @discussion When the fadeOutDuration is greater than zero, the effect of the animation progressively decrease from 100% to 0% at the end of the animation duration.
   */
  @available(OSX 10.9, *)
  var fadeOutDuration: CGFloat

  /*!
   @property animationEvents
   @abstract Specifies the animation events attached to the receiver.
   */
  @available(OSX 10.9, *)
  var animationEvents: [SCNAnimationEvent]?
}

/*!
 @class SCNAudioSource
 @abstract The SCNAudioSource class represents an audio source that can be added to a SCNNode.
 */
@available(OSX 10.11, *)
class SCNAudioSource : NSObject, NSCopying, NSSecureCoding {

  /*!
   @method initWithFileNamed:
   @abstract Convenience initializer that creates an AVAudioNode from the named audio asset in the main bundle.
   */
  convenience init?(fileNamed name: String)

  /*!
   @method initWithURL:
   @abstract Convenience initializer that creates an AVAudioNode from the URL that contain a audio asset.
   */
  init?(URL url: NSURL)

  /*!
   @method audioSourceNamed:
   @abstract Convenience class initializer that caches audioSources.
   */
  convenience init?(named fileName: String)

  /*!
   @property positional
   @abstract Marks the audio source as positional so that the audio mix considers relative position and velocity with regards to the SCNSceneRenderer's current listener node. Defaults to YES.
   @see SCNSceneRenderer audioListener.
   */
  var positional: Bool

  /*!
   @property volume
   @abstract The default volume for this audio buffer. Default is 1.0 (full volume).
   */
  var volume: Float

  /*!
   @property rate
   @abstract The default rate for this audio buffer. Default is 1.0 (original rate of the audio source).
   */
  var rate: Float

  /*!
   @property reverbBlend
   @abstract The default reverbBlend for this audio buffer. Default is 0.0 (no sound is sent to the reverb).
   */
  var reverbBlend: Float

  /*!
   @property loops
   @abstract Specifies whether the audio source should loop or not. Default to NO.
   */
  var loops: Bool

  /*!
   @property shouldStream
   @abstract Specifies whether the audio source should be streamed or not. Default to NO.
   */
  var shouldStream: Bool

  /*!
   @method load
   @abstract Load and uncompress the audio source in memory. This method has no effect if "shouldStream" is set to YES or if the audio source is already loaded.
   @discussion This method let you preload your audio sources. If an audio source is not preloaded, it will be loaded anyway when playing it.
   */
  func load()
  convenience init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
class SCNAudioPlayer : NSObject {

  /*!
   @property initWithSource:
   @abstract Init an audio player with a source. Most people should use audioPlayerWithSource as it permits to recycle previous players instead of creating new ones for each instance.
   */
  init(source: SCNAudioSource)

  /*!
   @property playbackStarted
   @abstract This block is called when the playback starts in case a valid audio source is present.
   */
  var willStartPlayback: (() -> Void)?

  /*!
   @property playbackFinished
   @abstract This block is called when the playback stops in case a valid audio source is present.
   */
  var didFinishPlayback: (() -> Void)?

  /*!
   @property audioSource
   @abstract The audioSource if there is one.
   */
  var audioSource: SCNAudioSource? { get }
}
extension SCNNode {

  /*!
   @method addAudioPlayer:
   @abstract Add an audio player to the node and starts playing it right away.
   */
  @available(OSX 10.11, *)
  func addAudioPlayer(player: SCNAudioPlayer)

  /*!
   @method removeAllAudioPlayers
   @abstract Remove all audio players from this node and stop playing them.
   */
  @available(OSX 10.11, *)
  func removeAllAudioPlayers()

  /*!
   @method removeAudioPlayer:
   @abstract Remove the given audio player from this node and stop playing it.
   */
  @available(OSX 10.11, *)
  func removeAudioPlayer(player: SCNAudioPlayer)

  /*!
   @property audioPlayers
   @abstract Get an array with all the audio players connected and playing on this node.
   */
  @available(OSX 10.11, *)
  var audioPlayers: [SCNAudioPlayer] { get }
}

/*!
 @protocol SCNBoundingVolume
 @abstract The SCNBoundingVolume protocol is implemented by objects which can compute their bounding boxes.
 @discussion You can currently use this protocol to get the bounding boxes of nodes and geometries.
 */
protocol SCNBoundingVolume : NSObjectProtocol {

  /*! 
   @method getBoundingBoxMin:max:
   @abstract Fill the min and max vectors with the min and max vertex of the bounding box.
   @param min A pointer to a SCNVector3 to store the min vertex of the bounding box into.
   @param max A pointer to a SCNVector3 to store the max vertex of the bounding box into.
   */
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool

  /*!
   @method getBoundingSphereCenter:radius:
   @abstract Fill the center vector with the center of the bounding sphere and store the radius of the bounding sphere in 'radius'.
   @param center A pointer to a SCNVector3 to store the center of the bounding sphere into.
   @param radius A pointer to a CGFloat to store the radius of the bounding sphere into.
   */
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool

  /*!
   @method setBoundingBoxMin:max:
   @abstract Override the receiver bounding box with the min and max vectors provided.
   @param min A pointer to a SCNVector3 representing the min vertex of the desired bounding box.
   @param max A pointer to a SCNVector3 representing the max vertex of the desired bounding box.
   @discussion Passing nil as arguments will recompute the original bounding box of the receiver.
   */
  @available(OSX 10.9, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}

/*!
 @class SCNCamera
 @abstract SCNCamera represents a camera that can be attached to a SCNNode. 
 @discussion A node with a camera can be used as a point of view to visualize a 3D scene.
 */
@available(OSX 10.8, *)
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {

  /*! 
   @property name
   @abstract Determines the name of the receiver.
   */
  var name: String?

  /*! 
   @property xFov
   @abstract Determines the receiver's field of view on the X axis (in degree). Animatable.
   @discussion When both xFov and yFov are null an yFov of 60° is used. When both are set, the one that best fits the renderer's aspect ratio is used. When only one is set, it is used. Defaults to 0.
   */
  var xFov: Double

  /*! 
   @property yFov
   @abstract Determines the receiver's field of view on the Y axis (in degree). Animatable.
   @discussion When both xFov and yFov are null an yFov of 60° is used. When both are set, the one that best fits the renderer's aspect ratio is used. When only one is set, it is used. Defaults to 0.
   */
  var yFov: Double

  /*! 
   @property zNear
   @abstract Determines the receiver's near value. Animatable.
   @discussion The near value determines the minimal distance between the camera and a visible surface. If a surface is closer to the camera than this minimal distance, then the surface is clipped. The near value must be different than zero. Defaults to 1.
   */
  var zNear: Double

  /*! 
   @property zFar
   @abstract Determines the receiver's far value. Animatable.
   @discussion The far value determines the maximal distance between the camera and a visible surface. If a surface is further from the camera than this maximal distance, then the surface is clipped. Defaults to 100.
   */
  var zFar: Double

  /*!
   @property automaticallyAdjustsZRange
   @abstract Determines whether the receiver automatically adjusts the zNear and zFar values. Defaults to NO.
   @discussion When set to YES, the near and far planes are automatically set to fit the bounding box of the entire scene at render time. Setting the property zNear or zFar automatically resets this property to NO.
   */
  @available(OSX 10.9, *)
  var automaticallyAdjustsZRange: Bool

  /*! 
   @property usesOrthographicProjection
   @abstract Determines whether the receiver uses an orthographic projection or not. Defaults to NO.
   */
  var usesOrthographicProjection: Bool

  /*!
   @property orthographicScale
   @abstract Determines the receiver's orthographic scale value. Animatable. Defaults to 1.
   @discussion This setting determines the size of the camera's visible area. This is only enabled when usesOrthographicProjection is set to YES.
   */
  @available(OSX 10.9, *)
  var orthographicScale: Double

  /*!
   @method projectionTransform
   @abstract Determines the projection transform used by the camera to project the world onscreen. 
   */
  func projectionTransform() -> SCNMatrix4
  @available(OSX 10.9, *)
  func setProjectionTransform(projectionTransform: SCNMatrix4)

  /*!
   @functiongroup Depth of field
   */
  /*!
   @property focalDistance
   @abstract Determines the receiver's focal distance. Animatable.
   @discussion When non zero, the focal distance determines how the camera focuses the objects in the 3d scene. Defaults to 10.0
   */
  @available(OSX 10.9, *)
  var focalDistance: CGFloat

  /*!
   @property focalSize
   @abstract Determines the receiver's focal size. Animatable.
   @discussion Determines the size of the area around focalDistance where the objects are in focus. Defaults to 0.
   */
  @available(OSX 10.9, *)
  var focalSize: CGFloat

  /*!
   @property focalBlurRadius
   @abstract Determines the receiver's focal radius. Animatable.
   @discussion Determines the maximum amount of blur for objects out of focus. Defaults to 0.
   */
  @available(OSX 10.9, *)
  var focalBlurRadius: CGFloat

  /*!
   @property aperture
   @abstract Determines the receiver's aperture. Animatable.
   @discussion Determines how fast the transition between in-focus and out-of-focus areas is. The greater the aperture is the faster the transition is. Defaults to 1/8.
   */
  @available(OSX 10.9, *)
  var aperture: CGFloat

  /*!
   @property categoryBitMask
   @abstract Determines the node categories that are visible from the receiver. Defaults to all bits set.
   */
  @available(OSX 10.10, *)
  var categoryBitMask: Int
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.8, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)

  /*!
   @property technique
   @abstract Specifies the technique of the receiver. Defaults to nil.
   */
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNConstraint
 @abstract A SCNConstraint is an abstract class that represents a single constraint that can be applied to a node.
 */
@available(OSX 10.9, *)
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {

  /*!
   @property influenceFactor
   @abstract Specifies the inflence factor of the receiver. Defaults to 1. Animatable
   */
  @available(OSX 10.10, *)
  var influenceFactor: CGFloat
  init()
  @available(OSX 10.9, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.9, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.9, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.9, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.9, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.9, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}

/*!
 @class SCNLookAtConstraint
 @abstract A SCNLookAtConstraint applies on a node's orientation so that it always look at another node.
 */
@available(OSX 10.9, *)
class SCNLookAtConstraint : SCNConstraint {

  /*!
   @method lookAtConstraintWithTarget:
   @abstract Creates and returns a SCNLookAtConstraint object with the specified target.
   @param target The target node to look at.
   */
  convenience init(target: SCNNode)

  /*!
   @property target
   @abstract Defines the target node to look at.
   */
  var target: SCNNode { get }

  /*!
   @property gimbalLockEnabled
   @abstract Specifies whether the receiver enables the gimbal lock. Defaults to NO.
   @discussion Enabling the gimbal lock prevents the receiver from rotating the constrained node around to roll axis.
   */
  var gimbalLockEnabled: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct SCNBillboardAxis : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var X: SCNBillboardAxis { get }
  static var Y: SCNBillboardAxis { get }
  static var Z: SCNBillboardAxis { get }
  static var All: SCNBillboardAxis { get }
}
@available(OSX 10.11, *)
class SCNBillboardConstraint : SCNConstraint {

  /*!
   @property freeAxes
   @abstract Specifies the axes on which the billboarding orientation operates. Defaults to SCNBillboardAxisAll.
   */
  var freeAxes: SCNBillboardAxis
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNTransformConstraint
 @abstract A SCNTransformConstraint applies on the transform of a node via a custom block.
 */
@available(OSX 10.9, *)
class SCNTransformConstraint : SCNConstraint {

  /*!
   @method transformConstraintInWorldSpace:withBlock:
   @abstract Creates and returns a SCNTransformConstraint object with the specified parameters.
   @param world Determines whether the constraint is evaluated in world or local space.
   @param block The custom block to call to evaluate the constraint.
   @discussion The node and its transform are passed to the block. The transform returned by the block will be used to render the node.
   */
  convenience init(inWorldSpace world: Bool, withBlock block: (SCNNode, SCNMatrix4) -> SCNMatrix4)
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNIKConstraint
 @abstract A SCNIKConstraint applies an inverse kinematics constraint
 */
@available(OSX 10.10, *)
class SCNIKConstraint : SCNConstraint {

  /*!
   @method initWithChainRootNode:
   @abstract Creates and returns a SCNIKConstraint object with the specified parameter.
   @param chainRootNode The root node of the kinematic chain.
   @discussion "chainRootNode" must be an ancestor of the node on which the constraint is applied.
   */
  @available(OSX 10.11, *)
  init(chainRootNode: SCNNode)

  /*!
   @method inverseKinematicsConstraintWithChainRootNode:
   @abstract Creates and returns a SCNIKConstraint object with the specified parameter.
   @param chainRootNode The root node of the kinematic chain.
   @discussion "chainRootNode" must be an ancestor of the node on which the constraint is applied.
  */
  class func inverseKinematicsConstraintWithChainRootNode(chainRootNode: SCNNode) -> Self

  /*!
   @property chainRootNode
   @abstract Specifies the root node of the kinematic chain.
   */
  var chainRootNode: SCNNode { get }

  /*!
   @property target
   @abstract Specifies the target position (in world space coordinates) of the end joint (i.e the node that owns the IK constraint). Defaults to (0,0,0). Animatable.
   */
  var targetPosition: SCNVector3

  /*!
   @method setMaxAllowedRotationAngle:forJoint:
   @abstract Specifies the maximum rotation allowed (in degrees) for the specified joint from its initial orientation. Defaults to 180.
   */
  func setMaxAllowedRotationAngle(angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngleForJoint(node: SCNNode) -> CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}
enum SCNGeometryPrimitiveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Triangles
  case TriangleStrip
  case Line
  case Point
}
let SCNGeometrySourceSemanticVertex: String
let SCNGeometrySourceSemanticNormal: String
let SCNGeometrySourceSemanticColor: String
let SCNGeometrySourceSemanticTexcoord: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticVertexCrease: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticEdgeCrease: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticBoneWeights: String
@available(OSX 10.10, *)
let SCNGeometrySourceSemanticBoneIndices: String

/*!
 @class SCNGeometry
 @abstract SCNGeometry is an abstract class that represents the geometry that can be attached to a SCNNode. 
 */
@available(OSX 10.8, *)
class SCNGeometry : NSObject, SCNAnimatable, SCNBoundingVolume, SCNShadable, NSCopying, NSSecureCoding {

  /*!
   @property name
   @abstract Determines the name of the receiver.
   */
  var name: String?

  /*! 
   @property materials
   @abstract Specifies the receiver's materials array.
   @discussion Each geometry element can be rendered using a different material. The index of the material used for a geometry element is equal to the index of that element modulo the number of materials.
   */
  var materials: [SCNMaterial]

  /*!
   @property firstMaterial
   @abstract Determines the first material of the geometry. Returns nil if the geometry has no material.
   @discussion This method is here for convenience. It is equivalent to the first object in the "materials" array above.
   */
  var firstMaterial: SCNMaterial?

  /*! 
   @method insertMaterial:atIndex:
   @abstract Insert a material in the materials array at the specified index.
   @param material The material to insert.
   @param index Index in the materials array to insert the new material.
   */
  func insertMaterial(material: SCNMaterial, atIndex index: Int)

  /*! 
   @method removeMaterialAtIndex:
   @abstract Remove the material at the specified index from the materials array.
   @param index The index of the material to remove from the 'materials' array.
   */
  func removeMaterialAtIndex(index: Int)

  /*! 
   @method replaceMaterialAtIndex:withMaterial:
   @abstract Remove the material at the index 'index' from the materials array of the receiver and insert 'material' in its position.
   @param index The index of the material to replace in the materials array.
   @param material The new material that will replace the previous one.
   */
  func replaceMaterialAtIndex(index: Int, withMaterial material: SCNMaterial)

  /*! 
   @method materialWithName:
   @abstract Return the first material from the materials array of the receiver with the specified name.
   @param name The name of the material to retrieve.
   */
  func materialWithName(name: String) -> SCNMaterial?

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])

  /*!
   @property geometrySources
   @abstract The array of geometry sources of the receiver.
   */
  @available(OSX 10.10, *)
  var geometrySources: [SCNGeometrySource] { get }

  /*! 
   @method geometrySourcesForSemantic:
   @abstract Returns the geometry sources for a given semantic.
   @param semantic The semantic of the geometry sources that should be retrieved.
   @discussion Returns nil if no geometry source is found for the given semantic. May return more than one source, typically for multiple texture coordinate sources.
   */
  func geometrySourcesForSemantic(semantic: String) -> [SCNGeometrySource]

  /*!
   @property geometryElements
   @abstract The array of geometry elements of the receiver.
   */
  @available(OSX 10.10, *)
  var geometryElements: [SCNGeometryElement] { get }

  /*!
   @property geometryElementCount
   @abstract Returns the number of geometry elements owned by the geometry.
   */
  var geometryElementCount: Int { get }

  /*!
   @method geometryElementAtIndex:
   @abstract Returns the geometry element at a given index.
   @param elementIndex The index of the geometry element.
   */
  func geometryElementAtIndex(elementIndex: Int) -> SCNGeometryElement

  /*!
   @property levelsOfDetail
   @abstract Determines the receiver's levels of detail. Defaults to nil.
   */
  @available(OSX 10.9, *)
  var levelsOfDetail: [SCNLevelOfDetail]?

  /*!
   @property subdivisionLevel
   @abstract Specifies the subdivision level of the receiver. Defaults to 0.
   @discussion A subdivision level of 0 means no subdivision.
   */
  @available(OSX 10.10, *)
  var subdivisionLevel: Int

  /*!
   @property edgeCreasesElement
   @abstract Specifies the edges creases that control the subdivision. Defaults to nil.
   @discussion The primitive type of this geometry element must be SCNGeometryPrimitiveTypeLine. See subdivisionLevel above to control the level of subdivision. See edgeCreasesElement above to specify edges for edge creases.
   */
  @available(OSX 10.10, *)
  var edgeCreasesElement: SCNGeometryElement?

  /*!
   @property edgeCreasesSource
   @abstract Specifies the crease value of the edges specified by edgeCreasesElement. Defaults to nil.
   @discussion The semantic of this geometry source must be "SCNGeometrySourceSemanticEdgeCrease". The creases values are floating values between 0 and 10, where 0 means smooth and 10 means infinitely sharp. See subdivisionLevel above to control the level of subdivision. See edgeCreasesElement above to specify edges for edge creases.
   */
  @available(OSX 10.10, *)
  var edgeCreasesSource: SCNGeometrySource?
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.8, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)

  /*! 
   @method getBoundingBoxMin:max:
   @abstract Fill the min and max vectors with the min and max vertex of the bounding box.
   @param min A pointer to a SCNVector3 to store the min vertex of the bounding box into.
   @param max A pointer to a SCNVector3 to store the max vertex of the bounding box into.
   */
  @available(OSX 10.8, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool

  /*!
   @method getBoundingSphereCenter:radius:
   @abstract Fill the center vector with the center of the bounding sphere and store the radius of the bounding sphere in 'radius'.
   @param center A pointer to a SCNVector3 to store the center of the bounding sphere into.
   @param radius A pointer to a CGFloat to store the radius of the bounding sphere into.
   */
  @available(OSX 10.8, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool

  /*!
   @method setBoundingBoxMin:max:
   @abstract Override the receiver bounding box with the min and max vectors provided.
   @param min A pointer to a SCNVector3 representing the min vertex of the desired bounding box.
   @param max A pointer to a SCNVector3 representing the max vertex of the desired bounding box.
   @discussion Passing nil as arguments will recompute the original bounding box of the receiver.
   */
  @available(OSX 10.9, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)

  /*!
   @property program
   @abstract Specifies a custom program used to render the receiver.
   @discussion When a program is set, it overrides all the rendering parameters such as material settings and shaderModifiers.
   */
  @available(OSX 10.8, *)
  var program: SCNProgram?

  /*!
   @method handleBindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to bind the value for the specified symbol of the receiver's SCNProgram. This method has no effect for symbols declared in shader modifiers.
   @param symbol The name of the symbol to bind a value for.
   @param block The block to call to bind the specified symbol.
   @discussion This method can only be used with OpenGL and OpenGLES based programs.
   */
  @available(OSX 10.9, *)
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @method handleUnbindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to unbind the value for the specified symbol of the receiver's SCNProgram. This method has no effect for symbols declared in shader modifiers.
   @param symbol The name of the symbol to unbind.
   @param block The block to call to unbind the specified symbol.
   @discussion This method can only be used with OpenGL and OpenGLES based programs.
   */
  @available(OSX 10.9, *)
  func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @property shaderModifiers
   @abstract Dictionary of shader modifiers snippets, targeting entry points. The valid keys are the entry points described in the "Shader Modifier Entry Point" constants. The values are the code snippets formatted as described below.
   @discussion Shader modifiers allow you to inject shader code in the standard shaders of SceneKit. This injection is allowed in few controlled entry points, allowing specific kind of tasks in specific context. Each modifier can operate on specific structures along with access to global uniforms, that could be the standard SceneKit uniforms or its own declared uniforms.
   
   The structure of a shader modifier is:
   
   | // Custom uniforms declarations of the form:
   | // for GLSL: [uniform type uniformName [= defaultValue]]
   | uniform float myGrayAmount = 3.0;
   |
   | //for Metal a pragma is required and arguments have the form [type name]
   | #pragma arguments
   | float myGrayAmount;
   |
   | // Optional global function definitions (for Metal: references to arguments from global functions are not supported).
   | float mySin(float t) {
   |    return sin(t);
   | }
   |
   | [#pragma transparent | opaque]
   | [#pragma body]
   |
   | // the shader modifier code snippet itself
   | vec3 myColor = vec3(myGrayAmount);
   | _output.color.rgb += myColor;
   
   The `#pragma body` directive
   Is only needed if you declared functions that must not be included in the shader code itself.
   
   The `#pragma transparent` directive
   Forces the rendering to be blended using the following equation:
   _output.color.rgb + (1 - _output.color.a) * dst.rgb;
   where `dst` represents the current fragment color. The rgb components must be premultiplied.
   
   The `#pragma opaque` directive
   Forces the rendering to be opaque. It then ignores the alpha component of the fragment.
   
   The SCNGeometry and SCNMaterial classes are key-value coding compliant classes, which means that you can set values for arbitrary keys. Even if the key `myAmplitude` is not a declared property of the class, you can still set a value for it.
   Declaring a `myAmplitude` uniform in the shader modifier makes SceneKit observe the reveiver's `myAmplitude` key. Any change to that key will make SceneKit bind the uniform with the new value.
   
   Custom uniforms can be animated using explicit animations.
   
   The following GLSL types (and Objective-C counterparts) can be used to declare (and bind) custom uniforms:
   Example: uniform float myAmplitude = 0.5;
   
   GLSL types    | Objective-C types
   --------------------------------------
   int           | NSNumber, NSInteger, int
   float         | NSNumber, CGFloat, float, double
   vec2          | CGPoint
   vec3          | SCNVector3
   vec4          | SCNVector4
   mat4, mat44   | SCNMatrix4
   sampler2D     | SCNMaterialProperty
   samplerCube   | SCNMaterialProperty (with a cube map)
   
   The following prefixes are reserved by SceneKit and should not be used in custom names:
   u_
   a_
   v_
   
   SceneKit declares the following built-in uniforms:
   float u_time;                               // The current time, in seconds
   vec2  u_inverseResolution;                 // 1./screen size (available on iOS 9 and OS X 10.11)
   -------------------------------------------------------------------------------------
   mat4  u_modelTransform                      // See SCNModelTransform
   mat4  u_viewTransform                       // See SCNViewTransform
   mat4  u_projectionTransform                 // See SCNProjectionTransform
   mat4  u_normalTransform                     // See SCNNormalTransform
   mat4  u_modelViewTransform                  // See SCNModelViewTransform
   mat4  u_modelViewProjectionTransform        // See SCNModelViewProjectionTransform
   -------------------------------------------------------------------------------------
   mat4  u_inverseModelTransform               // The inverse matrix of u_modelTransform
   mat4  u_inverseViewTransform                // The inverse matrix of u_viewTransform
   mat4  u_inverseProjectionTransform          // The inverse matrix of u_projectionTransform
   mat4  u_inverseModelViewTransform           // The inverse matrix of u_modelViewTransform
   mat4  u_inverseModelViewProjectionTransform // The inverse matrix of u_modelViewProjectionTransform
   -------------------------------------------------------------------------------------
   mat2x3 u_boundingBox;                       // The bounding box of the current geometry, in model space, u_boundingBox[0].xyz and u_boundingBox[1].xyz being respectively the minimum and maximum corner of the box.
   
   Shader modifiers can be used to tweak SceneKit rendering by adding custom code at the following entry points:
   1. vertex
   2. surface
   3. lighting
   4. fragment
   See below for a detailed explanation of these entry points and the context they provide.
   
   Shader modifiers can be written in GLSL or Metal. Metal shaders won't run on iOS8 and OS X 10.10 or below.
   */
  @available(OSX 10.9, *)
  var shaderModifiers: [String : String]?
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNGeometrySource
 @abstract A geometry source contains geometry data for a specific semantic. The data format is described by properties.
 */
@available(OSX 10.8, *)
class SCNGeometrySource : NSObject, NSSecureCoding {

  /*! 
   @method geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:
   @abstract Creates and returns a geometry source from the given data and parameters.
   @param data The geometry data.
   @param semantic The semantic of the geometry source.
   @param vectorCount The number of geometry source vectors.
   @param floatComponents A flag that indicates if vector components are floating point values.
   @param componentsPerVector The number of scalar components in a vector.
   @param bytesPerComponent The number of bytes that represent a vector component.
   @param offset The offset from the beginning of the data. In bytes.
   @param stride The number of bytes from a vector to the next one in the data.
   */
  convenience init(data: NSData, semantic: String, vectorCount: Int, floatComponents: Bool, componentsPerVector: Int, bytesPerComponent: Int, dataOffset offset: Int, dataStride stride: Int)

  /*!
   @method geometrySourceWithVertices:count:
   @abstract Creates and returns a geometry source from vertices stored in a buffer of SCNVector3 values.
   @param vertices The buffer of vertices.
   @param count The number of vertices.
   @discussion Input vertices are copied to an optimized data format. The actual format is described by the properties of the resulting instance.
   */
  convenience init(vertices: UnsafePointer<SCNVector3>, count: Int)

  /*!
   @method geometrySourceWithNormals:count:
   @abstract Creates and returns a geometry source from normals stored in a buffer of SCNVector3 values.
   @param normals The buffer of normals.
   @param count The number of normals.
   @discussion Input normals are copied to an optimized data format. The actual format is described by the properties of the resulting instance.
   */
  convenience init(normals: UnsafePointer<SCNVector3>, count: Int)

  /*!
   @method geometrySourceWithTextureCoordinates:count:
   @abstract Creates and returns a geometry source from texture coordinates stored in a buffer of CGPoint values.
   @param texcoord The buffer of texture coordinates.
   @param count The number of texture coordinate points.
   @discussion Input texture coordinates are copied to an optimized data format. The actual format is described by the properties of the resulting instance.
   */
  convenience init(textureCoordinates texcoord: UnsafePointer<CGPoint>, count: Int)

  /*!
   @method geometrySourceWithBuffer:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:
   @abstract Creates and returns a geometry source from the given data and parameters.
   @param buffer A metal buffer.
   @param vertexFormat The vertex format.
   @param semantic The semantic of the geometry source.
   @param vertexCount The number of vertex.
   @param offset The offset from the beginning of the data. In bytes.
   @param stride The number of bytes from a vector to the next one in the data.
   @discussion Attempting to modify the metal buffer outside the SCNSceneRenderer delegate callbacks is undefined.
   The typical usage it to modify the MTLBuffer within the willRenderScene callback, using a compute kernel or a vertex function in the user own command buffer. So something like:
  
   - (void)renderer:(id <SCNSceneRenderer>)aRenderer willRenderScene:(SCNScene *)scene atTime:(NSTimeInterval)time
   {
       // ask for a new command buffer
       id<MTLCommandBuffer> myCommandBuffer = [aRenderer.commandQueue commandBuffer];
  
       // get a compute command encoder
       id <MTLComputeCommandEncoder> myComputeCommandEncoder = [myCommandBuffer computeCommandEncoder];
  
       // configure the compute command encoder's pipeline state, buffer inputs etc...
       //...
  
       // dispatch the
       [myComputeCommandEncoder dispatchThreadgroups:numberOfWorkingGroups threadsPerThreadgroup:numberOfThreads];
       [myComputeCommandEncoder endEncoding];
  
       [myCommandBuffer commit];
   }
   
   */
  @available(OSX 10.11, *)
  convenience init(buffer mtlBuffer: MTLBuffer, vertexFormat: MTLVertexFormat, semantic: String, vertexCount: Int, dataOffset offset: Int, dataStride stride: Int)

  /*! 
   @property data
   @abstract The data for the geometry source
   */
  var data: NSData { get }

  /*! 
   @property semantic
   @abstract The semantic of the geometry source
   */
  var semantic: String { get }

  /*! 
   @property vectorCount
   @abstract The number of vectors in the data.
   */
  var vectorCount: Int { get }

  /*! 
   @property floatComponents
   @abstract A flag that indicates if vector components are floating point values.
   */
  var floatComponents: Bool { get }

  /*! 
   @property componentsPerVector
   @abstract The number of scalar components in each vector.
   */
  var componentsPerVector: Int { get }

  /*! 
   @property bytesPerComponent
   @abstract The size of a vector component in bytes.
   */
  var bytesPerComponent: Int { get }

  /*! 
   @property dataOffset
   @abstract The offset from the beginning of the data. In bytes.
   */
  var dataOffset: Int { get }

  /*! 
   @property dataStride
   @abstract The number of bytes from a vector to the next one in the data.
   */
  var dataStride: Int { get }
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNGeometryElement
 @abstract A geometry element describes how vertices from a geometry source are connected together.
 */
@available(OSX 10.8, *)
class SCNGeometryElement : NSObject, NSSecureCoding {

  /*!
   @method geometryElementWithData:primitiveType:primitiveCount:bytesPerIndex:
   @abstract Creates and returns a geometry element from the given data and data format info.
   @param data The data that contains element indexes. You can pass nil to use an implicit vertex ordering (0,1,2...).
   @param primitiveType The primitive type, as listed in the SCNGeometryPrimitiveType enumeration.
   @param primitiveCount The number of primitives in the data.
   @param bytesPerIndex The number of bytes that represent a single index value in the data.
   */
  convenience init(data: NSData?, primitiveType: SCNGeometryPrimitiveType, primitiveCount: Int, bytesPerIndex: Int)

  /*!
   @property data
   @abstract The data for the geometry element
   */
  var data: NSData { get }

  /*!
   @property primitiveType
   @abstract The type of the geometry element. Possible values are listed in the SCNGeometryPrimitiveType enumeration.
   */
  var primitiveType: SCNGeometryPrimitiveType { get }

  /*!
   @property primitiveCount
   @abstract The number of primitives in the data.
   */
  var primitiveCount: Int { get }

  /*!
   @property bytesPerIndex
   @abstract The number of bytes that represent an index value
   */
  var bytesPerIndex: Int { get }
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNGeometryElement {
  convenience init<IndexType : IntegerType>(indices: [IndexType], primitiveType: SCNGeometryPrimitiveType)
}
@available(OSX 10.10, *)
func SCNExportJavaScriptModule(context: JSContext)

/*!
 @class SCNLayer
 @abstract A SCNLayer is a layer that can display a SCNScene. 
 */
@available(OSX 10.8, *)
class SCNLayer : CAOpenGLLayer, SCNSceneRenderer, SCNTechniqueSupport {

  /*! 
   @property scene
   @abstract Specifies the scene of the receiver
   */
  var scene: SCNScene?
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)

  /*!
   @property sceneTime
   @abstract Specifies the current "scene time" to display the scene.
   @discussion The scene time only affect scene time based animations (see SCNAnimation.h "usesSceneTimeBase" and SCNSceneSource.h "SCNSceneSourceAnimationImportPolicyKey" for how to create scene time based animations). Scene time based animations and this property are typically used by tools and viewer to ease seeking in time while previewing a scene.
   */
  @available(OSX 10.10, *)
  var sceneTime: NSTimeInterval

  /*! 
   @property delegate
   @abstract Specifies the renderer delegate.
   */
  @available(OSX 10.8, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?

  /*!
   @method hitTest:options:
   @abstract Returns an array of SCNHitTestResult for each node that contains a specified point.
   @param point A point in the coordinate system of the receiver.
   @param options Optional parameters (see the "Hit test options" group for the available options).
   */
  @available(OSX 10.8, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]

  /*!
   @method isNodeInsideFrustum:withPointOfView:
   @abstract Test whether node is visible from the specified point of view.
   @param node The node to test the visibility of.
   @param pointOfView The point of view used to test the visibility.
   @discussion Return YES if the node is inside or intersects the clipping planes of the point of view. This method doesn't test if 'node' is occluded by another node.
   */
  @available(OSX 10.9, *)
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool

  /*!
   @method nodesInsideFrustumWithPointOfView:
   @abstract Returns an array containing the nodes visible from the specified point of view.
   @param pointOfView The point of view used to test the visibility.
   @discussion Returns an array of all the nodes that are inside or intersects the clipping planes of the point of view.
   */
  @available(OSX 10.11, *)
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]

  /*!
   @method projectPoint
   @abstract Projects a point in the world coordinate system using the receiver's current point of view and viewport.
   @param point The world position to be projected.
   @discussion A point projected from the near (resp. far) clip plane will have a z component of 0 (resp. 1).
   */
  @available(OSX 10.9, *)
  func projectPoint(point: SCNVector3) -> SCNVector3

  /*!
   @method unprojectPoint
   @abstract Unprojects a screenspace 2D point with depth info using the receiver's current point of view and viewport.
   @param point The screenspace position to be unprojected.
   @discussion A point whose z component is 0 (resp. 1) is unprojected on the near (resp. far) clip plane.
   */
  @available(OSX 10.9, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3

  /*! 
   @property playing
   @abstract Returns YES if the scene is playing, NO otherwise.
   */
  @available(OSX 10.8, *)
  var playing: Bool

  /*! 
   @property loops
   @abstract Indicates whether the receiver restarts playback when it reaches the end of its content. Default: YES.
   @discussion YES when the receiver restarts playback when it finishes, NO otherwise.
   */
  @available(OSX 10.8, *)
  var loops: Bool

  /*! 
   @property pointOfView
   @abstract Specifies the point of view used to render the scene. 
   @discussion A point of view must have either a camera or a spot light attached.
   */
  @available(OSX 10.8, *)
  var pointOfView: SCNNode?

  /*! 
   @property autoenablesDefaultLighting
   @abstract Specifies whether the receiver should automatically light up scenes that have no light source. The default is NO.
   @discussion When enabled, a diffuse light is automatically added and placed while rendering scenes that have no light or only ambient lights.
   */
  @available(OSX 10.8, *)
  var autoenablesDefaultLighting: Bool

  /*! 
   @property jitteringEnabled
   @abstract Specifies whether the receiver should jitter the rendered scene to reduce aliasing artifacts. 
   @discussion When enabled, the jittering is performed asynchronously and automatically by SCNView and SCNLayer. It is done synchronously by SCNRenderer.
   */
  @available(OSX 10.8, *)
  var jitteringEnabled: Bool

  /*!
   @method prepareObject:shouldAbortBlock:
   @abstract Prepare the specified object for drawing.
   @param object The object to prepare. It can be an instance of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param block This block will be called repeatedly while the object is prepared. Return YES if you want the operation to abort.
   @discussion Returns YES if the object was prepared successfully, NO if it was canceled. This method may be triggered from a secondary thread. This method is observable using NSProgress.
   */
  @available(OSX 10.9, *)
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool

  /*!
   @method prepareObjects:withCompletionHandler:
   @abstract Prepare the specified objects for drawing on the background.
   @param objects The objects to prepare. It can be one or more instances of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param completionHandler This block will be called when all objects has been prepared, or on failure.
   @discussion This method is observable using NSProgress.
   */
  @available(OSX 10.10, *)
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)

  /*!
   @property showsStatistics
   @abstract Determines whether the receiver should display statistics info like FPS. Defaults to NO.
   @discussion  When set to YES, statistics are displayed in a overlay on top of the rendered scene.
   */
  @available(OSX 10.9, *)
  var showsStatistics: Bool

  /*!
   @property debugOptions
   @abstract Specifies the debug options of the receiver. Defaults to SCNDebugOptionNone.
   */
  @available(OSX 10.11, *)
  var debugOptions: SCNDebugOptions

  /*!
   @property renderingAPI
   @abstract Specifies the rendering API associated to the receiver.
   @discussion This is the rendering API effectively used by the receiver. You can specify a preferred rendering API when initializing a view programmatically (see SCNPreferredRenderingAPI in SCNSceneRenderer.h) or using Interface Builder's SCNView inspector.
   */
  @available(OSX 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }

  /*!
   @property context
   @abstract A Core OpenGL render context that is used as the render target (a CGLContextObj on OS X, an EAGLContext on iOS).
   */
  @available(OSX 10.8, *)
  var context: UnsafeMutablePointer<Void> { get }

  /*!
   @property currentRenderCommandEncoder
   @abstract The current render command encoder if any. This property is only valid within the SCNSceneRendererDelegate methods and when renderering with Metal. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }

  /*!
   @property device
   @abstract The metal device of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var device: MTLDevice? { get }

  /*!
   @property colorPixelFormat
   @abstract The pixel format of the color attachment 0 of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var colorPixelFormat: MTLPixelFormat { get }

  /*!
   @property depthPixelFormat
   @abstract The pixel format of the depth attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var depthPixelFormat: MTLPixelFormat { get }

  /*!
   @property stencilPixelFormat
   @abstract The pixel format of the stencil attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var stencilPixelFormat: MTLPixelFormat { get }

  /*!
   @property commandQueue
   @abstract The command queue of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var commandQueue: MTLCommandQueue? { get }

  /*!
   @property audioListener
   @abstract Use this property to set the audio node to use as the listener position and orientation when rendering positional audio for this scene. The default is nil which means that the current point of view will be used dynamically.
   */
  @available(OSX 10.11, *)
  var audioListener: SCNNode?

  /*!
   @property currentTime
   @abstract Specifies the current time to display the scene.
   @discussion Deprecated, use "sceneTime" instead.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  var currentTime: NSTimeInterval

  /*!
   @property technique
   @abstract Specifies the technique of the receiver. Defaults to nil.
   */
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
}

/*!
 @class SCNLevelOfDetail
 @abstract SCNLevelOfDetail represents a level of detail of a geometry.
 */
@available(OSX 10.9, *)
class SCNLevelOfDetail : NSObject, NSCopying, NSSecureCoding {

  /*!
   @method levelOfDetailWithGeometry:screenSpaceRadius:
   @abstract This is a convenience method to create a level of detail with a coverage radius threshold mode.
   @param geometry The geometry for this level of detail. nil is supported and indicates that no geometry should be rendered for this level of detail.
   @param radius The maximum radius in screen-space that this level of detail is suitable for. The coverage radius is calculated from the projected bounding sphere and expressed in pixels.
   */
  convenience init(geometry: SCNGeometry?, screenSpaceRadius radius: CGFloat)

  /*!
   @method levelOfDetailWithGeometry:worldSpaceDistance:
   @abstract This is a convenience method to create a level of detail with a distance threshold mode.
   @param geometry The geometry for this level of detail. nil is supported and indicates that no geometry should be rendered for this level of detail.
   @param distance The minimum distance to the current point of view that this level of detail is suitable for.
   */
  convenience init(geometry: SCNGeometry?, worldSpaceDistance distance: CGFloat)

  /*!
   @property geometry
   @abstract Returns the geometry of the receiver.
   */
  var geometry: SCNGeometry? { get }

  /*!
   @property screenSpaceRadius
   @abstract Returns the screen space radius of the receiver if any, 0 otherwise.
   */
  var screenSpaceRadius: CGFloat { get }

  /*!
   @property worldSpaceDistance
   @abstract Returns the world space distance of the receiver if any, 0 otherwise.
   */
  var worldSpaceDistance: CGFloat { get }
  init()
  @available(OSX 10.9, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*! @constant SCNLightTypeAmbient Ambient light */
let SCNLightTypeAmbient: String

/*! @constant SCNLightTypeOmni Omnidirectional light */
let SCNLightTypeOmni: String

/*! @constant SCNLightTypeDirectional Directional light */
let SCNLightTypeDirectional: String

/*! @constant SCNLightTypeSpot Spot light */
let SCNLightTypeSpot: String

/*! @enum SCNShadowMode
 @abstract The different modes available to compute shadows.
 @discussion When the shadow mode is set to SCNShadowModeForward, shadows are computed while computing the lighting. In this mode only the alpha component of the shadow color is used to alter the lighting contribution.
 When the shadow mode is set to SCNShadowModeDeferred shadows are applied as a post process. Shadows are blend over the final image and can therefor be of any arbitrary color. However it is most of the time less effiscient as SCNShadowModeForward, except when a scene has a lot of overdraw.
 When the shadow mode is set to SCNShadowModeModulated the light doesn't illuminate the scene anymore, it only casts shadows. Therefor setting the light color has no effect. In this mode gobos act as a shadow projector: the gobo image is modulated with the shadow receiver's fragments. The typical usage is to use an image of a radial gradient (black to white) that is projected under a character (and use the categoryBitMask of the light and nodes to exclude the character from the shadow receiver).
 */
@available(OSX 10.10, *)
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Forward
  case Deferred
  case Modulated
}

/*!
 @class SCNLight
 @abstract SCNLight represents a light that can be attached to a SCNNode. 
 */
@available(OSX 10.8, *)
class SCNLight : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {

  /*! 
   @property type
   @abstract Specifies the receiver's type.
   @discussion A light type can be one of the "Light Types" constants. Defaults to SCNLightTypeOmni on iOS 8 and later, and on OSX 10.10 and later (otherwise defaults to SCNLightTypeAmbient).
   */
  var type: String

  /*! 
   @property color
   @abstract Specifies the receiver's color (NSColor or CGColorRef). Animatable. Defaults to white.
   @discussion The initial value is a NSColor.
   */
  var color: AnyObject

  /*!
   @property name
   @abstract Determines the name of the receiver.
   */
  var name: String?

  /*! 
   @property castsShadow
   @abstract Determines whether the receiver casts a shadow. Defaults to NO.
   @discussion Shadows are only supported by spot and directional lights.
   */
  var castsShadow: Bool

  /*! 
   @property shadowColor
   @abstract Specifies the color (CGColorRef or NSColor) of the shadow casted by the receiver. Default is 50% transparent black. Animatable.
   */
  var shadowColor: AnyObject

  /*!
   @property shadowRadius
   @abstract Specifies the sample radius used to render the receiver’s shadow. Default value is 3.0. Animatable.
   */
  var shadowRadius: CGFloat

  /*!
   @property shadowMapSize
   @abstract Specifies the size of the shadow map.
   @discussion The larger the shadow map is the more precise the shadows are but the slower the computation is. If set to {0,0} the size of the shadow map is automatically chosen. Defaults to {0,0}.
   */
  @available(OSX 10.10, *)
  var shadowMapSize: CGSize

  /*!
   @property shadowSampleCount
   @abstract Specifies the number of sample per fragment to compute the shadow map. Defaults to 16.
   */
  @available(OSX 10.10, *)
  var shadowSampleCount: Int

  /*!
   @property shadowMode
   @abstract Specified the mode to use to cast shadows. See above for the available modes and their description. Defaults to SCNShadowModeDefered on 10.9 and before, defaults to SCNShadowModeForward otherwise.
   */
  @available(OSX 10.10, *)
  var shadowMode: SCNShadowMode

  /*!
   @property shadowBias
   @abstrat Specifies the correction to apply to the shadow map to correct acne artefacts. It is multiplied by an implementation-specific value to create a constant depth offset. Defaults to 1.0
   */
  @available(OSX 10.10, *)
  var shadowBias: CGFloat

  /*!
   @property orthographicScale
   @abstract Specifies the orthographic scale used to render from the directional light into the shadow map. Defaults to 1.
   @discussion This is only applicable for directional lights.
   */
  @available(OSX 10.10, *)
  var orthographicScale: CGFloat

  /*!
   @property zNear
   @abstract Specifies the minimal distance between the light and the surface to cast shadow on.  If a surface is closer to the light than this minimal distance, then the surface won't be shadowed. The near value must be different than zero. Animatable. Defaults to 1.
   */
  @available(OSX 10.10, *)
  var zNear: CGFloat

  /*!
   @property zFar
   @abstract Specifies the maximal distance between the light and a visible surface to cast shadow on. If a surface is further from the light than this maximal distance, then the surface won't be shadowed. Animatable. Defaults to 100.
   */
  @available(OSX 10.10, *)
  var zFar: CGFloat

  /*!
   @property attenuationStartDistance
   @abstract The distance at which the attenuation starts (Omni or Spot light types only). Animatable. Defaults to 0.
   */
  @available(OSX 10.10, *)
  var attenuationStartDistance: CGFloat

  /*!
   @property attenuationEndDistance
   @abstract The distance at which the attenuation ends (Omni or Spot light types only). Animatable. Defaults to 0.
   */
  @available(OSX 10.10, *)
  var attenuationEndDistance: CGFloat

  /*!
   @property attenuationFalloffExponent
   @abstract Specifies the attenuation between the start and end attenuation distances. 0 means a constant attenuation, 1 a linear attenuation and 2 a quadratic attenuation, but any positive value will work (Omni or Spot light types only). Animatable. Defaults to 2.
   */
  @available(OSX 10.10, *)
  var attenuationFalloffExponent: CGFloat

  /*!
   @property spotInnerAngle
   @abstract The angle in degrees between the spot direction and the lit element below which the lighting is at full strength. Animatable. Defaults to 0.
   */
  @available(OSX 10.10, *)
  var spotInnerAngle: CGFloat

  /*!
   @property spotOuterAngle
   @abstract The angle in degrees between the spot direction and the lit element after which the lighting is at zero strength. Animatable. Defaults to 45 degrees.
   */
  @available(OSX 10.10, *)
  var spotOuterAngle: CGFloat

  /*!
   @property gobo
   @abstract Specifies the gobo (or "cookie") of the light, used to control the shape of emitted light. Defaults to nil.
   @discussion Gobos are only supported by spot lights.
   */
  @available(OSX 10.9, *)
  var gobo: SCNMaterialProperty? { get }

  /*!
   @property categoryBitMask
   @abstract Determines the node categories that will be lit by the receiver. Defaults to all bit set.
   */
  @available(OSX 10.10, *)
  var categoryBitMask: Int

  /*!
   @method attributeForKey:
   @param key The key for which to return the corresponding attribute.
   @abstract Returns the attribute for the specified key. The valid keys are described in the "Light Attributes" constants.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  func attributeForKey(key: String) -> AnyObject?

  /*!
   @method setAttribute:forKey:
   @param attribute The attribute for the property identified by key.
   @param key The name of a property.
   @abstract Set the specified attribute for the specified key. The valid keys are described in the "Light Attributes" constants.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  func setAttribute(attribute: AnyObject?, forKey key: String)
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.8, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)

  /*!
   @property technique
   @abstract Specifies the technique of the receiver. Defaults to nil.
   */
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @group Light Attributes
 @abstract Attributes affecting the lighting computations.
 @discussion These keys are deprecated in 10.10. Please use the properties of SCNLight instead.
 */
/*! @constant SCNLightAttenuationStartKey The distance at which the attenuation starts (Omni or Spot light types only). Animatable as "attenuationStart". Defaults to 0. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightAttenuationStartKey: String

/*! @constant SCNLightAttenuationEndKey The distance at which the attenuation ends (Omni or Spot light types only). Animatable as "attenuationEnd". Defaults to 0. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightAttenuationEndKey: String

/*! @constant SCNLightAttenuationFalloffExponentKey Controls the attenuation between the start and end attenuation distances. 0 means a constant attenuation, 1 a linear attenuation and 2 a quadratic attenuation, but any positive value will work (Omni or Spot light types only). Animatable as "attenuationFalloffExponent". Defaults to 2. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightAttenuationFalloffExponentKey: String

/*! @constant SCNLightSpotInnerAngleKey The angle in degrees between the spot direction and the lit element below which the lighting is at full strength. Animatable as "spotInnerAngle". Defaults to 0. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightSpotInnerAngleKey: String

/*! @constant SCNLightSpotOuterAngleKey The angle in degrees between the spot direction and the lit element after which the lighting is at zero strength. Animatable as "spotOuterAngle". Defaults to 45 degrees. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightSpotOuterAngleKey: String

/*! @constant SCNLightShadowNearClippingKey Specifies the minimal distance between the light and the surface to cast shadow on.  If a surface is closer to the light than this minimal distance, then the surface won't be shadowed. The near value must be different than zero. Animatable as "zNear". Defaults to 1. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightShadowNearClippingKey: String

/*! @constant SCNLightShadowFarClippingKey Specifies the maximal distance between the light and a visible surface to cast shadow on. If a surface is further from the light than this maximal distance, then the surface won't be shadowed. Animatable as "zFar". Defaults to 100. */
@available(OSX, introduced=10.8, deprecated=10.10)
let SCNLightShadowFarClippingKey: String
let SCNLightingModelPhong: String
let SCNLightingModelBlinn: String
let SCNLightingModelLambert: String
let SCNLightingModelConstant: String
enum SCNCullMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Back
  case Front
}
enum SCNTransparencyMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AOne
  case RGBZero
}

/*! 
 @enum SCNBlendMode
 @abstract  Blend modes that SCNMaterial uses to compose with the framebuffer to produce blended colors.
 */
@available(OSX 10.11, *)
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case Screen
  case Replace
}

/*!
 @class SCNMaterial
 @abstract A SCNMaterial determines how a geometry is rendered. It encapsulates the colors and textures that define the appearance of 3d geometries.
 */
@available(OSX 10.8, *)
class SCNMaterial : NSObject, SCNAnimatable, SCNShadable, NSCopying, NSSecureCoding {

  /*! 
   @property name
   @abstract Determines the name of the receiver.
   */
  var name: String?

  /*! 
   @property diffuse
   @abstract Specifies the receiver's diffuse property.
   @discussion The diffuse property specifies the amount of light diffusely reflected from the surface. The diffuse light is reflected equally in all directions and is therefore independent of the point of view.
   */
  var diffuse: SCNMaterialProperty { get }

  /*! 
   @property ambient
   @abstract Specifies the receiver's ambient property.
   @discussion The ambient property specifies the amount of ambient light to reflect. This property has no visual impact on scenes that have no ambient light. Setting the ambient has no effect if locksAmbientWithDiffuse is set to YES.
   */
  var ambient: SCNMaterialProperty { get }

  /*! 
   @property specular
   @abstract Specifies the receiver's specular property.
   @discussion The specular property specifies the amount of light to reflect in a mirror-like manner. The specular intensity increases when the point of view lines up with the direction of the reflected light.
   */
  var specular: SCNMaterialProperty { get }

  /*! 
   @property emission
   @abstract The emission property specifies the amount of light the material emits. This emission does not light up other surfaces in the scene.
   */
  var emission: SCNMaterialProperty { get }

  /*! 
   @property transparent
   @abstract The transparent property specifies the transparent areas of the material.
   */
  var transparent: SCNMaterialProperty { get }

  /*! 
   @property reflective
   @abstract The reflective property specifies the reflectivity of the surface. The surface will not actually reflect other objects in the scene. This property may be used as a sphere mapping to reflect a precomputed environment.
   */
  var reflective: SCNMaterialProperty { get }

  /*! 
   @property multiply
   @abstract The multiply property specifies a color or an image used to multiply the output fragments with. The computed fragments are multiplied with the multiply value to produce the final fragments. This property may be used for shadow maps, to fade out or tint 3d objects.
   */
  var multiply: SCNMaterialProperty { get }

  /*! 
   @property normal
   @abstract The normal property specifies the surface orientation. 
   @discussion When an image is set on the normal property the material is automatically lit per pixel. Setting a color has no effect.
   */
  var normal: SCNMaterialProperty { get }

  /*!
   @property ambientOcclusion
   @abstract The ambientOcclusion property specifies the ambient occlusion of the surface. The ambient occlusion is multiplied with the ambient light, then the result is added to the lighting contribution. This property has no visual impact on scenes that have no ambient light. When an ambient occlusion map is set, the ambient property is ignored.
   */
  @available(OSX 10.11, *)
  var ambientOcclusion: SCNMaterialProperty { get }

  /*!
   @property selfIllumination
   @abstract The selfIllumination property specifies a texture or a color that is added to the lighting contribution of the surface. When a selfIllumination is set, the emission property is ignored.
   */
  @available(OSX 10.11, *)
  var selfIllumination: SCNMaterialProperty { get }

  /*! 
   @property shininess
   @abstract Specifies the receiver's shininess value. Defaults to 1.0. Animatable.
   */
  var shininess: CGFloat

  /*! 
   @property transparency
   @abstract Specifies the receiver's transparency value. Defaults to 1.0. Animatable.
   @discussion The color of the transparent property is multiplied by this property. The result is then used to produce the final transparency according to the rule defined by the transparencyMode property.
   */
  var transparency: CGFloat

  /*! 
   @property lightingModelName
   @abstract Determines the receiver's lighting model. See above for the list of lighting models. Defaults to SCNLightingModelBlinn.
   */
  var lightingModelName: String

  /*! 
   @property litPerPixel
   @abstract Determines whether the receiver is lit per pixel. Defaults to YES. Animatable.
   */
  var litPerPixel: Bool

  /*! 
   @property doubleSided
   @abstract Determines whether the receiver is double sided. Defaults to NO. Animatable.
   */
  var doubleSided: Bool

  /*! 
   @property cullMode
   @abstract Determines the culling mode of the receiver. Defaults to SCNCullBack. Animatable.
   */
  var cullMode: SCNCullMode

  /*! 
   @property transparencyMode
   @abstract Determines the transparency mode of the receiver. See above for the transparency modes. Defaults to SCNTransparencyModeAOne.
   @discussion SCNTransparencyModeAOne takes the transparency information from the color's alpha channel. The value 1.0 is opaque. 
   SCNTransparencyModeRGBZero takes the transparency information from the color's red, green, and blue channels. The value 0.0 is opaque, with each channel modulated independently. With SCNTransparencyModeRGBZero, the alpha value of the transparent property is ignored.
   */
  var transparencyMode: SCNTransparencyMode

  /*! 
   @property locksAmbientWithDiffuse
   @abstract Makes the ambient property automatically match the diffuse property. Defaults to NO on 10.9 and before, defaults to YES otherwise. Animatable.
   */
  var locksAmbientWithDiffuse: Bool

  /*! 
   @property writeToDepthBuffer
   @abstract Determines whether the receiver writes to the depth buffer when rendered. Defaults to YES.
   */
  var writesToDepthBuffer: Bool

  /*!
   @property readsFromDepthBuffer
   @abstract Determines whether the receiver reads from the depth buffer when rendered. Defaults to YES.
   */
  @available(OSX 10.9, *)
  var readsFromDepthBuffer: Bool

  /*!
   @property fresnelExponent
   @abstract Specifies the receiver's fresnel exponent value. Defaults to 0.0. Animatable.
   @discussion The effect of the reflectivity property is modulated by this property. The fresnelExponent changes the exponent of the reflectance. The bigger the exponent, the more concentrated the reflection is around the edges.
   */
  @available(OSX 10.9, *)
  var fresnelExponent: CGFloat

  /*!
   @property blendMode
   @abstract Specifies the receiver's blend mode. Defaults to SCNBlendModeAlpha.
   */
  @available(OSX 10.11, *)
  var blendMode: SCNBlendMode
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.8, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)

  /*!
   @property program
   @abstract Specifies a custom program used to render the receiver.
   @discussion When a program is set, it overrides all the rendering parameters such as material settings and shaderModifiers.
   */
  @available(OSX 10.8, *)
  var program: SCNProgram?

  /*!
   @method handleBindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to bind the value for the specified symbol of the receiver's SCNProgram. This method has no effect for symbols declared in shader modifiers.
   @param symbol The name of the symbol to bind a value for.
   @param block The block to call to bind the specified symbol.
   @discussion This method can only be used with OpenGL and OpenGLES based programs.
   */
  @available(OSX 10.9, *)
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @method handleUnbindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to unbind the value for the specified symbol of the receiver's SCNProgram. This method has no effect for symbols declared in shader modifiers.
   @param symbol The name of the symbol to unbind.
   @param block The block to call to unbind the specified symbol.
   @discussion This method can only be used with OpenGL and OpenGLES based programs.
   */
  @available(OSX 10.9, *)
  func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @property shaderModifiers
   @abstract Dictionary of shader modifiers snippets, targeting entry points. The valid keys are the entry points described in the "Shader Modifier Entry Point" constants. The values are the code snippets formatted as described below.
   @discussion Shader modifiers allow you to inject shader code in the standard shaders of SceneKit. This injection is allowed in few controlled entry points, allowing specific kind of tasks in specific context. Each modifier can operate on specific structures along with access to global uniforms, that could be the standard SceneKit uniforms or its own declared uniforms.
   
   The structure of a shader modifier is:
   
   | // Custom uniforms declarations of the form:
   | // for GLSL: [uniform type uniformName [= defaultValue]]
   | uniform float myGrayAmount = 3.0;
   |
   | //for Metal a pragma is required and arguments have the form [type name]
   | #pragma arguments
   | float myGrayAmount;
   |
   | // Optional global function definitions (for Metal: references to arguments from global functions are not supported).
   | float mySin(float t) {
   |    return sin(t);
   | }
   |
   | [#pragma transparent | opaque]
   | [#pragma body]
   |
   | // the shader modifier code snippet itself
   | vec3 myColor = vec3(myGrayAmount);
   | _output.color.rgb += myColor;
   
   The `#pragma body` directive
   Is only needed if you declared functions that must not be included in the shader code itself.
   
   The `#pragma transparent` directive
   Forces the rendering to be blended using the following equation:
   _output.color.rgb + (1 - _output.color.a) * dst.rgb;
   where `dst` represents the current fragment color. The rgb components must be premultiplied.
   
   The `#pragma opaque` directive
   Forces the rendering to be opaque. It then ignores the alpha component of the fragment.
   
   The SCNGeometry and SCNMaterial classes are key-value coding compliant classes, which means that you can set values for arbitrary keys. Even if the key `myAmplitude` is not a declared property of the class, you can still set a value for it.
   Declaring a `myAmplitude` uniform in the shader modifier makes SceneKit observe the reveiver's `myAmplitude` key. Any change to that key will make SceneKit bind the uniform with the new value.
   
   Custom uniforms can be animated using explicit animations.
   
   The following GLSL types (and Objective-C counterparts) can be used to declare (and bind) custom uniforms:
   Example: uniform float myAmplitude = 0.5;
   
   GLSL types    | Objective-C types
   --------------------------------------
   int           | NSNumber, NSInteger, int
   float         | NSNumber, CGFloat, float, double
   vec2          | CGPoint
   vec3          | SCNVector3
   vec4          | SCNVector4
   mat4, mat44   | SCNMatrix4
   sampler2D     | SCNMaterialProperty
   samplerCube   | SCNMaterialProperty (with a cube map)
   
   The following prefixes are reserved by SceneKit and should not be used in custom names:
   u_
   a_
   v_
   
   SceneKit declares the following built-in uniforms:
   float u_time;                               // The current time, in seconds
   vec2  u_inverseResolution;                 // 1./screen size (available on iOS 9 and OS X 10.11)
   -------------------------------------------------------------------------------------
   mat4  u_modelTransform                      // See SCNModelTransform
   mat4  u_viewTransform                       // See SCNViewTransform
   mat4  u_projectionTransform                 // See SCNProjectionTransform
   mat4  u_normalTransform                     // See SCNNormalTransform
   mat4  u_modelViewTransform                  // See SCNModelViewTransform
   mat4  u_modelViewProjectionTransform        // See SCNModelViewProjectionTransform
   -------------------------------------------------------------------------------------
   mat4  u_inverseModelTransform               // The inverse matrix of u_modelTransform
   mat4  u_inverseViewTransform                // The inverse matrix of u_viewTransform
   mat4  u_inverseProjectionTransform          // The inverse matrix of u_projectionTransform
   mat4  u_inverseModelViewTransform           // The inverse matrix of u_modelViewTransform
   mat4  u_inverseModelViewProjectionTransform // The inverse matrix of u_modelViewProjectionTransform
   -------------------------------------------------------------------------------------
   mat2x3 u_boundingBox;                       // The bounding box of the current geometry, in model space, u_boundingBox[0].xyz and u_boundingBox[1].xyz being respectively the minimum and maximum corner of the box.
   
   Shader modifiers can be used to tweak SceneKit rendering by adding custom code at the following entry points:
   1. vertex
   2. surface
   3. lighting
   4. fragment
   See below for a detailed explanation of these entry points and the context they provide.
   
   Shader modifiers can be written in GLSL or Metal. Metal shaders won't run on iOS8 and OS X 10.10 or below.
   */
  @available(OSX 10.9, *)
  var shaderModifiers: [String : String]?
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*! @enum SCNFilterMode
    @abstract Filtering modes
*/
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case None
  @available(OSX 10.9, *)
  case Nearest
  @available(OSX 10.9, *)
  case Linear
}

/*! @enum SCNWrapeMode
 @abstract Wrap modes
 */
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case Clamp
  @available(OSX 10.9, *)
  case Repeat
  @available(OSX 10.9, *)
  case ClampToBorder
  @available(OSX 10.9, *)
  case Mirror
}

/*! @class SCNMaterialProperty
    @abstract The contents of a SCNMaterial slot
    @discussion This can be used to specify the various properties of SCNMaterial slots such as diffuse, ambient, etc.
*/
@available(OSX 10.8, *)
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {

  /*!
   @method materialPropertyWithContents:
   @abstract Creates and initialize a property instance with the specified contents.
   */
  @available(OSX 10.9, *)
  convenience init(contents: AnyObject)

  /*! 
   @property contents
   @abstract Specifies the receiver's contents. This can be a color (NSColor/UIColor), an image (NSImage/CGImageRef), a layer (CALayer), a path (NSString or NSURL), a SpriteKit scene (SKScene) or a texture (SKTexture, id<MTLTexture> or GLKTextureInfo). Animatable when set to a color.
   @discussion CGColorRef and CGImageRef can also be set. An array (NSArray) of 6 images is allowed for cube maps, only for reflective property. This array must contain images of the exact same dimensions, in the following order, in a left-handed coordinate system : +X, -X, +Y, -Y, +Z, -Z or if you prefer Right, Left, Top, Bottom, Front, Back. 
       Setting the contents to an instance of SKTexture will automatically update the wrapS, wrapT, contentsTransform, minification, magnification and mip filters according to the SKTexture settings.
   */
  var contents: AnyObject?

  /*!
   @property intensity
   @abstract Determines the receiver's intensity. This intensity is used to modulate the properties in several ways.
   It dims the diffuse, specular and emission properties, it varies the bumpiness of the normal property and the
   filter property is blended with white. Default value is 1.0. Animatable.
   */
  @available(OSX 10.9, *)
  var intensity: CGFloat

  /*! 
   @property minificationFilter
   @abstract Specifies the filter type to use when rendering the contents (specified in the `contents' property).
   @discussion The minification filter is used when to reduce the size of image data. See above the list of available modes. Defaults to SCNFilterModeLinear.
   */
  var minificationFilter: SCNFilterMode

  /*! 
   @property magnificationFilter
   @abstract Specifies the filter type to use when rendering the the contents (specified in the `contents' property).
   @discussion The magnification filter is used when to increase the size of image data. See above the list of available modes. Defaults to SCNFilterModeLinear.
   */
  var magnificationFilter: SCNFilterMode

  /*! 
   @property mipFilter
   @abstract Specifies the mipmap filter to use during minification.
   @discussion Defaults to SCNFilterModeNone.
   */
  var mipFilter: SCNFilterMode

  /*! 
   @property contentsTransform
   @abstract Determines the receiver's contents transform. Animatable.
   */
  var contentsTransform: SCNMatrix4

  /*! 
   @property wrapS
   @abstract Determines the receiver's wrap mode for the s texture coordinate. Defaults to SCNWrapModeClamp.
   */
  var wrapS: SCNWrapMode

  /*! 
   @property wrapT
   @abstract Determines the receiver's wrap mode for the t texture coordinate. Defaults to SCNWrapModeClamp.
   */
  var wrapT: SCNWrapMode

  /*! 
   @property borderColor
   @abstract Determines the receiver's border color (CGColorRef or NSColor). Animatable.
   @discussion The border color is ignored on iOS and is always considered as clear color (0,0,0,0) when the texture has an alpha channel and opaque back (0,0,0,1) otherwise.
   */
  var borderColor: AnyObject?

  /*! 
   @property mappingChannel
   @abstract Determines the receiver's mapping channel. Defaults to 0.
   @discussion Geometries potentially have multiple sources of texture coordinates. Every source has a unique mapping channel index. The mapping channel allows to select which source of texture coordinates is used to map the content of the receiver. 
   */
  var mappingChannel: Int

  /*!
   @property maxAnisotropy
   @abstract Specifies the receiver's max anisotropy. Defaults to MAXFLOAT.
   @discussion Anisotropic filtering reduces blur and preserves detail at extreme viewing angles.
   */
  @available(OSX 10.9, *)
  var maxAnisotropy: CGFloat
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.8, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNMorpher
 @abstract SCNMorpher controls the deformation of morphed geometries
 */
enum SCNMorpherCalculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Normalized
  case Additive
}
@available(OSX 10.9, *)
class SCNMorpher : NSObject, SCNAnimatable, NSSecureCoding {

  /*!
   @property targets
   @abstract Specifies the morph targets as an array of SCNGeometry.
   @discussion The target geometries must have the same number of entries in their geometry sources and the same topology as the base geometry.
   */
  var targets: [SCNGeometry]

  /*!
   @method setWeight:forTargetAtIndex:
   @abstract Sets the weight for the target at the specified index. Animatable implicitly or explicitly with the keyPath "weights[index]".
   */
  func setWeight(weight: CGFloat, forTargetAtIndex targetIndex: Int)

  /*!
   @method weightForTargetAtIndex:
   @abstract Retrieves the weight for the target at the specified index.
   */
  func weightForTargetAtIndex(targetIndex: Int) -> CGFloat

  /*!
   @property calculationMode
   @abstract Specifies how the morph result is calculated by the receiver. Defaults to SCNMorpherCalculationModeNormalized.
   */
  var calculationMode: SCNMorpherCalculationMode
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.9, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.9, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.9, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.9, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.9, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*! @group Rendering arguments
    @discussion These keys are used in the 'arguments' dictionary of renderNode:renderer:arguments:
				and in the 'semantic' argument of -[SCNProgram setSemantic:forSymbol:options:].
                Transforms are SCNMatrix4 wrapped in NSValues.
 */
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String

/*!
 @class SCNNode
 @abstract SCNNode is the model class for node-tree objects.
 @discussion It encapsulates the position, rotations, and other transforms of a node, which define a coordinate system.
		     The coordinate systems of all the sub-nodes are relative to the one of their parent node.
 */
@available(OSX 10.8, *)
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {

  /*! 
   @method nodeWithGeometry:
   @abstract Creates and initializes a node instance with the specified geometry attached.
   @param geometry The geometry to attach.
   */
  /*not inherited*/ init(geometry: SCNGeometry?)

  /*!
   @method clone
   @abstract Returns a copy of the receiver. The returned instance is autoreleased.
   @discussion The copy is recursive: every child node will be cloned, too. For a non-recursive copy, use copy instead.
   The copied nodes will share their attached objects (light, geometry, camera, ...) with the original instances;
   if you want, for example, to change the materials of the copy independently of the original object, you'll
   have to copy the geometry of the node separately.
   */
  func clone() -> Self
  @available(OSX 10.9, *)
  func flattenedClone() -> Self

  /*!
   @property name
   @abstract Determines the name of the receiver.
   */
  var name: String?

  /*!
   @property light
   @abstract Determines the light attached to the receiver.
   */
  var light: SCNLight?

  /*!
   @property camera
   @abstract Determines the camera attached to the receiver.
   */
  var camera: SCNCamera?

  /*!
   @property geometry
   @abstract Returns the geometry attached to the receiver.
   */
  var geometry: SCNGeometry?

  /*!
   @property skinner
   @abstract Returns the skinner attached to the receiver.
   */
  @available(OSX 10.9, *)
  var skinner: SCNSkinner?

  /*!
   @property morpher
   @abstract Returns the morpher attached to the receiver.
   */
  @available(OSX 10.9, *)
  var morpher: SCNMorpher?

  /*! 
   @property transform
   @abstract Determines the receiver's transform. Animatable.
   @discussion The transform is the combination of the position, rotation and scale defined below. So when the transform is set, the receiver's position, rotation and scale are changed to match the new transform.
   */
  var transform: SCNMatrix4

  /*! 
   @property position
   @abstract Determines the receiver's position. Animatable.
   */
  var position: SCNVector3

  /*! 
   @property rotation
   @abstract Determines the receiver's rotation. Animatable.
   @discussion The rotation is axis angle rotation. The three first components are the axis, the fourth one is the rotation (in radian).
   */
  var rotation: SCNVector4

  /*!
   @property orientation
   @abstract Determines the receiver's orientation as a unit quaternion. Animatable.
   */
  @available(OSX 10.10, *)
  var orientation: SCNQuaternion

  /*!
   @property eulerAngles
   @abstract Determines the receiver's euler angles. Animatable.
   @dicussion Specify the intrinsic euler angles (in radians). It represents a sequence of 3 rotations about the x, y, and z axis with the following order: z, y, x (or roll, yaw, pitch).
   */
  @available(OSX 10.10, *)
  var eulerAngles: SCNVector3

  /*! 
   @property scale
   @abstract Determines the receiver's scale. Animatable.
   */
  var scale: SCNVector3

  /*! 
   @property pivot
   @abstract Determines the receiver's pivot. Animatable.
   */
  var pivot: SCNMatrix4

  /*! 
   @property worldTransform
   @abstract Returns the receiver's world transform.
   @discussion A world transform is the transform relative to the scene. 
   */
  var worldTransform: SCNMatrix4 { get }

  /*! 
   @property hidden
   @abstract Determines whether the receiver is displayed. Defaults to NO. Animatable.
   */
  var hidden: Bool

  /*! 
   @property opacity
   @abstract Determines the opacity of the receiver. Default is 1. Animatable.
   */
  var opacity: CGFloat

  /*!
   @property renderingOrder
   @abstract Determines the rendering order of the receiver.
   @discussion Nodes with greater rendering orders are rendered last. Defaults to 0.
   */
  var renderingOrder: Int

  /*!
   @property castsShadow
   @abstract Determines if the node is rendered in shadow maps. Defaults to YES.
   */
  @available(OSX 10.10, *)
  var castsShadow: Bool

  /*! 
   @property parentNode
   @abstract Returns the parent node of the receiver.
   */
  var parentNode: SCNNode? { get }

  /*! 
   @property childNodes
   @abstract Returns the child node array of the receiver.
   */
  var childNodes: [SCNNode] { get }

  /*!
   @method addChildNode:
   @abstract Appends the node to the receiver’s childNodes array.
   @param child The node to be added to the receiver’s childNodes array.
   */
  func addChildNode(child: SCNNode)

  /*!
   @method insertChildNode:atIndex:
   @abstract Insert a node in the childNodes array at the specified index.
   @param child The node to insert.
   @param index Index in the childNodes array to insert the node.
   */
  func insertChildNode(child: SCNNode, atIndex index: Int)

  /*!
   @method removeFromParentNode
   @abstract Removes the node from the childNodes array of the receiver’s parentNode.
   */
  func removeFromParentNode()

  /*!
   @method replaceChildNode:with:
   @abstract Remove `child' from the childNode array of the receiver and insert 'child2' if non-nil in its position.
   @discussion If the parentNode of `child' is not the receiver, the behavior is undefined.
   @param oldChild The node to replace in the childNodes array.
   @param newChild The new node that will replace the previous one.
   */
  func replaceChildNode(oldChild: SCNNode, with newChild: SCNNode)

  /*!
   @method childNodeWithName:recursively:
   @abstract Returns the first node found in the node tree with the specified name.
   @discussion The search uses a pre-order tree traversal.
   @param name The name of the node you are searching for.
   @param recursively Set to YES if you want the search to look through the sub-nodes recursively.
   */
  func childNodeWithName(name: String, recursively: Bool) -> SCNNode?

  /*!
   @method childNodesPassingTest:
   @abstract Returns the child nodes of the receiver that passes a test in a given Block.
   @discussion The search is recursive and uses a pre-order tree traversal.
   @param predicate The block to apply to child nodes of the receiver. The block takes two arguments: "child" is a child node and "stop" is a reference to a Boolean value. The block can set the value to YES to stop further processing of the node hierarchy. The stop argument is an out-only argument. You should only ever set this Boolean to YES within the Block. The Block returns a Boolean value that indicates whether "child" passed the test.
   */
  func childNodesPassingTest(predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]

  /*!
   @method enumerateChildNodesUsingBlock:
   @abstract Executes a given block using each child node under the receiver.
   @discussion The search is recursive and uses a pre-order tree traversal.
   @param block The block to apply to child nodes of the receiver. The block takes two arguments: "child" is a child node and "stop" is a reference to a Boolean value. The block can set the value to YES to stop further processing of the node hierarchy. The stop argument is an out-only argument. You should only ever set this Boolean to YES within the Block.
   */
  @available(OSX 10.10, *)
  func enumerateChildNodesUsingBlock(block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)

  /*!
   @method convertPosition:toNode:
   @abstract Converts a position from the receiver’s coordinate system to that of the specified node.
   @param position A position specified in the local coordinate system of the receiver.
   @param node The node into whose coordinate system "position" is to be converted. If "node" is nil, this method instead converts to world coordinates.
   */
  @available(OSX 10.9, *)
  func convertPosition(position: SCNVector3, toNode node: SCNNode?) -> SCNVector3

  /*!
   @method convertPosition:fromNode:
   @abstract Converts a position from the coordinate system of a given node to that of the receiver.
   @param position A position specified in the local coordinate system of "node".
   @param node The node from whose coordinate system "position" is to be converted. If "node" is nil, this method instead converts from world coordinates.
   */
  @available(OSX 10.9, *)
  func convertPosition(position: SCNVector3, fromNode node: SCNNode?) -> SCNVector3

  /*!
   @method convertTransform:toNode:
   @abstract Converts a transform from the receiver’s coordinate system to that of the specified node.
   @param transform A transform specified in the local coordinate system of the receiver.
   @param node The node into whose coordinate system "transform" is to be converted. If "node" is nil, this method instead converts to world coordinates.
   */
  @available(OSX 10.9, *)
  func convertTransform(transform: SCNMatrix4, toNode node: SCNNode?) -> SCNMatrix4

  /*!
   @method convertTransform:fromNode:
   @abstract Converts a transform from the coordinate system of a given node to that of the receiver.
   @param transform A transform specified in the local coordinate system of "node".
   @param node The node from whose coordinate system "transform" is to be converted. If "node" is nil, this method instead converts from world coordinates.
   */
  @available(OSX 10.9, *)
  func convertTransform(transform: SCNMatrix4, fromNode node: SCNNode?) -> SCNMatrix4

  /*!
   @property physicsBody
   @abstract The description of the physics body of the receiver.
   @discussion Default is nil.
   */
  @available(OSX 10.10, *)
  var physicsBody: SCNPhysicsBody?

  /*!
   @property physicsField
   @abstract The description of the physics field of the receiver.
   @discussion Default is nil.
   */
  @available(OSX 10.10, *)
  var physicsField: SCNPhysicsField?

  /*!
   @property constraints
   @abstract An array of SCNConstraint that are applied to the receiver.
   @discussion Adding or removing a constraint can be implicitly animated based on the current transaction.
   */
  @available(OSX 10.9, *)
  var constraints: [SCNConstraint]?

  /*!
   @property filters
   @abstract An array of Core Image filters that are applied to the rendering of the receiver and its child nodes. Animatable.
   @discussion Defaults to nil. Filter properties should be modified by calling setValue:forKeyPath: on each node that the filter is attached to. If the inputs of the filter are modified directly after the filter is attached to a node, the behavior is undefined.
   */
  @available(OSX 10.9, *)
  var filters: [CIFilter]?

  /*!
   @method presentationNode
   @abstract Returns the presentation node.
   @discussion Returns a copy of the node containing all the properties as they were at the start of the current transaction, with any active animations applied.
               This gives a close approximation to the version of the node that is currently displayed.
               The effect of attempting to modify the returned node in any way is undefined. The returned node has no parent and no child nodes.
   */
  var presentationNode: SCNNode { get }

  /*!
   @property paused
   @abstract Controls whether or not the node's actions and animations are updated or paused. Defaults to NO.
   */
  @available(OSX 10.10, *)
  var paused: Bool

  /*!
   @property rendererDelegate
   @abstract Specifies the receiver's renderer delegate object.
   @discussion Setting a renderer delegate prevents the SceneKit renderer from drawing the node and lets you use custom OpenGL code instead.
               The preferred way to customize the rendering is to tweak the material properties of the different materials of the node's geometry. SCNMaterial conforms to the SCNShadable protocol and allows for more advanced rendering using GLSL.
               You would typically use a renderer delegate with a node that has no geometry and only serves as a location in space. An example would be attaching a particle system to that node and render it with custom OpenGL code.
   */
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?

  /*!
   @method hitTestWithSegmentFromPoint:toPoint:options:
   @abstract Returns an array of SCNHitTestResult for each node in the receiver's sub tree that intersects the specified segment.
   @param pointA The first point of the segment relative to the receiver.
   @param pointB The second point of the segment relative to the receiver.
   @param options Optional parameters (see the "Hit test options" section in SCNSceneRenderer.h for the available options).
   @discussion See SCNSceneRenderer.h for a screen-space hit testing method.
   */
  @available(OSX 10.9, *)
  func hitTestWithSegmentFromPoint(pointA: SCNVector3, toPoint pointB: SCNVector3, options: [String : AnyObject]?) -> [SCNHitTestResult]

  /*!
   @property categoryBitMask
   @abstract Defines what logical 'categories' the receiver belongs too. Defaults to 1.
   @discussion Categories can be used to exclude nodes from the influence of a given light (see SCNLight's categoryBitMask). It can also be used to include/exclude nodes from render passes (see SCNTechnique.h).
   */
  @available(OSX 10.10, *)
  var categoryBitMask: Int
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.8, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.8, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.8, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.8, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)

  /*!
   @method runAction:
   @abstract Adds an action to the list of actions executed by the node.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction)

  /*!
   @method runAction:completionHandler:
   @abstract Adds an action to the list of actions executed by the node. Your block is called when the action completes.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction, completionHandler block: (() -> Void)?)

  /*!
   @method runAction:forKey:
   @abstract Adds an identifiable action to the list of actions executed by the node.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction, forKey key: String?)

  /*!
   @method runAction:forKey:completionHandler:
   @abstract Adds an identifiable action to the list of actions executed by the node. Your block is called when the action completes.
   */
  @available(OSX 10.10, *)
  func runAction(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)

  /*!
   @method hasActions
   @abstract Returns a Boolean value that indicates whether the node is executing actions.
   */
  @available(OSX 10.10, *)
  var hasActions: Bool { get }

  /*!
   @method actionForKey:
   @abstract Returns an action associated with a specific key.
   */
  @available(OSX 10.10, *)
  func actionForKey(key: String) -> SCNAction?

  /*!
   @method removeActionForKey:
   @abstract Removes an action associated with a specific key.
   */
  @available(OSX 10.10, *)
  func removeActionForKey(key: String)

  /*!
   @method removeAllActions
   @abstract Ends and removes all actions from the node.
   */
  @available(OSX 10.10, *)
  func removeAllActions()

  /*!
   @method actionKeys
   @abstract Returns an array containing the keys of all actions currently attached to the receiver.
   */
  @available(OSX 10.10, *)
  var actionKeys: [String] { get }

  /*! 
   @method getBoundingBoxMin:max:
   @abstract Fill the min and max vectors with the min and max vertex of the bounding box.
   @param min A pointer to a SCNVector3 to store the min vertex of the bounding box into.
   @param max A pointer to a SCNVector3 to store the max vertex of the bounding box into.
   */
  @available(OSX 10.8, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool

  /*!
   @method getBoundingSphereCenter:radius:
   @abstract Fill the center vector with the center of the bounding sphere and store the radius of the bounding sphere in 'radius'.
   @param center A pointer to a SCNVector3 to store the center of the bounding sphere into.
   @param radius A pointer to a CGFloat to store the radius of the bounding sphere into.
   */
  @available(OSX 10.8, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool

  /*!
   @method setBoundingBoxMin:max:
   @abstract Override the receiver bounding box with the min and max vectors provided.
   @param min A pointer to a SCNVector3 representing the min vertex of the desired bounding box.
   @param max A pointer to a SCNVector3 representing the max vertex of the desired bounding box.
   @discussion Passing nil as arguments will recompute the original bounding box of the receiver.
   */
  @available(OSX 10.9, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}

/*!
 @category NSObject (SCNNodeRendererDelegate)
 @abstract The SCNNodeRendererDelegate protocol declares the methods that an instance of SCNNode invokes to let a delegate customize its rendering.
 */
protocol SCNNodeRendererDelegate : NSObjectProtocol {

  /*! 
   @method renderNode:renderer:arguments:
   @abstract Invoked when a node is rendered.
   @discussion The preferred way to customize the rendering is to tweak the material properties of the different materials of the node's geometry. SCNMaterial conforms to the SCNShadable protocol and allows for more advanced rendering using GLSL.
               You would typically use a renderer delegate with a node that has no geometry and only serves as a location in space. An example would be attaching a particle system to that node and render it with custom OpenGL code.
               Only drawing calls and the means to achieve them are supposed to be performed during the renderer delegate callback, any changes in the model (nodes, geometry...) would involve unexpected results.
   @param node The node to render.
   @param renderer The scene renderer to render into.
   @param arguments A dictionary that can have any of the entries described at the beginning of this file.
   */
  @available(OSX 10.8, *)
  optional func renderNode(node: SCNNode, renderer: SCNRenderer, arguments: [String : NSValue])
}

/*!
 @class SCNPlane
 @abstract SCNPlane represents a rectangle with controllable width and height. The plane has one visible side.
 */
@available(OSX 10.8, *)
class SCNPlane : SCNGeometry {

  /*!
   @method planeWithWidth:height:
   @abstract Creates and returns a plane with given width and height.
   @param width The width of the plane.
   @param height The height of the plane.
   */
  convenience init(width: CGFloat, height: CGFloat)

  /*! 
   @property width
   @abstract The plane extent along the X axis. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var width: CGFloat

  /*! 
   @property height
   @abstract The plane extent along the Y axis. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var height: CGFloat

  /*! 
   @property widthSegmentCount
   @abstract The number of subdivisions along the X axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var widthSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. The default value is 1. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var heightSegmentCount: Int

  /*!
   @property cornerRadius
   @abstract The corner radius. Animatable.
   @discussion If the value is strictly less than 0, the geometry is empty. The default value is 0.
   */
  @available(OSX 10.9, *)
  var cornerRadius: CGFloat

  /*!
   @property cornerSegmentCount
   @abstract The number of subdivisions for the rounded corners. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 10.
   */
  @available(OSX 10.9, *)
  var cornerSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNBox
 @abstract SCNBox represents a box with rectangular sides and optional chamfers.
 */
@available(OSX 10.8, *)
class SCNBox : SCNGeometry {

  /*!
   @method boxWithWidth:height:length:chamferRadius:
   @abstract Creates and returns a box with given width, height, length and chamfer radius.
   @param width The width of the box.
   @param height The height of the box.
   @param length The length of the box.
   @param chamferRadius The chamfer radius of the box.
   */
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat, chamferRadius: CGFloat)

  /*! 
   @property width
   @abstract The width of the box. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var width: CGFloat

  /*! 
   @property height
   @abstract The height of the box. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var height: CGFloat

  /*! 
   @property length
   @abstract The length of the box. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var length: CGFloat

  /*! 
   @property chamferRadius
   @abstract The chamfer radius. Animatable.
   @discussion If the value is strictly less than 0, the geometry is empty. The default value is 0.
   */
  var chamferRadius: CGFloat

  /*! 
   @property widthSegmentCount
   @abstract The number of subdivisions along the X axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var widthSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var heightSegmentCount: Int

  /*! 
   @property lengthSegmentCount
   @abstract The number of subdivisions along the Z axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var lengthSegmentCount: Int

  /*!
   @property chamferSegmentCount
   @abstract The number of chamfer subdivisions. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 10.
   */
  var chamferSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNPyramid
 @abstract SCNPyramid represents a right pyramid with a rectangular base.
 */
@available(OSX 10.8, *)
class SCNPyramid : SCNGeometry {

  /*!
   @method pyramidWithWidth:height:length:
   @abstract Creates and returns a pyramid with given width, height, and length.
   @param width The width of the pyramid.
   @param height The height of the pyramid.
   @param length The length of the pyramid.
   */
  convenience init(width: CGFloat, height: CGFloat, length: CGFloat)

  /*! 
   @property width
   @abstract The width of the pyramid base. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var width: CGFloat

  /*! 
   @property height
   @abstract The height of the pyramid. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var height: CGFloat

  /*! 
   @property length
   @abstract The length of the pyramid base. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var length: CGFloat

  /*! 
   @property widthSegmentCount
   @abstract The number of subdivisions along the X axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1. 
   */
  var widthSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1. 
   */
  var heightSegmentCount: Int

  /*! 
   @property lengthSegmentCount
   @abstract The number of subdivisions along the Z axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1. 
   */
  var lengthSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNSphere
 @abstract SCNSphere represents a sphere with controllable radius
 */
@available(OSX 10.8, *)
class SCNSphere : SCNGeometry {

  /*!
   @method sphereWithRadius:
   @abstract Creates and returns a sphere with given radius.
   @param radius The radius of the sphere.
   */
  convenience init(radius: CGFloat)

  /*! 
   @property radius
   @abstract The sphere radius. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 0.5.
   */
  var radius: CGFloat

  /*! 
   @property geodesic
   @abstract Indicate if the geometry is a geosphere.
   @discussion The default value is NO.
   */
  var geodesic: Bool

  /*!
   @property segmentCount
   @abstract The number of segments along both spherical coordinates. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 48.
   */
  var segmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNCylinder
 @abstract SCNCylinder represents a cylinder with controllable height and radius.
 */
@available(OSX 10.8, *)
class SCNCylinder : SCNGeometry {

  /*!
   @method cylinderWithRadius:height:
   @abstract Creates and returns a cylinder with given radius and height.
   @param radius The radius of the cylinder.
   @param height The height of the cylinder. 
   */
  convenience init(radius: CGFloat, height: CGFloat)

  /*! 
   @property radius
   @abstract The radius of the cylinder. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 0.5.
   */
  var radius: CGFloat

  /*! 
   @property height
   @abstract The height of the cylinder. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var height: CGFloat

  /*! 
   @property radialSegmentCount
   @abstract The number of subdivisions along the radial coordinate. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 48.
   */
  var radialSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var heightSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNCone
 @abstract SCNCone represents a cone with controllable height, top radius and bottom radius.
 */
@available(OSX 10.8, *)
class SCNCone : SCNGeometry {

  /*!
   @method coneWithTopRadius:bottomRadius:height:
   @abstract Creates and returns a cone with given top radius, bottom radius and height.
   @param topRadius The radius at the top of the cone.
   @param bottomRadius The radius at the bottom of the cone.
   @param height The height of the cone.
   */
  convenience init(topRadius: CGFloat, bottomRadius: CGFloat, height: CGFloat)

  /*! 
   @property topRadius
   @abstract The radius at the top of the cone. Animatable.
   @discussion If the value is less than 0, the geometry is empty. The default value is 0.
   */
  var topRadius: CGFloat

  /*! 
   @property bottomRadius
   @abstract The radius at the bottom of the cone. Animatable.
   @discussion If the value is less than 0, the geometry is empty. The default value is 0.5.
   */
  var bottomRadius: CGFloat

  /*! 
   @property height
   @abstract The height of the cone. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var height: CGFloat

  /*! 
   @property radialSegmentCount
   @abstract The number of subdivisions along the radial coordinate. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 48.
   */
  var radialSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var heightSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNTube
 @abstract SCNTube represents a tube with controllable height, inner radius and outer radius.
 */
@available(OSX 10.8, *)
class SCNTube : SCNGeometry {

  /*!
   @method tubeWithInnerRadius:outerRadius:height:
   @abstract Creates and returns a tube with given inner radius, outer radius and height.
   @param innerRadius The inner radius of the tube.
   @param outerRadius The outer radius of the tube.
   @param height The height of the tube.
   */
  convenience init(innerRadius: CGFloat, outerRadius: CGFloat, height: CGFloat)

  /*! 
   @property innerRadius
   @abstract The inner radius of the tube. Animatable.
   @discussion If the value is less than or equal to 0, or if it is greater than or equal to the outer radius, then the geometry is empty. The default value is 0.25.
   */
  var innerRadius: CGFloat

  /*! 
   @property outerRadius
   @abstract The outer radius of the tube. Animatable.
   @discussion If the value is less than or equal to 0, or if it is less than or equal to the inner radius, then the geometry is empty. The default value is 0.5.
   */
  var outerRadius: CGFloat

  /*! 
   @property height
   @abstract The height of the tube. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 1.
   */
  var height: CGFloat

  /*! 
   @property radialSegmentCount
   @abstract The number of subdivisions along the radial coordinate. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 48.
   */
  var radialSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var heightSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNCapsule
 @abstract SCNCapsule represents a capsule with controllable height and cap radius.
 */
@available(OSX 10.8, *)
class SCNCapsule : SCNGeometry {

  /*!
   @method capsuleWithCapRadius:height:
   @abstract Creates and returns a capsule with given radius and height.
   @param capRadius The radius of the capsule.
   @param height The height of the capsule.
   */
  convenience init(capRadius: CGFloat, height: CGFloat)

  /*! 
   @property capRadius
   @abstract The cap radius of the capsule. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 0.5.
   */
  var capRadius: CGFloat

  /*! 
   @property height
   @abstract The height of the capsule. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 2.
   */
  var height: CGFloat

  /*! 
   @property radialSegmentCount
   @abstract The number of subdivisions along the radial coordinate. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 48.
   */
  var radialSegmentCount: Int

  /*! 
   @property heightSegmentCount
   @abstract The number of subdivisions along the Y axis. Animatable.
   @discussion If the value is less than 1, the behavior is undefined. The default value is 1.
   */
  var heightSegmentCount: Int

  /*! 
   @property capSegmentCount
   @abstract The number of subdivisions in the cap. Animatable.
   @discussion If the value is less than 2, the behavior is undefined. The default value is 24.
   */
  var capSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNTorus
 @abstract SCNTorus represents a torus with controllable ring radius and pipe radius.
 */
@available(OSX 10.8, *)
class SCNTorus : SCNGeometry {

  /*!
   @method torusWithRingRadius:pipeRadius:
   @abstract Creates and returns a torus with given ring radius and pipe radius.
   @param ringRadius The radius of the ring.
   @param pipeRadius The radius of the pipe.
   */
  convenience init(ringRadius: CGFloat, pipeRadius: CGFloat)

  /*! 
   @property ringRadius
   @abstract The radius of the torus ring. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 0.5.
   */
  var ringRadius: CGFloat

  /*! 
   @property pipeRadius
   @abstract The radius of the torus pipe. Animatable.
   @discussion If the value is less than or equal to 0, the geometry is empty. The default value is 0.25.
   */
  var pipeRadius: CGFloat

  /*! 
   @property ringSegmentCount
   @abstract The number of subdivisions of the ring. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 48.
   */
  var ringSegmentCount: Int

  /*! 
   @property pipeSegmentCount
   @abstract The number of subdivisions of the pipe. Animatable.
   @discussion If the value is less than 3, the behavior is undefined. The default value is 24.
   */
  var pipeSegmentCount: Int

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNFloor
 @abstract SCNFloor represents an infinite plane geometry. 
 */
@available(OSX 10.8, *)
class SCNFloor : SCNGeometry {

  /*! 
   @property reflectivity
   @abstract Specifies the reflectivity of the floor. Animatable.
   @discussion If the value is greater than zero then the surface will reflect other objects in the scene. The default value is 0.25.
   */
  var reflectivity: CGFloat

  /*! 
   @property reflectionFalloffStart
   @abstract Specifies the distance from the floor where the falloff begins. Animatable.
   @discussion The default value is 0.
   */
  var reflectionFalloffStart: CGFloat

  /*! 
   @property reflectionFalloffEnd
   @abstract Specifies the distance from the floor where the falloff finishes. Animatable.
   @discussion If the value is 0 then there is no falloff. The default value is 0.
   */
  var reflectionFalloffEnd: CGFloat

  /*!
   @property reflectionResolutionScaleFactor
   @abstract Specifies the resolution scale factor of the buffer used to render the reflection.
   @discussion Defaults to 1.0.
  */
  @available(OSX 10.10, *)
  var reflectionResolutionScaleFactor: CGFloat

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNText
 @abstract SCNText represents a block of text that has been extruded
 */
@available(OSX 10.8, *)
class SCNText : SCNGeometry {

  /*!
   @method textWithString:extrusionDepth:
   @abstract Creates and returns a 3D representation of given text with given extrusion depth.
   @param string The text to be represented.
   @param extrusionDepth The extrusion depth.
   */
  convenience init(string: AnyObject?, extrusionDepth: CGFloat)

  /*! 
   @property extrusionDepth
   @abstract The extrusion depth. Animatable.
   @discussion If the value is 0, we get a mono-sided, 2D version of the text.
   */
  var extrusionDepth: CGFloat

  /*! 
   @property string
   @abstract The text to be represented. The text must be an instance of NSString or NSAttributedString.
   @discussion The default value is nil.
   */
  @NSCopying var string: AnyObject?

  /*! 
   @property font
   @abstract The font used to represent the text.
   @discussion The font property is only used when the string property is not an NSAttributedString. The default value is Helvetica size 36.
   */
  var font: NSFont!

  /*!
   @property wrapped
   @abstract Determines whether the text is wrapped to fit within the bounds.
   @discussion For the text to be wrapped you first need to set its bounds, otherwise the text is not wrapped. The default value is NO.
   */
  var wrapped: Bool

  /*!
   @property containerFrame
   @abstract A container within which the text may be wrapped or truncated.
   @discussion The text will start at the top-left corner of the rect. You need to set this property for text truncation or alignment to work. Getting this property when it has never been set returns CGRectZero.
   */
  var containerFrame: CGRect

  /*!
   @property textSize
   @abstract Returns the bounding box size the receiver occupies.
   */
  var textSize: CGSize { get }

  /*!
   @property truncationMode
   @abstract Describes how the text is truncated to fit within the bounds.
   @discussion For the text to be truncated you first need to set its bounds, otherwise the text is not truncated. The default value is kCATruncationNone. See truncation modes in CATextLayer.h.
   */
  var truncationMode: String

  /*!
   @property alignmentMode
   @abstract Determines how individual lines of text are horizontally aligned within the bounds.
   @discussion For the text to be aligned you first need to set its bounds, otherwise the text is not aligned. The default value is kCAAlignmentNatural. See alignments in CATextLayer.h.
   */
  var alignmentMode: String

  /*! 
   @property chamferRadius
   @abstract The chamfer radius. Animatable.
   @discussion Values are clamped to the range [0, extrusionDepth / 2]. The actual chamfer radius might be different to the one here specified: large values are clipped to a per-glyph max value. The default value is 0.
   */
  var chamferRadius: CGFloat

  /*!
   @property chamferProfile
   @abstract Describes the profile used to when "chamferRadius" is not nil. When "chamferProfile" is nil we fallback on a path representing a quadrant.
   @discussion The profile should be a 2D curve beginning at (0,1) and ending at (1,0). The "flatness" property is also used to flatten this path. The default value is nil.
   */
  @available(OSX 10.9, *)
  @NSCopying var chamferProfile: NSBezierPath?

  /*!
   @property flatness
   @abstract Specifies the accuracy (or smoothness) with which fonts are rendered.
   @discussion Smaller numbers give smoother curves at the expense of more computation and heavier geometries in terms of vertices. The default value is 0.6, which yields smooth curves.
   */
  @available(OSX 10.9, *)
  var flatness: CGFloat

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}

/*!
 @class SCNShape
 @abstract SCNShape represents a 2D shape (cubic Bezier spline) than can be extruded.
 */
@available(OSX 10.9, *)
enum SCNChamferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Both
  case Front
  case Back
}
@available(OSX 10.9, *)
class SCNShape : SCNGeometry {

  /*!
   @method shapeWithPath:extrusionDepth:
   @abstract Creates and returns a 3D representation of the given shape with the given extrusion depth.
   @param path The cubic Bezier spline to extrude.
   @param extrusionDepth The extrusion depth.
   */
  convenience init(path: NSBezierPath?, extrusionDepth: CGFloat)

  /*!
   @property path
   @abstract The path defining the shape to be rendered.
   @discussion The path defines the outline of the shape. The path is filled using the even-odd rule. If the path is self-intersecting, the behavior is undefined.
   */
  @NSCopying var path: NSBezierPath?

  /*!
   @property extrusionDepth
   @abstract The extrusion depth. Animatable.
   @discussion If the value is 0, we get a mono-sided, 2D version of the shape.
   */
  var extrusionDepth: CGFloat

  /*!
   @property chamferMode
   @abstract The sides of the text that are chamfered.
   @discussion The default value is SCNChamferModeBoth.
   */
  var chamferMode: SCNChamferMode

  /*!
   @property chamferRadius
   @abstract The chamfer radius. Animatable.
   @discussion Values are clamped to the range [0, extrusionDepth / 2]. The default value is 0.
   */
  var chamferRadius: CGFloat

  /*!
   @property chamferProfile
   @abstract Describes the profile used to when "chamferRadius" is not nil. When "chamferProfile" is nil we fallback on a path representing a quadrant.
   @discussion The profile should be a 2D curve beginning at (0,1) and ending at (1,0). The "flatness" property is also used to flatten this path. The default value is nil.
   */
  @NSCopying var chamferProfile: NSBezierPath?

  /*! 
   @method geometryWithSources:elements:
   @abstract Creates and returns a new geometry built from geometry sources and geometry elements.
   @param sources An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
   @param elements An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
   @discussion A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
  */
  convenience init(sources: [SCNGeometrySource], elements: [SCNGeometryElement])
  init()
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  convenience init(MDLMesh mdlMesh: MDLMesh)
}
@available(OSX 10.10, *)
let SCNParticlePropertyPosition: String
@available(OSX 10.10, *)
let SCNParticlePropertyAngle: String
@available(OSX 10.10, *)
let SCNParticlePropertyRotationAxis: String
@available(OSX 10.10, *)
let SCNParticlePropertyVelocity: String
@available(OSX 10.10, *)
let SCNParticlePropertyAngularVelocity: String
@available(OSX 10.10, *)
let SCNParticlePropertyLife: String
@available(OSX 10.10, *)
let SCNParticlePropertyColor: String
@available(OSX 10.10, *)
let SCNParticlePropertyOpacity: String
@available(OSX 10.10, *)
let SCNParticlePropertySize: String
@available(OSX 10.10, *)
let SCNParticlePropertyFrame: String
@available(OSX 10.10, *)
let SCNParticlePropertyFrameRate: String
@available(OSX 10.10, *)
let SCNParticlePropertyBounce: String
@available(OSX 10.10, *)
let SCNParticlePropertyCharge: String
@available(OSX 10.10, *)
let SCNParticlePropertyFriction: String
@available(OSX 10.10, *)
let SCNParticlePropertyContactPoint: String
@available(OSX 10.10, *)
let SCNParticlePropertyContactNormal: String

/*!
 @typedef SCNParticleEventBlock
 @param data array of particle properties data stripes, ordered by the given NSArray of properties name in [- handleEvent:forProperties:withBlock:]
 @param dataStride array of particle properties data stripes stride, with the same ordering than data.
 @param indices optional array of count indices referencing the particles affected by the event. Only SCNParticleEventDeath and SCNParticleEventCollision provide this array. For SCNParticleEventBirth the indices are implicitely [0,1,2,..,count-1]
 @param count number of particles affected by the event
 @discussion This is a small example of usage of an event handling:
 [particleSystem handleEvent:SCNParticleEventCollision forProperties:@[SCNParticlePropertyAngle, SCNParticlePropertyRotationAxis, SCNParticlePropertyContactNormal] withBlock:^(void **data, size_t *dataStride, uint32_t *indices, NSInteger count) {
    for (NSInteger i = 0; i < count; ++i) {
        // SCNParticlePropertyAngle (float)
        float *angle = (float *)((char *)data[0] + dataStride[0] * indices[i]);
        // SCNParticlePropertyRotationAxis (float3)
        float *axis = (float *)((char *)data[1] + dataStride[1] * indices[i]);
        // SCNParticlePropertyContactNormal (float3)
        float *colNrm = (float *)((char *)data[2] + dataStride[2] * indices[i]);
     
        // rotate the particle (angle[0] and axis[0..2] based on the collision normal (colNrm[0..2])
        // ...
     }
 }];
*/
typealias SCNParticleEventBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, UnsafeMutablePointer<UInt32>, Int) -> Void

/*!
 @typedef SCNParticleModifierBlock
 @param data array of particle properties data stripes, ordered by the given NSArray of properties name in [- handleEvent:forProperties:withBlock:]
 @param dataStride array of particle properties data stripes stride, with the same ordering than data.
 @param start index of the first particle
 @param end index of the last particle
 @param deltaTime duration of the simulation step, in seconds.
 @discussion This is a small example of usage of a modifier block:
 [self.particleSystem addModifierForProperties:@[SCNParticlePropertyPosition, SCNParticlePropertyVelocity] atStage:SCNParticleModifierStagePreCollision withBlock:^(void **data, size_t *dataStride, NSInteger start, NSInteger end, float deltaTime) {
     for (NSInteger i = start; i < end; ++i) {
        // SCNParticlePropertyPosition (float3)
        float *pos = (float *)((char *)data[0] + dataStride[0] * i);
        // SCNParticlePropertyVelocity (float3)
        float *vel = (float *)((char *)data[1] + dataStride[1] * i);
        
         // change velocity and/or position
         // ...
     }
 }];
*/
typealias SCNParticleModifierBlock = (UnsafeMutablePointer<UnsafeMutablePointer<Void>>, UnsafeMutablePointer<Int>, Int, Int, Float) -> Void
@available(OSX 10.10, *)
enum SCNParticleSortingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ProjectedDepth
  case Distance
  case OldestFirst
  case YoungestFirst
}
@available(OSX 10.10, *)
enum SCNParticleBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Additive
  case Subtract
  case Multiply
  case Screen
  case Alpha
  case Replace
}
@available(OSX 10.10, *)
enum SCNParticleOrientationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BillboardScreenAligned
  case BillboardViewAligned
  case Free
  case BillboardYAligned
}
@available(OSX 10.10, *)
enum SCNParticleBirthLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Surface
  case Volume
  case Vertex
}
@available(OSX 10.10, *)
enum SCNParticleBirthDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Constant
  case SurfaceNormal
  case Random
}
@available(OSX 10.10, *)
enum SCNParticleImageSequenceAnimationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Repeat
  case Clamp
  case AutoReverse
}
@available(OSX 10.10, *)
enum SCNParticleInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case OverLife
  case OverDistance
  case OverOtherProperty
}
@available(OSX 10.10, *)
enum SCNParticleModifierStage : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PreDynamics
  case PostDynamics
  case PreCollision
  case PostCollision
}
@available(OSX 10.10, *)
enum SCNParticleEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Birth
  case Death
  case Collision
}

/*!
 @class SCNParticlePropertyController
 @abstract The SCNParticlePropertyController class controls the variation over time or over distance of a particle property.
 */
@available(OSX 10.10, *)
class SCNParticlePropertyController : NSObject, NSSecureCoding, NSCopying {
  convenience init(animation: CAAnimation)
  var animation: CAAnimation
  var inputMode: SCNParticleInputMode
  var inputScale: CGFloat
  var inputBias: CGFloat
  weak var inputOrigin: @sil_weak SCNNode?
  var inputProperty: String?
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
 @class SCNParticleSystem
 @abstract The SCNParticleSystem class represents a system of particles.
 */
@available(OSX 10.10, *)
class SCNParticleSystem : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  convenience init?(named name: String, inDirectory directory: String?)
  var emissionDuration: CGFloat
  var emissionDurationVariation: CGFloat
  var idleDuration: CGFloat
  var idleDurationVariation: CGFloat
  var loops: Bool
  var birthRate: CGFloat
  var birthRateVariation: CGFloat
  var warmupDuration: CGFloat
  var emitterShape: SCNGeometry?
  var birthLocation: SCNParticleBirthLocation
  var birthDirection: SCNParticleBirthDirection
  var spreadingAngle: CGFloat
  var emittingDirection: SCNVector3
  var acceleration: SCNVector3
  var local: Bool
  var particleAngle: CGFloat
  var particleAngleVariation: CGFloat
  var particleVelocity: CGFloat
  var particleVelocityVariation: CGFloat
  var particleAngularVelocity: CGFloat
  var particleAngularVelocityVariation: CGFloat
  var particleLifeSpan: CGFloat
  var particleLifeSpanVariation: CGFloat
  var systemSpawnedOnDying: SCNParticleSystem?
  var systemSpawnedOnCollision: SCNParticleSystem?
  var systemSpawnedOnLiving: SCNParticleSystem?
  var particleImage: AnyObject?
  var imageSequenceColumnCount: Int
  var imageSequenceRowCount: Int
  var imageSequenceInitialFrame: CGFloat
  var imageSequenceInitialFrameVariation: CGFloat
  var imageSequenceFrameRate: CGFloat
  var imageSequenceFrameRateVariation: CGFloat
  var imageSequenceAnimationMode: SCNParticleImageSequenceAnimationMode
  var particleColor: NSColor
  var particleColorVariation: SCNVector4
  var particleSize: CGFloat
  var particleSizeVariation: CGFloat
  var blendMode: SCNParticleBlendMode
  var blackPassEnabled: Bool
  var orientationMode: SCNParticleOrientationMode
  var sortingMode: SCNParticleSortingMode
  var lightingEnabled: Bool
  var affectedByGravity: Bool
  var affectedByPhysicsFields: Bool
  var particleDiesOnCollision: Bool
  var colliderNodes: [SCNNode]?
  var particleMass: CGFloat
  var particleMassVariation: CGFloat
  var particleBounce: CGFloat
  var particleBounceVariation: CGFloat
  var particleFriction: CGFloat
  var particleFrictionVariation: CGFloat
  var particleCharge: CGFloat
  var particleChargeVariation: CGFloat
  var dampingFactor: CGFloat
  var speedFactor: CGFloat
  var stretchFactor: CGFloat
  var fresnelExponent: CGFloat
  var propertyControllers: [String : SCNParticlePropertyController]?
  func reset()
  func handleEvent(event: SCNParticleEvent, forProperties properties: [String], withBlock block: SCNParticleEventBlock)
  func addModifierForProperties(properties: [String], atStage stage: SCNParticleModifierStage, withBlock block: SCNParticleModifierBlock)
  func removeModifiersOfStage(stage: SCNParticleModifierStage)
  func removeAllModifiers()
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.10, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.10, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.10, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.10, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
}
extension SCNNode {
  @available(OSX 10.10, *)
  func addParticleSystem(system: SCNParticleSystem)
  @available(OSX 10.10, *)
  func removeAllParticleSystems()
  @available(OSX 10.10, *)
  func removeParticleSystem(system: SCNParticleSystem)
  @available(OSX 10.10, *)
  var particleSystems: [SCNParticleSystem]? { get }
}
extension SCNScene {
  @available(OSX 10.10, *)
  func addParticleSystem(system: SCNParticleSystem, withTransform transform: SCNMatrix4)
  @available(OSX 10.10, *)
  func removeAllParticleSystems()
  @available(OSX 10.10, *)
  func removeParticleSystem(system: SCNParticleSystem)
  @available(OSX 10.10, *)
  var particleSystems: [SCNParticleSystem]? { get }
}

/*!
 @class SCNPhysicsBehavior
 @abstract SCNPhysicsBehavior is an abstract class that represents a behavior in the physics world.
 */
@available(OSX 10.10, *)
class SCNPhysicsBehavior : NSObject, NSSecureCoding {
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNPhysicsHingeJoint
 @abstract SCNPhysicsHingeJoint makes two bodies to move like they are connected by a hinge. It is for example suitable for doors, chains...
 */
@available(OSX 10.10, *)
class SCNPhysicsHingeJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNPhysicsBallSocketJoint
 @abstract SCNPhysicsBallSocketJoint makes two bodies to move like they are connected by a ball-and-socket joint (i.e it allows rotations around all axes).
 */
@available(OSX 10.10, *)
class SCNPhysicsBallSocketJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, anchorA: SCNVector3, bodyB: SCNPhysicsBody, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var anchorB: SCNVector3
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNPhysicsSliderJoint
 @abstract SCNPhysicsSliderJoint provides a linear sliding joint between two bodies.
 */
@available(OSX 10.10, *)
class SCNPhysicsSliderJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  var minimumLinearLimit: CGFloat
  var maximumLinearLimit: CGFloat
  var minimumAngularLimit: CGFloat
  var maximumAngularLimit: CGFloat
  var motorTargetLinearVelocity: CGFloat
  var motorMaximumForce: CGFloat
  var motorTargetAngularVelocity: CGFloat
  var motorMaximumTorque: CGFloat
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNPhysicsVehicleWheel
 @abstract SCNPhysicsVehicleWheel represents a wheel that can be attached to a SCNPhysicsVehicle instance.
 */
@available(OSX 10.10, *)
class SCNPhysicsVehicleWheel : NSObject, NSCopying, NSSecureCoding {
  convenience init(node: SCNNode)
  var node: SCNNode { get }
  var suspensionStiffness: CGFloat
  var suspensionCompression: CGFloat
  var suspensionDamping: CGFloat
  var maximumSuspensionTravel: CGFloat
  var frictionSlip: CGFloat
  var maximumSuspensionForce: CGFloat
  var connectionPosition: SCNVector3
  var steeringAxis: SCNVector3
  var axle: SCNVector3
  var radius: CGFloat
  var suspensionRestLength: CGFloat
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNPhysicsVehicle
 @abstract SCNPhysicsVehicle provides a vehicle behavior.
 */
@available(OSX 10.10, *)
class SCNPhysicsVehicle : SCNPhysicsBehavior {
  convenience init(chassisBody: SCNPhysicsBody, wheels: [SCNPhysicsVehicleWheel])
  var speedInKilometersPerHour: CGFloat { get }
  var wheels: [SCNPhysicsVehicleWheel] { get }
  var chassisBody: SCNPhysicsBody { get }
  func applyEngineForce(value: CGFloat, forWheelAtIndex index: Int)
  func setSteeringAngle(value: CGFloat, forWheelAtIndex index: Int)
  func applyBrakingForce(value: CGFloat, forWheelAtIndex index: Int)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
enum SCNPhysicsBodyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Static
  case Dynamic
  case Kinematic
}
@available(OSX 10.10, *)
struct SCNPhysicsCollisionCategory : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Default: SCNPhysicsCollisionCategory { get }
  static var Static: SCNPhysicsCollisionCategory { get }
  static var All: SCNPhysicsCollisionCategory { get }
}

/*!
 @class SCNPhysicsBody
 @abstract The SCNPhysicsBody class describes the physics properties (such as mass, friction...) of a node.
 */
@available(OSX 10.10, *)
class SCNPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  class func staticBody() -> Self
  class func dynamicBody() -> Self
  class func kinematicBody() -> Self
  convenience init(type: SCNPhysicsBodyType, shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  @available(OSX 10.11, *)
  var momentOfInertia: SCNVector3
  @available(OSX 10.11, *)
  var usesDefaultMomentOfInertia: Bool
  var charge: CGFloat
  var friction: CGFloat
  var restitution: CGFloat
  var rollingFriction: CGFloat
  var physicsShape: SCNPhysicsShape?
  var isResting: Bool { get }
  var allowsResting: Bool
  var velocity: SCNVector3
  var angularVelocity: SCNVector4
  var damping: CGFloat
  var angularDamping: CGFloat
  var velocityFactor: SCNVector3
  var angularVelocityFactor: SCNVector3
  var categoryBitMask: Int
  var collisionBitMask: Int
  @available(OSX 10.11, *)
  var contactTestBitMask: Int
  @available(OSX 10.11, *)
  var affectedByGravity: Bool
  func applyForce(direction: SCNVector3, impulse: Bool)
  func applyForce(direction: SCNVector3, atPosition position: SCNVector3, impulse: Bool)
  func applyTorque(torque: SCNVector4, impulse: Bool)
  func clearAllForces()
  func resetTransform()
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNPhysicsContact
 @abstract SCNPhysicsContact contains information about a physics contact.
 */
@available(OSX 10.10, *)
class SCNPhysicsContact : NSObject {
  var nodeA: SCNNode { get }
  var nodeB: SCNNode { get }
  var contactPoint: SCNVector3 { get }
  var contactNormal: SCNVector3 { get }
  var collisionImpulse: CGFloat { get }
  var penetrationDistance: CGFloat { get }
  init()
}

/*! 
 @enum SCNPhysicsFieldScope
 @abstract Specifies the domain of influence of a physics field.
 */
@available(OSX 10.10, *)
enum SCNPhysicsFieldScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InsideExtent
  case OutsideExtent
}

/*!
 @class SCNPhysicsField
 @abstract SCNPhysicsField is an abstract class that describes a force field that applies in the physics world.
 */
@available(OSX 10.10, *)
class SCNPhysicsField : NSObject, NSCopying, NSSecureCoding {
  var strength: CGFloat
  var falloffExponent: CGFloat
  var minimumDistance: CGFloat
  var active: Bool
  var exclusive: Bool
  var halfExtent: SCNVector3
  var usesEllipsoidalExtent: Bool
  var scope: SCNPhysicsFieldScope
  var offset: SCNVector3
  var direction: SCNVector3

  /*!
   @property categoryBitMask
   @abstract Determines the node categories that will be influenced by the receiver. Defaults to all bit set.
   */
  @available(OSX 10.10, *)
  var categoryBitMask: Int

  /**
   Slows an object proportionally to the object’s velocity.
   Use this to simulate effects such as friction from motion through the air.
   */
  class func dragField() -> SCNPhysicsField

  /**
   Applies a force tangential to the direction from the sample point to the field's position.
   The force will be CCW to the direction. Make the strength negative to apply force in the CW direction.
   Amount is proportional to distance from center and the object's mass.
   Use this to create effects such as tornadoes.
   */
  class func vortexField() -> SCNPhysicsField

  /**
   Applies a force in the direction of the origin of the field in local space. To repel objects, use a negative strength.
   The force is proportional to the distance from the field origin. Varies with the mass of the object according to F = ma
   The field node's rotation property can be used to orient the gravity in a particular direction.
   */
  class func radialGravityField() -> SCNPhysicsField

  /**
   Applies a force in the direction of the "direction" vector in the local space. To repel objects, use a negative strength.
   The force is the same everywhere in the field. Varies with the mass of the object according to F = ma
   The field node's rotation property can be used to orient the gravity in a particular direction.
   */
  class func linearGravityField() -> SCNPhysicsField

  /**
   A time varying differentiable Perlin simplex noise field. A smoothness of 0 means as noisy as possible.
   Use this to simulate such effects as fireflies, or snow.
   To freeze the noise in place, set animationSpeed to 0.0. Mass is ignored.
   You can change the "smoothness" and "animationSpeed" using KVC.
   */
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField

  /**
   Just like Noise, except the strength of the noise is proportional to the velocity of the object in the field.
   */
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField

  /**
   A Hooke’s law force - a force linearly proportional to distance from the center of the field. An object in this
   field will oscillate with a period proportional to the inverse of the mass.
   An example use is to keep objects confined to a particular region.
   */
  class func springField() -> SCNPhysicsField

  /**
   A force proportional to the charge on the object. An example use of this field is to make objects behavior differently
   from one another when they enter a region, or to make an object's behavior different than its mass based behavior
   This field models the first part of the Lorentz equation, F = qE
   */
  class func electricField() -> SCNPhysicsField

  /**
   A force proportional to the charge on the object and the object’s velocity. 
   An example use of this field is to make objects behavior differently from one another when they enter a region, or to make an object's behavior different than its mass based behavior
   This field models the second part of the Lorentz equation, F = qvB
   */
  class func magneticField() -> SCNPhysicsField

  /**
   A field force with a custom force evaluator.
   */
  class func customFieldWithEvaluationBlock(block: SCNFieldForceEvaluator) -> SCNPhysicsField
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, NSTimeInterval) -> SCNVector3
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeKey: String
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeBoundingBox: String
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeConvexHull: String
@available(OSX 10.10, *)
let SCNPhysicsShapeTypeConcavePolyhedron: String
@available(OSX 10.10, *)
let SCNPhysicsShapeKeepAsCompoundKey: String
@available(OSX 10.10, *)
let SCNPhysicsShapeScaleKey: String

/*!
 @class SCNPhysicsShape
 @abstract SCNPhysicsShape represents the shape of a physics body.
 */
@available(OSX 10.10, *)
class SCNPhysicsShape : NSObject, NSCopying, NSSecureCoding {
  convenience init(geometry: SCNGeometry, options: [String : AnyObject]?)
  convenience init(node: SCNNode, options: [String : AnyObject]?)
  convenience init(shapes: [SCNPhysicsShape], transforms: [NSValue]?)
  @available(OSX 10.11, *)
  var options: [String : AnyObject]? { get }
  @available(OSX 10.11, *)
  var sourceObject: AnyObject { get }
  @available(OSX 10.11, *)
  var transforms: [NSValue]? { get }
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
let SCNPhysicsTestCollisionBitMaskKey: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeKey: String
@available(OSX 10.10, *)
let SCNPhysicsTestBackfaceCullingKey: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeAny: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeClosest: String
@available(OSX 10.10, *)
let SCNPhysicsTestSearchModeAll: String

/*!
 @protocol SCNPhysicsContactDelegate
 @abstract The SCNPhysicsContactDelegate protocol is to be implemented by delegates that want to be notified when a contact occured.
 */
@available(OSX 10.10, *)
protocol SCNPhysicsContactDelegate : NSObjectProtocol {
  optional func physicsWorld(world: SCNPhysicsWorld, didBeginContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didUpdateContact contact: SCNPhysicsContact)
  optional func physicsWorld(world: SCNPhysicsWorld, didEndContact contact: SCNPhysicsContact)
}

/*!
 @class SCNPhysicsWorld
 @abstract The SCNPhysicsWorld class describes and allows to control the physics simulation of a 3d scene.
 @discussion The SCNPhysicsWorld class should not be allocated directly but retrieved from the SCNScene class using the physicsWorld property.
 */
@available(OSX 10.10, *)
class SCNPhysicsWorld : NSObject, NSSecureCoding {
  var gravity: SCNVector3
  var speed: CGFloat
  var timeStep: NSTimeInterval
  unowned(unsafe) var contactDelegate: @sil_unmanaged SCNPhysicsContactDelegate?
  func addBehavior(behavior: SCNPhysicsBehavior)
  func removeBehavior(behavior: SCNPhysicsBehavior)
  func removeAllBehaviors()
  var allBehaviors: [SCNPhysicsBehavior] { get }
  func rayTestWithSegmentFromPoint(origin: SCNVector3, toPoint dest: SCNVector3, options: [String : AnyObject]?) -> [SCNHitTestResult]
  func contactTestBetweenBody(bodyA: SCNPhysicsBody, andBody bodyB: SCNPhysicsBody, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func contactTestWithBody(body: SCNPhysicsBody, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func convexSweepTestWithShape(shape: SCNPhysicsShape, fromTransform from: SCNMatrix4, toTransform to: SCNMatrix4, options: [String : AnyObject]?) -> [SCNPhysicsContact]
  func updateCollisionPairs()
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*! @enum SCNReferenceLoadingPolicy
 @abstract Controls whenever to load the reference node.
 @discussion When the load policy is set to SCNReferenceLoadingPolicyImmediately, the reference is loaded immediately when the SCNReferenceNode is unarchived.
 When the load policy is set to SCNReferenceLoadingPolicyOnDemand the reference is never loaded until "load" is explicitly invoked.
 */
@available(OSX 10.11, *)
enum SCNReferenceLoadingPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Immediate
  case OnDemand
}

/*!
 @class SCNReferenceNode
 @abstract Node that references an external file.
 */
@available(OSX 10.11, *)
class SCNReferenceNode : SCNNode {

  /*!
   @method initWithURL:
   @abstract Creates a reference node with a url.
   */
  init?(URL referenceURL: NSURL)

  /*!
   @method initWithCoder:
   @abstract Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: NSCoder)

  /*!
   @property referenceURL
   @abstract Specifies the url to resolve.
   */
  @NSCopying var referenceURL: NSURL

  /*!
   @property loadingPolicy
   @abstract Specifies when to load the reference. see SCNReferenceLoadingPolicy above. Defaults to SCNReferenceLoadingPolicyImmediately.
   */
  var loadingPolicy: SCNReferenceLoadingPolicy

  /*!
   @method load
   @abstract Force the reference to be loaded if it hasn't been loaded already. The resolved nodes will be added
   as child nodes of the receiver.
   */
  func load()

  /*!
   @method unload
   @abstract Remove the child nodes and mark as unloaded.
   */
  func unload()

  /*!
   @property loaded
   @abstract Indicates whether the referenced URL has been loaded.
   */
  var loaded: Bool { get }
  convenience init()
  @available(OSX 10.11, *)
  convenience init(MDLObject mdlObject: MDLObject)
}

/*! @class SCNRenderer
	@abstract SCNRenderer lets you use the SceneKit renderer in an OpenGL context or Metal render pass descriptor of your own.
 */
@available(OSX 10.8, *)
class SCNRenderer : NSObject, SCNSceneRenderer, SCNTechniqueSupport {

  /*! 
   @method rendererWithContext:options:
   @abstract Creates a new renderer object.
   @param context The context to render into.
   @param options An optional dictionary for future extensions.
   */
  convenience init(context: CGLContextObj, options: [NSObject : AnyObject]?)

  /*!
   @method rendererWithDevice:options:
   @abstract Creates a new renderer object that renders using Metal.
   @param device The metal device to use. Pass nil to let SceneKit choose a default device.
   @param options An optional dictionary for future extensions.
   */
  @available(OSX 10.11, *)
  convenience init(device: MTLDevice?, options: [NSObject : AnyObject]?)

  /*! 
   @property scene
   @abstract Specifies the scene of the receiver
   */
  var scene: SCNScene?

  /*!
   @method renderAtTime:
   @abstract renders the receiver's scene at the specified time (system time).
   @discussion This method only work if the receiver was allocated with an OpenGL context. Use renderAtTime:withEncoder:pass:commandQueue: to render with Metal.
   */
  @available(OSX 10.10, *)
  func renderAtTime(time: CFTimeInterval)

  /*!
   @method renderAtTime:viewport:commandBuffer:passDescriptor:
   @abstract renders the receiver's scene at the specified time (system time) viewport, metal command buffer and pass descriptor.
   @discussion Use this method to render using Metal.
   */
  @available(OSX 10.11, *)
  func renderAtTime(time: CFTimeInterval, viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)

  /*!
   @property nextFrameTime
   @abstract Returns the time at which the next update should happen. If infinite no update needs to be scheduled yet. If the current frame time, a continuous animation is running and an update should be scheduled after a "natural" delay.
   */
  @available(OSX 10.10, *)
  var nextFrameTime: CFTimeInterval { get }

  /*!
   @method render
   @abstract renders the receiver's scene at the current system time.
   @discussion This method only work if the receiver was allocated with an OpenGL context and it is deprecated (use renderAtIme: instead). Use renderAtTime:withEncoder:pass:commandQueue: to render with Metal.
   */
  @available(OSX, introduced=10.8, deprecated=10.11)
  func render()
  init()

  /*!
   @property sceneTime
   @abstract Specifies the current "scene time" to display the scene.
   @discussion The scene time only affect scene time based animations (see SCNAnimation.h "usesSceneTimeBase" and SCNSceneSource.h "SCNSceneSourceAnimationImportPolicyKey" for how to create scene time based animations). Scene time based animations and this property are typically used by tools and viewer to ease seeking in time while previewing a scene.
   */
  @available(OSX 10.10, *)
  var sceneTime: NSTimeInterval

  /*! 
   @property delegate
   @abstract Specifies the renderer delegate.
   */
  @available(OSX 10.8, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?

  /*!
   @method hitTest:options:
   @abstract Returns an array of SCNHitTestResult for each node that contains a specified point.
   @param point A point in the coordinate system of the receiver.
   @param options Optional parameters (see the "Hit test options" group for the available options).
   */
  @available(OSX 10.8, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]

  /*!
   @method isNodeInsideFrustum:withPointOfView:
   @abstract Test whether node is visible from the specified point of view.
   @param node The node to test the visibility of.
   @param pointOfView The point of view used to test the visibility.
   @discussion Return YES if the node is inside or intersects the clipping planes of the point of view. This method doesn't test if 'node' is occluded by another node.
   */
  @available(OSX 10.9, *)
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool

  /*!
   @method nodesInsideFrustumWithPointOfView:
   @abstract Returns an array containing the nodes visible from the specified point of view.
   @param pointOfView The point of view used to test the visibility.
   @discussion Returns an array of all the nodes that are inside or intersects the clipping planes of the point of view.
   */
  @available(OSX 10.11, *)
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]

  /*!
   @method projectPoint
   @abstract Projects a point in the world coordinate system using the receiver's current point of view and viewport.
   @param point The world position to be projected.
   @discussion A point projected from the near (resp. far) clip plane will have a z component of 0 (resp. 1).
   */
  @available(OSX 10.9, *)
  func projectPoint(point: SCNVector3) -> SCNVector3

  /*!
   @method unprojectPoint
   @abstract Unprojects a screenspace 2D point with depth info using the receiver's current point of view and viewport.
   @param point The screenspace position to be unprojected.
   @discussion A point whose z component is 0 (resp. 1) is unprojected on the near (resp. far) clip plane.
   */
  @available(OSX 10.9, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3

  /*! 
   @property playing
   @abstract Returns YES if the scene is playing, NO otherwise.
   */
  @available(OSX 10.8, *)
  var playing: Bool

  /*! 
   @property loops
   @abstract Indicates whether the receiver restarts playback when it reaches the end of its content. Default: YES.
   @discussion YES when the receiver restarts playback when it finishes, NO otherwise.
   */
  @available(OSX 10.8, *)
  var loops: Bool

  /*! 
   @property pointOfView
   @abstract Specifies the point of view used to render the scene. 
   @discussion A point of view must have either a camera or a spot light attached.
   */
  @available(OSX 10.8, *)
  var pointOfView: SCNNode?

  /*! 
   @property autoenablesDefaultLighting
   @abstract Specifies whether the receiver should automatically light up scenes that have no light source. The default is NO.
   @discussion When enabled, a diffuse light is automatically added and placed while rendering scenes that have no light or only ambient lights.
   */
  @available(OSX 10.8, *)
  var autoenablesDefaultLighting: Bool

  /*! 
   @property jitteringEnabled
   @abstract Specifies whether the receiver should jitter the rendered scene to reduce aliasing artifacts. 
   @discussion When enabled, the jittering is performed asynchronously and automatically by SCNView and SCNLayer. It is done synchronously by SCNRenderer.
   */
  @available(OSX 10.8, *)
  var jitteringEnabled: Bool

  /*!
   @method prepareObject:shouldAbortBlock:
   @abstract Prepare the specified object for drawing.
   @param object The object to prepare. It can be an instance of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param block This block will be called repeatedly while the object is prepared. Return YES if you want the operation to abort.
   @discussion Returns YES if the object was prepared successfully, NO if it was canceled. This method may be triggered from a secondary thread. This method is observable using NSProgress.
   */
  @available(OSX 10.9, *)
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool

  /*!
   @method prepareObjects:withCompletionHandler:
   @abstract Prepare the specified objects for drawing on the background.
   @param objects The objects to prepare. It can be one or more instances of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param completionHandler This block will be called when all objects has been prepared, or on failure.
   @discussion This method is observable using NSProgress.
   */
  @available(OSX 10.10, *)
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)

  /*!
   @property showsStatistics
   @abstract Determines whether the receiver should display statistics info like FPS. Defaults to NO.
   @discussion  When set to YES, statistics are displayed in a overlay on top of the rendered scene.
   */
  @available(OSX 10.9, *)
  var showsStatistics: Bool

  /*!
   @property debugOptions
   @abstract Specifies the debug options of the receiver. Defaults to SCNDebugOptionNone.
   */
  @available(OSX 10.11, *)
  var debugOptions: SCNDebugOptions

  /*!
   @property renderingAPI
   @abstract Specifies the rendering API associated to the receiver.
   @discussion This is the rendering API effectively used by the receiver. You can specify a preferred rendering API when initializing a view programmatically (see SCNPreferredRenderingAPI in SCNSceneRenderer.h) or using Interface Builder's SCNView inspector.
   */
  @available(OSX 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }

  /*!
   @property context
   @abstract A Core OpenGL render context that is used as the render target (a CGLContextObj on OS X, an EAGLContext on iOS).
   */
  @available(OSX 10.8, *)
  var context: UnsafeMutablePointer<Void> { get }

  /*!
   @property currentRenderCommandEncoder
   @abstract The current render command encoder if any. This property is only valid within the SCNSceneRendererDelegate methods and when renderering with Metal. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }

  /*!
   @property device
   @abstract The metal device of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var device: MTLDevice? { get }

  /*!
   @property colorPixelFormat
   @abstract The pixel format of the color attachment 0 of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var colorPixelFormat: MTLPixelFormat { get }

  /*!
   @property depthPixelFormat
   @abstract The pixel format of the depth attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var depthPixelFormat: MTLPixelFormat { get }

  /*!
   @property stencilPixelFormat
   @abstract The pixel format of the stencil attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var stencilPixelFormat: MTLPixelFormat { get }

  /*!
   @property commandQueue
   @abstract The command queue of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var commandQueue: MTLCommandQueue? { get }

  /*!
   @property audioListener
   @abstract Use this property to set the audio node to use as the listener position and orientation when rendering positional audio for this scene. The default is nil which means that the current point of view will be used dynamically.
   */
  @available(OSX 10.11, *)
  var audioListener: SCNNode?

  /*!
   @property currentTime
   @abstract Specifies the current time to display the scene.
   @discussion Deprecated, use "sceneTime" instead.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  var currentTime: NSTimeInterval

  /*!
   @property technique
   @abstract Specifies the technique of the receiver. Defaults to nil.
   */
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
}

/*!
 @typedef SCNSceneSourceStatusHandler
 @discussion Signature of a block that will be called repeatedly while the scene is being exported.
 @param totalProgress is a floating-point number between 0 and 1. 0 means the loading process has just started and 1 that it is complete. 
 @param error Will contain information about the failure if any.
 @param stop Set *stop to YES if you want to abort the operation.
 */
typealias SCNSceneExportProgressHandler = (Float, NSError?, UnsafeMutablePointer<ObjCBool>) -> Void

/*! @constant SCNSceneExportDestinationURL
 @abstract Specifies the final destination (as a NSURL) of the scene being exported.
 @discussion The destination URL is required if the scene is exported to a temporary directory and then moved to a final destination. This enables the exported document to get correct relative paths to referenced images.
 */
@available(OSX 10.9, *)
let SCNSceneExportDestinationURL: String

/*! A floating point value, encapsulated in a NSNumber, containing the start time of the scene. */
let SCNSceneStartTimeAttributeKey: String

/*! A floating point value, encapsulated in a NSNumber, containing the end time of the scene. */
let SCNSceneEndTimeAttributeKey: String

/*! A floating point value, encapsulated in a NSNumber, containing the framerate of the scene. */
let SCNSceneFrameRateAttributeKey: String

/*! A vector3 value, encapsulated in a NSValue, containing the up axis of the scene. This is just for information, setting the up axis as no effect */
@available(OSX 10.10, *)
let SCNSceneUpAxisAttributeKey: String

/*!
 @class SCNScene
 @abstract SCNScene is the class that describes a 3d scene. It encapsulates a node hierarchy.
 */
@available(OSX 10.8, *)
class SCNScene : NSObject, NSSecureCoding {

  /*! 
   @property root
   @abstract Specifies the root node of the node hierarchy.
   @discussion Note that we have only one root node, whereas some file formats might have many nodes
   at the root of their hierarchies. The root node(s) of the imported files will therefore be children
   of the SCNScene's root node.
   */
  var rootNode: SCNNode { get }

  /*!
   @property physicsWorld
   @abstract Specifies the physics world of the receiver.
   @discussion Every scene automatically creates a physics world object to simulate physics on nodes in the scene. You use this property to access the scene’s global physics properties, such as gravity. To add physics to a particular node, see physicsBody.
   */
  @available(OSX 10.10, *)
  var physicsWorld: SCNPhysicsWorld { get }

  /*!
   @method attributeForKey:
   @abstract Retrieves a scene attribute.
   @discussion The available keys are listed in the "Scene attributes" group.
   @param key An NSString object that specifies the attribute to be read
   */
  func attributeForKey(key: String) -> AnyObject?

  /*! 
   @method setAttribute:forKey:
   @abstract Sets a scene attribute
   @discussion The available keys are listed in the "Scene attributes" group.
   @param attribute An object that specifies the value of the attribute to be written.
   @param key An NSString object that specifies the attribute to be written
   */
  func setAttribute(attribute: AnyObject?, forKey key: String)

  /*!
   @property background
   @abstract Specifies the background of the receiver.
   @discussion The background is rendered before the rest of the scene. The background can be rendered as a skybox by setting a NSArray of six images to its contents (see SCNMaterialProperty.h). Setting a color will have no effect (use SCNView's backgroundColor instead).
   */
  @available(OSX 10.9, *)
  var background: SCNMaterialProperty { get }

  /*!
   @method sceneNamed:
   @abstract Creates and returns a scene associated with the specified filename.
   @param name The name of the file. The method looks for a file with the specified name in the application’s main bundle.
   @discussion This method initializes with no options and does not check for errors. The resulting object is not cached.
   */
  @available(OSX 10.9, *)
  convenience init?(named name: String)

  /*!
   @method sceneNamed:options:
   @abstract Creates and returns a scene associated with the specified filename.
   @param name The name of the file. The method looks for a file with the specified name in the application’s main bundle.
   @param directory The name of the bundle sub-directory to search into.
   @param options An options dictionary. The relevant keys are documented in the SCNSceneSource class.
   @discussion This method initializes with no options and does not check for errors. The resulting object is not cached.
   */
  @available(OSX 10.10, *)
  convenience init?(named name: String, inDirectory directory: String?, options: [String : AnyObject]?)

  /*!
   @method sceneWithURL:options:error:
   @abstract Creates and returns a scene from the specified URL.
   @param url The URL to the 3D file.
   @param options An options dictionary. The relevant keys are documented in the SCNSceneSource class.
   @param error A NSError object passed by reference to get more information about the error when a nil is returned.
   @discussion This method is here for convenience. It is equivalent to initializing a SCNSceneSource with the specified
   url and options, and asking it for its scene with the same options.
   */
  convenience init(URL url: NSURL, options: [String : AnyObject]?) throws

  /*!
   @method writeToURL:options:delegate:progressHandler:
   @abstract write the scene to the specified url.
   @param url the destination url to write the scene to.
   @param options A dictionary of options. The valid keys are described in the "Scene writing options" section.
   @param delegate an optional delegate to manage external references such as images.
   @param progressHandler an optional block to handle the progress of the operation.
   @return Returns YES if the operation succeeded, NO otherwise. Errors checking can be done via the "error"
   parameter of the 'progressHandler'.
   @discussion Currently only exporting to .dae files is supported.
   */
  @available(OSX 10.9, *)
  func writeToURL(url: NSURL, options: [String : AnyObject]?, delegate: SCNSceneExportDelegate?, progressHandler: SCNSceneExportProgressHandler?) -> Bool

  /*!
   @property fogStartDistance
   @abstract Specifies the receiver's fog start distance. Animatable. Defaults to 0.
   */
  @available(OSX 10.10, *)
  var fogStartDistance: CGFloat

  /*!
   @property fogEndDistance
   @abstract Specifies the receiver's fog end distance. Animatable. Defaults to 0.
   */
  @available(OSX 10.10, *)
  var fogEndDistance: CGFloat

  /*!
   @property fogDensityExponent
   @abstract Specifies the receiver's fog power exponent. Animatable. Defaults to 1.
   @discussion Controls the attenuation between the start and end fog distances. 0 means a constant fog, 1 a linear fog and 2 a quadratic fog, but any positive value will work.
   */
  @available(OSX 10.10, *)
  var fogDensityExponent: CGFloat

  /*!
   @property fogColor
   @abstract Specifies the receiver's fog color (NSColor or CGColorRef). Animatable. Defaults to white.
   @discussion The initial value is a NSColor.
   */
  @available(OSX 10.10, *)
  var fogColor: AnyObject

  /*!
   @property paused
   @abstract Controls whether or not the scene is paused. Defaults to NO.
   @discussion Pausing a scene will pause animations, actions, particles and physics.
   */
  @available(OSX 10.10, *)
  var paused: Bool
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNSceneExportDelegate : NSObjectProtocol {

  /*!
   @method writeImage:withSceneDocumentURL:originalImageURL:
   @abstract Invoked on the delegate to write the referenced image and return the destination url.
   @param image The image to write.
   @param documentURL The url where the scene is currently exported to.
   @param originalImageURL The original url for the image. May be nil if the image was not previously loaded from a url.
   @return The delegate must returns the url of the image that was exported or nil if it didn't export any image. If the returned value is nil, the image will be exported to a default destination in a default format.
   */
  @available(OSX 10.9, *)
  optional func writeImage(image: NSImage, withSceneDocumentURL documentURL: NSURL, originalImageURL: NSURL?) -> NSURL?
}

/*! If set to YES, returns the first object found. This object is not necessarily the nearest. Defaults to NO. */
let SCNHitTestFirstFoundOnlyKey: String

/*! Determines whether the results should be sorted. If set to YES sorts nearest objects first. Defaults to YES. */
let SCNHitTestSortResultsKey: String

/*! If set to YES ignores the objects clipped by the zNear/zFar range of the current point of view. Defaults to YES. */
let SCNHitTestClipToZRangeKey: String

/*! If set to YES ignores the faces not facing to the camera. Defaults to YES. */
let SCNHitTestBackFaceCullingKey: String

/*!  If set to YES only tests the bounding boxes of the 3D objects. Defaults to NO. */
let SCNHitTestBoundingBoxOnlyKey: String

/*! Determines whether the child nodes are ignored. Defaults to NO. */
let SCNHitTestIgnoreChildNodesKey: String

/*! Specifies the root node to use for the hit test. Defaults to the root node of the scene. */
let SCNHitTestRootNodeKey: String

/*! Determines whether hidden nodes should be ignored. Defaults to YES. */
@available(OSX 10.9, *)
let SCNHitTestIgnoreHiddenNodesKey: String

/*!
 @enum SCNRenderingAPI
 @abstract rendering API used by SCNView and SCNRenderer.
 @discussion Default preferred API is SCNRenderingAPIMetal on iOS and it depends on the configuration on OS X.
 If Metal is requested but not available then it fallbacks to SCNRenderingAPIOpenGLES2 on iOS and to SCNRenderingAPIOpenGLLegacy on OS X.
 */
@available(OSX 10.11, *)
enum SCNRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Metal
  case OpenGLLegacy
  case OpenGLCore32
  case OpenGLCore41
}

/*!
 @enum SCNDebugOptions
 @abstract Debug options.
 */
@available(OSX 10.11, *)
struct SCNDebugOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: SCNDebugOptions { get }
  static var ShowPhysicsShapes: SCNDebugOptions { get }
  static var ShowBoundingBoxes: SCNDebugOptions { get }
  static var ShowLightInfluences: SCNDebugOptions { get }
  static var ShowLightExtents: SCNDebugOptions { get }
  static var ShowPhysicsFields: SCNDebugOptions { get }
  static var ShowWireframe: SCNDebugOptions { get }
}

/*! @class SCNHitTestResult
    @abstract Results returned by the hit test methods.
 */
@available(OSX 10.8, *)
class SCNHitTestResult : NSObject {

  /*! The node hit. */
  var node: SCNNode { get }

  /*! Index of the geometry hit. */
  var geometryIndex: Int { get }

  /*! Index of the face hit. */
  var faceIndex: Int { get }

  /*! Intersection point in the node local coordinate system. */
  var localCoordinates: SCNVector3 { get }

  /*! Intersection point in the world coordinate system. */
  var worldCoordinates: SCNVector3 { get }

  /*! Intersection normal in the node local coordinate system. */
  var localNormal: SCNVector3 { get }

  /*! Intersection normal in the world coordinate system. */
  var worldNormal: SCNVector3 { get }

  /*! World transform of the node intersected. */
  var modelTransform: SCNMatrix4 { get }

  /*! 
   @method textureCoordinatesWithMappingChannel:
   @abstract Returns the texture coordinates at the point of intersection, for a given mapping channel.
   @param channel The texture coordinates source index of the geometry to use. The channel must exists on the geometry otherwise {0,0} will be returned.
   */
  func textureCoordinatesWithMappingChannel(channel: Int) -> CGPoint
  init()
}

/*! @protocol SCNSceneRenderer
    @abstract Protocol adopted by the various renderers (SCNView, SCNLayer, SCNRenderer)
 */
protocol SCNSceneRenderer : NSObjectProtocol {

  /*!
   @property scene
   @abstract Specifies the scene of the receiver.
   */
  @available(OSX 10.8, *)
  var scene: SCNScene? { get set }

  /*!
   @property sceneTime
   @abstract Specifies the current "scene time" to display the scene.
   @discussion The scene time only affect scene time based animations (see SCNAnimation.h "usesSceneTimeBase" and SCNSceneSource.h "SCNSceneSourceAnimationImportPolicyKey" for how to create scene time based animations). Scene time based animations and this property are typically used by tools and viewer to ease seeking in time while previewing a scene.
   */
  @available(OSX 10.10, *)
  var sceneTime: NSTimeInterval { get set }

  /*! 
   @property delegate
   @abstract Specifies the renderer delegate.
   */
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate? { get set }

  /*!
   @method hitTest:options:
   @abstract Returns an array of SCNHitTestResult for each node that contains a specified point.
   @param point A point in the coordinate system of the receiver.
   @param options Optional parameters (see the "Hit test options" group for the available options).
   */
  @available(OSX 10.8, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]

  /*!
   @method isNodeInsideFrustum:withPointOfView:
   @abstract Test whether node is visible from the specified point of view.
   @param node The node to test the visibility of.
   @param pointOfView The point of view used to test the visibility.
   @discussion Return YES if the node is inside or intersects the clipping planes of the point of view. This method doesn't test if 'node' is occluded by another node.
   */
  @available(OSX 10.9, *)
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool

  /*!
   @method nodesInsideFrustumWithPointOfView:
   @abstract Returns an array containing the nodes visible from the specified point of view.
   @param pointOfView The point of view used to test the visibility.
   @discussion Returns an array of all the nodes that are inside or intersects the clipping planes of the point of view.
   */
  @available(OSX 10.11, *)
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]

  /*!
   @method projectPoint
   @abstract Projects a point in the world coordinate system using the receiver's current point of view and viewport.
   @param point The world position to be projected.
   @discussion A point projected from the near (resp. far) clip plane will have a z component of 0 (resp. 1).
   */
  @available(OSX 10.9, *)
  func projectPoint(point: SCNVector3) -> SCNVector3

  /*!
   @method unprojectPoint
   @abstract Unprojects a screenspace 2D point with depth info using the receiver's current point of view and viewport.
   @param point The screenspace position to be unprojected.
   @discussion A point whose z component is 0 (resp. 1) is unprojected on the near (resp. far) clip plane.
   */
  @available(OSX 10.9, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3

  /*! 
   @property playing
   @abstract Returns YES if the scene is playing, NO otherwise.
   */
  var playing: Bool { get set }

  /*! 
   @property loops
   @abstract Indicates whether the receiver restarts playback when it reaches the end of its content. Default: YES.
   @discussion YES when the receiver restarts playback when it finishes, NO otherwise.
   */
  var loops: Bool { get set }

  /*! 
   @property pointOfView
   @abstract Specifies the point of view used to render the scene. 
   @discussion A point of view must have either a camera or a spot light attached.
   */
  @available(OSX 10.8, *)
  var pointOfView: SCNNode? { get set }

  /*! 
   @property autoenablesDefaultLighting
   @abstract Specifies whether the receiver should automatically light up scenes that have no light source. The default is NO.
   @discussion When enabled, a diffuse light is automatically added and placed while rendering scenes that have no light or only ambient lights.
   */
  var autoenablesDefaultLighting: Bool { get set }

  /*! 
   @property jitteringEnabled
   @abstract Specifies whether the receiver should jitter the rendered scene to reduce aliasing artifacts. 
   @discussion When enabled, the jittering is performed asynchronously and automatically by SCNView and SCNLayer. It is done synchronously by SCNRenderer.
   */
  var jitteringEnabled: Bool { get set }

  /*!
   @method prepareObject:shouldAbortBlock:
   @abstract Prepare the specified object for drawing.
   @param object The object to prepare. It can be an instance of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param block This block will be called repeatedly while the object is prepared. Return YES if you want the operation to abort.
   @discussion Returns YES if the object was prepared successfully, NO if it was canceled. This method may be triggered from a secondary thread. This method is observable using NSProgress.
   */
  @available(OSX 10.9, *)
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool

  /*!
   @method prepareObjects:withCompletionHandler:
   @abstract Prepare the specified objects for drawing on the background.
   @param objects The objects to prepare. It can be one or more instances of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param completionHandler This block will be called when all objects has been prepared, or on failure.
   @discussion This method is observable using NSProgress.
   */
  @available(OSX 10.10, *)
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)

  /*!
   @property showsStatistics
   @abstract Determines whether the receiver should display statistics info like FPS. Defaults to NO.
   @discussion  When set to YES, statistics are displayed in a overlay on top of the rendered scene.
   */
  @available(OSX 10.9, *)
  var showsStatistics: Bool { get set }

  /*!
   @property debugOptions
   @abstract Specifies the debug options of the receiver. Defaults to SCNDebugOptionNone.
   */
  @available(OSX 10.11, *)
  var debugOptions: SCNDebugOptions { get set }

  /*!
   @property renderingAPI
   @abstract Specifies the rendering API associated to the receiver.
   @discussion This is the rendering API effectively used by the receiver. You can specify a preferred rendering API when initializing a view programmatically (see SCNPreferredRenderingAPI in SCNSceneRenderer.h) or using Interface Builder's SCNView inspector.
   */
  @available(OSX 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }

  /*!
   @property context
   @abstract A Core OpenGL render context that is used as the render target (a CGLContextObj on OS X, an EAGLContext on iOS).
   */
  var context: UnsafeMutablePointer<Void> { get }

  /*!
   @property currentRenderCommandEncoder
   @abstract The current render command encoder if any. This property is only valid within the SCNSceneRendererDelegate methods and when renderering with Metal. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }

  /*!
   @property device
   @abstract The metal device of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var device: MTLDevice? { get }

  /*!
   @property colorPixelFormat
   @abstract The pixel format of the color attachment 0 of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var colorPixelFormat: MTLPixelFormat { get }

  /*!
   @property depthPixelFormat
   @abstract The pixel format of the depth attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var depthPixelFormat: MTLPixelFormat { get }

  /*!
   @property stencilPixelFormat
   @abstract The pixel format of the stencil attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var stencilPixelFormat: MTLPixelFormat { get }

  /*!
   @property commandQueue
   @abstract The command queue of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var commandQueue: MTLCommandQueue? { get }

  /*!
   @property audioListener
   @abstract Use this property to set the audio node to use as the listener position and orientation when rendering positional audio for this scene. The default is nil which means that the current point of view will be used dynamically.
   */
  @available(OSX 10.11, *)
  var audioListener: SCNNode? { get set }

  /*!
   @property currentTime
   @abstract Specifies the current time to display the scene.
   @discussion Deprecated, use "sceneTime" instead.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  var currentTime: NSTimeInterval { get set }
}

/*!
 @protocol SCNSceneRendererDelegate
 @abstract Implement this protocol to perform operations at various times during the rendering
 */
protocol SCNSceneRendererDelegate : NSObjectProtocol {

  /*!
   @method renderer:updateAtTime:
   @abstract Implement this to perform per-frame game logic. Called exactly once per frame before any animation and actions are evaluated and any physics are simulated.
   @param aRenderer The renderer that will render the scene.
   @param time The time at which to update the scene.
   @discussion All modifications done within this method don't go through the transaction model, they are directly applied on the presentation tree.
   */
  @available(OSX 10.10, *)
  optional func renderer(renderer: SCNSceneRenderer, updateAtTime time: NSTimeInterval)

  /*!
   @method renderer:didApplyAnimationsAtTime:
   @abstract Invoked on the delegate once the scene renderer did apply the animations.
   @param aRenderer The renderer that did render the scene.
   @param time The time at which the animations were applied.
   @discussion All modifications done within this method don't go through the transaction model, they are directly applied on the presentation tree.
   */
  @available(OSX 10.10, *)
  optional func renderer(renderer: SCNSceneRenderer, didApplyAnimationsAtTime time: NSTimeInterval)

  /*!
   @method renderer:didSimulatePhysicsAtTime:
   @abstract Invoked on the delegate once the scene renderer did simulate the physics.
   @param aRenderer The renderer that did render the scene.
   @param time The time at which the physics were simulated.
   @discussion All modifications done within this method don't go through the transaction model, they are directly applied on the presentation tree.
   */
  @available(OSX 10.10, *)
  optional func renderer(renderer: SCNSceneRenderer, didSimulatePhysicsAtTime time: NSTimeInterval)

  /*!
   @method renderer:willRenderScene:atTime:
   @abstract Invoked on the delegate before the scene renderer renders the scene. At this point the openGL context and the destination framebuffer are bound.
   @param aRenderer The renderer that will render the scene.
   @param scene The scene to be rendered.
   @param time The time at which the scene is to be rendered.
   @discussion Starting in 10.10 all modifications done within this method don't go through the transaction model, they are directly applied on the presentation tree.
   */
  @available(OSX 10.8, *)
  optional func renderer(renderer: SCNSceneRenderer, willRenderScene scene: SCNScene, atTime time: NSTimeInterval)

  /*!
   @method renderer:didRenderScene:atTime:
   @abstract Invoked on the delegate once the scene renderer did render the scene.
   @param aRenderer The renderer that did render the scene.
   @param scene The rendered scene.
   @param time The time at which the scene was rendered.
   @discussion Starting in 10.10 all modifications done within this method don't go through the transaction model, they are directly applied on the presentation tree.
   */
  @available(OSX 10.8, *)
  optional func renderer(renderer: SCNSceneRenderer, didRenderScene scene: SCNScene, atTime time: NSTimeInterval)
}

/*! @group Scene source properties */
/*! File contributors. The values are dictionaries populated with keys documented in the "Contributor dictionary keys" group. */
let SCNSceneSourceAssetContributorsKey: String

/*! When the file was created. The value is a NSDate instance. */
let SCNSceneSourceAssetCreatedDateKey: String

/*! When the file was last modified. The value is a NSDate instance. */
let SCNSceneSourceAssetModifiedDateKey: String

/*! The up axis of the file. If the file is oriented Y-up, for example, then this is the string \@"0.0 1.0 0.0" */
let SCNSceneSourceAssetUpAxisKey: String

/*! The unit used in the file. The value is a dictionary populated with keys documented in the "Unit dictionary keys" group. */
let SCNSceneSourceAssetUnitKey: String

/*! @group Contributor dictionary keys */
/*! Authoring tool used to create the file. The corresponding value is an NSString. */
let SCNSceneSourceAssetAuthoringToolKey: String

/*! The file's author. The corresponding value is an NSString. */
let SCNSceneSourceAssetAuthorKey: String

/*! @group Unit dictionary keys */
/*! The name (NSString) of the unit */
let SCNSceneSourceAssetUnitNameKey: String

/*! A NSNumber encapsulating a floating-point value indicating how many meters the unit is. For example, if the name is \@"centimeter", then this will be 0.01. */
let SCNSceneSourceAssetUnitMeterKey: String

/*! @constant SCNSceneSourceCreateNormalsIfAbsentKey
	@abstract Enable to try to guess acceptable normals for the vertices if none are given in the file
    @discussion Use this with a boolean value encapsulated in a NSNumber. The default value is NO.
 */
let SCNSceneSourceCreateNormalsIfAbsentKey: String

/*!
 @constant SCNSceneSourceCheckConsistencyKey
 @abstract Pass YES in order to perform the document validation. 
 @discussion This option can be set in the options dictionary of the SCNScene and SCNSceneSource loading methods.
 The value for this option should be a boolean NSNumber. If its boolean value is YES (the default is NO),
 SceneKit will attempt to check the document for consistency.
 If the document doesn't pass the consistency check it is then not loaded and an error is returned.
 This is slower, but for security reasons it should be set to YES if you are not sure the files you load are valid and have not been tampered with. 
 */
let SCNSceneSourceCheckConsistencyKey: String

/*!
 @constant SCNSceneSourceFlattenSceneKey
 @abstract Pass YES to flatten the scene graph when possible.
 @discussion This option can be set in the options dictionary of the SCNScene and SCNSceneSource loading methods.
 The value for this option should be a boolean NSNumber. If its boolean value is YES (the default is NO),
 SceneKit will attempt to reduce the scene graph by merging the geometries.
 This option is suitable to preview a 3D scene efficiently and when manipulating the scene graph is not needed.
 */
let SCNSceneSourceFlattenSceneKey: String

/*!
 @constant SCNSceneSourceUseSafeModeKey
 @abstract Pass YES in order to enable the safe mode.
 @discussion This option can be set in the options dictionary of the SCNScene and SCNSceneSource loading methods.
 The value for this option should be a boolean NSNumber. If its boolean value is YES (the default is NO),
 SceneKit will forbid network accesses, prevent the loading of resources from arbitrary directories, and will not execute
 any code present in the loaded files.
 */
let SCNSceneSourceUseSafeModeKey: String

/*!
 @constant SCNSceneSourceAssetDirectoryURLsKey
 @abstract Pass an array of directory URLs where SceneKit should look for resources
 @discussion By default, SceneKit will look for the external resources it cannot find in the parent directory of the imported file.
 You can add additional directories by setting an array of URLs for this key when calling sceneWithOptions:error:.
 This is recommended if you want to construct your scene source from a data object, not from an URL,
 and need to load resources whose paths are not absolute.
 */
let SCNSceneSourceAssetDirectoryURLsKey: String

/*!
 @constant SCNSceneSourceOverrideAssetURLsKey
 @abstract Pass YES in order to override assets URLs with the directory URLs passed via SCNSceneSourceAssetDirectoryURLsKey.
 @discussion By default, SceneKit will look for the external resources using the paths/urls as described in the imported file.
 You can force SceneKit to only search for extern resources within the directories specified by the SCNSceneSourceAssetDirectoryURLsKey key.
 This can be useful to load a file and its resources from a specific bundle for instance.
 */
let SCNSceneSourceOverrideAssetURLsKey: String

/*!
 @constant SCNSceneSourceStrictConformanceKey
 @abstract Pass YES to interpret the 3D format of the file in a strict way.
 @discussion This option defaults to NO. In this case SceneKit will try to read any additional metadata present in the file to
			 enable additional features and make the rendering as close as possible to the original intent. If you pass YES,
             SceneKit will instead only consider features which are part of the file format specification.
 */
let SCNSceneSourceStrictConformanceKey: String

/*!
 @constant SCNSceneSourceConvertUnitsToMetersKey
 @abstract Pass the units you want the scene to be converted to (in meter).
 @discussion Use this with a floating value encapsulated in a NSNumber. The default value is nil which means no conversion done. Passing a non-zero value will convert the scene coordinates so that 1 unit corresponds to N meters. For example pass 0.01 for 1 unit == 1 centimeter, pass 0.3048 for 1 unit == 1 foot...
     For better physics simulation it is recommended to use 1 unit equals to 1 meter.
     This option has no effect if the asset is already compressed by Xcode (use the compression options instead).
 */
@available(OSX 10.10, *)
let SCNSceneSourceConvertUnitsToMetersKey: String

/*!
 @constant SCNSceneSourceConvertToYUpKey
 @abstract Pass YES if a scene should be converted to Y up if it currently has a different up axis.
 @discussion Use this with a boolean value encapsulated in a NSNumber. The default value is NO.
 This option has no effect if the asset is already compressed by Xcode (use the compression options instead).
 */
@available(OSX 10.10, *)
let SCNSceneSourceConvertToYUpKey: String

/*!
 @constant SCNSceneSourceAnimationImportPolicyKey
 @abstract Pass one of the value below to specify what to do with loaded animations.
 @discussion See below for the description of each individual key. Defaults to SCNSceneSourceAnimationImportPolicyPlayRepeatedly. On 10.9 and before the behavior is SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase. For compatibility reason if the application was built on 10.9 or before the default behavior is SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase.
 */
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyKey: String

/*!
 @constant SCNSceneSourceAnimationImportPolicyPlay
 @abstract Add animations to the scene and play them once (repeatCount set to 1).
 */
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyPlay: String

/*!
 @constant SCNSceneSourceAnimationImportPolicyPlayRepeatedly
 @abstract Add animations to the scene and play them repeatedly (repeatCount set to infinity).
 */
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyPlayRepeatedly: String

/*!
 @constant SCNSceneSourceAnimationImportPolicyDoNotPlay
 @abstract Only keep animations in the SCNSceneSource and don't add to the animatable elements of the scene.
 */
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyDoNotPlay: String

/*!
 @constant SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase
 @abstract Add animations to the scene and play them using the SCNView/SCNRenderer's scene time (usesSceneTimeBase set to YES)
 */
@available(OSX 10.10, *)
let SCNSceneSourceAnimationImportPolicyPlayUsingSceneTimeBase: String

/*!
 @constant SCNDetailedErrorsKey
 @abstract Key to access the detailed validation errors.
 @discussion This key will be present in the user info dictionary of errors created by the various sceneWithOptions: methods.
             When present, the value associated with it is an array of detailed errors found by the consistency checker
             which represent consistency errors in the 3D file. Some metadata about these detailed errors is available
             in their user info dictionary using the other keys (SCNConsistency*) defined in this file.
 */
let SCNDetailedErrorsKey: String

/*!
 @constant SCNConsistencyElementIDErrorKey
 @abstract For XML-based formats, the ID of the element where the error occurred.
 @discussion When the element does not have an ID, the ID of the closest parent element which has one is returned.
 */
let SCNConsistencyElementIDErrorKey: String

/*!
 @constant SCNConsistencyElementTypeErrorKey
 @abstract For XML-based formats, the tag name of the element where the error occurred.
 */
let SCNConsistencyElementTypeErrorKey: String

/*!
 @constant SCNConsistencyLineNumberErrorKey
 @abstract For text-based formats, the line number where an error occurred.
 */
let SCNConsistencyLineNumberErrorKey: String
var SCNConsistencyInvalidURIError: Int { get }
var SCNConsistencyInvalidCountError: Int { get }
var SCNConsistencyInvalidArgumentError: Int { get }
var SCNConsistencyMissingElementError: Int { get }
var SCNConsistencyMissingAttributeError: Int { get }
var SCNConsistencyXMLSchemaValidationError: Int { get }

/*!
 @enum SCNSceneSourceStatus
 @abstract Represents a phase of the loading process.
 @discussion Each of these constants (except SCNSceneSourceStatusError) represents a phase of the loading process. "Parsing" means that the document is being deserialized, "validating" that it's being checked for consistency, "processing" that the resulting object is being loaded. New values might be added to this enumeration to make it more detailed; however the values will always be ordered in the same order as the corresponding phases are executed.
 */
enum SCNSceneSourceStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Error
  case Parsing
  case Validating
  case Processing
  case Complete
}
typealias SCNSceneSourceStatusHandler = (Float, SCNSceneSourceStatus, NSError?, UnsafeMutablePointer<ObjCBool>) -> Void

/*!
 @class SCNSceneSource
 @abstract SCNSceneSource objects, abstract the data-reading task. A scene source can read scene data from a URL or a NSData object.
 After creating a SCNSceneSource object for the appropriate source, you can obtain scenes using SCNSceneSource methods.
 */
@available(OSX 10.8, *)
class SCNSceneSource : NSObject {

  /*!
   @method initWithURL:options:
   @abstract Initialize a SCNSceneSource instance from a URL.
   @param url The URL to read scenes from.
   @param options An optional dictionary for future extensions. 
   */
  init?(URL url: NSURL, options: [String : AnyObject]?)

  /*!
   @method initWithData:options:
   @abstract Initialize a SCNSceneSource instance from a NSData object.
   @param data The data to read scenes from.
   @param options An optional dictionary for future extensions. 
   */
  init?(data: NSData, options: [String : AnyObject]?)

  /*!
   @property url
   @abstract The receiver's URL (if any).
   */
  var url: NSURL? { get }

  /*!
   @property data
   @abstract The receiver's data (if any).
   */
  var data: NSData? { get }

  /*!
   @method sceneWithOptions:statusHandler:
   @abstract Creates and initializes the scene described in the 3D file with the specified options and lets you monitor the progress.
   @param options A dictionary of options. The valid keys are described in the "Scene loading options" section.
   @param statusHandler This block will be called repeatedly while the scene is being loaded.
                        - The first argument, overallProgress, is a floating-point number between 0 and 1. 0 means the loading process has just started and 1 that it is complete.
  					  - The second argument, status, tells you what the source is currently doing. It takes one of the values in the SCNSceneSourceStatus enum. New values might be added to this enum in the future.
  					  - If status == SCNSceneStatusError, then error will contain more information about the failure, and the method will return nil after having called the block. Otherwise error will be nil.
  					  - Set *stop to YES if you want the source to abort the loading operation.
   */
  func sceneWithOptions(options: [String : AnyObject]?, statusHandler: SCNSceneSourceStatusHandler?) -> SCNScene?

  /*!
   @method sceneWithOptions:error:
   @abstract Creates and initializes the scene described in the 3D file with the specified options.
   @param options A dictionary of options. The valid keys are described in the "Scene loading options" section.
   @param error If this method returns nil, an error providing more information is returned by reference.
   @discussion This simpler version is equivalent to providing a block to sceneWithOptions:statusHandler: and checking the "error"
   parameter of the block if the status is SCNSceneStatusError.
   */
  func sceneWithOptions(options: [String : AnyObject]?) throws -> SCNScene

  /*!
   @method propertyForKey:
   @param key The key for which to return the corresponding property.
   @abstract Returns the property as defined in the 3D file for the given key. See keys above.
   */
  func propertyForKey(key: String) -> AnyObject?
  func __entryWithIdentifier(uid: String, withClass entryClass: AnyClass) -> AnyObject?

  /*!
   @method identifiersOfEntriesWithClass:
   @abstract Returns the IDs found in the receiver's library for the class "entryClass".
   @param entryClass Specifies the type of the object referenced by the returned IDs. It can be one of the following classes: SCNMaterial, SCNScene, SCNGeometry, SCNNode, CAAnimation, SCNLight, SCNCamera, SCNSkinner, SCNMorpher, NSImage
   */
  func identifiersOfEntriesWithClass(entryClass: AnyClass) -> [String]

  /*!
   @method entriesPassingTest:
   @abstract Returns the entries in the receiver's library that pass a test in a given Block.
   @param predicate The block to apply to entries in the library. The block takes three arguments: "entry" is an entry in the library, "identifier" is the ID of this entry and "stop" is a reference to a Boolean value. The block can set the value to YES to stop further processing of the library. The stop argument is an out-only argument. You should only ever set this Boolean to YES within the Block. The Block returns a Boolean value that indicates whether "entry" passed the test.
   @discussion The entry is an instance of one of following classes: SCNMaterial, SCNScene, SCNGeometry, SCNNode, CAAnimation, SCNLight, SCNCamera, SCNSkinner, SCNMorpher, NSImage.
   */
  @available(OSX 10.9, *)
  func entriesPassingTest(predicate: (AnyObject, String, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [AnyObject]
  init()
}

@available(iOS 8.0, OSX 10.8, *)
extension SCNSceneSource {
  @warn_unused_result
  func entryWithIdentifier<T>(uid: String, withClass entryClass: T.Type) -> T?
}

/*! @enum SCNBufferFrequency
 @abstract The frequency at which the custom program input should be updated.
 @discussion When the frequency is set to SCNBufferFrequencyPerFrame, the binding block is invoked once per frame.
 When the frequency is set to SCNBufferFrequencyPerNode, the binding block is invoked once per SCNNode.
 When the frequency is set to SCNBufferFrequencyPerShadable, the binding block is invoked once per SCNMaterial or SCNGeometry (depending on the object that owns the SCNProgram).
 */
@available(OSX 10.11, *)
enum SCNBufferFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case PerFrame
  case PerNode
  case PerShadable
}
protocol SCNBufferStream : NSObjectProtocol {
  func writeBytes(bytes: UnsafeMutablePointer<Void>, length: Int)
}

/*!
 @typedef SCNBufferBindingBlock
 @discussion Signature for the block to execute to bind or unbind a buffer.
 @param buffer The buffer to fill.
 @param node The rendered node.
 @param shadable The rendered shadable (geometry or material).
 @param renderer The renderer that is currently rendering the scene.
 */
typealias SCNBufferBindingBlock = (SCNBufferStream, SCNNode, SCNShadable, SCNRenderer) -> Void

/*!
 @typedef SCNBindingBlock
 @discussion Signature for the block to execute to bind or unbind a uniform of an OpenGL or OpenGLES based program.
 @param programID The id of the program object to bind/unbind values for.
 @param location The location of the symbol within the program object to bind/unbind values for.
 @param renderedNode The node currently being rendered.
 @param renderer The renderer that is currently rendering the scene.
 */
typealias SCNBindingBlock = (UInt32, UInt32, SCNNode, SCNRenderer) -> Void

/*!
 @protocol SCNShadable
 @abstract The SCNShadable protocol defines an object that is rendered with shaders. 
 */
protocol SCNShadable : NSObjectProtocol {

  /*!
   @property program
   @abstract Specifies a custom program used to render the receiver.
   @discussion When a program is set, it overrides all the rendering parameters such as material settings and shaderModifiers.
   */
  @available(OSX 10.8, *)
  optional var program: SCNProgram? { get set }

  /*!
   @method handleBindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to bind the value for the specified symbol of the receiver's SCNProgram. This method has no effect for symbols declared in shader modifiers.
   @param symbol The name of the symbol to bind a value for.
   @param block The block to call to bind the specified symbol.
   @discussion This method can only be used with OpenGL and OpenGLES based programs.
   */
  @available(OSX 10.9, *)
  optional func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @method handleUnbindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to unbind the value for the specified symbol of the receiver's SCNProgram. This method has no effect for symbols declared in shader modifiers.
   @param symbol The name of the symbol to unbind.
   @param block The block to call to unbind the specified symbol.
   @discussion This method can only be used with OpenGL and OpenGLES based programs.
   */
  @available(OSX 10.9, *)
  optional func handleUnbindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @property shaderModifiers
   @abstract Dictionary of shader modifiers snippets, targeting entry points. The valid keys are the entry points described in the "Shader Modifier Entry Point" constants. The values are the code snippets formatted as described below.
   @discussion Shader modifiers allow you to inject shader code in the standard shaders of SceneKit. This injection is allowed in few controlled entry points, allowing specific kind of tasks in specific context. Each modifier can operate on specific structures along with access to global uniforms, that could be the standard SceneKit uniforms or its own declared uniforms.
   
   The structure of a shader modifier is:
   
   | // Custom uniforms declarations of the form:
   | // for GLSL: [uniform type uniformName [= defaultValue]]
   | uniform float myGrayAmount = 3.0;
   |
   | //for Metal a pragma is required and arguments have the form [type name]
   | #pragma arguments
   | float myGrayAmount;
   |
   | // Optional global function definitions (for Metal: references to arguments from global functions are not supported).
   | float mySin(float t) {
   |    return sin(t);
   | }
   |
   | [#pragma transparent | opaque]
   | [#pragma body]
   |
   | // the shader modifier code snippet itself
   | vec3 myColor = vec3(myGrayAmount);
   | _output.color.rgb += myColor;
   
   The `#pragma body` directive
   Is only needed if you declared functions that must not be included in the shader code itself.
   
   The `#pragma transparent` directive
   Forces the rendering to be blended using the following equation:
   _output.color.rgb + (1 - _output.color.a) * dst.rgb;
   where `dst` represents the current fragment color. The rgb components must be premultiplied.
   
   The `#pragma opaque` directive
   Forces the rendering to be opaque. It then ignores the alpha component of the fragment.
   
   The SCNGeometry and SCNMaterial classes are key-value coding compliant classes, which means that you can set values for arbitrary keys. Even if the key `myAmplitude` is not a declared property of the class, you can still set a value for it.
   Declaring a `myAmplitude` uniform in the shader modifier makes SceneKit observe the reveiver's `myAmplitude` key. Any change to that key will make SceneKit bind the uniform with the new value.
   
   Custom uniforms can be animated using explicit animations.
   
   The following GLSL types (and Objective-C counterparts) can be used to declare (and bind) custom uniforms:
   Example: uniform float myAmplitude = 0.5;
   
   GLSL types    | Objective-C types
   --------------------------------------
   int           | NSNumber, NSInteger, int
   float         | NSNumber, CGFloat, float, double
   vec2          | CGPoint
   vec3          | SCNVector3
   vec4          | SCNVector4
   mat4, mat44   | SCNMatrix4
   sampler2D     | SCNMaterialProperty
   samplerCube   | SCNMaterialProperty (with a cube map)
   
   The following prefixes are reserved by SceneKit and should not be used in custom names:
   u_
   a_
   v_
   
   SceneKit declares the following built-in uniforms:
   float u_time;                               // The current time, in seconds
   vec2  u_inverseResolution;                 // 1./screen size (available on iOS 9 and OS X 10.11)
   -------------------------------------------------------------------------------------
   mat4  u_modelTransform                      // See SCNModelTransform
   mat4  u_viewTransform                       // See SCNViewTransform
   mat4  u_projectionTransform                 // See SCNProjectionTransform
   mat4  u_normalTransform                     // See SCNNormalTransform
   mat4  u_modelViewTransform                  // See SCNModelViewTransform
   mat4  u_modelViewProjectionTransform        // See SCNModelViewProjectionTransform
   -------------------------------------------------------------------------------------
   mat4  u_inverseModelTransform               // The inverse matrix of u_modelTransform
   mat4  u_inverseViewTransform                // The inverse matrix of u_viewTransform
   mat4  u_inverseProjectionTransform          // The inverse matrix of u_projectionTransform
   mat4  u_inverseModelViewTransform           // The inverse matrix of u_modelViewTransform
   mat4  u_inverseModelViewProjectionTransform // The inverse matrix of u_modelViewProjectionTransform
   -------------------------------------------------------------------------------------
   mat2x3 u_boundingBox;                       // The bounding box of the current geometry, in model space, u_boundingBox[0].xyz and u_boundingBox[1].xyz being respectively the minimum and maximum corner of the box.
   
   Shader modifiers can be used to tweak SceneKit rendering by adding custom code at the following entry points:
   1. vertex
   2. surface
   3. lighting
   4. fragment
   See below for a detailed explanation of these entry points and the context they provide.
   
   Shader modifiers can be written in GLSL or Metal. Metal shaders won't run on iOS8 and OS X 10.10 or below.
   */
  @available(OSX 10.9, *)
  optional var shaderModifiers: [String : String]? { get set }
}

/*!
 @group Semantic options
 @abstract Valid keys for the option parameter of setSemantic:forSymbol:options:
 */
let SCNProgramMappingChannelKey: String

/*!
 @class SCNProgram
 @abstract A SCNProgram lets you specify custom shaders to use when rendering materials.
 */
@available(OSX 10.8, *)
class SCNProgram : NSObject, NSCopying, NSSecureCoding {

  /*!
   @property vertexShader
   @abstract Determines the receiver's vertex shader.
   */
  var vertexShader: String?

  /*!
   @property fragmentShader
   @abstract Determines the receiver's fragment shader.
   */
  var fragmentShader: String?

  /*!
   @property tessellationControlShader
   @abstract Determines the receiver's tessellation control shader. Tessellation shaders require OpenGL Core Profile.
   */
  @available(OSX 10.10, *)
  var tessellationControlShader: String?

  /*!
   @property tessellationEvaluationShader
   @abstract Determines the receiver's tessellation evaluation shader. Tessellation shaders require OpenGL Core Profile.
   */
  @available(OSX 10.10, *)
  var tessellationEvaluationShader: String?

  /*!
   @property geometryShader
   @abstract Determines the receiver's geometry shader. Geometry shaders require OpenGL Core Profile.
   */
  @available(OSX 10.10, *)
  var geometryShader: String?

  /*!
   @property vertexFunctionName
   @abstract Determines the receiver's vertex function name.
   @discussion The name of the vertex function (for Metal programs).
   */
  @available(OSX 10.11, *)
  var vertexFunctionName: String?

  /*!
   @property fragmentFunctionName
   @abstract Determines the receiver's fragment function name.
   @discussion The name of the fragment function (for Metal programs).
   */
  @available(OSX 10.11, *)
  var fragmentFunctionName: String?

  /*!
   @method handleBindingOfBufferNamed:frequency:usingBlock:
   @abstract Sets the block to call at render time to bind the buffer of the specified symbol of the receiver's program.
   @param name The name of the buffer to bind.
   @param frequency The frequency at which the block has to be invoked. Can be per frame, per node or per geometry or material. See SCNBufferBindingBlock above.
   @param block The block that binds the buffer.
   @discussion This method can only be used with Metal based programs.
   */
  @available(OSX 10.11, *)
  func handleBindingOfBufferNamed(name: String, frequency: SCNBufferFrequency, usingBlock block: SCNBufferBindingBlock)

  /*!
   @property opaque
   @abstract Determines the receiver's fragment are opaque or not. Defaults to YES.
   */
  @available(OSX 10.10, *)
  var opaque: Bool

  /*!
   @method setSemantic:forSymbol:options:
   @abstract Associates a SceneKit semantic to a symbol.
   @param semantic The SceneKit semantic to associate to the specified symbol.
   @param symbol A symbol from the program source code.
   @param options An optional dictionary. See the 'Semantic options' above.
   @discussion Associates semantics handled by the SceneKit runtime to a symbol from the program. Supported semantics are listed in SCNGeometry.h and SCNNode.h.
   */
  func setSemantic(semantic: String?, forSymbol symbol: String, options: [String : AnyObject]?)

  /*!
   @method semanticForSymbol:
   @abstract Retrieves the SceneKit semantic associated to a symbol from the program source code.
   @param symbol A symbol from the program source code.
   */
  func semanticForSymbol(symbol: String) -> String?

  /*!
   @property delegate
   @abstract Determines the receiver's delegate
   */
  unowned(unsafe) var delegate: @sil_unmanaged SCNProgramDelegate?

  /*!
   @method library
   @abstract Specifies the metal library to use to locate the function names specified above. 
   @discussion If set to nil the default library is used. Defaults to nil.
   */
  @available(OSX 10.11, *)
  var library: MTLLibrary?
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @protocol SCNProgramDelegate
 @abstract The SCNProgramDelegate protocol declares the methods that an instance of SCNProgram invokes to delegate the binding of parameters.
 */
protocol SCNProgramDelegate : NSObjectProtocol {

  /*!
   @method program:withID:bindValueForSymbol:atLocation:renderer:
   @abstract Invoked on the delegate to let it bind program values and/or also bind associated graphics resources (such as textures).
   @param program The program to bind values for.
   @param symbol The name of the symbol to bind a value for.
   @param location The location of the symbol within the program object to be modified.
   @param programID The program object.
   @param renderer The renderer that is currently rendering the scene.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func program(program: SCNProgram, bindValueForSymbol symbol: String, atLocation location: UInt32, programID: UInt32, renderer: SCNRenderer) -> Bool

  /*!
   @method program:withID:bindValueForSymbol:atLocation:renderer:
   @abstract Invoked on the delegate to let it unbind program values and/or also unbind associated graphic resources (such as textures).
   @param program The program to unbind values for.
   @param symbol The name of the symbol to unbind a value for.
   @param location The location of the symbol within the program object to be modified.
   @param programID The program object.
   @param renderer The renderer that is currently rendering the scene.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func program(program: SCNProgram, unbindValueForSymbol symbol: String, atLocation location: UInt32, programID: UInt32, renderer: SCNRenderer)

  /*!
   @method handleError
   @abstract Invoked on the delegate whenever a compilation error occurs.
   @discussion Error domain is SCNErrorDomain.
   @param program The program that generated a compilation error.
   @param error The compilation error.
   */
  @available(OSX 10.8, *)
  optional func program(program: SCNProgram, handleError error: NSError)

  /*!
   @method programIsOpaque
   @abstract The delegate should implement this mehod and return NO if the fragments generated by the program are not opaque.
   @param program The queried program.
   @discussion This is deprecated. Use SCNProgram's opaque property instead.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  optional func programIsOpaque(program: SCNProgram) -> Bool
}

/*!
 @group Shader Modifier Entry Point
 @abstract Entry points designing the insertion point of the shader code snippet of a shader modifiers dictionary.
 */
/*!
 @constant SCNShaderModifierEntryPointGeometry
 @abstract This is the entry point to operate on the geometry vertices, for example deforming them.
 @discussion It operates entirely in the vertex shader stage. It's input is the geometry structure:
 
 Structures available from this entry point:
 
 | struct SCNShaderGeometry {
 |    vec4 position;
 |    vec3 normal;
 |    vec4 tangent;
 |    vec4 color;
 |    vec2 texcoords[kSCNTexcoordCount];
 | } _geometry;
 |
 | Access: ReadWrite
 | Stages: Vertex shader only
 
 kSCNTexcoordCount is a constant integer set to the number of texture coordinates used.
 
 All the geometric fields (position, normal and tangent) are in model space. You can use one of the provided automatic uniforms
 such as u_modelTransform or u_modelViewTransform if you want to operate in another space (but the results must stay in the model space, otherwise remaining computations won't be correct).
 The texture coordinates are the raw values found in the mesh, they have not been transformed yet by their optional contentsTransform. The contentsTransform if any is applied after the geometry shader modifier.
 
 Example: Simple sinusoidal deformation
 
 uniform float Amplitude = 0.1
 _geometry.position.xyz += _geometry.normal * (Amplitude*_geometry.position.y*_geometry.position.x) * sin(u_time);
 */
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointGeometry: String

/*!
 @constant SCNShaderModifierEntryPointSurface
 @abstract This is the entry point to alter the surface representation of the material, before the lighting has taken place.
 @discussion
 
 Structures available from this entry point:
 
 | struct SCNShaderSurface {
 |    vec3 view;                // Direction from the point on the surface toward the camera (V)
 |    vec3 position;            // Position of the fragment
 |    vec3 normal;              // Normal of the fragment (N)
 |    vec3 tangent;             // Tangent of the fragment
 |    vec3 bitangent;           // Bitangent of the fragment
 |    vec4 ambient;             // Ambient property of the fragment
 |    vec2 ambientTexcoord;     // Ambient texture coordinates
 |    vec4 diffuse;             // Diffuse property of the fragment. Alpha contains the opacity.
 |    vec2 diffuseTexcoord;     // Diffuse texture coordinates
 |    vec4 specular;            // Specular property of the fragment
 |    vec2 specularTexcoord;    // Specular texture coordinates
 |    vec4 emission;            // Emission property of the fragment
 |    vec2 emissionTexcoord;    // Emission texture coordinates
 |    vec4 multiply;            // Multiply property of the fragment
 |    vec2 multiplyTexcoord;    // Multiply texture coordinates
 |    vec4 transparent;         // Transparent property of the fragment
 |    vec2 transparentTexcoord; // Transparent texture coordinates
 |    vec4 reflective;          // Reflective property of the fragment
 |    float shininess;          // Shininess property of the fragment.
 |    float fresnel;            // Fresnel property of the fragment.
 | } _surface;
 |
 | Access: ReadWrite
 | Stages: Fragment shader only
 
 All geometric fields are in view space.
 All the other properties will be colors (texture have already been sampled at this stage) or floats. You can however do an extra sampling of standard textures if you want.
 In this case the naming pattern is u_<property>Texture. For example u_diffuseTexture or u_reflectiveTexture. Note that you have to be sure that the material do have a texture
 set for this property, otherwise you'll trigger a shader compilation error.
 
 Example: Procedural black and white stripes
 
 uniform float Scale = 12.0;
 uniform float Width = 0.25;
 uniform float Blend = 0.3;
 vec2 position = fract(_surface.diffuseTexcoord * Scale);
 float f1 = clamp(position.y / Blend, 0.0, 1.0);
 float f2 = clamp((position.y - Width) / Blend, 0.0, 1.0);
 f1 = f1 * (1.0 - f2);
 f1 = f1 * f1 * 2.0 * (3. * 2. * f1);
 _surface.diffuse = mix(vec4(1.0), vec4(0.0), f1);
 */
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointSurface: String

/*!
 @constant SCNShaderModifierEntryPointLightingModel
 @abstract This is the entry point to provide custom lighting equation. The fragment will be called for each active light
 of the scene and will need to accumulate lighting contribution for the vertex or the fragment in the _lightingContribution structure, using the light structure given.
 @discussion
 
 Structures available from the this entry point:
 
 | All the structures available from the SCNShaderModifierEntryPointSurface entry point
 |
 | Access: ReadOnly
 | Stages: Vertex shader and fragment shader
 
 | struct SCNShaderLightingContribution {
 |    vec3 ambient;
 |    vec3 diffuse;
 |    vec3 specular;
 | } _lightingContribution;
 |
 | Access: ReadWrite
 | Stages: Vertex shader and fragment shader
 
 | struct SCNShaderLight {
 |    vec4 intensity;
 |    vec3 direction; // Direction from the point on the surface toward the light (L)
 | } _light;
 |
 | Access: ReadOnly
 | Stages: Vertex shader and fragment shader
 
 Example: wrap diffuse lighting
 
 uniform float WrapFactor = 0.5;
 float dotProduct = (WrapFactor + max(0.0, dot(_surface.normal,_light.direction))) / (1 + WrapFactor);
 _lightingContribution.diffuse += (dotProduct * _light.intensity.rgb);
 vec3 halfVector = normalize(_light.direction + _surface.view);
 dotProduct = max(0.0, pow(max(0.0, dot(_surface.normal, halfVector)), _surface.shininess));
 _lightingContribution.specular += (dotProduct * _light.intensity.rgb);
 */
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointLightingModel: String

/*!
 @constant SCNShaderModifierEntryPointFragment
 @abstract This is the last entry point in the fragment shader, where you can alter the final color returned by the shader.
 @discussion You can alter the final color by reading and writing to the output color via the output structure below.
 
 Structures available from the this entry point:
 
 | All the structures available from the SCNShaderModifierEntryPointSurface entry point
 |
 | Access: ReadOnly
 | Stages: Fragment shader only
 
 | struct SCNShaderOutput {
 |    vec4 color;
 | } _output;
 |
 | Access: ReadWrite
 | Stages: Fragment shader only
 
 Example: inverse final color
 
 _output.color.rgb = vec3(1.0) - _output.color.rgb;
 */
@available(OSX 10.9, *)
let SCNShaderModifierEntryPointFragment: String

/*!
 @class SCNSkinner
 @abstract SCNSkinner controls the deformation of skinned geometries */
@available(OSX 10.9, *)
class SCNSkinner : NSObject, NSSecureCoding {

  /*!
   @property skeleton
   @abstract Specifies the skeleton of the receiver.
   @discussion When setting a new skeleton, the new skeleton must have the same hierarchy of joints.
   */
  var skeleton: SCNNode?

  /*!
   @method skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:
   @abstract Creates and initialize a skinner instance with the specified parameters.
   @param baseGeometry Specifies the base geometry used by the skinner
   @param bones Specifies the array of bones.
   @param boneInverseBindTransforms The inverse of the bone’s bind-space transformation matrix at the time the bind shape was bound to this bone.
   @param boneWeights A buffer of weights. This contains the weights of every influence of every vertex. The number of influence per vertex is controlled by the number of component in the geometry source.
   @param boneIndices A buffer of bone indexes. This buffer contains the corresponding index in the bones array for every weight in the weights buffer.
   */
  @available(OSX 10.10, *)
  convenience init(baseGeometry: SCNGeometry?, bones: [SCNNode], boneInverseBindTransforms: [NSValue]?, boneWeights: SCNGeometrySource, boneIndices: SCNGeometrySource)

  /*!
   @property baseGeometry
   @abstract Specifies the base geometry of the receiver.
   @discussion Updating this will change the geometry of all the nodes sharing the skinner.
   Access the node's geometry if you want to update this specific skinner properties (materials for example).
   Access this property if you want a whole new geometry (which will necessarily be shared among the skinner instances), with
   different sources, for instance.
   */
  @available(OSX 10.9, *)
  var baseGeometry: SCNGeometry?

  /*!
   @property baseGeometryBindTransform
   @abstract Specifies the transform of the baseGeometry at the time when the mesh was bound to a skeleton. This transforms the baseGeometry from object space to a space on which the skinning then applies.
   */
  @available(OSX 10.10, *)
  var baseGeometryBindTransform: SCNMatrix4

  /*!
   @property boneInverseBindTransforms
   @abstract The inverse of the bone’s bind-space transformation matrix at the time the bind shape was bound to this bone.
   @discussion boneInverseBindTransforms is an array of SCNMatrix4 wrapped into instances of NSValue.
   */
  @available(OSX 10.10, *)
  var boneInverseBindTransforms: [NSValue]? { get }

  /*!
   @property bones
   @abstract The bones of the skinner.
   */
  @available(OSX 10.10, *)
  var bones: [SCNNode] { get }

  /*!
   @property boneWeights
   @abstract The bone weights of the receiver.
   */
  @available(OSX 10.10, *)
  var boneWeights: SCNGeometrySource { get }

  /*!
   @property boneIndices
   @abstract The bone indices of the receiver.
   */
  @available(OSX 10.10, *)
  var boneIndices: SCNGeometrySource { get }
  init()
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @class SCNTechnique
 @abstract SCNTechnique represents a rendering process that may require multiple passes.
 @discussion A technique is generally initialized from a Property List file. It can be set to any object that conforms to the SCNTechniqueSupport protocol.
 */
@available(OSX 10.10, *)
class SCNTechnique : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {

  /*!
   @method techniqueWithDictionary:
   @abstract Creates and returns a technique instance initialized with the specified dictionary.
   @param dictionary The dictionary representation of the technique.
   @discussion The format of the dictionary is described below. Quoted strings can be any name of your choice. Tags are defined below.
   The passes are executed sequentially as specified in the "sequence" section. The definition of each pass is within the "passes" section. A pass may have inputs/outputs that reference targets or symbols defined in the "targets" and "symbols" section. The entries of the "symbols" section can be set/get and animated with SCNTechnique's APIs below.
   
   {
     sequence: ["Pass1", "Pass2", ...],
     passes: {
       "Pass1": {
          outputs: <outputs>
          inputs: <inputs>
          draw: <draw command>
          program: <program name>
          metalVertexShader: <METAL vertex shader function name>
          metalFragmentShader: <METAL fragment shader function name>
          colorStates: <color states>               //optional
          depthStates: <depth states>               //optional
          stencilStates: <stencil states>           //optional
          cullMode: <cull mode>                     //optional
          blendStates: <blend states>               //optional
          viewport: <custom viewport>               //optional
          pointOfView: <node name>                  //optional
          samples: <sample count>                   //optional
          excludeCategoryMask: <category bitMask>   //optional
          includeCategoryMask: <category bitMask>   //optional
       },
       "Pass2" : { 
           [...]
       }
     }
     symbols: {
       "symbol A": {
          <symbol description>
       }
       [...]
     }
     targets: {
        "target A": {
           <target description>
       }
       [...]
     }
  }
  
  <outputs>:
   The possible (and optional) keys with their possible associated values are:
   color: a string referencing a color render target. See <render target reference>.
   depth: a string referencing a depth render target. See <render target reference>.
   stencil: a string referencing a stencil render target. See <render target reference>.
   
  <inputs>:
  The inputs are listed in a dictionary. The keys are the uniform name as specified in the program of this pass.
  The values can be a single string referencing a symbol or a semantic or a target OR a dictionary with the following structure:
   
   {
     target: <render target reference>,
   
     //optional:
     minificationFilter: linear, nearest
     magnificationFilter: linear, nearest
     mipFilter: linear, nearest, none
     wrapS: clamp, repeat, clampToBorder, mirror
     wrapT: clamp, repeat, clampToBorder, mirror
     wrapP: clamp, repeat, clampToBorder, mirror
     maxAnisotropy: a number
   }
   
   (See SCNMaterialProperty for more documentation and default values of these optional parameters.)
   
  <render target reference>
   A string referencing a target (i.e an entry in the top level "targets" dictionary) or one of the special strings below:
   COLOR  The render target that represents that main color fragments that will be displayed on the screen ultimately.
   DEPTH  The render target that represents that main depth fragments.
   
  <draw command>
   can be one of the following strings:
   DRAW_SCENE:    render the entire scene
   DRAW_QUAD:     render a fullscreen quad
   DRAW_NODE:     render a node and its sub-tree. The node is specified by setting its name as the value for the key "node".
   
  <program name>
   Name of a program (a vertex shader + a fragment shader) located in the application bundle.
   The vertex shader must have the extension "vsh" and the fragment shader "fsh".
   
  <METAL vertex shader function name>
   Name of a METAL function to use as the vertex shader.
  
  <METAL fragment shader function name>
   Name of a METAL function to use as the fragment shader.
   
  <color states>
   A dictionary with the following optional keys:
   "clear" a boolean specifying whether the color target should be cleared or not
   "clearColor" a string specifying the clear color as 4 float (red, green, blue, alpha), or the string "sceneBackground" to clear with the scene background color.
   
  <depth states>
   A dictionary with the following optional keys:
   "clear" a boolean specifying whether the depth target should be cleared or not
   "enableWrite" a boolean specifying whether writing to depth should be enabled or not.
   "enableRead" a boolean specifying whether reading from depth should be enabled or not.
   "func" a string specifying depth function to use. See <comparison function> for the possible values.
  
  <stencil states>
   A dictionary with the following optional keys:
   "clear" a boolean specifying whether the stencil target should be cleared or not
   "enable" a boolean specifying whether writing to stencil should be enabled or not.
   "behavior" a dictionary describing the stencil behavior of the front face, or of both faces if no backFaceBehavior is specified. See <stencil behavior> for the format of this dictionary.
   "backFaceBehavior" a dictionary describing the behavior of the back face. See <stencil behavior> for the format of this dictionary.
   
  <stencil behavior>
   A dictionary with the following optional keys:
   "depthFail" a string specifying the operation to do if the depth test fails. See <stencil operation> for the possible values.
   "fail" a string specifying the operation to do if the stencil test fails. See <Stencil operation> for the possible values.
   "pass" a string specifying the operation to do if the stencil test passes. See <stencil operation> for the possible values.
   "function" a string specifying the stencil test. See <comparison function> for the possible values.
   "readMask" a uint8_t number specifying a mask that is ANDed with both the reference value and the stored stencil value when the test is done
   "writeMask" a uint8_t number specifies a bit mask to enable and disable writing of individual bits in the stencil planes
   "referenceValue" a uint8_t number specifies the reference value for the stencil test. The initial value is 0. 
   
  <stencil operation>
   A string specifying a stencil operation. It can be one of the following: keep, zero, replace, increment, decrement, invert, incrementWrap, decrementWrap
   
  <comparison function>
   A string specifying a comparison function. It can be one of the following: never, always, equal, notEqual, less, lessEqual, greater, greaterEqual
   
  <blend states>
   A dictionary with the following optional keys:
   "enable" a boolean number specifying if the blending should be enabled or not. defaults to true.
   "colorSrc" a string specifying a blend mode. See <blend mode>
   "colorDst" a string specifying a blend mode. See <blend mode>
   "alphaSrc" a string specifying a blend mode. See <blend mode>
   "alphaDst" a string specifying a blend mode. See <blend mode>
   "colorOp" a string specifying a blend operation. See <blend operation>
   "alphaOp" a string specifying a blend operation. See <blend operation>
   In no Blend states are specified, then the blending is turned off.
   
  <blend mode>
   A string specifying a blend mode. It can be one of the following: zero, one, srcColor, oneMinusSrcColor, srcAlpha, oneMinusSrcAlpha, dstColor, oneMinusDstColor, dstAlpha, oneMinusDstAlpha, constantColor, oneMinusConstantColor, constantAlpha, oneMinusConstantAlpha, alphaSaturate.
   
  <blend operation>
   A string specifying a blend operation. It can be one of the following: add, substract, reverseSubstract, min, max.
  
  <cull mode>
   A string specifying a cull mode. It can be one of the following: front, none, back.
   
  <custom viewport>
   A string specifying the viewport as 4 float.
  
  <category bitMask>
   A integer value representing a node category mask (see SCNNode's categoryBitMask).
   if the key "excludeCategoryMask" is not specified then it defaults to 0.
   if the key "includeCategoryMask" is not specified then it defaults to all bits set.
   The DRAW_SCENE command will then render nodes that validate the following test (node.categoryBitMask & includeCategoryMask) && !(excludeCategoryMask & node.categoryBitMask).
  
  <node name>
   The name of a node, or "self" to reference the owner of the technique if any.
  
  <sample count>
   The number of samples (multisampling) used to render the pass.
   
  <symbol description>
   A dictionary with the following optional keys and their possible associated values:
   
   semantic: vertex, normal, color, texcoord, time, modelViewProjectionTransform, modelViewTransform, modelTransform, viewTransform, projectionTransform, normalTransform, modelViewProjectionInverseTransform, modelViewInverseTransform, modelInverseTransform, viewInverseTransform, projectionInverseTransform, normalInverseTransform
   
   type: float, vec2, vec3, vec4, mat4, int, ivec2, ivec3, ivec4, mat3, sampler2D, none. Every types can also be an array of the given type by adding [N] where N is the number of elements in the array.
   
   image: name of an image located in the application bundle. (only valid when type is sampler2D)
   
   if a semantic is set, no type is required.
   
  <target description>
   A dictionary with the following optional keys and their possible associated values:
   
   type: a string specifying the type of the render target. It can be one of the following: color, depth, stencil
   format: a string specifying the format of the render target. It can be:
   - for color targets: rgba32f, r8, r16, rgba(default)
   - for depth targets: depth24, depth24stencil8
   - for stencil targets: depth24stencil8
   scaleFactor: a float value (encapsulated in a NSNumber) that controls the size of the render target. default to 1, which means 1x the size of the main viewport.
   size: a string with the format %dx%d that controls the size of the render target.
   persistent: a boolean that tells if this target should persist from one frame to the next. It permits to create temporal effects suchs as motion blur. Defaults to NO.
   */
  /*not inherited*/ init?(dictionary: [String : AnyObject])

  /*!
   @method techniqueBySequencingTechniques:
   @abstract Creates and returns a technique by sequencing the passes from the specified techniques.
   @param techniques The techniques to sequence.
   @discussion The passes from "techniques" are executed sequentially. The symbols and targets are merged. This allows to use the same uniform ad targets across multiple techniques.
   */
  /*not inherited*/ init?(bySequencingTechniques techniques: [SCNTechnique])

  /*!
   @method handleBindingOfSymbol:usingBlock:
   @abstract Sets the block to call at render time to bind the value for the specified symbol of the receiver. 
   @param symbol The name of the symbol to bind a value for.
   @param block The block to call to bind the specified symbol.
   @discussion The block will be called at every frame for every pass referencing the specified symbol.
   */
  func handleBindingOfSymbol(symbol: String, usingBlock block: SCNBindingBlock?)

  /*!
   @property dictionaryRepresentation
   @abstract Returns the dictionary representation of the technique.
   */
  var dictionaryRepresentation: [String : AnyObject] { get }
  @available(OSX 10.11, *)
  subscript (key: AnyObject) -> AnyObject? { get }
  @available(OSX 10.11, *)
  func setObject(obj: AnyObject?, forKeyedSubscript key: NSCopying)
  init()

  /*!
   @method addAnimation:forKey:
   @abstract Add an animation.
   @param animation Added animation.
   @param key May be any string such that only one animation per unique key is added per animatable object.
   */
  @available(OSX 10.10, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)

  /*!
   @method removeAllAnimations
   @abstract Remove all animations.
   */
  @available(OSX 10.10, *)
  func removeAllAnimations()

  /*!
   @method removeAnimationForKey
   @abstract Remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String)

  /*!
   @method animationKeys
   @abstract Returns an array containing the keys of all animations currently attached to the receiver.
   */
  @available(OSX 10.10, *)
  var animationKeys: [String] { get }

  /*!
   @method animationForKey:
   @abstract Returns the animation with the given identifier
   @param key The identifier for the animation to retrieve.
   @discussion This will return nil if no such animation exists.
  			 Attempting to modify any properties of the returned object will result in undefined behavior.
   */
  @available(OSX 10.10, *)
  func animationForKey(key: String) -> CAAnimation?

  /*!
   @method pauseAnimationForKey:
   @abstract Pause the animation with the given identifier.
   @param key The identifier for the animation to pause.
   */
  @available(OSX 10.9, *)
  func pauseAnimationForKey(key: String)

  /*!
   @method resumeAnimationForKey:
   @abstract Resume the animation with the given identifier.
   @param key The identifier for the animation to resume.
   */
  @available(OSX 10.9, *)
  func resumeAnimationForKey(key: String)

  /*!
   @method isAnimationForKeyPaused:
   @abstract Returns whether the animation for the specified identifier is paused.
   @param key The identifier for the animation to query.
   */
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(key: String) -> Bool

  /*!
   @method removeAnimationForKey:fadeOutDuration:
   @abstract Smoothly remove the animation with the given identifier.
   @param key The identifier for the animation to remove.
   @param duration The fade out duration used to remove the animation.
   */
  @available(OSX 10.10, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 @protocol SCNTechniqueSupport
 @abstract The SCNTechniqueSupport protocol describes an object that supports single or multi-pass techniques
 */
protocol SCNTechniqueSupport : NSObjectProtocol {

  /*!
   @property technique
   @abstract Specifies the technique of the receiver. Defaults to nil.
   */
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique? { get set }
}
@available(OSX 10.8, *)
class SCNTransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(duration: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(animationTimingFunction: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(block: (() -> Void)?)
  class func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  init()
}

/*! 
 @enum SCNAntialiasingMode
 @abstract antialiasing modes for SCNView
 */
@available(OSX 10.10, *)
enum SCNAntialiasingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Multisampling2X
  case Multisampling4X
  case Multisampling8X
  case Multisampling16X
}

/*! @group View initialization options
 @constant SCNPreferredRenderingAPIKey Specifies the preferred rendering API to be used by the renderer.
 @discussion Pass it as the key in the options dictionary given to initWithFrame:options:. The value is a NSNumber wrapping a SCNRenderingAPI. You can also select the preferred rendering API directly from the SCNView inspector in InterfaceBuilder.
 */
@available(OSX 10.11, *)
let SCNPreferredRenderingAPIKey: String

/*!
 @constant SCNPreferredDeviceKey Specifies the preferred metal device to be used by the renderer.
 @discussion The value is directly a id <MTLDevice>.
 */
@available(OSX 10.11, *)
let SCNPreferredDeviceKey: String

/*!
 @constant SCNPreferLowPowerDeviceKey Specifies if the renderer should prefer a low power metal device.
 @discussion The value is a NSNumber wrapping a BOOL. Defaults to NO.
 */
@available(OSX 10.11, *)
let SCNPreferLowPowerDeviceKey: String

/*!
 @class SCNView
 @abstract A SCNView is a subclass of NSView that can display a SCNScene
 */
@available(OSX 10.8, *)
class SCNView : NSView, SCNSceneRenderer, SCNTechniqueSupport {

  /*! 
   @method initWithFrame:options:
   @abstract Initializes and returns a newly allocated SCNView object with a specified frame rectangle.
   @param frame The frame rectangle for the created view object.
   @param options An optional dictionary. See "View initialization options" above.
   */
  init(frame: NSRect, options: [String : AnyObject]?)

  /*! 
   @property scene
   @abstract Specifies the scene of the receiver
   */
  var scene: SCNScene?

  /*!
   @property backgroundColor
   @abstract Specifies the background color of the receiver. Defaults to opaque white.
   */
  @NSCopying var backgroundColor: NSColor

  /*! 
   @property allowsCameraControl
   @abstract A Boolean value that determines whether the user can manipulate the point of view used to render the scene. 
   @discussion  When set to YES, the user can manipulate the current point of view with the mouse or the trackpad. The scene graph and existing cameras won't be modified by this action. The default value of this property is NO.
       Note that the primary purpose of this property is to aid in debugging your application. You may want to implement you own camera controller suitable for your application.
       The built-in camera controller let you:
         - drag the mouse to rotate the camera around the scene.
         - drag+cmd to rotate the camera in local space
         - drag+shift to rotate using sticky axis
         - use the scroll wheel or alt+drag the mouse to translate the camera on its local X,Y plan.
         - alt+scroll wheel to move the camera forward/backward
         - rotate gesture (trackpad only) to roll the camera (rotation on the Z axis).
         - pinch gesture (trackpad only) to zoom-in / zoom-out (change the fov of the camera).
   */
  var allowsCameraControl: Bool

  /*!
   @property snapshot
   @abstract Draws the contents of the view and returns them as a new image object
   @discussion This method is thread-safe and may be called at any time.
   */
  @available(OSX 10.10, *)
  func snapshot() -> NSImage

  /*! 
   @functiongroup Actions
   */
  /*! 
   @method play:
   @abstract This action method begins playing the scene at its current location.
   @param sender The object (such as a button or menu item) sending the message to play the scene.
   @discussion This method does not do anything if the scene is already playing.
   */
  @IBAction func play(sender: AnyObject?)

  /*! 
   @method pause:
   @abstract This action method pauses the scene playback.
   @param sender The object (such as a button or menu item) sending the message to pause the scene.
   @discussion This method does not do anything if the scene is already paused.
   */
  @IBAction func pause(sender: AnyObject?)

  /*! 
   @method stop:
   @abstract This action method stops the scene playback and resets the current time to the start time of the scene.
   @param sender The object (such as a button or menu item) sending the message to stop playing the scene.
   */
  @IBAction func stop(sender: AnyObject?)

  /*!
   @property openGLContext
   @abstract Specifies the OpenGL context associated with the receiver.
   @discussion This property returns nil and has no effect if the current API is Metal.
   */
  var openGLContext: NSOpenGLContext?

  /*!
   @property antialiasingMode
   @abstract Defaults to SCNAntialiasingModeMultisampling4X on OSX and SCNAntialiasingModeNone on iOS.
   */
  @available(OSX 10.10, *)
  var antialiasingMode: SCNAntialiasingMode

  /*!
   @property pixelFormat
   @abstract Specifies the pixel format of the receiver.
   @discussion This property returns nil and has no effect if the current API is Metal.
   */
  var pixelFormat: NSOpenGLPixelFormat?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()

  /*!
   @property sceneTime
   @abstract Specifies the current "scene time" to display the scene.
   @discussion The scene time only affect scene time based animations (see SCNAnimation.h "usesSceneTimeBase" and SCNSceneSource.h "SCNSceneSourceAnimationImportPolicyKey" for how to create scene time based animations). Scene time based animations and this property are typically used by tools and viewer to ease seeking in time while previewing a scene.
   */
  @available(OSX 10.10, *)
  var sceneTime: NSTimeInterval

  /*! 
   @property delegate
   @abstract Specifies the renderer delegate.
   */
  @available(OSX 10.8, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?

  /*!
   @method hitTest:options:
   @abstract Returns an array of SCNHitTestResult for each node that contains a specified point.
   @param point A point in the coordinate system of the receiver.
   @param options Optional parameters (see the "Hit test options" group for the available options).
   */
  @available(OSX 10.8, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]?) -> [SCNHitTestResult]

  /*!
   @method isNodeInsideFrustum:withPointOfView:
   @abstract Test whether node is visible from the specified point of view.
   @param node The node to test the visibility of.
   @param pointOfView The point of view used to test the visibility.
   @discussion Return YES if the node is inside or intersects the clipping planes of the point of view. This method doesn't test if 'node' is occluded by another node.
   */
  @available(OSX 10.9, *)
  func isNodeInsideFrustum(node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool

  /*!
   @method nodesInsideFrustumWithPointOfView:
   @abstract Returns an array containing the nodes visible from the specified point of view.
   @param pointOfView The point of view used to test the visibility.
   @discussion Returns an array of all the nodes that are inside or intersects the clipping planes of the point of view.
   */
  @available(OSX 10.11, *)
  func nodesInsideFrustumWithPointOfView(pointOfView: SCNNode) -> [SCNNode]

  /*!
   @method projectPoint
   @abstract Projects a point in the world coordinate system using the receiver's current point of view and viewport.
   @param point The world position to be projected.
   @discussion A point projected from the near (resp. far) clip plane will have a z component of 0 (resp. 1).
   */
  @available(OSX 10.9, *)
  func projectPoint(point: SCNVector3) -> SCNVector3

  /*!
   @method unprojectPoint
   @abstract Unprojects a screenspace 2D point with depth info using the receiver's current point of view and viewport.
   @param point The screenspace position to be unprojected.
   @discussion A point whose z component is 0 (resp. 1) is unprojected on the near (resp. far) clip plane.
   */
  @available(OSX 10.9, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3

  /*! 
   @property playing
   @abstract Returns YES if the scene is playing, NO otherwise.
   */
  @available(OSX 10.8, *)
  var playing: Bool

  /*! 
   @property loops
   @abstract Indicates whether the receiver restarts playback when it reaches the end of its content. Default: YES.
   @discussion YES when the receiver restarts playback when it finishes, NO otherwise.
   */
  @available(OSX 10.8, *)
  var loops: Bool

  /*! 
   @property pointOfView
   @abstract Specifies the point of view used to render the scene. 
   @discussion A point of view must have either a camera or a spot light attached.
   */
  @available(OSX 10.8, *)
  var pointOfView: SCNNode?

  /*! 
   @property autoenablesDefaultLighting
   @abstract Specifies whether the receiver should automatically light up scenes that have no light source. The default is NO.
   @discussion When enabled, a diffuse light is automatically added and placed while rendering scenes that have no light or only ambient lights.
   */
  @available(OSX 10.8, *)
  var autoenablesDefaultLighting: Bool

  /*! 
   @property jitteringEnabled
   @abstract Specifies whether the receiver should jitter the rendered scene to reduce aliasing artifacts. 
   @discussion When enabled, the jittering is performed asynchronously and automatically by SCNView and SCNLayer. It is done synchronously by SCNRenderer.
   */
  @available(OSX 10.8, *)
  var jitteringEnabled: Bool

  /*!
   @method prepareObject:shouldAbortBlock:
   @abstract Prepare the specified object for drawing.
   @param object The object to prepare. It can be an instance of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param block This block will be called repeatedly while the object is prepared. Return YES if you want the operation to abort.
   @discussion Returns YES if the object was prepared successfully, NO if it was canceled. This method may be triggered from a secondary thread. This method is observable using NSProgress.
   */
  @available(OSX 10.9, *)
  func prepareObject(object: AnyObject, shouldAbortBlock block: (() -> Bool)?) -> Bool

  /*!
   @method prepareObjects:withCompletionHandler:
   @abstract Prepare the specified objects for drawing on the background.
   @param objects The objects to prepare. It can be one or more instances of SCNScene, SCNNode, SCNGeometry, or SCNMaterial
   @param completionHandler This block will be called when all objects has been prepared, or on failure.
   @discussion This method is observable using NSProgress.
   */
  @available(OSX 10.10, *)
  func prepareObjects(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)?)

  /*!
   @property showsStatistics
   @abstract Determines whether the receiver should display statistics info like FPS. Defaults to NO.
   @discussion  When set to YES, statistics are displayed in a overlay on top of the rendered scene.
   */
  @available(OSX 10.9, *)
  var showsStatistics: Bool

  /*!
   @property debugOptions
   @abstract Specifies the debug options of the receiver. Defaults to SCNDebugOptionNone.
   */
  @available(OSX 10.11, *)
  var debugOptions: SCNDebugOptions

  /*!
   @property renderingAPI
   @abstract Specifies the rendering API associated to the receiver.
   @discussion This is the rendering API effectively used by the receiver. You can specify a preferred rendering API when initializing a view programmatically (see SCNPreferredRenderingAPI in SCNSceneRenderer.h) or using Interface Builder's SCNView inspector.
   */
  @available(OSX 10.11, *)
  var renderingAPI: SCNRenderingAPI { get }

  /*!
   @property context
   @abstract A Core OpenGL render context that is used as the render target (a CGLContextObj on OS X, an EAGLContext on iOS).
   */
  @available(OSX 10.8, *)
  var context: UnsafeMutablePointer<Void> { get }

  /*!
   @property currentRenderCommandEncoder
   @abstract The current render command encoder if any. This property is only valid within the SCNSceneRendererDelegate methods and when renderering with Metal. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }

  /*!
   @property device
   @abstract The metal device of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var device: MTLDevice? { get }

  /*!
   @property colorPixelFormat
   @abstract The pixel format of the color attachment 0 of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var colorPixelFormat: MTLPixelFormat { get }

  /*!
   @property depthPixelFormat
   @abstract The pixel format of the depth attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var depthPixelFormat: MTLPixelFormat { get }

  /*!
   @property stencilPixelFormat
   @abstract The pixel format of the stencil attachment of the renderer. This property is only valid on a renderer created with a Metal device.
   */
  @available(OSX 10.11, *)
  var stencilPixelFormat: MTLPixelFormat { get }

  /*!
   @property commandQueue
   @abstract The command queue of the renderer. This property is only valid on a renderer created with a Metal device. Otherwise it is set to nil.
   */
  @available(OSX 10.11, *)
  var commandQueue: MTLCommandQueue? { get }

  /*!
   @property audioListener
   @abstract Use this property to set the audio node to use as the listener position and orientation when rendering positional audio for this scene. The default is nil which means that the current point of view will be used dynamically.
   */
  @available(OSX 10.11, *)
  var audioListener: SCNNode?

  /*!
   @property currentTime
   @abstract Specifies the current time to display the scene.
   @discussion Deprecated, use "sceneTime" instead.
   */
  @available(OSX, introduced=10.8, deprecated=10.10)
  var currentTime: NSTimeInterval

  /*!
   @property technique
   @abstract Specifies the technique of the receiver. Defaults to nil.
   */
  @available(OSX 10.10, *)
  @NSCopying var technique: SCNTechnique?
}
typealias SCNMatrix4 = CATransform3D
struct SCNVector3 {
  var x: CGFloat
  var y: CGFloat
  var z: CGFloat
  init()
  init(x: CGFloat, y: CGFloat, z: CGFloat)
}

extension SCNVector3 {
  init(_ x: Float, _ y: Float, _ z: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double)
  init(_ x: Int, _ y: Int, _ z: Int)
  init(_ v: float3)
  init(_ v: double3)
}
struct SCNVector4 {
  var x: CGFloat
  var y: CGFloat
  var z: CGFloat
  var w: CGFloat
  init()
  init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
}

extension SCNVector4 {
  init(_ x: Float, _ y: Float, _ z: Float, _ w: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double, _ w: Double)
  init(_ x: Int, _ y: Int, _ z: Int, _ w: Int)
  init(_ v: float4)
  init(_ v: double4)
}
typealias SCNQuaternion = SCNVector4
@available(OSX 10.10, *)
let SCNMatrix4Identity: SCNMatrix4
@available(OSX 10.10, *)
let SCNVector3Zero: SCNVector3
@available(OSX 10.10, *)
let SCNVector4Zero: SCNVector4

/*! Returns true if 'a' is exactly equal to 'b'. */
func SCNVector3EqualToVector3(a: SCNVector3, _ b: SCNVector3) -> Bool

/*! Returns true if 'a' is exactly equal to 'b'. */
func SCNVector4EqualToVector4(a: SCNVector4, _ b: SCNVector4) -> Bool

/*! Returns an initialized SCNVector3 */
func SCNVector3Make(x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNVector3

/*! Returns an initialized SCNVector4 */
func SCNVector4Make(x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat) -> SCNVector4
func SCNMatrix4MakeTranslation(x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
func SCNMatrix4MakeScale(sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> SCNMatrix4
func SCNMatrix4Translate(mat: SCNMatrix4, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4MakeRotation(angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Scale(mat: SCNMatrix4, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Rotate(mat: SCNMatrix4, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Invert(mat: SCNMatrix4) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Mult(matA: SCNMatrix4, _ matB: SCNMatrix4) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4IsIdentity(mat: SCNMatrix4) -> Bool
@available(OSX 10.10, *)
func SCNMatrix4EqualToMatrix4(matA: SCNMatrix4, _ matB: SCNMatrix4) -> Bool
func SCNVector3FromGLKVector3(vector: GLKVector3) -> SCNVector3
func SCNVector3ToGLKVector3(vector: SCNVector3) -> GLKVector3
func SCNVector4FromGLKVector4(vector: GLKVector4) -> SCNVector4
func SCNVector4ToGLKVector4(vector: SCNVector4) -> GLKVector4
@available(OSX 10.10, *)
func SCNMatrix4ToGLKMatrix4(mat: SCNMatrix4) -> GLKMatrix4
@available(OSX 10.10, *)
func SCNMatrix4FromGLKMatrix4(mat: GLKMatrix4) -> SCNMatrix4

/*! @category NSValue(SceneKitAdditions)
 @abstract Adds methods to wrap vectors in NSValue objects.
 */
extension NSValue {
  /*not inherited*/ init(SCNVector3 v: SCNVector3)
  /*not inherited*/ init(SCNVector4 v: SCNVector4)
  @available(OSX 10.10, *)
  /*not inherited*/ init(SCNMatrix4 v: SCNMatrix4)
  var SCNVector3Value: SCNVector3 { get }
  var SCNVector4Value: SCNVector4 { get }
  @available(OSX 10.10, *)
  var SCNMatrix4Value: SCNMatrix4 { get }
}
let SCNErrorDomain: String
var SCNProgramCompilationError: Int { get }

/*! @header SceneKit_simd.h
    @abstract Bridge with the SIMD math library
 */
func SCNVector3ToFloat3(v: SCNVector3) -> vector_float3
func SCNVector4ToFloat4(v: SCNVector4) -> vector_float4
func SCNMatrix4ToMat4(m: SCNMatrix4) -> matrix_float4x4
func SCNVector3FromFloat3(v: vector_float3) -> SCNVector3
func SCNVector4FromFloat4(v: vector_float4) -> SCNVector4
func SCNMatrix4FromMat4(m: matrix_float4x4) -> SCNMatrix4
