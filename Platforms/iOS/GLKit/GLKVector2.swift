
func GLKVector2Make(x: Float, _ y: Float) -> GLKVector2
func GLKVector2MakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKVector2
func GLKVector2Negate(vector: GLKVector2) -> GLKVector2
func GLKVector2Add(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> GLKVector2
func GLKVector2Subtract(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> GLKVector2
func GLKVector2Multiply(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> GLKVector2
func GLKVector2Divide(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> GLKVector2
func GLKVector2AddScalar(vector: GLKVector2, _ value: Float) -> GLKVector2
func GLKVector2SubtractScalar(vector: GLKVector2, _ value: Float) -> GLKVector2
func GLKVector2MultiplyScalar(vector: GLKVector2, _ value: Float) -> GLKVector2
func GLKVector2DivideScalar(vector: GLKVector2, _ value: Float) -> GLKVector2
func GLKVector2Maximum(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> GLKVector2
func GLKVector2Minimum(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> GLKVector2
func GLKVector2AllEqualToVector2(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> Bool
func GLKVector2AllEqualToScalar(vector: GLKVector2, _ value: Float) -> Bool
func GLKVector2AllGreaterThanVector2(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> Bool
func GLKVector2AllGreaterThanScalar(vector: GLKVector2, _ value: Float) -> Bool
func GLKVector2AllGreaterThanOrEqualToVector2(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> Bool
func GLKVector2AllGreaterThanOrEqualToScalar(vector: GLKVector2, _ value: Float) -> Bool
func GLKVector2Normalize(vector: GLKVector2) -> GLKVector2
func GLKVector2DotProduct(vectorLeft: GLKVector2, _ vectorRight: GLKVector2) -> Float
func GLKVector2Length(vector: GLKVector2) -> Float
func GLKVector2Distance(vectorStart: GLKVector2, _ vectorEnd: GLKVector2) -> Float
func GLKVector2Lerp(vectorStart: GLKVector2, _ vectorEnd: GLKVector2, _ t: Float) -> GLKVector2
func GLKVector2Project(vectorToProject: GLKVector2, _ projectionVector: GLKVector2) -> GLKVector2
