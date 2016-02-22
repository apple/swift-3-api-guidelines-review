
let GLKQuaternionIdentity: GLKQuaternion
func GLKQuaternionMakeWithMatrix3(_ matrix: GLKMatrix3) -> GLKQuaternion
func GLKQuaternionMakeWithMatrix4(_ matrix: GLKMatrix4) -> GLKQuaternion
func GLKQuaternionAngle(_ quaternion: GLKQuaternion) -> Float
func GLKQuaternionAxis(_ quaternion: GLKQuaternion) -> GLKVector3
func GLKQuaternionSlerp(_ quaternionStart: GLKQuaternion, _ quaternionEnd: GLKQuaternion, _ t: Float) -> GLKQuaternion
func GLKQuaternionRotateVector3Array(_ quaternion: GLKQuaternion, _ vectors: UnsafeMutablePointer<GLKVector3>, _ vectorCount: Int)
func GLKQuaternionRotateVector4Array(_ quaternion: GLKQuaternion, _ vectors: UnsafeMutablePointer<GLKVector4>, _ vectorCount: Int)
func GLKQuaternionMake(_ x: Float, _ y: Float, _ z: Float, _ w: Float) -> GLKQuaternion
func GLKQuaternionMakeWithVector3(_ vector: GLKVector3, _ scalar: Float) -> GLKQuaternion
func GLKQuaternionMakeWithArray(_ values: UnsafeMutablePointer<Float>) -> GLKQuaternion
func GLKQuaternionMakeWithAngleAndAxis(_ radians: Float, _ x: Float, _ y: Float, _ z: Float) -> GLKQuaternion
func GLKQuaternionMakeWithAngleAndVector3Axis(_ radians: Float, _ axisVector: GLKVector3) -> GLKQuaternion
func GLKQuaternionAdd(_ quaternionLeft: GLKQuaternion, _ quaternionRight: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionSubtract(_ quaternionLeft: GLKQuaternion, _ quaternionRight: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionMultiply(_ quaternionLeft: GLKQuaternion, _ quaternionRight: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionLength(_ quaternion: GLKQuaternion) -> Float
func GLKQuaternionConjugate(_ quaternion: GLKQuaternion) -> GLKQuaternion
func __builtin_neon_vsetq_lane_i32(_ _: Int32, _ _: int4, _ _: Int32) -> int4
func GLKQuaternionInvert(_ quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionNormalize(_ quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionRotateVector3(_ quaternion: GLKQuaternion, _ vector: GLKVector3) -> GLKVector3
func GLKQuaternionRotateVector4(_ quaternion: GLKQuaternion, _ vector: GLKVector4) -> GLKVector4
