
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(tvOS 8.0, *)
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
  /*not inherited*/ init(geometry: SCNGeometry?)
  func clone() -> Self
  @available(tvOS 8.0, *)
  func flattenedClone() -> Self
  var name: String?
  var light: SCNLight?
  var camera: SCNCamera?
  var geometry: SCNGeometry?
  @available(tvOS 8.0, *)
  var skinner: SCNSkinner?
  @available(tvOS 8.0, *)
  var morpher: SCNMorpher?
  var transform: SCNMatrix4
  var position: SCNVector3
  var rotation: SCNVector4
  @available(tvOS 8.0, *)
  var orientation: SCNQuaternion
  @available(tvOS 8.0, *)
  var eulerAngles: SCNVector3
  var scale: SCNVector3
  var pivot: SCNMatrix4
  var worldTransform: SCNMatrix4 { get }
  var hidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  @available(tvOS 8.0, *)
  var castsShadow: Bool
  var parentNode: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(child: SCNNode)
  func insertChildNode(child: SCNNode, atIndex index: Int)
  func removeFromParentNode()
  func replaceChildNode(oldChild: SCNNode, with newChild: SCNNode)
  func childNodeWithName(name: String, recursively: Bool) -> SCNNode?
  func childNodesPassingTest(predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  @available(tvOS 8.0, *)
  func enumerateChildNodesUsingBlock(block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 8.0, *)
  func convertPosition(position: SCNVector3, toNode node: SCNNode?) -> SCNVector3
  @available(tvOS 8.0, *)
  func convertPosition(position: SCNVector3, fromNode node: SCNNode?) -> SCNVector3
  @available(tvOS 8.0, *)
  func convertTransform(transform: SCNMatrix4, toNode node: SCNNode?) -> SCNMatrix4
  @available(tvOS 8.0, *)
  func convertTransform(transform: SCNMatrix4, fromNode node: SCNNode?) -> SCNMatrix4
  @available(tvOS 8.0, *)
  var physicsBody: SCNPhysicsBody?
  @available(tvOS 8.0, *)
  var physicsField: SCNPhysicsField?
  @available(tvOS 8.0, *)
  var constraints: [SCNConstraint]?
  @available(tvOS 8.0, *)
  var filters: [CIFilter]?
  var presentationNode: SCNNode { get }
  @available(tvOS 8.0, *)
  var paused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  @available(tvOS 8.0, *)
  func hitTestWithSegmentFromPoint(pointA: SCNVector3, toPoint pointB: SCNVector3, options: [String : AnyObject]?) -> [SCNHitTestResult]
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(tvOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  func runAction(action: SCNAction)
  @available(tvOS 8.0, *)
  func runAction(action: SCNAction, completionHandler block: (() -> Void)?)
  @available(tvOS 8.0, *)
  func runAction(action: SCNAction, forKey key: String?)
  @available(tvOS 8.0, *)
  func runAction(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)
  @available(tvOS 8.0, *)
  var hasActions: Bool { get }
  @available(tvOS 8.0, *)
  func actionForKey(key: String) -> SCNAction?
  @available(tvOS 8.0, *)
  func removeActionForKey(key: String)
  @available(tvOS 8.0, *)
  func removeAllActions()
  @available(tvOS 8.0, *)
  var actionKeys: [String] { get }
  @available(tvOS 8.0, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(tvOS 8.0, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 8.0, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}
protocol SCNNodeRendererDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func renderNode(node: SCNNode, renderer: SCNRenderer, arguments: [String : NSValue])
}
