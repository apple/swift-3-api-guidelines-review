
let GLKMatrix3Identity: GLKMatrix3
func GLKMatrix3Invert(matrix: GLKMatrix3, _ isInvertible: UnsafeMutablePointer<Bool>) -> GLKMatrix3
func GLKMatrix3InvertAndTranspose(matrix: GLKMatrix3, _ isInvertible: UnsafeMutablePointer<Bool>) -> GLKMatrix3
func GLKMatrix3Make(m00: Float, _ m01: Float, _ m02: Float, _ m10: Float, _ m11: Float, _ m12: Float, _ m20: Float, _ m21: Float, _ m22: Float) -> GLKMatrix3
func GLKMatrix3MakeAndTranspose(m00: Float, _ m01: Float, _ m02: Float, _ m10: Float, _ m11: Float, _ m12: Float, _ m20: Float, _ m21: Float, _ m22: Float) -> GLKMatrix3
func GLKMatrix3MakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKMatrix3
func GLKMatrix3MakeWithArrayAndTranspose(values: UnsafeMutablePointer<Float>) -> GLKMatrix3
func GLKMatrix3MakeWithRows(row0: GLKVector3, _ row1: GLKVector3, _ row2: GLKVector3) -> GLKMatrix3
func GLKMatrix3MakeWithColumns(column0: GLKVector3, _ column1: GLKVector3, _ column2: GLKVector3) -> GLKMatrix3
func GLKMatrix3MakeWithQuaternion(quaternion: GLKQuaternion) -> GLKMatrix3
func GLKMatrix3MakeScale(sx: Float, _ sy: Float, _ sz: Float) -> GLKMatrix3
func GLKMatrix3MakeRotation(radians: Float, _ x: Float, _ y: Float, _ z: Float) -> GLKMatrix3
func GLKMatrix3MakeXRotation(radians: Float) -> GLKMatrix3
func GLKMatrix3MakeYRotation(radians: Float) -> GLKMatrix3
func GLKMatrix3MakeZRotation(radians: Float) -> GLKMatrix3
func GLKMatrix3GetMatrix2(matrix: GLKMatrix3) -> GLKMatrix2
func GLKMatrix3GetRow(matrix: GLKMatrix3, _ row: Int32) -> GLKVector3
func GLKMatrix3GetColumn(matrix: GLKMatrix3, _ column: Int32) -> GLKVector3
func GLKMatrix3SetRow(matrix: GLKMatrix3, _ row: Int32, _ vector: GLKVector3) -> GLKMatrix3
func GLKMatrix3SetColumn(matrix: GLKMatrix3, _ column: Int32, _ vector: GLKVector3) -> GLKMatrix3
func GLKMatrix3Transpose(matrix: GLKMatrix3) -> GLKMatrix3
func GLKMatrix3Multiply(matrixLeft: GLKMatrix3, _ matrixRight: GLKMatrix3) -> GLKMatrix3
func GLKMatrix3Add(matrixLeft: GLKMatrix3, _ matrixRight: GLKMatrix3) -> GLKMatrix3
func GLKMatrix3Subtract(matrixLeft: GLKMatrix3, _ matrixRight: GLKMatrix3) -> GLKMatrix3
func GLKMatrix3Scale(matrix: GLKMatrix3, _ sx: Float, _ sy: Float, _ sz: Float) -> GLKMatrix3
func GLKMatrix3ScaleWithVector3(matrix: GLKMatrix3, _ scaleVector: GLKVector3) -> GLKMatrix3
func GLKMatrix3ScaleWithVector4(matrix: GLKMatrix3, _ scaleVector: GLKVector4) -> GLKMatrix3
func GLKMatrix3Rotate(matrix: GLKMatrix3, _ radians: Float, _ x: Float, _ y: Float, _ z: Float) -> GLKMatrix3
func GLKMatrix3RotateWithVector3(matrix: GLKMatrix3, _ radians: Float, _ axisVector: GLKVector3) -> GLKMatrix3
func GLKMatrix3RotateWithVector4(matrix: GLKMatrix3, _ radians: Float, _ axisVector: GLKVector4) -> GLKMatrix3
func GLKMatrix3RotateX(matrix: GLKMatrix3, _ radians: Float) -> GLKMatrix3
func GLKMatrix3RotateY(matrix: GLKMatrix3, _ radians: Float) -> GLKMatrix3
func GLKMatrix3RotateZ(matrix: GLKMatrix3, _ radians: Float) -> GLKMatrix3
func GLKMatrix3MultiplyVector3(matrixLeft: GLKMatrix3, _ vectorRight: GLKVector3) -> GLKVector3
func GLKMatrix3MultiplyVector3Array(matrix: GLKMatrix3, _ vectors: UnsafeMutablePointer<GLKVector3>, _ vectorCount: Int)
