
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(iOS 8.0, *)
class SCNNode : Object, Copying, SecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
  /*not inherited*/ init(geometry: SCNGeometry?)
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
  var isHidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  @available(iOS 8.0, *)
  var castsShadow: Bool
  var parent: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(child: SCNNode)
  func insertChildNode(child: SCNNode, at index: Int)
  func removeFromParentNode()
  func replaceChildNode(oldChild: SCNNode, with newChild: SCNNode)
  func childNodeWith(name name: String, recursively: Bool) -> SCNNode?
  func childNodesPassingTest(predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  @available(iOS 8.0, *)
  func enumerateChildNodes(block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  func convertPosition(position: SCNVector3, to node: SCNNode?) -> SCNVector3
  @available(iOS 8.0, *)
  func convertPosition(position: SCNVector3, from node: SCNNode?) -> SCNVector3
  @available(iOS 8.0, *)
  func convertTransform(transform: SCNMatrix4, to node: SCNNode?) -> SCNMatrix4
  @available(iOS 8.0, *)
  func convertTransform(transform: SCNMatrix4, from node: SCNNode?) -> SCNMatrix4
  @available(iOS 8.0, *)
  var physicsBody: SCNPhysicsBody?
  @available(iOS 8.0, *)
  var physicsField: SCNPhysicsField?
  @available(iOS 8.0, *)
  var constraints: [SCNConstraint]?
  @available(iOS 8.0, *)
  var filters: [CIFilter]?
  var presentation: SCNNode { get }
  @available(iOS 8.0, *)
  var isPaused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  @available(iOS 8.0, *)
  func hitTestWithSegmentFrom(point pointA: SCNVector3, toPoint pointB: SCNVector3, options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(iOS 8.0, *)
  var categoryBitMask: Int
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  func run(action: SCNAction)
  @available(iOS 8.0, *)
  func run(action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(iOS 8.0, *)
  func run(action: SCNAction, forKey key: String?)
  @available(iOS 8.0, *)
  func run(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(iOS 8.0, *)
  var hasActions: Bool { get }
  @available(iOS 8.0, *)
  func actionFor(key key: String) -> SCNAction?
  @available(iOS 8.0, *)
  func removeActionFor(key key: String)
  @available(iOS 8.0, *)
  func removeAllActions()
  @available(iOS 8.0, *)
  var actionKeys: [String] { get }
  @available(iOS 8.0, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(iOS 8.0, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(iOS 8.0, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}
protocol SCNNodeRendererDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  optional func renderNode(node: SCNNode, renderer: SCNRenderer, arguments: [String : Value])
}
