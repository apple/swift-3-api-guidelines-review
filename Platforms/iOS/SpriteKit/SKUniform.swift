
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class SKUniform : NSObject, NSCopying, NSCoding {
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
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
