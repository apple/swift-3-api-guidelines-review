
func GLKVector3Make(x: Float, _ y: Float, _ z: Float) -> GLKVector3
func GLKVector3MakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKVector3
func GLKVector3Negate(vector: GLKVector3) -> GLKVector3
func GLKVector3Add(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3Subtract(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3Multiply(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3Divide(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3AddScalar(vector: GLKVector3, _ value: Float) -> GLKVector3
func GLKVector3SubtractScalar(vector: GLKVector3, _ value: Float) -> GLKVector3
func GLKVector3MultiplyScalar(vector: GLKVector3, _ value: Float) -> GLKVector3
func GLKVector3DivideScalar(vector: GLKVector3, _ value: Float) -> GLKVector3
func GLKVector3Maximum(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3Minimum(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3AllEqualToVector3(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> Bool
func GLKVector3AllEqualToScalar(vector: GLKVector3, _ value: Float) -> Bool
func GLKVector3AllGreaterThanVector3(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> Bool
func GLKVector3AllGreaterThanScalar(vector: GLKVector3, _ value: Float) -> Bool
func GLKVector3AllGreaterThanOrEqualToVector3(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> Bool
func GLKVector3AllGreaterThanOrEqualToScalar(vector: GLKVector3, _ value: Float) -> Bool
func GLKVector3Normalize(vector: GLKVector3) -> GLKVector3
func GLKVector3DotProduct(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> Float
func GLKVector3Length(vector: GLKVector3) -> Float
func GLKVector3Distance(vectorStart: GLKVector3, _ vectorEnd: GLKVector3) -> Float
func GLKVector3Lerp(vectorStart: GLKVector3, _ vectorEnd: GLKVector3, _ t: Float) -> GLKVector3
func GLKVector3CrossProduct(vectorLeft: GLKVector3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKVector3Project(vectorToProject: GLKVector3, _ projectionVector: GLKVector3) -> GLKVector3
