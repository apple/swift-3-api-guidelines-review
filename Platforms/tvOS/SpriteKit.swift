
@available(tvOS 8.0, *)
class SK3DNode : SKNode {

  /**
   Designated initializer.
   Initialize a 3D Node with the viewport size the 3D content will be rendered with.
  */
  init(viewportSize: CGSize)

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)

  /** The viewport size that the 3D content will be rendered with */
  var viewportSize: CGSize

  /** 
   @property sceneTime
   @abstract Specifies the current time to display the scene.
  */
  var sceneTime: TimeInterval

  /**
   @method hitTest:options:
   @abstract Returns an array of SCNHitTestResult for each node that contains a specified point.
   @param thePoint A point in the coordinate system of the receiver.
   @param options Optional parameters (see the "Hit test options" group for the available options).
  */
  func hitTest(point: CGPoint, options: [String : AnyObject]? = [:]) -> [AnyObject]

  /**
   @method projectPoint
   @abstract Projects a point in the world coordinate system using the receiver's current point of view and viewport.
   @param point The world position to be projected.
   @discussion A point projected from the near (resp. far) clip plane will have a z component of 0 (resp. 1).
  */
  func projectPoint(point: vector_float3) -> vector_float3

  /**
   @method unprojectPoint
   @abstract Unprojects a screenspace 2D point with depth info using the receiver's current point of view and viewport.
   @param point The screenspace position to be unprojected.
   @discussion A point whose z component is 0 (resp. 1) is unprojected on the near (resp. far) clip plane.
  */
  func unprojectPoint(point: vector_float3) -> vector_float3

  /**
  @property playing
  @abstract Returns YES if the scene is playing, NO otherwise.
   */
  var isPlaying: Bool

  /**
   @property loops
   @abstract Indicates whether the receiver restarts playback when it reaches the end of its content. Default: YES.
   @discussion YES when the receiver restarts playback when it finishes, NO otherwise.
  */
  var loops: Bool

  /**
   @property autoenablesDefaultLighting
   @abstract Specifies whether the receiver should automatically light up scenes that have no light source. The default is NO.
   @discussion When enabled, a diffuse light is automatically added and placed while rendering scenes that have no light or only ambient lights.
   */
  var autoenablesDefaultLighting: Bool
  convenience init()
  convenience init?(fileNamed filename: String)
}

/** Adjust the timing of an action
 
 @enum SKActionTimingLinear Specifies linear pacing. Linear pacing causes an
 animation to occur evenly over its duration.
 @enum SKActionTimingEaseIn Specifies ease-in pacing. Ease-in pacing causes the
 animation to begin slowly, and then speed up as it progresses.
 @enum SKActionTimingEaseOut Specifies ease-out pacing. Ease-out pacing causes
 the animation to begin quickly, and then slow as it completes.
 @enum SKActionTimingEaseInEaseOut Specifies ease-in ease-out pacing. An
 ease-in ease-out animation begins slowly, accelerates through the middle
 of its duration, and then slows again before completing.
 */
@available(tvOS 7.0, *)
enum SKActionTimingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case EaseIn
  case EaseOut
  case EaseInEaseOut
}

/**
 A custom timing function for SKActions. Input time will be linear 0.0-1.0
 over the duration of the action. Return values must be 0.0-1.0 and increasing
 and the function must return 1.0 when the input time reaches 1.0.
 */
typealias SKActionTimingFunction = (Float) -> Float

/**
 An SKAction object is an action that is executed by a node in the scene.
 Actions are most often used to change the structure and content of the node to
 which they are attached, but can also make other changes to the scene. When
 the scene processes its nodes, actions associated with those nodes are evaluated.
 */
class SKAction : Object, Copying, Coding {

  /** The duration required to complete an action. */
  var duration: TimeInterval

  /** The timing mode used to execute an action
   @see SKActionTimingMode
   */
  var timingMode: SKActionTimingMode

  /** When set, prodives a custom timing via a block. Applies after
   the 'timingMode' property is taken into account, defaults to nil
   @see SKActionTimingFunction
   */
  @available(tvOS 8.0, *)
  var timingFunction: SKActionTimingFunction

  /** A speed factor that modifies how fast an action runs. */
  var speed: CGFloat

  /** Creates an action that reverses the behavior of another action
   
   @return This method always returns an action object; however, not all actions
   are reversible
   */
  func reversed() -> SKAction
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SKAction {

  /** Creates an action that moves a node relative to its current position
   @param delta A vector that describes the change to apply to the node’s position
   @param duration The duration of the animation
   */
  class func moveBy(delta: CGVector, duration sec: TimeInterval) -> SKAction
  class func moveByX(deltaX: CGFloat, y deltaY: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that moves a node to a new position
   @param location The coordinates for the node’s new position
   @param duration The duration of the animation
   */
  class func moveTo(location: CGPoint, duration sec: TimeInterval) -> SKAction
  class func moveToX(x: CGFloat, duration sec: TimeInterval) -> SKAction
  class func moveToY(y: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that rotates the node by a relative value
   @param radians The amount to rotate the node, in radians
   @param duration The duration of the animation
   */
  class func rotateByAngle(radians: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that rotates the node counterclockwise to an absolute angle
   @param radians The angle to rotate the node to, in radians
   @param duration The duration of the animation
   */
  class func rotateToAngle(radians: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that rotates the node to an absolute value
   @param radians The angle to rotate the node to, in radians
   @param duration The duration of the animation
   @param shortestUnitArc If YES, then the rotation is performed in whichever
   direction results in the smallest rotation. If NO, then the rotation
   is interpolated
   */
  class func rotateToAngle(radians: CGFloat, duration sec: TimeInterval, shortestUnitArc: Bool) -> SKAction

  /** Creates an action that adjusts the size of a sprite
   @param width The amount to add to the sprite’s width
   @param height The amount to add to the sprite’s height
   @param duration The duration of the animation
   */
  class func resizeByWidth(width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction

  /** Creates an action that changes the width and height of a sprite to a new absolute value
   @param width The new width of the sprite
   @param height The new height of the sprite
   @param duration The duration of the animation
   */
  class func resizeToWidth(width: CGFloat, height: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToWidth(width: CGFloat, duration: TimeInterval) -> SKAction
  class func resizeToHeight(height: CGFloat, duration: TimeInterval) -> SKAction

  /** Creates an action that changes the x and y scale values of a node by a relative value
   @param scale The amount to modify to the node’s x and y scale values
   @param sec The duration of the animation
   */
  class func scaleBy(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXBy(xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that changes the x and y scale values of a node by a relative value
   @param scale The new value for the node’s x and y scale values
   @param sec The duration of the animation
   */
  class func scaleTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXTo(xScale: CGFloat, y yScale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleXTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction
  class func scaleYTo(scale: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that runs a collection of actions sequentially
   @param sequence An array of SKAction objects
   
   @discussion When the action executes, the first action in the sequence starts
   and runs to completion. Subsequent actions in the sequence run in a
   similar fashion until all of the actions in the sequence have executed.
   The duration of the sequence action is the sum of the durations of the
   actions in the sequence.
   
   This action is reversible; it creates a new sequence action that reverses
   the order of the actions. Each action in the reversed sequence is itself
   reversed. For example, if an action sequence is {1,2,3}, the reversed
   sequence would be {3R,2R,1R}.
   */
  class func sequence(actions: [SKAction]) -> SKAction

  /** Creates an action that runs a collection of actions concurrently
   @param actions An array of SKAction objects
   
   @discussion When the action executes, the actions that comprise the group
   all start immediately and run in parallel. The duration of the group
   action is the longest duration among the collection of actions. If an
   action in the group has a duration less than the group’s duration, the
   action completes, then idles until the group completes the remaining
   actions. This matters most when creating a repeating action that repeats
   a group.
   */
  class func group(actions: [SKAction]) -> SKAction

  /** Creates an action that repeats another action a specified number of times
   @param action The action to execute
   @param count The number of times to execute the action
   */
  class func repeatAction(action: SKAction, count: Int) -> SKAction

  /** Creates an action that repeats forever
   @param action The action to execute
   */
  class func repeatForever(action: SKAction) -> SKAction

  /** Creates an action that changes the alpha value of the node to 1.0
   @param duration The duration of the animation
   */
  class func fadeInWithDuration(sec: TimeInterval) -> SKAction

  /** Creates an action that changes the alpha value of the node to 0.0
   @param duration The duration of the animation
   */
  class func fadeOutWithDuration(sec: TimeInterval) -> SKAction

  /** Creates an action that adjusts the alpha value of a node by a relative value
   @param factor The amount to modify the node’s alpha value
   @param duration The duration of the animation
   */
  class func fadeAlphaBy(factor: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that adjusts the alpha value of a node to a new value
   @param alpha The new value of the node’s alpha
   @param duration The duration of the animation
   */
  class func fadeAlphaTo(alpha: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that hides a node */
  @available(tvOS 8.0, *)
  class func hide() -> SKAction

  /** Creates an action that unhides a node */
  @available(tvOS 8.0, *)
  class func unhide() -> SKAction

  /** Creates an action that changes a sprite’s texture
   @param The new texture to use on the sprite
   */
  @available(tvOS 7.1, *)
  class func setTexture(texture: SKTexture) -> SKAction
  @available(tvOS 9.0, *)
  class func setNormalTexture(texture: SKTexture) -> SKAction

  /** Creates an action that changes a sprite’s texture, possibly resizing the sprite
   @param texture The new texture to use on the sprite
   @param resize If YES, the sprite is resized to match the new texture.
   If NO, the size of the sprite is unchanged.
   */
  @available(tvOS 7.1, *)
  class func setTexture(texture: SKTexture, resize: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func setNormalTexture(texture: SKTexture, resize: Bool) -> SKAction

  /** Creates an action that animates changes to a sprite’s texture
   @param textures An array of textures to use when animating a sprite
   @param timePerFrame The amount of time that each texture is displayed
   */
  class func animateWith(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: TimeInterval) -> SKAction

  /** Creates an action that animates changes to a sprite’s texture
   @param textures An array of textures to use when animating a sprite
   @param timePerFrame The amount of time that each texture is displayed
   @param resize If YES, the sprite is resized to match each new texture.
   If NO, the size of the sprite remains at a constant size.
   @param restore If YES, When the action completes, the sprite’s texture is restored
   to the texture it had before the action completed. (If the
   resize parameter is YES, the sprite is resized to match the
   size of the original texture.
   If NO, when the action completes the sprite’s texture remains
   set to the final texture in the array.
   */
  class func animateWith(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction
  @available(tvOS 9.0, *)
  class func animateWithNormalTextures(textures: [SKTexture], timePerFrame sec: TimeInterval, resize: Bool, restore: Bool) -> SKAction

  /** Creates an action that plays a sound
   @param soundFile The name of a sound file in the app’s bundle
   @param waitForCompletion If YES, then the duration of this action is the same
   as the length of the audio playback. If NO, the action is considered
   to have completed immediately.
   
   @discussion The file name must be the name or path of a file of a platform
   supported audio file format. Use a LinearPCM format audio file with 8 or 16 bits
   per channel for best performance */
  class func playSoundFileNamed(soundFile: String, waitForCompletion wait: Bool) -> SKAction

  /** Creates an animation that animates a sprite’s color and blend factor
   @param The new color for the sprite
   @param colorBlendFactor The new blend factor for the sprite
   @param duration The duration of the animation
   */
  class func colorizeWith(color: UIColor, colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction
  class func colorizeWithColorBlendFactor(colorBlendFactor: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that sets the falloff of a field
   @param falloff The new value for falloff
   @param duration The duration of the animation
   @see SKFieldNode
   */
  @available(tvOS 8.0, *)
  class func falloffTo(falloff: Float, duration sec: TimeInterval) -> SKAction

  /** Creates an action that sets the falloff of a field
   @param falloff The value to modify falloff by
   @param duration The duration of the animation
   @see SKFieldNode
   */
  @available(tvOS 8.0, *)
  class func falloffBy(falloff: Float, duration sec: TimeInterval) -> SKAction

  /** Creates an action that moves the node along a relative path, orienting the
   node to the path
   
   @param path A Core Graphics path whose coordinates are relative to the node’s
   current position
   @param duration The duration of the animation
   */
  class func follow(path: CGPath, duration sec: TimeInterval) -> SKAction

  /** Creates an action that moves the node along a path
   
   @param path A Core Graphics path whose coordinates are relative to the node’s
   current position
   @param asOffset If YES, the points in the path are relative offsets to the
   node’s starting position. If NO, the points in the node are absolute
   coordinate values.
   @param orientToPath If YES, the node’s zRotation property animates so that
   the node turns to follow the path. If NO, the zRotation property of
   the node is unchanged.
   @param duration The duration of the animation
   */
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, duration sec: TimeInterval) -> SKAction

  /** Creates an action that moves the node along a relative path, orienting the
   node to the path
   
   @param path A Core Graphics path whose coordinates are relative to the node’s
   current position
   @param speed The speed in pixels per second to move along the path
   */
  class func follow(path: CGPath, speed: CGFloat) -> SKAction
  class func follow(path: CGPath, asOffset offset: Bool, orientToPath orient: Bool, speed: CGFloat) -> SKAction

  /** Creates an action that changes how fast the node executes actions by a
   relative value
   @param speed amount to modify the speed by
   @param duration The duration of the animation
   */
  class func speedBy(speed: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that changes how fast the node executes actions
   @param speed The new value for the node’s speed
   @param duration The duration of the animation
   */
  class func speedTo(speed: CGFloat, duration sec: TimeInterval) -> SKAction

  /** Creates an action that performs an inverse kinematic reach.
   This action must be run on a descendent of the rootNode for animation to occur.
   Running this action on the rootNode itself will not cause any animation to occur.
   @param position The position (in screen space) to reach for
   @param rootNode Where to start the inverse kinematic operation from
   @param duration The duration of the animation
   */
  @available(tvOS 8.0, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction

  /** Creates an action that performs an inverse kinematic reach.
   This action must be run on a descendent of the rootNode for animation to occur.
   Running this action on the rootNode itself will not cause any animation to occur.
   @param position The position (in screen space) to reach for
   @param rootNode Where to start the inverse kinematic operation from
   @param velocity The speed in points per second of the end node in the chain
   */
  @available(tvOS 8.0, *)
  class func reachTo(position: CGPoint, rootNode root: SKNode, velocity: CGFloat) -> SKAction

  /** Creates an action that performs an inverse kinematic reach.
   This action must be run on a descendent of the rootNode for animation to occur.
   Running this action on the rootNode itself will not cause any animation to occur.
   @param node The node to reach for
   @param rootNode Where to start the inverse kinematic operation from
   @param duration The duration of the animation
   */
  @available(tvOS 8.0, *)
  class func reachTo(node: SKNode, rootNode root: SKNode, duration sec: TimeInterval) -> SKAction

  /** Creates an action that performs an inverse kinematic reach.
   This action must be run on a descendent of the rootNode for animation to occur.
   Running this action on the rootNode itself will not cause any animation to occur.
   @param node The node to reach for
   @param rootNode Where to start the inverse kinematic operation from
   @param velocity The speed in points per second of the end node in the chain
   */
  @available(tvOS 8.0, *)
  class func reachTo(node: SKNode, rootNode root: SKNode, velocity: CGFloat) -> SKAction

  /** Creates an action that sets the strength of a field
   @param strength The new value for strength
   @param duration The duration of the animation
   @see SKFieldNode
   */
  @available(tvOS 8.0, *)
  class func strengthTo(strength: Float, duration sec: TimeInterval) -> SKAction

  /** Creates an action that sets the strength of a field
   @param strength The value to modify strength by
   @param duration The duration of the animation
   @see SKFieldNode
   */
  @available(tvOS 8.0, *)
  class func strengthBy(strength: Float, duration sec: TimeInterval) -> SKAction

  /** Creates an action that idles for a specified period of time
   @param duration The duration of the idle
   */
  class func waitForDuration(sec: TimeInterval) -> SKAction

  /** Creates an action that idles for a randomized period of time
   @param withRange The range of possible values for the duration
   */
  class func waitForDuration(sec: TimeInterval, withRange durationRange: TimeInterval) -> SKAction

  /** Creates an action that removes the node from its parent */
  class func removeFromParent() -> SKAction

  /** Creates an action that calls a method on an object
   @param selector The selector of the method to call
   @param onTarget The target object
   */
  class func perform(selector: Selector, onTarget target: AnyObject) -> SKAction

  /** Creates an action that executes a block
   @param block The block to run
   */
  class func run(block: dispatch_block_t) -> SKAction

  /** Creates an action that executes a block
   @param block The block to run
   @param queue The queue to perform the action on
   */
  class func run(block: dispatch_block_t, queue: dispatch_queue_t) -> SKAction

  /** Creates an action that runs an action on a named child object
   @param action the action to run
   @param name the name of a child object
   @see SKNode.name
   */
  class func run(action: SKAction, onChildWithName name: String) -> SKAction

  /** Creates an action that executes a block over a duration
   @param duration The duration of the animation
   @param actionBlock The block to run. The block takes the following parameters:
   node The node on which the action is running.
   elapsedTime The amount of time that has passed in the animation.
   */
  class func customActionWithDuration(seconds: TimeInterval, actionBlock block: (SKNode, CGFloat) -> Void) -> SKAction

  /** Creates an action of the given name from an action file.
   @param name The name of the action
   */
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String)

  /** Creates an action of the given name from an action file with a new duration.
   @param name The name of the action
   @param duration The duration of the action
   */
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, duration sec: TimeInterval)

  /** Creates an action of the given name from an action file.
   @param name The name of the action
   @param url The url of the file containing the action
   */
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL)

  /** Creates an action of the given name from an action file with a new duration.
   @param name The name of the action
   @param url The url of the file containing the action
   @param duration The duration of the action
   */
  @available(tvOS 9.0, *)
  /*not inherited*/ init?(named name: String, from url: URL, duration sec: TimeInterval)
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeChargeTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeChargeBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMassTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeMassBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(force: CGVector, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyForce(force: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyTorque(torque: CGFloat, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(impulse: CGVector, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyImpulse(impulse: CGVector, at point: CGPoint, duration sec: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func applyAngularImpulse(impulse: CGFloat, duration sec: TimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func play() -> SKAction
  @available(tvOS 9.0, *)
  class func pause() -> SKAction
  @available(tvOS 9.0, *)
  class func stop() -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRateTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changePlaybackRateBy(v: Float, duration: TimeInterval) -> SKAction
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func changeVolumeTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeVolumeBy(v: Float, duration: TimeInterval) -> SKAction
}

/**
 * A SpriteKit scene graph audio node that provides a way to link audio graphs to a SpriteKit scene.
 * The currently presented scene is responsible for mixing the audio from nodes in the scene.
 *
 * Positional sounds will use their relative location and velocity to the scene's listener to apply distance
 * attenuation, doppler shift and pan.
 * 
 * @see AVAudio3DMixing
 * @see SKScene.listener
 */
@available(tvOS 9.0, *)
class SKAudioNode : SKNode, Coding {
  init?(coder aDecoder: Coder)

  /**Convenience initializer that creates an AVAudioNode from the named audio asset in the main bundle.
   * @see initWithAVAudioNode
   */
  convenience init(fileNamed name: String)

  /**Convenience initializer that creates an AVAudioNode from the URL that contain a audio asset.
   * @see initWithAVAudioNode
   */
  convenience init(url: URL)

  /**Specifies whether the node is to automatically play sound when added to a scene.
   * If autoplaysLooped is NO, the node and its sound must be explicitly scheduled and played using
   * the scene's engine.
   *
   * If YES, the node will automatically play sound when added to a scene.
   *
   * Defaults to YES.
   * @see SKView.paused
   */
  var autoplayLooped: Bool

  /**Marks the audio source as positional so that the audio mix considers relative position and velocity
   * with regards to the scene's current listener node.
   *
   * @see AVAudio3DMixing
   * @see SKScene.listener
   */
  var isPositional: Bool
  convenience init()
}

/**Actions that are to be used with audio nodes.
 */
extension SKAction {
  @available(tvOS 9.0, *)
  class func stereoPanTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func stereoPanBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverbTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverbBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstructionTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstructionBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusionTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusionBy(v: Float, duration: TimeInterval) -> SKAction
}

/**A Camera node is a full fledged SKNode that can have actions and physics applied to it.
 * It also uses the standard SKNode transform system so modifying the camera node's position
 * is how you translate the camera's viewport. Applying a scale to the node would zoom
 * the viewport in or out etc. As an added benefit you can now rotate the viewport by
 * applying a zRotation to the camera node, just as you would with any other SKNode.
 *
 * The camera viewport is centered on the camera's position. It uses the scene's frame
 * and scale mode along with the node transforms to determine the size, origin and
 * rotation of the viewport.
 *
 * There are some convenience functions included for testing if nodes are contained
 * within the camera viewport. It can be used to determine if objects are no longer
 * visible on the display.
 *
 * In order to use a camera; set it on the scene that contains the camera.
 * @see SKScene.camera
 */
@available(tvOS 9.0, *)
class SKCameraNode : SKNode {

  /**Checks if the node is contained inside the viewport of the camera.
   * The camera and node must both be in the same scene and presented on a view in order
   * to determine if the node is inside the camera viewport rectangle.
   *
   * @return YES if the node is inside the viewport. NO if node is nil or the node is outside the viewport.
   */
  func contains(node: SKNode) -> Bool

  /**Returns the set of nodes in the same scene as the camera that are contained within its viewport.
   * @return the set of nodes contained
   */
  func containedNodeSet() -> Set<SKNode>
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}

/**
 SKRange object used to define a range of allowable values 
 */
@available(tvOS 8.0, *)
class SKRange : Object, Coding, Copying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value: CGFloat, variance: CGFloat)
  class func withNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
  convenience init()
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/**
 SKConstraints are evaluated each frame after actions and physics.
 The node's transform will be changed to staisfy the constarint
 */
@available(tvOS 8.0, *)
class SKConstraint : Object, Coding, Copying {
  var enabled: Bool
  var referenceNode: SKNode?

  /**
   Constrain the node's position to a range
   */
  class func positionX(range: SKRange) -> Self
  class func positionY(range: SKRange) -> Self
  class func positionX(xRange: SKRange, y yRange: SKRange) -> Self

  /**
   Constrain the node's position to be within a distance of a point or node
   */
  class func distance(range: SKRange, to node: SKNode) -> Self
  class func distance(range: SKRange, to point: CGPoint) -> Self
  class func distance(range: SKRange, to point: CGPoint, in node: SKNode) -> Self

  /**
   Constrain the node's rotation to a range
   */
  class func zRotation(zRange: SKRange) -> Self

  /**
   Constrain the node's rotation to orient to a point or node
   */
  class func orientTo(node: SKNode, offset radians: SKRange) -> Self
  class func orientTo(point: CGPoint, offset radians: SKRange) -> Self
  class func orientTo(point: CGPoint, in node: SKNode, offset radians: SKRange) -> Self
  init()
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}

/**
 A SpriteKit node that masks child nodes using another node's alpha component
 */
class SKCropNode : SKNode {

  /**
   SKNode to be used as the mask.
   
   The SKNode supplied as the mask must not be a child of another node, but it may have children. Anywhere the mask's output alpha component is less than 0.05 masks out that area for the SKCropNode's children. If the mask is nil, nothing is masked out.
   */
  var maskNode: SKNode?
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}

/**
 A SpriteKit node that applies frame buffer effects to the rendered results of its child nodes. This is done continuously on live content and is not a simple snapshot of the rendered result at one instant of time.
 */
class SKEffectNode : SKNode {

  /**
   A CIFilter to be used as an effect
   
   Any CIFilter that requires only a single "inputImage" and produces an "outputImage" is allowed. The filter is applied to all children of the SKEffectNode. If the filter is nil, the children of this node is flattened before being drawn as long as the SKEffectNode is enabled.
   */
  var filter: CIFilter?
  var shouldCenterFilter: Bool

  /**
   Enable the SKEffectNode.
   
   The SKEffectNode has no effect when appliesEffects is not enabled, this is useful for setting up an effect to use later on. Defaults to YES.
   */
  var shouldEnableEffects: Bool

  /**
   Enable the rasterization on the SKEffectNode.
   
   The SKEffectNode's output is rasterized and cached internally. This cache is reused when rendering. When the SKEffectNode's children change, the cache is updated, but changing properties on the CIFilter does *not* cause an update (you must disable rasterization and then re-enable it for the changes to apply). This is more expensive than not rasterizing if the node's children change frequently, only enable this option if you know the children is largely static.
   */
  var shouldRasterize: Bool

  /**
   Sets the blend mode to use when composing the effect with the final framebuffer.
   @see SKNode.SKBlendMode
   */
  var blendMode: SKBlendMode
  var shader: SKShader?
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
@available(tvOS 9.0, *)
enum SKParticleRenderOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OldestLast
  case OldestFirst
  case DontCare
}

/**
 An emitter of particle sprites.
 */
class SKEmitterNode : SKNode {

  /**
   The particle simulation is stepped automatically each frame when present in the scene. This allows the user to manually advance the simulation by a fixed amount of time. Useful for pre-populating particles before adding them to the scene.
   */
  func advanceSimulationTime(sec: TimeInterval)
  func resetSimulation()

  /**
   The texture to be used for the particles.
   */
  var particleTexture: SKTexture?

  /**
   The blend mode for each particle. Defaults to SKBlendModeAlpha.
   */
  var particleBlendMode: SKBlendMode

  /**
   The starting color for each particle. Defaults to clear.
   */
  var particleColor: UIColor

  /**
   The random variance about each color component for each particle. Defaults to 0.0.
   */
  var particleColorRedRange: CGFloat
  var particleColorGreenRange: CGFloat
  var particleColorBlueRange: CGFloat
  var particleColorAlphaRange: CGFloat

  /**
   The rate at which to modify each color component for each particle (per second).
   */
  var particleColorRedSpeed: CGFloat
  var particleColorGreenSpeed: CGFloat
  var particleColorBlueSpeed: CGFloat
  var particleColorAlphaSpeed: CGFloat
  var particleColorSequence: SKKeyframeSequence?

  /**
   The starting color blend for each particle. Behaves the same as SKSpriteNode. Defaults to 0.0.
   */
  var particleColorBlendFactor: CGFloat

  /**
   The random variance about the starting color blend for each particle. Defaults to 0.0.
   */
  var particleColorBlendFactorRange: CGFloat

  /**
   The rate at which to modify the color blend for each particle. Defaults to 0.0.
   */
  var particleColorBlendFactorSpeed: CGFloat
  var particleColorBlendFactorSequence: SKKeyframeSequence?

  /**
   The starting position for each particle in the emitter's coordinate space. Defaults to (0.0, 0,0).
   */
  var particlePosition: CGPoint

  /**
   The random variance about the starting position for each particle in the emitter's coordinate space. Defaults to (0.0, 0,0).
   */
  var particlePositionRange: CGVector

  /**
   The starting speed for each particle along its emission vector. Defaults to 0.0.
   */
  var particleSpeed: CGFloat

  /**
   The random variance about the starting speed for each particle along its emission vector. Defaults to 0.0.
   */
  var particleSpeedRange: CGFloat

  /**
   The angle at which to emit each new particle, in radians. Defaults to 0.0.
   */
  var emissionAngle: CGFloat

  /**
   The random variance about the angle at which to emit each new particle, in radians. Defaults to 0.0.
   */
  var emissionAngleRange: CGFloat

  /**
   The acceleration to apply to each particles velocity. Useful for simulating effects such as wind or gravity. Defaults to 0.0.
   */
  var xAcceleration: CGFloat
  var yAcceleration: CGFloat

  /**
   The rate at which new particles are generated, in particles per second. Defaults to 0.0.
   */
  var particleBirthRate: CGFloat

  /**
   The number of particles that will be emitted. If set to 0, there is no limit. Defaults to 0.
   */
  var numParticlesToEmit: Int

  /**
   The lifetime of each particle, in seconds. Defaults to 0.0.
   */
  var particleLifetime: CGFloat

  /**
   The random variance about the lifetime of each particle, in seconds. Defaults to 0.0.
   */
  var particleLifetimeRange: CGFloat

  /**
   The starting z-rotation for each particle. Defaults to 0.0.
   */
  var particleRotation: CGFloat

  /**
   The random variance about the starting z-rotation for each particle. Defaults to 0.0.
   */
  var particleRotationRange: CGFloat

  /**
   The rate at which to modify the z-rotation for each particle. Defaults to 0.0.
   */
  var particleRotationSpeed: CGFloat

  /**
   The starting size for each particle. If set to CGSizeZero (the default) the particles will start at the size of the texture assigned to particleTexture. Note that particleScale and particleScaleRange will also have an effect on the effective size of each new particle.
   */
  var particleSize: CGSize

  /**
   The starting scale for each particle. Defaults to 1.0.
   */
  var particleScale: CGFloat

  /**
   The random variance about the starting scale for each particle. Defaults to 0.0.
   */
  var particleScaleRange: CGFloat

  /**
   The rate at which to modify the scale for each particle. Defaults to 0.0.
   */
  var particleScaleSpeed: CGFloat
  var particleScaleSequence: SKKeyframeSequence?

  /**
   The starting alpha for each particle. Defaults to 1.0.
   */
  var particleAlpha: CGFloat

  /**
   The random variance about the starting alpha for each particle. Defaults to 1.0.
   */
  var particleAlphaRange: CGFloat

  /**
   The rate at which to modify the alpha for each particle. Defaults to 1.0.
   */
  var particleAlphaSpeed: CGFloat
  var particleAlphaSequence: SKKeyframeSequence?

  /**
   The rate at which to modify the alpha for each particle. Defaults to 1.0.
   */
  @NSCopying var particleAction: SKAction?

  /**
   Defines what logical 'categories' of fields this particles emitted respond to. Defaults to all bits set (all categories).
   Can be forced off via affectedByGravity.
   */
  var fieldBitMask: UInt32

  /**
   Normally the particles are rendered as if they were a child of the SKEmitterNode, they can also be rendered as if they were a child of any other node in the scene by setting the targetNode property. Defaults to nil (standard behavior).
   */
  weak var targetNode: @sil_weak SKNode?
  var shader: SKShader?

  /**
   The starting z-position for each particle. Defaults to 0.0.
   */
  var particleZPosition: CGFloat

  /**
   The order in which particles will be rendered. Defaults to SKParticleRenderOrderOldestLast.
   */
  @available(tvOS 9.0, *)
  var particleRenderOrder: SKParticleRenderOrder

  /**
   The random variance about the starting z-position for each particle. Defaults to 0.0.
   */
  @available(tvOS, introduced=7.0, deprecated=8.0)
  var particleZPositionRange: CGFloat

  /**
   The rate at which to modify the z-position for each particle. Defaults to 0.0.
   */
  @available(tvOS, introduced=7.0, deprecated=8.0)
  var particleZPositionSpeed: CGFloat
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
@available(tvOS 8.0, *)
class SKFieldNode : SKNode {

  /** The region property is the domain of the field's effect. No force is applied to objects outside the region.
   */
  var region: SKRegion?

  /** strength scaling value. default 1.0 */
  var strength: Float

  /** The falloff exponent used to calculate field strength at a distance.
      Falloff starts at the minimum radius.
  
      The default exponent is zero, which results in a uniform field with no falloff.
   
      @see minimumRadius
   */
  var falloff: Float

  /** minimum radius of effect. Default is very small. */
  var minimumRadius: Float

  /** If enabled, a field has an effect.
      
      default YES
   */
  var isEnabled: Bool

  /** If a field is exclusive, it suppresses any other field in its region of effect.
      If two or more exclusive fields overlap, it is undefined which one of them will take effect
   
      @see region
   */
  var isExclusive: Bool

  /** Logical categories the field belongs to. Default is all categories.
      These categories correspond to fieldBitMasks, and can be used to enforce that a particular field applies
      to a particular category of objects.
   
      @see SKPhysicsBody.fieldBitMask
      @see SKEmitterNode.fieldBitMask
   */
  var categoryBitMask: UInt32

  /** directed fields' directions can be accessed here. If the field is non-directional, a zero vector will be returned
   
   @see linearGravityFieldWithVector:direction
   @see velocityFieldWithVector:direction
   */
  var direction: vector_float3

  /** fields without a smoothness component will return 0
   
      @see noiseFieldWithSmoothness:smoothness:animationSpeed
      @see turbulenceFieldWithSmoothness:smoothness:animationSpeed
   */
  var smoothness: Float

  /** fields that can be animated can have non zero values.
   
      A value of 2 will animated twice as fast as a value of 1.
   
     @see noiseFieldWithSmoothness:smoothness:animationSpeed
     @see turbulenceFieldWithSmoothness:smoothness:animationSpeed
   */
  var animationSpeed: Float

  /** fields constructed with a texture can be uppdated by assigning a new texture
   
      @see velocityFieldWithTexture:velocityTexture
   */
  var texture: SKTexture?

  /**
   Slows an object proportionally to the object’s velocity.
   Use this to simulate effects such as friction from motion through the air.
   */
  class func dragField() -> SKFieldNode

  /**
   Applies a force tangential to the direction from the sample point to the field's position.
   The force will be CCW to the direction. Make the strength negative to apply force in the CW direction.
   Amount is proportional to distance from center and the object's mass.
   Use this to create effects such as tornadoes.
   */
  class func vortexField() -> SKFieldNode

  /**
   Applies a force in the direction of the origin of the field in local space. To repel objects, use a negative strength.
   The force is proportional to the distance from the field origin. Varies with the mass of the object according to F = ma
   The field node's rotation property can be used to orient the gravity in a particular direction.
   */
  class func radialGravityField() -> SKFieldNode

  /**
   Applies a force in the direction of the vector in the local space. To repel objects, use a negative strength.
   The force is the same everywhere in the field. Varies with the mass of the object according to F = ma
   The field node's rotation property can be used to orient the gravity in a particular direction.
   @param direction The direction the force is applied in the x,y plane. The length of the direction vector is multiplied by the field's strength property to get the final calculated force. All three components of the direction vector are used to calculate the length.
   
   @see direction
   */
  class func linearGravityFieldWithVector(direction: vector_float3) -> SKFieldNode

  /**
   Uses the supplied velocity vector for any object entering the field’s area of effect.
   Velocity fields override the effect of any other acceleration applied to the body.
   Velocity fields are typically used for such effects as advection, for example, a velocity field
   might describe the velocity on the surface of a river. An object placed in the river would then follow the river.
  
   @param direction The directed velocity that will be applied to the body. The z component is ignored.
  
   @see direction
   */
  class func velocityFieldWithVector(direction: vector_float3) -> SKFieldNode

  /**
   The supplied texture contains velocity values for any object entering the field’s area of effect.
   If no texture is supplied, the direction property is used instead.
   Velocity fields override the effect of any other acceleration applied to the body.
   Velocity fields are typically used for such effects as advection, for example, a velocity field
   might describe the velocity on the surface of a river. An object placed in the river would then follow the river.
  
   @param velocityTexture The R and G channels of the supplied texture become x and y components of velocity. B and A, if present in the SKTexture, are ignored.
   
   @see texture
   */
  class func velocityFieldWith(velocityTexture: SKTexture) -> SKFieldNode

  /**
   A time varying differentiable Perlin simplex noise field. By default a smooth noise is calculated,
   and the field is time varying. Use this to simulate such effects as fireflies, or snow.
   To freeze the noise in place, set animationSpeed to 0.0. Mass is ignored.
  
   @param smoothness value of 0 means as noisy as possible, 1 means as smooth as possible
   @param animationSpeed is the general rate in Hz that any particular texel changes to a different value
   
   @see smoothness
   @see animationSpeed
   */
  class func noiseFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode

  /**
   Just like Noise, except the strength of the noise is proportional to the velocity of the object in the field.
   
   @param smoothness value of 0 means as noisy as possible, 1 means as smooth as possible
   @param animationSpeed is the general rate in Hz that any particular texel changes to a different value
   
   @see smoothness
   @see animationSpeed
   */
  class func turbulenceFieldWithSmoothness(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SKFieldNode

  /**
   A Hooke’s law force - a force linearly proportional to distance from the center of the field. An object in this
   field will oscillate with a period proportional to the inverse of the mass.
   An example use is to keep objects confined to a particular region.
   */
  class func springField() -> SKFieldNode

  /**
   A force proportional to the charge on the object. A charge property has been
   added to SKPhysicsBodies to accomplish this. An example use of this field is to make objects behavior differently
   from one another when they enter a region, or to make an object's behavior different than its mass based behavior
   This field models the first part of the Lorentz equation, F = qE
   */
  class func electricField() -> SKFieldNode

  /**
   A force proportional to the charge on the object and the object’s velocity. A charge property has been
   added to SKPhysicsBodies to accomplish this. An example use of this field is to make objects behavior differently
   from one another when they enter a region, or to make an object's behavior different than its mass based behavior
   This field models the second part of the Lorentz equation, F = qvB
   */
  class func magneticField() -> SKFieldNode
  class func customFieldWithEvaluationBlock(block: SKFieldForceEvaluator) -> SKFieldNode
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}

/**
 A field force with a custom force evaluator.
 
 @param position The location to evaluate the force at
 @param velocity The velocity to be considered during force evaluation. Useful for calculating drag.
 @param mass The mass to be taken into account during force evaluation
 @param charge The charge to be taken into accoutn during force evaluation
 @param deltaTime The current time step
 */
typealias SKFieldForceEvaluator = (vector_float3, vector_float3, Float, Float, TimeInterval) -> vector_float3
enum SKInterpolationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Linear
  case Spline
  case Step
}
enum SKRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Clamp
  case Loop
}
class SKKeyframeSequence : Object, Coding, Copying {
  init(keyframeValues values: [AnyObject], times: [Number])
  convenience init(capacity numItems: Int)

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  func count() -> Int
  func addKeyframeValue(value: AnyObject, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframeAt(index: Int)
  func setKeyframeValue(value: AnyObject, forIndex index: Int)
  func setKeyframeTime(time: CGFloat, forIndex index: Int)
  func setKeyframeValue(value: AnyObject, time: CGFloat, forIndex index: Int)
  func getKeyframeValueFor(index: Int) -> AnyObject
  func getKeyframeTimeFor(index: Int) -> CGFloat
  func sampleAtTime(time: CGFloat) -> AnyObject?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
  convenience init()
  func encodeWith(aCoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 7.0, *)
enum SKLabelVerticalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Baseline
  case Center
  case Top
  case Bottom
}
@available(tvOS 7.0, *)
enum SKLabelHorizontalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Center
  case Left
  case Right
}

/**
 A node that displays a text label with a given font.
 */
class SKLabelNode : SKNode {
  convenience init(text: String?)
  init(fontNamed fontName: String?)
  var verticalAlignmentMode: SKLabelVerticalAlignmentMode
  var horizontalAlignmentMode: SKLabelHorizontalAlignmentMode
  var fontName: String?
  var text: String?
  var fontSize: CGFloat

  /**
   Base color that the text is rendered with (if supported by the font)
   */
  var fontColor: UIColor?

  /**
   Controls the blending between the rendered text and a color. The valid interval of values is from 0.0 up to and including 1.0. A value above or below that interval is clamped to the minimum (0.0) if below or the maximum (1.0) if above.
   */
  var colorBlendFactor: CGFloat

  /**
   Color to be blended with the text based on the colorBlendFactor
   */
  var color: UIColor?

  /**
   Sets the blend mode to use when composing the sprite with the final framebuffer.
   @see SKNode.SKBlendMode
   */
  var blendMode: SKBlendMode
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
@available(tvOS 8.0, *)
class SKLightNode : SKNode {

  /**
   Enables or disables lighting contribution from this light node.
   
   Set to YES; sprites using this light will be lit with the ambient color and
   the light color, with a falloff in intensity according to the falloff property.
   
   Set to NO; this light does not contribute any lighting.
   
   If no lights are active on a sprite it will be drawn normally, as if not lit.
   
   The default value is YES.
   
   @see lightColor
   @see falloff
   @see categoryBitMask
   */
  var isEnabled: Bool

  /**
   Diffuse and Specular color of the light source, defaults to opaque white.
   
   The alpha component of the color is ignored.
   
   If using shaders bind a uniform to this property to use scene based custom lighting.
   
   @see SKUniform
   @see falloff
   */
  var lightColor: UIColor

  /**
   Ambient color of the light source, defaults to black.
   
   If you had only a single light in the scene with an ambient color
   of opaque white and a light color of black,
   it would appear as if the scene was rendered without lighting.
   
   The alpha component of the color is ignored. The color is not
   affected by falloff or surface normals.
   
   @see lightColor
   */
  var ambientColor: UIColor

  /**
   Color of the shadow casted on occluded objects, defaults to half opacity black.
   
   The alpha component of the color is used for blending with the regions that are in shadow.
   
   @see SKSpriteNode.shadowCastBitMask
   @see SKSpriteNode.shadowedBitMask
   */
  var shadowColor: UIColor

  /**
   Falloff in intensity of the light over distance, defaults to 1.
   The falloff does not affect the ambient color nor the shadow color.
   
   @see lightColor
   */
  var falloff: CGFloat

  /**
   The category of the light, which determines the group(s) a light belongs to.
   Any node that has its corresponding light and shadow bitmasks set to an overlapping value
   will be lit, shadow casting or shadowed by this light.
  
   @see SKSpriteNode.lightingBitMask
   @see SKSpriteNode.shadowCastBitMask
   @see SKSpriteNode.shadowedBitMask
   */
  var categoryBitMask: UInt32
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
@available(tvOS 8.0, *)
class SKMutableTexture : SKTexture {

  /**
   Create a mutable texture with a specfic size.
   
   @param size the dimension to use when creating the given texture.
   */
  init(size: CGSize)

  /**
   Create a mutable texture with a specfic size and type.
   
   @param size the dimension to use when creating the given texture.
   @param format the CoreVideo format type.  supported types include 'RGBA', 'RGhA', and 'RGfA' for byte, half-float, and float components.
   */
  init(size: CGSize, pixelFormat format: Int32)

  /**
   Modify the created mutable texture.
   */
  func modifyPixelDataWith(block: (UnsafeMutablePointer<Void>, Int) -> Void)

  /**
   Create a texture from an image file. Behaves similar to imageNamed: in UIImage or NSImage
   
   @param name the name or path of the image to load.
   */
  convenience init(imageNamed name: String)

  /**
   Create a texture that is a subrect of an existing texture. See textureRect property for details.
   
   @param rect the source rectangle to use in creating a logical copy of the given texture.
   @param texture the existing texture to reference in the copy.
   */
  convenience init(rect: CGRect, in texture: SKTexture)

  /**
   Create a texture containing directional noise. The RGBA values in this
   texture can be used as a normal map or as direction possibly with length. XYZ are a three dimensional direction, and A is a magnitude.
   
   @param rect the size of the resulting texture.
   @param smoothness how similar neighboring pixels are. A value of zero is like static, one is smooth.
   */
  @available(tvOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)

  /**
   Create a texture containing colored noise. The noise texture is tileable with itself.
   
   @param rect the size of the resulting texture.
   @param smoothness how similar neighboring pixels are. A value of zero is like static, one is smooth.
   @param grayscale if YES, RGB and A will all be the same. If no, RGB and A will all be different. A is not pre-multiplied, because the intent is that if you read a texel in a shader, all four values will be exactly the same value if grayscale, or four different, uncorrelated values if not grayscale.
   */
  @available(tvOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)

  /**
   Create a texture from a CGImageRef.
   
   @param image the CGImageRef to create the texture from
   */
  convenience init(cgImage image: CGImage)
  convenience init(image: UIImage)

  /**
   Create new texture with bitmap RGBA data in unsigned bytes. Data is copied once, additional changes to the data does not affect the texture. All pixel data is assumed to be premultiplied alpha.
   
   @param pixelData the pixelData to read in creating the texture.
   @param size the dimensions of the pixelData given.
   */
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)

  /**
   Create new texture with bitmap RGBA data in unsigned bytes using a custom row length and row alignment. Data is copied once, additional changes to the data does not affect the texture. All pixel data is assumed to be premultiplied alpha.
   
   @param pixelData the data to use
   @param size the size in texels
   @param rowLength the length of each row in pixels (allows byte row pitches greater than the width for aligned data)
   @param alignment the byte alignment of the data, provide 0 for tightly packed data.
  
   */
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)
  init()
  init?(coder aDecoder: Coder)
}

/**
 Blend modes that the SKNode uses to compose with the framebuffer to produce blended colors.
 */
@available(tvOS 7.0, *)
enum SKBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case MultiplyX2
  case Screen
  case Replace
}
class SKNode : UIResponder, Copying, Coding {
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
  var frame: CGRect { get }

  /**
   Calculates the bounding box including all child nodes in parents coordinate system.
   */
  func calculateAccumulatedFrame() -> CGRect

  /**
   The position of the node in the parent's coordinate system
   */
  var position: CGPoint

  /**
   The z-order of the node (used for ordering). Negative z is "into" the screen, Positive z is "out" of the screen. A greater zPosition will sort in front of a lesser zPosition.
   */
  var zPosition: CGFloat

  /**
   The Euler rotation about the z axis (in radians)
   */
  var zRotation: CGFloat

  /**
   The scaling in the X axis
   */
  var xScale: CGFloat

  /**
   The scaling in the Y axis
   */
  var yScale: CGFloat

  /**
   The speed multiplier applied to all actions run on this node. Inherited by its children.
   */
  var speed: CGFloat

  /**
   Alpha of this node (multiplied by the output color to give the final result)
   */
  var alpha: CGFloat

  /**
   Controls whether or not the node's actions is updated or paused.
   */
  var isPaused: Bool

  /**
   Controls whether or not the node and its children are rendered.
   */
  var isHidden: Bool

  /**
   Controls whether or not the node receives touch events
   */
  var isUserInteractionEnabled: Bool

  /**
   The parent of the node.
   
   If this is nil the node has not been added to another group and is thus the root node of its own graph.
   */
  var parent: SKNode? { get }

  /**
   The children of this node.
   
   */
  var children: [SKNode] { get }

  /**
   The client assignable name.
   
   In general, this should be unique among peers in the scene graph.
   */
  var name: String?

  /**
   The scene that the node is currently in.
   */
  var scene: SKScene? { get }

  /**
   Physics body attached to the node, with synchronized scale, rotation, and position
   */
  var physicsBody: SKPhysicsBody?

  /**
   An optional dictionary that can be used to store your own data in a node. Defaults to nil.
   */
  var userData: MutableDictionary?

  /**
   Kinematic constraints, used in IK solving
   */
  @NSCopying var reachConstraints: SKReachConstraints?

  /**
   Optional array of SKConstraints
   Constraints are evaluated each frame after actions and physics.
   The node's transform will be changed to satisfy the constraint.
   */
  var constraints: [SKConstraint]?

  /**
   Sets both the x & y scale
   
   @param scale the uniform scale to set.
   */
  func setScale(scale: CGFloat)

  /**
   Adds a node as a child node of this node
   
   The added node must not have a parent.
   
   @param node the child node to add.
   */
  func addChild(node: SKNode)
  func insertChild(node: SKNode, at index: Int)
  func removeChildrenIn(nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveToParent(parent: SKNode)
  func childNodeWithName(name: String) -> SKNode?
  func enumerateChildNodesWithName(name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)

  /**
   * Simplified shorthand for enumerateChildNodesWithName that returns an array of the matching nodes.
   * This allows subscripting of the form:
   *      NSArray *childrenMatchingName = node[@"name"]
   *
   * or even complex like:
   *      NSArray *siblingsBeginningWithA = node[@"../a*"]
   *
   * @param name An Xpath style path that can include simple regular expressions for matching node names.
   * @see enumerateChildNodesWithName:usingBlock:
   */
  @available(tvOS 8.0, *)
  subscript (name: String) -> [SKNode] { get }
  func inParentHierarchy(parent: SKNode) -> Bool
  func run(action: SKAction)
  func run(action: SKAction, completion block: () -> Void)
  func run(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionForKey(key: String) -> SKAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  func contains(p: CGPoint) -> Bool

  /**Returns the node itself or a child node at the point given.
   * If the receiver is returned there is no child node at the given point.
   * @return a child node or self at the given location.
   */
  func atPoint(p: CGPoint) -> SKNode
  func nodesAt(p: CGPoint) -> [SKNode]
  func convert(point: CGPoint, from node: SKNode) -> CGPoint
  func convert(point: CGPoint, to node: SKNode) -> CGPoint
  func intersectsNode(node: SKNode) -> Bool
  func isEqualTo(node: SKNode) -> Bool
  class func obstaclesFromSpriteTextures(sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstaclesFromNodeBounds(nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFromNodePhysicsBodies(nodes: [SKNode]) -> [AnyObject]
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
extension UITouch {
  func locationIn(node: SKNode) -> CGPoint
  func previousLocationIn(node: SKNode) -> CGPoint
}

/**
 A SpriteKit physics body. These are the physical representations of your nodes. These specify the area and mass and any collision masking needed.
 
 All bodies have zero, one or more shapes that define its area. A body with no shapes is ethereal and does not collide with other bodies.
 */
class SKPhysicsBody : Object, Copying, Coding {

  /**
   Creates a circle of radius r centered at the node's origin.
   @param r the radius in points
   */
  /*not inherited*/ init(circleOfRadius r: CGFloat)

  /**
   Creates a circle of radius r centered at a point in the node's coordinate space.
   @param r the radius in points
   */
  /*not inherited*/ init(circleOfRadius r: CGFloat, center: CGPoint)

  /**
   Creates a rectangle of the specified size centered at the node's origin.
   @param s the size in points
   */
  /*not inherited*/ init(rectangleOf s: CGSize)

  /**
   Creates a rectangle of the specified size centered at a point in the node's coordinate space.
   @param s the size in points
   */
  /*not inherited*/ init(rectangleOf s: CGSize, center: CGPoint)

  /**
   The path must represent a convex or concave polygon with counter clockwise winding and no self intersection. Positions are relative to the node's origin.
   @param path the path to use
   */
  /*not inherited*/ init(polygonFrom path: CGPath)

  /**
   Creates an edge from p1 to p2. Edges have no volume and are intended to be used to create static environments. Edges can collide with bodies of volume, but not with each other.
   @param p1 start point
   @param p2 end point
   */
  /*not inherited*/ init(edgeFrom p1: CGPoint, to p2: CGPoint)

  /**
   Creates an edge chain from a path. The path must have no self intersection. Edges have no volume and are intended to be used to create static environments. Edges can collide with bodies of volume, but not with each other.
   @param path the path to use
   */
  /*not inherited*/ init(edgeChainFrom path: CGPath)

  /**
   Creates an edge loop from a path. A loop is automatically created by joining the last point to the first. The path must have no self intersection. Edges have no volume and are intended to be used to create static environments. Edges can collide with body's of volume, but not with each other.
   @param path the path to use
   */
  /*not inherited*/ init(edgeLoopFrom path: CGPath)

  /**
   Creates an edge loop from a CGRect. Edges have no volume and are intended to be used to create static environments. Edges can collide with body's of volume, but not with each other.
   @param rect the CGRect to use
   */
  /*not inherited*/ init(edgeLoopFrom rect: CGRect)

  /**
   Creates a body from the alpha values in the supplied texture.
   @param texture the texture to be interpreted
   @param size of the generated physics body
   */
  @available(tvOS 8.0, *)
  /*not inherited*/ init(texture: SKTexture, size: CGSize)

  /**
   Creates a body from the alpha values in the supplied texture.
   @param texture the texture to be interpreted
   @param alphaThreshold the alpha value above which a pixel is interpreted as opaque
   @param size of the generated physics body
   */
  @available(tvOS 8.0, *)
  /*not inherited*/ init(texture: SKTexture, alphaThreshold: Float, size: CGSize)

  /**
   Creates an compound body that is the union of the bodies used to create it.
   */
  /*not inherited*/ init(bodies: [SKPhysicsBody])
  var isDynamic: Bool
  var usesPreciseCollisionDetection: Bool
  var allowsRotation: Bool
  @available(tvOS 8.0, *)
  var pinned: Bool

  /**
   If the physics simulation has determined that this body is at rest it may set the resting property to YES. Resting bodies do not participate
   in the simulation until some collision with a non-resting  object, or an impulse is applied, that unrests it. If all bodies in the world are resting
   then the simulation as a whole is "at rest".
   */
  var isResting: Bool

  /**
   Determines the 'roughness' for the surface of the physics body (0.0 - 1.0). Defaults to 0.2
   */
  var friction: CGFloat

  /**
   Specifies the charge on the body. Charge determines the degree to which a body is affected by
   electric and magnetic fields. Note that this is a unitless quantity, it is up to the developer to
   set charge and field strength appropriately. Defaults to 0.0
   */
  @available(tvOS 8.0, *)
  var charge: CGFloat

  /**
   Determines the 'bounciness' of the physics body (0.0 - 1.0). Defaults to 0.2
   */
  var restitution: CGFloat

  /**
   Optionally reduce the body's linear velocity each frame to simulate fluid/air friction. Value should be zero or greater. Defaults to 0.1.
   Used in conjunction with per frame impulses, an object can be made to move at a constant speed. For example, if an object 64 points in size
   and default density and a linearDamping of 25 will slide across the screen in a few seconds if an impulse of magnitude 10 is applied every update.
   */
  var linearDamping: CGFloat

  /**
   Optionally reduce the body's angular velocity each frame to simulate rotational friction. (0.0 - 1.0). Defaults to 0.1
   */
  var angularDamping: CGFloat

  /**
   The density of the body.
   @discussion
   The unit is arbitrary, as long as the relative densities are consistent throughout the application. Note that density and mass are inherently related (they are directly proportional), so changing one also changes the other. Both are provided so either can be used depending on what is more relevant to your usage.
   */
  var density: CGFloat

  /**
   The mass of the body.
   @discussion
   The unit is arbitrary, as long as the relative masses are consistent throughout the application. Note that density and mass are inherently related (they are directly proportional), so changing one also changes the other. Both are provided so either can be used depending on what is more relevant to your usage.
   */
  var mass: CGFloat

  /**
   The area of the body.
   @discussion
   The unit is arbitrary, as long as the relative areas are consistent throughout the application.
   */
  var area: CGFloat { get }

  /**
   Bodies are affected by field forces such as gravity if this property is set and the field's category mask is set appropriately. The default value is YES.
   @discussion
   If this is set a force is applied to the object based on the mass. Set the field force vector in the scene to modify the strength of the force.
   */
  var affectedByGravity: Bool

  /**
   Defines what logical 'categories' of fields this body responds to. Defaults to all bits set (all categories).
   Can be forced off via affectedByGravity.
   */
  @available(tvOS 8.0, *)
  var fieldBitMask: UInt32

  /**
   Defines what logical 'categories' this body belongs to. Defaults to all bits set (all categories).
   */
  var categoryBitMask: UInt32

  /**
   Defines what logical 'categories' of bodies this body responds to collisions with. Defaults to all bits set (all categories).
   */
  var collisionBitMask: UInt32

  /**
   Defines what logical 'categories' of bodies this body generates intersection notifications with. Defaults to all bits cleared (no categories).
   */
  var contactTestBitMask: UInt32
  var joints: [SKPhysicsJoint] { get }

  /**
   The representedObject this physicsBody is currently bound to, or nil if it is not.
   */
  weak var node: @sil_weak SKNode? { get }
  var velocity: CGVector
  var angularVelocity: CGFloat
  func applyForce(force: CGVector)
  func applyForce(force: CGVector, at point: CGPoint)
  func applyTorque(torque: CGFloat)
  func applyImpulse(impulse: CGVector)
  func applyImpulse(impulse: CGVector, at point: CGPoint)
  func applyAngularImpulse(impulse: CGFloat)
  func allContactedBodies() -> [SKPhysicsBody]
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKPhysicsContact : Object {
  var bodyA: SKPhysicsBody { get }
  var bodyB: SKPhysicsBody { get }
  var contactPoint: CGPoint { get }
  var contactNormal: CGVector { get }
  var collisionImpulse: CGFloat { get }
  init()
}
class SKPhysicsJoint : Object, Coding {
  var bodyA: SKPhysicsBody
  var bodyB: SKPhysicsBody
  var reactionForce: CGVector { get }
  var reactionTorque: CGFloat { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointPin : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointPin
  var shouldEnableLimits: Bool
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  var frictionTorque: CGFloat
  var rotationSpeed: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointSpring : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointSpring
  var damping: CGFloat
  var frequency: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointFixed : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointFixed
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointSliding : SKPhysicsJoint {
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint, axis: CGVector) -> SKPhysicsJointSliding
  var shouldEnableLimits: Bool
  var lowerDistanceLimit: CGFloat
  var upperDistanceLimit: CGFloat
  init()
  init?(coder aDecoder: Coder)
}
class SKPhysicsJointLimit : SKPhysicsJoint {
  var maxLength: CGFloat
  class func jointWithBodyA(bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointLimit
  init()
  init?(coder aDecoder: Coder)
}
protocol SKPhysicsContactDelegate : ObjectProtocol {
  optional func didBegin(contact: SKPhysicsContact)
  optional func didEnd(contact: SKPhysicsContact)
}
class SKPhysicsWorld : Object, Coding {

  /**
   A global 2D vector specifying the field force acceleration due to gravity. The unit is meters per second so standard earth gravity would be { 0.0, +/-9.8 }.
   */
  var gravity: CGVector
  var speed: CGFloat
  unowned(unsafe) var contactDelegate: @sil_unmanaged SKPhysicsContactDelegate?
  func add(joint: SKPhysicsJoint)
  func remove(joint: SKPhysicsJoint)
  func removeAllJoints()
  @available(tvOS 8.0, *)
  func sampleFieldsAt(position: vector_float3) -> vector_float3
  func bodyAt(point: CGPoint) -> SKPhysicsBody?
  func bodyIn(rect: CGRect) -> SKPhysicsBody?
  func bodyAlongRayStart(start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodiesAt(point: CGPoint, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesIn(rect: CGRect, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesAlongRayStart(start: CGPoint, end: CGPoint, usingBlock block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 8.0, *)
class SKReachConstraints : Object, Coding {

  /**
   Lower angle limit in radians
   */
  var lowerAngleLimit: CGFloat

  /**
   Upper angle limit in radians
   */
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
  convenience init()
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 9.0, *)
class SKReferenceNode : SKNode {

  /** Create a reference node with a url */
  init(url: URL?)

  /** Create a reference node with a url */
  init(fileNamed fileName: String?)

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)

  /** Create a reference node with a url */
  convenience init(fileNamed fileName: String)

  /** Create a reference node with a url */
  convenience init(url referenceURL: URL)

  /** called each time the url is loaded, after it has been added as a child */
  func didLoad(node: SKNode?)

  /** Force the reference to be reloaded. The resolved node will added
   as a child of this node. If the resolved node has not yet been loaded,
   it will be automatically loaded when the resolved node is queryed or
   the refenece node is rendered. */
  func resolve()
  convenience init()
}
@available(tvOS 8.0, *)
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }

  /** A shared infinite region
    */
  class func infinite() -> Self

  /** Create a circular region with radius
   */
  init(radius: Float)

  /** Create a rectangular region of size
   */
  init(size: CGSize)

  /** Create a region bounded by a CGPath. Note that this option can be
      costly to evaluate.
   */
  init(path: CGPath)

  /** Create a new region that is the inverse of the current region.
      The inverse of the infiniteRegion is an empty region.
      Subclasses of SKRegion need to provide an implementation of inverseRegion.
   */
  func inverse() -> Self

  /** Create a new region that is the original region plus the supplied region
   */
  func byUnionWith(region: SKRegion) -> Self

  /** Create a new region that is the original region minus the supplied region
   */
  func byDifferenceFrom(region: SKRegion) -> Self

  /** Create a new region that is the region covered by the original region and the supplied region
   */
  func byIntersectionWith(region: SKRegion) -> Self

  /** Test for containment
   */
  func contains(point: CGPoint) -> Bool
  init()
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 7.0, *)
enum SKSceneScaleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Fill
  case AspectFill
  case AspectFit
  case ResizeFill
}
@available(tvOS 8.0, *)
protocol SKSceneDelegate : ObjectProtocol {
  optional func update(currentTime: TimeInterval, forScene scene: SKScene)
  optional func didEvaluateActionsFor(scene: SKScene)
  optional func didSimulatePhysicsFor(scene: SKScene)
  optional func didApplyConstraintsFor(scene: SKScene)
  optional func didFinishUpdateFor(scene: SKScene)
}

/**
 A scene is the root node of your content. It is used to display SpriteKit content on an SKView.
 
 @see SKView
 */
class SKScene : SKEffectNode {

  /**
   Called once when the scene is created, do your one-time setup here.
   
   A scene is infinitely large, but it has a viewport that is the frame through which you present the content of the scene.
   The passed in size defines the size of this viewport that you use to present the scene.
   To display different portions of your scene, move the contents relative to the viewport. One way to do that is to create a SKNode to function as a viewport transformation. That node should have all visible conents parented under it.
   
   @param size a size in points that signifies the viewport into the scene that defines your framing of the scene.
   */
  init(size: CGSize)
  var size: CGSize

  /**
   Used to determine how to scale the scene to match the SKView it is being displayed in.
   */
  var scaleMode: SKSceneScaleMode

  /**
   The camera that is used to obtain the view scale and translation based on where the camera is in relation to the scene.
   */
  @available(tvOS 9.0, *)
  weak var camera: @sil_weak SKCameraNode?

  /**
   The node that is currently the listener for positional audio coming from SKAudioNodes
   @see SKAudioNode
   */
  @available(tvOS 9.0, *)
  weak var listener: @sil_weak SKNode?

  /**
   Background color, defaults to gray
   */
  var backgroundColor: UIColor
  @available(tvOS 8.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKSceneDelegate?

  /**
   Used to choose the origin of the scene's coordinate system
   */
  var anchorPoint: CGPoint

  /**
   Physics simulation functionality
   */
  var physicsWorld: SKPhysicsWorld { get }
  func convertPointFromView(point: CGPoint) -> CGPoint
  func convertPointToView(point: CGPoint) -> CGPoint

  /**
   The SKView this scene is currently presented in, or nil if it is not being presented.
   */
  weak var view: @sil_weak SKView? { get }

  /**
   Override this to perform per-frame game logic. Called exactly once per frame before any actions are evaluated and any physics are simulated.
   
   @param currentTime the current time in the app. This must be monotonically increasing.
   */
  func update(currentTime: TimeInterval)

  /**
   Override this to perform game logic. Called exactly once per frame after any actions have been evaluated but before any physics are simulated. Any additional actions applied is not evaluated until the next update.
   */
  func didEvaluateActions()

  /**
   Override this to perform game logic. Called exactly once per frame after any actions have been evaluated and any physics have been simulated. Any additional actions applied is not evaluated until the next update. Any changes to physics bodies is not simulated until the next update.
   */
  func didSimulatePhysics()

  /**
   Override this to perform game logic. Called exactly once per frame after any enabled constraints have been applied. Any additional actions applied is not evaluated until the next update. Any changes to physics bodies is not simulated until the next update. Any changes to constarints will not be applied until the next update.
   */
  @available(tvOS 8.0, *)
  func didApplyConstraints()

  /**
   Override this to perform game logic. Called after all update logic has been completed. Any additional actions applied are not evaluated until the next update. Any changes to physics bodies are not simulated until the next update. Any changes to constarints will not be applied until the next update.
   
   No futher update logic will be applied to the scene after this call. Any values set on nodes here will be used when the scene is rendered for the current frame.
   */
  @available(tvOS 8.0, *)
  func didFinishUpdate()
  func didMoveTo(view: SKView)
  func willMoveFrom(view: SKView)
  func didChangeSize(oldSize: CGSize)
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}
@available(tvOS 8.0, *)
class SKShader : Object, Copying, Coding {

  /**
   Create a custom shader with source code.
   
   @param source the source code for the custom fragment shader.
   */
  init(source: String)

  /**
   Create a custom shader with source code and uniforms.
   
   @param source the source code for the custom fragment shader.
   @param uniforms the array of uniforms supplied to this shader
   */
  init(source: String, uniforms: [SKUniform])

  /**
   Loads a shader source file named 'name' from the main bundle. This is simpler yet functionally equivalent to the following code
   
   [SKShader shaderWithSource:[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:name ofType:@"fsh"]
                     encoding:NSUTF8StringEncoding
                        error:NULL]];
   
   Though error handling is encapsulated and the encoding flexible.
   */
  convenience init(fileNamed name: String)

  /**
   Shader source must define the 'main' method of the fragment shader
   
   Your shader must assign a premultipled fragment value to 'gl_FragColor'
   
   The following implicit uniforms are available:
   
      1. sampler2D u_texture  (the primary texuture attached the the sprite)
   
   The following varyings are available:
   
      1. vec2 v_tex_coord  (normalized texture coordiantes for the primary texture)
      2. vec4 v_color_mix  (premultiplied color value based on color & alpha)
   
   
   The following functions are available:
   
      1. vec4 SKDefaultShading()  (returns the fragment value that would have been output if no shader was used)
   
   
   
   Sample shader source that produces the same result are SpriteKit's normal rendering:
   
   "void main() { gl_FragColor = SKDefaultShading(); }"
   
   */
  var source: String?

  /**
   You may define additional uniforms to be used in your shader here.
   There is no need to declare them in you source, just use them by name.
   
   All uniforms declared must be used within the source.
   */
  var uniforms: [SKUniform]
  func addUniform(uniform: SKUniform)
  func uniformNamed(name: String) -> SKUniform?
  func removeUniformNamed(name: String)
  init()
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

/**
 A SpriteKit Node used to stroke or fill a shape. CGPaths are used to supply the path.
 
 See CGPath <a href="http://developer.apple.com/library/mac/#documentation/GraphicsImaging/Reference/CGPath/Reference/reference.html">reference pages</a> for details on how to construct a CGPath.
 */
class SKShapeNode : SKNode {
  @available(tvOS 8.0, *)
  convenience init(path: CGPath)
  @available(tvOS 8.0, *)
  convenience init(path: CGPath, centered: Bool)
  @available(tvOS 8.0, *)
  convenience init(rect: CGRect)
  @available(tvOS 8.0, *)
  convenience init(rectOf size: CGSize)
  @available(tvOS 8.0, *)
  convenience init(rect: CGRect, cornerRadius: CGFloat)
  @available(tvOS 8.0, *)
  convenience init(rectOf size: CGSize, cornerRadius: CGFloat)
  @available(tvOS 8.0, *)
  convenience init(circleOfRadius radius: CGFloat)
  @available(tvOS 8.0, *)
  convenience init(ellipseIn rect: CGRect)
  @available(tvOS 8.0, *)
  convenience init(ellipseOf size: CGSize)
  @available(tvOS 8.0, *)
  convenience init(points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)
  @available(tvOS 8.0, *)
  convenience init(splinePoints points: UnsafeMutablePointer<CGPoint>, count numPoints: Int)

  /**
   The CGPath to be drawn (in the Node's coordinate space)
   */
  var path: CGPath?

  /**
   The color to draw the path with. (for no stroke use [SKColor clearColor]). Defaults to [SKColor whiteColor].
   */
  var strokeColor: UIColor

  /**
   The color to fill the path with. Defaults to [SKColor clearColor] (no fill).
   */
  var fillColor: UIColor

  /**
   Sets the blend mode to use when composing the shape with the final framebuffer.
   @see SKNode.SKBlendMode
   */
  var blendMode: SKBlendMode

  /**
   If set to YES, the path stroke edges and caps is smoothed (antialiased) when drawn.
   */
  var isAntialiased: Bool

  /**
   The width used to stroke the path. Widths larger than 2.0 may result in artifacts. Defaults to 1.0.
   */
  var lineWidth: CGFloat

  /**
   Add a glow to the path stroke of the specified width. Defaults to 0.0 (no glow)
   */
  var glowWidth: CGFloat

  /**
   The cap type that should be used when stroking a non-closed path
   */
  var lineCap: CGLineCap

  /**
   The join type that should be used when stroking a path
   */
  var lineJoin: CGLineJoin

  /**
   When a miter join is used, the maximum ratio of miter length to line with to be used
   */
  var miterLimit: CGFloat

  /**
   The length of the node's path if it were to be stroked
   */
  var lineLength: CGFloat { get }
  @available(tvOS 8.0, *)
  var fillTexture: SKTexture?
  @available(tvOS 8.0, *)
  var fillShader: SKShader?
  @available(tvOS 8.0, *)
  var strokeTexture: SKTexture?
  @available(tvOS 8.0, *)
  var strokeShader: SKShader?
  init()

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}

extension SKShapeNode : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}

/**
 A Sprite is a textured 2D node. It can be placed, rotated, scaled and animated like any other node except it draws a textured rectangle specified by the bounds and anchor point.
 
 Sprites are used to define quad primitives with color and/or textures applied to them.
 See <a href="http://en.wikipedia.org/wiki/Sprite_(computer_graphics)">wiki</a> for a definition of a Sprite.
 
 */
class SKSpriteNode : SKNode {

  /**
   Create a sprite with an SKTexture and the specified size.
   @param texture the texture to reference for size and content
   @param size the size of the sprite in points
   */
  convenience init(texture: SKTexture?, size: CGSize)
  convenience init(texture: SKTexture?, normalMap: SKTexture?)
  convenience init(imageNamed name: String, normalMapped generateNormalMap: Bool)

  /**
   Designated Initializer
   Initialize a sprite with a color and the specified bounds.
   @param texture the texture to use (can be nil for colored sprite)
   @param color the color to use for tinting the sprite.
   @param size the size of the sprite in points
   */
  init(texture: SKTexture?, color: UIColor, size: CGSize)

  /**
   Initialize a sprite with an SKTexture and set its size to the SKTexture's width/height.
   @param texture the texture to reference for size and content
   */
  convenience init(texture: SKTexture?)

  /**
   Initialize a sprite with an image from your app bundle (An SKTexture is created for the image and set on the sprite. Its size is set to the SKTexture's pixel width/height)
   The position of the sprite is (0, 0) and the texture anchored at (0.5, 0.5), so that it is offset by half the width and half the height.
   Thus the sprite has the texture centered about the position. If you wish to have the texture anchored at a different offset set the anchorPoint to another pair of values in the interval from 0.0 up to and including 1.0.
   @param name the name or path of the image to load.
   */
  convenience init(imageNamed name: String)

  /**
   Initialize a sprite with a color and the specified bounds.
   @param color the color to use for tinting the sprite.
   @param size the size of the sprite in points
   */
  convenience init(color: UIColor, size: CGSize)

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)

  /**
   Texture to be drawn (is stretched to fill the sprite)
   */
  var texture: SKTexture?

  /**
   Texture to use for generating normals that lights use to light this sprite.
   
   This will only be used if the sprite is lit by at least one light.
   
   @see SKLightNode
   @see lightingBitMask
   */
  @available(tvOS 8.0, *)
  var normalTexture: SKTexture?

  /**
   Bitmask to indicate being lit by a set of lights using overlapping lighting categories.
   
   A light whose category is set to a value that masks to non-zero using this mask will
   apply light to this sprite.
   
   When used together with a normal texture, complex lighting effects can be used.
   */
  @available(tvOS 8.0, *)
  var lightingBitMask: UInt32
  @available(tvOS 8.0, *)
  var shadowCastBitMask: UInt32
  @available(tvOS 8.0, *)
  var shadowedBitMask: UInt32

  /**
   Controls how the texture is stretched to fill the SKSpriteNode. Stretching is performed via a 9-part algorithm where the upper & lower middle parts are scaled horizontally, the left and right middle parts are scaled vertically, the center is scaled in both directions, and the corners are preserved. The centerRect defines the center region in a (0.0 - 1.0) coordinate space. Defaults to {(0,0) (1,1)} (the entire texture is stretched).
   */
  var centerRect: CGRect

  /**
   Controls the blending between the texture and the sprite's color. The valid interval of values is from 0.0 up to and including 1.0. A value above or below that interval is clamped to the minimum (0.0) if below or the maximum (1.0) if above.
   */
  var colorBlendFactor: CGFloat

  /**
   Base color for the sprite (If no texture is present, the color still is drawn)
   */
  var color: UIColor

  /**
   Sets the blend mode to use when composing the sprite with the final framebuffer.
   @see SKNode.SKBlendMode
   */
  var blendMode: SKBlendMode

  /**
   Used to choose the location in the sprite that maps to its 'position' in the parent's coordinate space. The valid interval for each input is from 0.0 up to and including 1.0.
   */
  var anchorPoint: CGPoint

  /**
   Set the size of the sprite (in parent's coordinate space)
   */
  var size: CGSize
  @available(tvOS 8.0, *)
  var shader: SKShader?
  convenience init()
  convenience init?(fileNamed filename: String)
}

extension SKSpriteNode : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
@available(tvOS 7.0, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Nearest
  case Linear
}

/**
 A texture to be mapped onto SKSpriteNode instances.
 */
class SKTexture : Object, Copying, Coding {

  /**
   Create a texture from an image file. Behaves similar to imageNamed: in UIImage or NSImage
   
   @param name the name or path of the image to load.
   */
  convenience init(imageNamed name: String)

  /**
   Create a texture that is a subrect of an existing texture. See textureRect property for details.
   
   @param rect the source rectangle to use in creating a logical copy of the given texture.
   @param texture the existing texture to reference in the copy.
   */
  convenience init(rect: CGRect, in texture: SKTexture)

  /**
   Create a texture containing directional noise. The RGBA values in this
   texture can be used as a normal map or as direction possibly with length. XYZ are a three dimensional direction, and A is a magnitude.
   
   @param rect the size of the resulting texture.
   @param smoothness how similar neighboring pixels are. A value of zero is like static, one is smooth.
   */
  @available(tvOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)

  /**
   Create a texture containing colored noise. The noise texture is tileable with itself.
   
   @param rect the size of the resulting texture.
   @param smoothness how similar neighboring pixels are. A value of zero is like static, one is smooth.
   @param grayscale if YES, RGB and A will all be the same. If no, RGB and A will all be different. A is not pre-multiplied, because the intent is that if you read a texel in a shader, all four values will be exactly the same value if grayscale, or four different, uncorrelated values if not grayscale.
   */
  @available(tvOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)

  /**
   Create a texture from a CGImageRef.
   
   @param image the CGImageRef to create the texture from
   */
  convenience init(cgImage image: CGImage)
  convenience init(image: UIImage)

  /**
   Create new texture with bitmap RGBA data in unsigned bytes. Data is copied once, additional changes to the data does not affect the texture. All pixel data is assumed to be premultiplied alpha.
   
   @param pixelData the pixelData to read in creating the texture.
   @param size the dimensions of the pixelData given.
   */
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)

  /**
   Create new texture with bitmap RGBA data in unsigned bytes using a custom row length and row alignment. Data is copied once, additional changes to the data does not affect the texture. All pixel data is assumed to be premultiplied alpha.
   
   @param pixelData the data to use
   @param size the size in texels
   @param rowLength the length of each row in pixels (allows byte row pitches greater than the width for aligned data)
   @param alignment the byte alignment of the data, provide 0 for tightly packed data.
  
   */
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)

  /**
   Create new texture by applying a CIFilter to an existing one. Any CIFilter that requires only a single "inputImage" and produces an "outputImage" is allowed.
   
   @param filter the CI filter to apply in the copy.
   */
  func applying(filter: CIFilter) -> Self

  /**
   Create new texture by generating a normal map texture.
    */
  @available(tvOS 8.0, *)
  func generatingNormalMap() -> Self

  /**
   Create new texture by generating a normal map texture.
   
   @param smoothness the smooth level of the generated normal map.
   @param contrast  the scale applied to the generated normal map.
   */
  @available(tvOS 8.0, *)
  func generatingNormalMapWithSmoothness(smoothness: CGFloat, contrast: CGFloat) -> Self

  /**
   Used to choose the area of the texture you want to display. The origin and size should both be in the range 0.0 - 1.0, values outside of this range produces unpredictable results. Defaults to the entire texture {(0,0) (1,1)}.
   */
  func textureRect() -> CGRect

  /**
   The size of the texture's bitmap data in points.
   */
  func size() -> CGSize

  /**
   The filtering mode the texture should use when not drawn at native size. Defaults to SKTextureFilteringLinear.
   */
  var filteringMode: SKTextureFilteringMode

  /**
   Request that the texture have mipmaps generated if possible. Only supported for power of 2 texture sizes.
   */
  var usesMipmaps: Bool

  /**
   Convert the current SKTexture into a CGImageRef object
   */
  @available(tvOS 9.0, *)
  func cgImage() -> CGImage

  /**
   Start a texture preload operation on an array of textures
   
   @param textures an array of SKTextures to be preloaded
   @param completionhandler will be called upon the preload completion
   
   */
  class func preload(textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)

  /**
   Request that this texture be loaded into vram on the next render update, with a callback handler.
   */
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension SKTexture : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
class SKTextureAtlas : Object, Coding {
  convenience init(named name: String)
  @available(tvOS 8.0, *)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture

  /**
   Start a texture atlas preload operation on an array of texture atlas
   
   @param textureAtlases an array of SKTextureAtlas to be preloaded
   @param completionhandler will be called upon the preload completion
   
   */
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)

  /** 
   Start a texture atlas preload operation on an array of texture atlas identifiers, error == nil if all atlases were found,
   else an NSError is returned and the user info will contain a list of the atlases that couldn't be found
   the ones that could be found are looked up and prefetched.
  
   @param foundAtlases is an array of the SKTextureAtlas, that were located and preloaded.
   @param error will contain which ones couldn't be found.
   */
  @available(tvOS 9.0, *)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (Error?, [SKTextureAtlas]) -> Void)

  /**
   Request that this texture atlas be loaded into vram on the next render update, with a callback handler.
   */
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension SKTextureAtlas : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
@available(tvOS 7.0, *)
enum SKTransitionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Up
  case Down
  case Right
  case Left
}

/**
 A transition style from one scene to another.
 */
class SKTransition : Object, Copying {
  class func crossFadeWithDuration(sec: TimeInterval) -> SKTransition
  class func fadeWithDuration(sec: TimeInterval) -> SKTransition
  class func fadeWith(color: UIColor, duration sec: TimeInterval) -> SKTransition
  class func flipHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func flipVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func revealWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func moveInWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func pushWith(direction: SKTransitionDirection, duration sec: TimeInterval) -> SKTransition
  class func doorsOpenHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsOpenVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsCloseHorizontalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorsCloseVerticalWithDuration(sec: TimeInterval) -> SKTransition
  class func doorwayWithDuration(sec: TimeInterval) -> SKTransition
  /*not inherited*/ init(ciFilter filter: CIFilter, duration sec: TimeInterval)

  /**
   Pause the incoming Scene during the transition, defaults to YES.
   */
  var pausesIncomingScene: Bool

  /**
   Pause the outgoing Scene during the transition, defaults to YES.
   */
  var pausesOutgoingScene: Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
enum SKUniformType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Float
  case FloatVector2
  case FloatVector3
  case FloatVector4
  case FloatMatrix2
  case FloatMatrix3
  case FloatMatrix4
  case Texture
}
@available(tvOS 8.0, *)
class SKUniform : Object, Copying, Coding {

  /**
   Create a shader uniform with a given name, and texture data
   
   @param name the name of the shader uniform.
   @param texture the texture data associated with this uniform.
   */
  convenience init(name: String, texture: SKTexture)
  var name: String { get }
  var uniformType: SKUniformType { get }
  var textureValue: SKTexture?
  var floatValue: Float
  var floatVector2Value: GLKVector2
  var floatVector3Value: GLKVector3
  var floatVector4Value: GLKVector4
  var floatMatrix2Value: GLKMatrix2
  var floatMatrix3Value: GLKMatrix3
  var floatMatrix4Value: GLKMatrix4
  init(name: String)
  init(name: String, texture: SKTexture?)
  init(name: String, float value: Float)
  init(name: String, float value: GLKVector2)
  init(name: String, float value: GLKVector3)
  init(name: String, float value: GLKVector4)
  init(name: String, float value: GLKMatrix2)
  init(name: String, float value: GLKMatrix3)
  init(name: String, float value: GLKMatrix4)
  init()
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
var SK_VERSION: Int32 { get }
class SKVideoNode : SKNode {

  /**
   Initialize a video node from a file.
   */
  @available(tvOS, introduced=7.0, deprecated=8.0)
  init(videoFileNamed videoFile: String)
  @available(tvOS 8.0, *)
  init(fileNamed videoFile: String)
  @available(tvOS, introduced=7.0, deprecated=8.0)
  init(videoURL url: URL)
  @available(tvOS 8.0, *)
  init(url: URL)

  /**
   Support coding and decoding via NSKeyedArchiver.
   */
  init?(coder aDecoder: Coder)
  func play()
  func pause()

  /**
   The display size of the video (in parent's coordinate space)
   */
  var size: CGSize

  /**
   The location in the video that maps to its 'position' in the parent's coordinate space. (0.0-1.0)
   */
  var anchorPoint: CGPoint
  convenience init()
}
class SKView : UIView {

  /**
   Pause the entire view
   */
  var isPaused: Bool

  /**
   Toggles display of performance stats in the view. All default to false.
   */
  var showsFPS: Bool
  var showsDrawCount: Bool
  var showsNodeCount: Bool
  @available(tvOS 8.0, *)
  var showsQuadCount: Bool
  @available(tvOS 8.0, *)
  var showsPhysics: Bool
  @available(tvOS 8.0, *)
  var showsFields: Bool

  /**
   Toggles whether the view updates is rendered asynchronously or aligned with Core Animation updates. Defaults to YES.
   */
  var isAsynchronous: Bool

  /**
   Toggles whether the view allows transparent rendering. This allows content under the view to show through if
   a non-opaque backgroundColor is set on the scene. Defaults to NO.
   */
  @available(tvOS 8.0, *)
  var allowsTransparency: Bool

  /**
   Ignores sibling and traversal order to sort the rendered contents of a scene into the most efficient batching possible.
   This will require zPosition to be used in the scenes to properly guarantee elements are in front or behind each other.
   
   This defaults to NO, meaning that sibling order overrides efficiency heuristics in the rendering of the scenes in the view.
   
   Setting this to YES for a complex scene may substantially increase performance, but care must be taken as only zPosition
   determines render order before the efficiency heuristics are used.
   */
  var ignoresSiblingOrder: Bool
  @available(tvOS 8.0, *)
  var shouldCullNonVisibleNodes: Bool
  var frameInterval: Int

  /**
   Present an SKScene in the view, replacing the current scene.
   
   @param scene the scene to present.
   */
  func presentScene(scene: SKScene?)

  /**
   Present an SKScene in the view, replacing the current scene.
   
   If there is currently a scene being presented in the view, the transition is used to swap between them.
   
   @param scene the scene to present.
   @param transition the transition to use when presenting the scene.
   */
  func presentScene(scene: SKScene, transition: SKTransition)

  /**
   The currently presented scene, otherwise nil. If in a transition, the 'incoming' scene is returned.
   */
  var scene: SKScene? { get }

  /**
   Create an SKTexture containing a snapshot of how it would have been rendered in this view.
   The texture is tightly cropped to the size of the node.
   @param node the node subtree to render to the texture.
   */
  func textureFrom(node: SKNode) -> SKTexture?

  /**
   Create an SKTexture containing a snapshot of how it would have been rendered in this view.
   The texture is cropped to the specified rectangle
   @param node the node subtree to render to the texture.
   @param rect the crop
   */
  func textureFrom(node: SKNode, crop: CGRect) -> SKTexture?

  /**
   Converts a point from view space to scene space.
   
   @param point the point to convert.
   @param scene the scene to convert the point into.
   */
  func convert(point: CGPoint, to scene: SKScene) -> CGPoint

  /**
   Converts a point from scene space to view space.
   
   @param point the point to convert.
   @param scene the scene to convert the point into.
   */
  func convert(point: CGPoint, from scene: SKScene) -> CGPoint
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
