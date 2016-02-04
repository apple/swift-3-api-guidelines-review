
protocol SKPhysicsContactDelegate : ObjectProtocol {
  optional func didBegin(contact: SKPhysicsContact)
  optional func didEnd(contact: SKPhysicsContact)
}
class SKPhysicsWorld : Object, Coding {
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
