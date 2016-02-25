
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(tvOS 8.0, *)
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
  /*not inherited*/ init(geometry geometry: SCNGeometry?)
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
  var isHidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  @available(tvOS 8.0, *)
  var castsShadow: Bool
  var parent: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(_ child: SCNNode)
  func insertChildNode(_ child: SCNNode, at index: Int)
  func removeFromParentNode()
  func replaceChildNode(_ oldChild: SCNNode, with newChild: SCNNode)
  func childNode(withName name: String, recursively recursively: Bool) -> SCNNode?
  func childNodes(passingTest predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  @available(tvOS 8.0, *)
  func enumerateChildNodes(_ block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 8.0, *)
  func convertPosition(_ position: SCNVector3, to node: SCNNode?) -> SCNVector3
  @available(tvOS 8.0, *)
  func convertPosition(_ position: SCNVector3, from node: SCNNode?) -> SCNVector3
  @available(tvOS 8.0, *)
  func convertTransform(_ transform: SCNMatrix4, to node: SCNNode?) -> SCNMatrix4
  @available(tvOS 8.0, *)
  func convertTransform(_ transform: SCNMatrix4, from node: SCNNode?) -> SCNMatrix4
  @available(tvOS 8.0, *)
  var physicsBody: SCNPhysicsBody?
  @available(tvOS 8.0, *)
  var physicsField: SCNPhysicsField?
  @available(tvOS 8.0, *)
  var constraints: [SCNConstraint]?
  @available(tvOS 8.0, *)
  var filters: [CIFilter]?
  var presentation: SCNNode { get }
  @available(tvOS 8.0, *)
  var isPaused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  @available(tvOS 8.0, *)
  func hitTestWithSegment(fromPoint pointA: SCNVector3, toPoint pointB: SCNVector3, options options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 8.0, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(tvOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  func run(_ action: SCNAction)
  @available(tvOS 8.0, *)
  func run(_ action: SCNAction, completionHandler block: (() -> Void)? = nil)
  @available(tvOS 8.0, *)
  func run(_ action: SCNAction, forKey key: String?)
  @available(tvOS 8.0, *)
  func run(_ action: SCNAction, forKey key: String?, completionHandler block: (() -> Void)? = nil)
  @available(tvOS 8.0, *)
  var hasActions: Bool { get }
  @available(tvOS 8.0, *)
  func action(forKey key: String) -> SCNAction?
  @available(tvOS 8.0, *)
  func removeAction(forKey key: String)
  @available(tvOS 8.0, *)
  func removeAllActions()
  @available(tvOS 8.0, *)
  var actionKeys: [String] { get }
  @available(tvOS 8.0, *)
  func getBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>) -> Bool
  @available(tvOS 8.0, *)
  func getBoundingSphereCenter(_ center: UnsafeMutablePointer<SCNVector3>, radius radius: UnsafeMutablePointer<CGFloat>) -> Bool
  @available(tvOS 8.0, *)
  func setBoundingBoxMin(_ min: UnsafeMutablePointer<SCNVector3>, max max: UnsafeMutablePointer<SCNVector3>)
}
protocol SCNNodeRendererDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func renderNode(_ node: SCNNode, renderer renderer: SCNRenderer, arguments arguments: [String : NSValue])
}
