
func GLKMathDegreesToRadians(_ degrees: Float) -> Float
func GLKMathRadiansToDegrees(_ radians: Float) -> Float
func GLKMathProject(_ object: GLKVector3, _ model: GLKMatrix4, _ projection: GLKMatrix4, _ viewport: UnsafeMutablePointer<Int32>) -> GLKVector3
func GLKMathUnproject(_ window: GLKVector3, _ model: GLKMatrix4, _ projection: GLKMatrix4, _ viewport: UnsafeMutablePointer<Int32>, _ success: UnsafeMutablePointer<Bool>) -> GLKVector3
func NSStringFromGLKMatrix2(_ matrix: GLKMatrix2) -> String
func NSStringFromGLKMatrix3(_ matrix: GLKMatrix3) -> String
func NSStringFromGLKMatrix4(_ matrix: GLKMatrix4) -> String
func NSStringFromGLKVector2(_ vector: GLKVector2) -> String
func NSStringFromGLKVector3(_ vector: GLKVector3) -> String
func NSStringFromGLKVector4(_ vector: GLKVector4) -> String
func NSStringFromGLKQuaternion(_ quaternion: GLKQuaternion) -> String
