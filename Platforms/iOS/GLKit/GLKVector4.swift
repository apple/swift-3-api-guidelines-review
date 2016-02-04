
func GLKVector4Make(x: Float, _ y: Float, _ z: Float, _ w: Float) -> GLKVector4
func GLKVector4MakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKVector4
func GLKVector4MakeWithVector3(vector: GLKVector3, _ w: Float) -> GLKVector4
func GLKVector4Negate(vector: GLKVector4) -> GLKVector4
func GLKVector4Add(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4Subtract(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4Multiply(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4Divide(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4AddScalar(vector: GLKVector4, _ value: Float) -> GLKVector4
func GLKVector4SubtractScalar(vector: GLKVector4, _ value: Float) -> GLKVector4
func GLKVector4MultiplyScalar(vector: GLKVector4, _ value: Float) -> GLKVector4
func GLKVector4DivideScalar(vector: GLKVector4, _ value: Float) -> GLKVector4
func GLKVector4Maximum(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4Minimum(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4AllEqualToVector4(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> Bool
func GLKVector4AllEqualToScalar(vector: GLKVector4, _ value: Float) -> Bool
func GLKVector4AllGreaterThanVector4(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> Bool
func GLKVector4AllGreaterThanScalar(vector: GLKVector4, _ value: Float) -> Bool
func GLKVector4AllGreaterThanOrEqualToVector4(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> Bool
func GLKVector4AllGreaterThanOrEqualToScalar(vector: GLKVector4, _ value: Float) -> Bool
func GLKVector4Normalize(vector: GLKVector4) -> GLKVector4
func GLKVector4DotProduct(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> Float
func __builtin_neon_vget_lane_f32(_: float2, _: Int32) -> Float
func GLKVector4Length(vector: GLKVector4) -> Float
func GLKVector4Distance(vectorStart: GLKVector4, _ vectorEnd: GLKVector4) -> Float
func GLKVector4Lerp(vectorStart: GLKVector4, _ vectorEnd: GLKVector4, _ t: Float) -> GLKVector4
func GLKVector4CrossProduct(vectorLeft: GLKVector4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKVector4Project(vectorToProject: GLKVector4, _ projectionVector: GLKVector4) -> GLKVector4
