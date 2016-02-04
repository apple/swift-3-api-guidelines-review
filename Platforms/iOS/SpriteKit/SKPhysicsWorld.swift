
protocol SKPhysicsContactDelegate : NSObjectProtocol {
  optional func didBeginContact(contact: SKPhysicsContact)
  optional func didEndContact(contact: SKPhysicsContact)
}
class SKPhysicsWorld : NSObject, NSCoding {
  var gravity: CGVector
  var speed: CGFloat
  unowned(unsafe) var contactDelegate: @sil_unmanaged SKPhysicsContactDelegate?
  func addJoint(joint: SKPhysicsJoint)
  func removeJoint(joint: SKPhysicsJoint)
  func removeAllJoints()
  @available(iOS 8.0, *)
  func sampleFieldsAt(position: vector_float3) -> vector_float3
  func bodyAtPoint(point: CGPoint) -> SKPhysicsBody?
  func bodyInRect(rect: CGRect) -> SKPhysicsBody?
  func bodyAlongRayStart(start: CGPoint, end: CGPoint) -> SKPhysicsBody?
  func enumerateBodiesAtPoint(point: CGPoint, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesInRect(rect: CGRect, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesAlongRayStart(start: CGPoint, end: CGPoint, usingBlock block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
