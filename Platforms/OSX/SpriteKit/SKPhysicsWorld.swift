
protocol SKPhysicsContactDelegate : NSObjectProtocol {
  optional func didBeginContact(_ contact: SKPhysicsContact)
  optional func didEndContact(_ contact: SKPhysicsContact)
}
class SKPhysicsWorld : NSObject, NSCoding {
  var gravity: CGVector
  var speed: CGFloat
  unowned(unsafe) var contactDelegate: @sil_unmanaged SKPhysicsContactDelegate?
  func addJoint(_ joint: SKPhysicsJoint)
  func removeJoint(_ joint: SKPhysicsJoint)
  func removeAllJoints()
  @available(OSX 10.10, *)
  func sampleFieldsAt(_ position: vector_float3) -> vector_float3
  func bodyAtPoint(_ point: CGPoint) -> SKPhysicsBody?
  func bodyInRect(_ rect: CGRect) -> SKPhysicsBody?
  func bodyAlongRayStart(_ start: CGPoint, end end: CGPoint) -> SKPhysicsBody?
  func enumerateBodiesAtPoint(_ point: CGPoint, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesInRect(_ rect: CGRect, usingBlock block: (SKPhysicsBody, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateBodiesAlongRayStart(_ start: CGPoint, end end: CGPoint, usingBlock block: (SKPhysicsBody, CGPoint, CGVector, UnsafeMutablePointer<ObjCBool>) -> Void)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
