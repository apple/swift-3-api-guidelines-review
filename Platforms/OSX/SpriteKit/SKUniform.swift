
@available(OSX 10.10, *)
enum SKUniformType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  case Float
  case FloatVector2
  case FloatVector3
  case FloatVector4
  case FloatMatrix2
  case FloatMatrix3
  case FloatMatrix4
  case Texture
}
@available(OSX 10.10, *)
class SKUniform : NSObject, NSCopying, NSCoding {
  convenience init(name name: String, texture texture: SKTexture)
  var name: String { get }
  var uniformType: SKUniformType { get }
  var textureValue: SKTexture?
  var floatValue: Float
  var floatVector2Value: GLKVector2
  var floatVector3Value: GLKVector3
  var floatVector4Value: GLKVector4
  var floatMatrix2Value: GLKMatrix2
  var floatMatrix3Value: GLKMatrix3
  var floatMatrix4Value: GLKMatrix4
  init(name name: String)
  init(name name: String, texture texture: SKTexture?)
  init(name name: String, float value: Float)
  init(name name: String, floatVector2 value: GLKVector2)
  init(name name: String, floatVector3 value: GLKVector3)
  init(name name: String, floatVector4 value: GLKVector4)
  init(name name: String, floatMatrix2 value: GLKMatrix2)
  init(name name: String, floatMatrix3 value: GLKMatrix3)
  init(name name: String, floatMatrix4 value: GLKMatrix4)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
