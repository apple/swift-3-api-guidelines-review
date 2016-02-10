
@available(OSX 10.10, *)
enum SKUniformType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case float
  case floatVector2
  case floatVector3
  case floatVector4
  case floatMatrix2
  case floatMatrix3
  case floatMatrix4
  case texture
}
@available(OSX 10.10, *)
class SKUniform : Object, Copying, Coding {
  convenience init(name: String, texture: SKTexture)
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
  init(name: String)
  init(name: String, texture: SKTexture?)
  init(name: String, float value: Float)
  init(name: String, float value: GLKVector2)
  init(name: String, float value: GLKVector3)
  init(name: String, float value: GLKVector4)
  init(name: String, float value: GLKMatrix2)
  init(name: String, float value: GLKMatrix3)
  init(name: String, float value: GLKMatrix4)
  init()
  @available(OSX 10.10, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
