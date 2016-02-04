
typealias SCNMatrix4 = CATransform3D
struct SCNVector3 {
  var x: CGFloat
  var y: CGFloat
  var z: CGFloat
  init()
  init(x: CGFloat, y: CGFloat, z: CGFloat)
}

extension SCNVector3 {
  init(_ x: Float, _ y: Float, _ z: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double)
  init(_ x: Int, _ y: Int, _ z: Int)
  init(_ v: float3)
  init(_ v: double3)
}
struct SCNVector4 {
  var x: CGFloat
  var y: CGFloat
  var z: CGFloat
  var w: CGFloat
  init()
  init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
}

extension SCNVector4 {
  init(_ x: Float, _ y: Float, _ z: Float, _ w: Float)
  init(_ x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat)
  init(_ x: Double, _ y: Double, _ z: Double, _ w: Double)
  init(_ x: Int, _ y: Int, _ z: Int, _ w: Int)
  init(_ v: float4)
  init(_ v: double4)
}
typealias SCNQuaternion = SCNVector4
@available(OSX 10.10, *)
let SCNMatrix4Identity: SCNMatrix4
@available(OSX 10.10, *)
let SCNVector3Zero: SCNVector3
@available(OSX 10.10, *)
let SCNVector4Zero: SCNVector4
func SCNVector3EqualToVector3(a: SCNVector3, _ b: SCNVector3) -> Bool
func SCNVector4EqualToVector4(a: SCNVector4, _ b: SCNVector4) -> Bool
func SCNVector3Make(x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNVector3
func SCNVector4Make(x: CGFloat, _ y: CGFloat, _ z: CGFloat, _ w: CGFloat) -> SCNVector4
func SCNMatrix4MakeTranslation(x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
func SCNMatrix4MakeScale(sx: CGFloat, _ sy: CGFloat, _ sz: CGFloat) -> SCNMatrix4
func SCNMatrix4Translate(mat: SCNMatrix4, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4MakeRotation(angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Scale(mat: SCNMatrix4, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Rotate(mat: SCNMatrix4, _ angle: CGFloat, _ x: CGFloat, _ y: CGFloat, _ z: CGFloat) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Invert(mat: SCNMatrix4) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4Mult(matA: SCNMatrix4, _ matB: SCNMatrix4) -> SCNMatrix4
@available(OSX 10.10, *)
func SCNMatrix4IsIdentity(mat: SCNMatrix4) -> Bool
@available(OSX 10.10, *)
func SCNMatrix4EqualToMatrix4(matA: SCNMatrix4, _ matB: SCNMatrix4) -> Bool
func SCNVector3FromGLKVector3(vector: GLKVector3) -> SCNVector3
func SCNVector3ToGLKVector3(vector: SCNVector3) -> GLKVector3
func SCNVector4FromGLKVector4(vector: GLKVector4) -> SCNVector4
func SCNVector4ToGLKVector4(vector: SCNVector4) -> GLKVector4
@available(OSX 10.10, *)
func SCNMatrix4ToGLKMatrix4(mat: SCNMatrix4) -> GLKMatrix4
@available(OSX 10.10, *)
func SCNMatrix4FromGLKMatrix4(mat: GLKMatrix4) -> SCNMatrix4
extension NSValue {
  /*not inherited*/ init(SCNVector3 v: SCNVector3)
  /*not inherited*/ init(SCNVector4 v: SCNVector4)
  @available(OSX 10.10, *)
  /*not inherited*/ init(SCNMatrix4 v: SCNMatrix4)
  var SCNVector3Value: SCNVector3 { get }
  var SCNVector4Value: SCNVector4 { get }
  @available(OSX 10.10, *)
  var SCNMatrix4Value: SCNMatrix4 { get }
}
let SCNErrorDomain: String
var SCNProgramCompilationError: Int { get }
