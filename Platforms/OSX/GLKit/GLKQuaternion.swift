
let GLKQuaternionIdentity: GLKQuaternion
func GLKQuaternionMakeWithMatrix3(matrix: GLKMatrix3) -> GLKQuaternion
func GLKQuaternionMakeWithMatrix4(matrix: GLKMatrix4) -> GLKQuaternion
func GLKQuaternionAngle(quaternion: GLKQuaternion) -> Float
func GLKQuaternionAxis(quaternion: GLKQuaternion) -> GLKVector3
func GLKQuaternionSlerp(quaternionStart: GLKQuaternion, _ quaternionEnd: GLKQuaternion, _ t: Float) -> GLKQuaternion
func GLKQuaternionRotateVector3Array(quaternion: GLKQuaternion, _ vectors: UnsafeMutablePointer<GLKVector3>, _ vectorCount: Int)
func GLKQuaternionRotateVector4Array(quaternion: GLKQuaternion, _ vectors: UnsafeMutablePointer<GLKVector4>, _ vectorCount: Int)
func GLKQuaternionMake(x: Float, _ y: Float, _ z: Float, _ w: Float) -> GLKQuaternion
func GLKQuaternionMakeWithVector3(vector: GLKVector3, _ scalar: Float) -> GLKQuaternion
func GLKQuaternionMakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKQuaternion
func GLKQuaternionMakeWithAngleAndAxis(radians: Float, _ x: Float, _ y: Float, _ z: Float) -> GLKQuaternion
func GLKQuaternionMakeWithAngleAndVector3Axis(radians: Float, _ axisVector: GLKVector3) -> GLKQuaternion
func GLKQuaternionAdd(quaternionLeft: GLKQuaternion, _ quaternionRight: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionSubtract(quaternionLeft: GLKQuaternion, _ quaternionRight: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionMultiply(quaternionLeft: GLKQuaternion, _ quaternionRight: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionLength(quaternion: GLKQuaternion) -> Float
func GLKQuaternionConjugate(quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionInvert(quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionNormalize(quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionRotateVector3(quaternion: GLKQuaternion, _ vector: GLKVector3) -> GLKVector3
func GLKQuaternionRotateVector4(quaternion: GLKQuaternion, _ vector: GLKVector4) -> GLKVector4
