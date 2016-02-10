
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(OSX 10.8, *)
class SCNNode : Object, Copying, SecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
  /*not inherited*/ init(geometry: SCNGeometry?)
  func clone() -> Self
  @available(OSX 10.9, *)
  func flattenedClone() -> Self
  var name: String?
  var light: SCNLight?
  var camera: SCNCamera?
  var geometry: SCNGeometry?
  @available(OSX 10.9, *)
  var skinner: SCNSkinner?
  @available(OSX 10.9, *)
  var morpher: SCNMorpher?
  var transform: SCNMatrix4
  var position: SCNVector3
  var rotation: SCNVector4
  @available(OSX 10.10, *)
  var orientation: SCNQuaternion
  @available(OSX 10.10, *)
  var eulerAngles: SCNVector3
  var scale: SCNVector3
  var pivot: SCNMatrix4
  var worldTransform: SCNMatrix4 { get }
  var isHidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  @available(OSX 10.10, *)
  var castsShadow: Bool
  var parent: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(child: SCNNode)
  func insertChildNode(child: SCNNode, at index: Int)
  func removeFromParentNode()
  func replaceChildNode(oldChild: SCNNode, with newChild: SCNNode)
  func childNode(withName name: String, recursively: Bool) -> SCNNode?
  func childNodesPassingTest(predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  @available(OSX 10.10, *)
  func enumerateChildNodes(block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func convertPosition(position: SCNVector3, to node: SCNNode?) -> SCNVector3
  @available(OSX 10.9, *)
  func convertPosition(position: SCNVector3, from node: SCNNode?) -> SCNVector3
  @available(OSX 10.9, *)
  func convertTransform(transform: SCNMatrix4, to node: SCNNode?) -> SCNMatrix4
  @available(OSX 10.9, *)
  func convertTransform(transform: SCNMatrix4, from node: SCNNode?) -> SCNMatrix4
  @available(OSX 10.10, *)
  var physicsBody: SCNPhysicsBody?
  @available(OSX 10.10, *)
  var physicsField: SCNPhysicsField?
  @available(OSX 10.9, *)
  var constraints: [SCNConstraint]?
  @available(OSX 10.9, *)
  var filters: [CIFilter]?
  var presentation: SCNNode { get }
  @available(OSX 10.10, *)
  var isPaused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  @available(OSX 10.9, *)
  func hitTestWithSegment(fromPoint pointA: SCNVector3, toPoint pointB: SCNVector3, options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(OSX 10.10, *)
  var categoryBitMask: Int
  init()
  @available(OSX 10.8, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.8, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimation(forKey key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func resumeAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.10, *)
  func run(action: SCNAction)
  @available(OSX 10.10, *)
  func run(action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(OSX 10.10, *)
  func run(action: SCNAction, forKey key: String?)
  @available(OSX 10.10, *)
  func run(action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(OSX 10.10, *)
  var hasActions: Bool { get }
  @available(OSX 10.10, *)
  func action(forKey key: String) -> SCNAction?
  @available(OSX 10.10, *)
  func removeAction(forKey key: String)
  @available(OSX 10.10, *)
  func removeAllActions()
  @available(OSX 10.10, *)
  var actionKeys: [String] { get }
  @available(OSX 10.8, *)
  func getBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(OSX 10.8, *)
  func getBoundingSphereCenter(center: UnsafeMutablePointer<SCNVector3>, radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(OSX 10.9, *)
  func setBoundingBoxMin(min: UnsafeMutablePointer<SCNVector3>, max: UnsafeMutablePointer<SCNVector3>)
}
protocol SCNNodeRendererDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func renderNode(node: SCNNode, renderer: SCNRenderer, arguments: [String : Value])
}
