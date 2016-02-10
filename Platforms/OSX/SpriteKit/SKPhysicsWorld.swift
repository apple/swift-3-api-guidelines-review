
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
  @available(OSX 10.10, *)
  func sampleFields(at position: vector_float3) -> vector_float3
  func body(at point: CGPoint) -> SKPhysicsBody?
  func body(in rect: CGRect) -> SKPhysicsBody?
  func bodyAlongRayStart(start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodies(at point: CGPoint, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodies(in rect: CGRect, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesAlongRayStart(start: CGPoint, end: CGPoint, usingBlock block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
