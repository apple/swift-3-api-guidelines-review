
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(iOS 8.0, *)
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
  /*not inherited*/ init(geometry geometry: SCNGeometry?)
  func clone() -> Self
  @available(iOS 8.0, *)
  func flattenedClone() -> Self
  var name: String?
  var light: SCNLight?
  var camera: SCNCamera?
  var geometry: SCNGeometry?
  @available(iOS 8.0, *)
  var skinner: SCNSkinner?
  @available(iOS 8.0, *)
  var morpher: SCNMorpher?
  var transform: SCNMatrix4
  var position: SCNVector3
  var rotation: SCNVector4
  @available(iOS 8.0, *)
  var orientation: SCNQuaternion
  @available(iOS 8.0, *)
  var eulerAngles: SCNVector3
  var scale: SCNVector3
  var pivot: SCNMatrix4
  var worldTransform: SCNMatrix4 { get }
  var hidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  @available(iOS 8.0, *)
  var castsShadow: Bool
  var parentNode: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(_ child: SCNNode)
  func insertChildNode(_ child: SCNNode, atIndex index: Int)
  func removeFromParentNode()
  func replaceChildNode(_ oldChild: SCNNode, with newChild: SCNNode)
  func childNodeWithName(_ name: String, recursively recursively: Bool) -> SCNNode?
  func childNodesPassingTest(_ predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  @available(iOS 8.0, *)
  func enumerateChildNodesUsingBlock(_ block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  func convertPosition(_ position: SCNVector3, toNode node: SCNNode?) -> SCNVector3
  @available(iOS 8.0, *)
  func convertPosition(_ position: SCNVector3, fromNode node: SCNNode?) -> SCNVector3
  @available(iOS 8.0, *)
  func convertTransform(_ transform: SCNMatrix4, toNode node: SCNNode?) -> SCNMatrix4
  @available(iOS 8.0, *)
  func convertTransform(_ transform: SCNMatrix4, fromNode node: SCNNode?) -> SCNMatrix4
  @available(iOS 8.0, *)
  var physicsBody: SCNPhysicsBody?
  @available(iOS 8.0, *)
  var physicsField: SCNPhysicsField?
  @available(iOS 8.0, *)
  var constraints: [SCNConstraint]?
  @available(iOS 8.0, *)
  var filters: [CIFilter]?
  var presentationNode: SCNNode { get }
  @available(iOS 8.0, *)
  var paused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  @available(iOS 8.0, *)
  func hitTestWithSegmentFromPoint(_ pointA: SCNVector3, toPoint pointB: SCNVector3, options options: [String : AnyObject]?) -> [SCNHitTestResult]
  @available(iOS 8.0, *)
  var categoryBitMask: Int
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  func runAction(_ action: SCNAction)
  @available(iOS 8.0, *)
  func runAction(_ action: SCNAction, completionHandler block: (() -> Void)?)
  @available(iOS 8.0, *)
  func runAction(_ action: SCNAction, forKey key: String?)
  @available(iOS 8.0, *)
  func runAction(_ action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)?)
  @available(iOS 8.0, *)
  var hasActions: Bool { get }
  @available(iOS 8.0, *)
  func actionForKey(_ key: String) -> SCNAction?
  @available(iOS 8.0, *)
  func removeActionForKey(_ key: String)
  @available(iOS 8.0, *)
  func removeAllActions()
  @available(iOS 8.0, *)
  var actionKeys: [String] { get }
  @available(iOS 8.0, *)
  func getBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(iOS 8.0, *)
  func getBoundingSphereCenter(_ center: UnsafeMutablePointer<SCNVector3>, radius radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 8.0, *)
  func setBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>)
}
protocol SCNNodeRendererDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func renderNode(_ node: SCNNode, renderer renderer: SCNRenderer, arguments arguments: [String : NSValue])
}
