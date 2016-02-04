
func GLKMathDegreesToRadians(degrees: Float) -> Float
func GLKMathRadiansToDegrees(radians: Float) -> Float
func GLKMathProject(object: GLKVector3, _ model: GLKMatrix4, _ projection: GLKMatrix4, _ viewport: UnsafeMutablePointer<Int32>) -> GLKVector3
func GLKMathUnproject(window: GLKVector3, _ model: GLKMatrix4, _ projection: GLKMatrix4, _ viewport: UnsafeMutablePointer<Int32>, _ success: UnsafeMutablePointer<Bool>) -> GLKVector3
func NSStringFromGLKMatrix2(matrix: GLKMatrix2) -> String
func NSStringFromGLKMatrix3(matrix: GLKMatrix3) -> String
func NSStringFromGLKMatrix4(matrix: GLKMatrix4) -> String
func NSStringFromGLKVector2(vector: GLKVector2) -> String
func NSStringFromGLKVector3(vector: GLKVector3) -> String
func NSStringFromGLKVector4(vector: GLKVector4) -> String
func NSStringFromGLKQuaternion(quaternion: GLKQuaternion) -> String
