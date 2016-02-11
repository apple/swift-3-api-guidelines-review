
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
  @available(iOS 8.0, *)
  func sampleFields(at position: vector_float3) -> vector_float3
  func body(at point: CGPoint) -> SKPhysicsBody?
  func body(in rect: CGRect) -> SKPhysicsBody?
  func body(alongRayStart start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodies(at point: CGPoint, using block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodies(in rect: CGRect, using block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodies(alongRayStart start: CGPoint, end: CGPoint, using block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
