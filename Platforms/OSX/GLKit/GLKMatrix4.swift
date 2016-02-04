
let GLKMatrix4Identity: GLKMatrix4
func GLKMatrix4Invert(matrix: GLKMatrix4, _ isInvertible: UnsafeMutablePointer<Bool>) -> GLKMatrix4
func GLKMatrix4InvertAndTranspose(matrix: GLKMatrix4, _ isInvertible: UnsafeMutablePointer<Bool>) -> GLKMatrix4
func GLKMatrix4Make(m00: Float, _ m01: Float, _ m02: Float, _ m03: Float, _ m10: Float, _ m11: Float, _ m12: Float, _ m13: Float, _ m20: Float, _ m21: Float, _ m22: Float, _ m23: Float, _ m30: Float, _ m31: Float, _ m32: Float, _ m33: Float) -> GLKMatrix4
func GLKMatrix4MakeAndTranspose(m00: Float, _ m01: Float, _ m02: Float, _ m03: Float, _ m10: Float, _ m11: Float, _ m12: Float, _ m13: Float, _ m20: Float, _ m21: Float, _ m22: Float, _ m23: Float, _ m30: Float, _ m31: Float, _ m32: Float, _ m33: Float) -> GLKMatrix4
func GLKMatrix4MakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKMatrix4
func GLKMatrix4MakeWithArrayAndTranspose(values: UnsafeMutablePointer<Float>) -> GLKMatrix4
func GLKMatrix4MakeWithRows(row0: GLKVector4, _ row1: GLKVector4, _ row2: GLKVector4, _ row3: GLKVector4) -> GLKMatrix4
func GLKMatrix4MakeWithColumns(column0: GLKVector4, _ column1: GLKVector4, _ column2: GLKVector4, _ column3: GLKVector4) -> GLKMatrix4
func GLKMatrix4MakeWithQuaternion(quaternion: GLKQuaternion) -> GLKMatrix4
func GLKMatrix4MakeTranslation(tx: Float, _ ty: Float, _ tz: Float) -> GLKMatrix4
func GLKMatrix4MakeScale(sx: Float, _ sy: Float, _ sz: Float) -> GLKMatrix4
func GLKMatrix4MakeRotation(radians: Float, _ x: Float, _ y: Float, _ z: Float) -> GLKMatrix4
func GLKMatrix4MakeXRotation(radians: Float) -> GLKMatrix4
func GLKMatrix4MakeYRotation(radians: Float) -> GLKMatrix4
func GLKMatrix4MakeZRotation(radians: Float) -> GLKMatrix4
func GLKMatrix4MakePerspective(fovyRadians: Float, _ aspect: Float, _ nearZ: Float, _ farZ: Float) -> GLKMatrix4
func GLKMatrix4MakeFrustum(left: Float, _ right: Float, _ bottom: Float, _ top: Float, _ nearZ: Float, _ farZ: Float) -> GLKMatrix4
func GLKMatrix4MakeOrtho(left: Float, _ right: Float, _ bottom: Float, _ top: Float, _ nearZ: Float, _ farZ: Float) -> GLKMatrix4
func GLKMatrix4MakeLookAt(eyeX: Float, _ eyeY: Float, _ eyeZ: Float, _ centerX: Float, _ centerY: Float, _ centerZ: Float, _ upX: Float, _ upY: Float, _ upZ: Float) -> GLKMatrix4
func GLKMatrix4GetMatrix3(matrix: GLKMatrix4) -> GLKMatrix3
func GLKMatrix4GetMatrix2(matrix: GLKMatrix4) -> GLKMatrix2
func GLKMatrix4GetRow(matrix: GLKMatrix4, _ row: Int32) -> GLKVector4
func GLKMatrix4GetColumn(matrix: GLKMatrix4, _ column: Int32) -> GLKVector4
func GLKMatrix4SetRow(matrix: GLKMatrix4, _ row: Int32, _ vector: GLKVector4) -> GLKMatrix4
func GLKMatrix4SetColumn(matrix: GLKMatrix4, _ column: Int32, _ vector: GLKVector4) -> GLKMatrix4
func GLKMatrix4Transpose(matrix: GLKMatrix4) -> GLKMatrix4
func GLKMatrix4Multiply(matrixLeft: GLKMatrix4, _ matrixRight: GLKMatrix4) -> GLKMatrix4
func GLKMatrix4Add(matrixLeft: GLKMatrix4, _ matrixRight: GLKMatrix4) -> GLKMatrix4
func GLKMatrix4Subtract(matrixLeft: GLKMatrix4, _ matrixRight: GLKMatrix4) -> GLKMatrix4
func GLKMatrix4Translate(matrix: GLKMatrix4, _ tx: Float, _ ty: Float, _ tz: Float) -> GLKMatrix4
func GLKMatrix4TranslateWithVector3(matrix: GLKMatrix4, _ translationVector: GLKVector3) -> GLKMatrix4
func GLKMatrix4TranslateWithVector4(matrix: GLKMatrix4, _ translationVector: GLKVector4) -> GLKMatrix4
func GLKMatrix4Scale(matrix: GLKMatrix4, _ sx: Float, _ sy: Float, _ sz: Float) -> GLKMatrix4
func GLKMatrix4ScaleWithVector3(matrix: GLKMatrix4, _ scaleVector: GLKVector3) -> GLKMatrix4
func GLKMatrix4ScaleWithVector4(matrix: GLKMatrix4, _ scaleVector: GLKVector4) -> GLKMatrix4
func GLKMatrix4Rotate(matrix: GLKMatrix4, _ radians: Float, _ x: Float, _ y: Float, _ z: Float) -> GLKMatrix4
func GLKMatrix4RotateWithVector3(matrix: GLKMatrix4, _ radians: Float, _ axisVector: GLKVector3) -> GLKMatrix4
func GLKMatrix4RotateWithVector4(matrix: GLKMatrix4, _ radians: Float, _ axisVector: GLKVector4) -> GLKMatrix4
func GLKMatrix4RotateX(matrix: GLKMatrix4, _ radians: Float) -> GLKMatrix4
func GLKMatrix4RotateY(matrix: GLKMatrix4, _ radians: Float) -> GLKMatrix4
func GLKMatrix4RotateZ(matrix: GLKMatrix4, _ radians: Float) -> GLKMatrix4
func GLKMatrix4MultiplyVector3(matrixLeft: GLKMatrix4, _ vectorRight: GLKVector3) -> GLKVector3
func GLKMatrix4MultiplyVector3WithTranslation(matrixLeft: GLKMatrix4, _ vectorRight: GLKVector3) -> GLKVector3
func GLKMatrix4MultiplyAndProjectVector3(matrixLeft: GLKMatrix4, _ vectorRight: GLKVector3) -> GLKVector3
func GLKMatrix4MultiplyVector3Array(matrix: GLKMatrix4, _ vectors: UnsafeMutablePointer<GLKVector3>, _ vectorCount: Int)
func GLKMatrix4MultiplyVector3ArrayWithTranslation(matrix: GLKMatrix4, _ vectors: UnsafeMutablePointer<GLKVector3>, _ vectorCount: Int)
func GLKMatrix4MultiplyAndProjectVector3Array(matrix: GLKMatrix4, _ vectors: UnsafeMutablePointer<GLKVector3>, _ vectorCount: Int)
func GLKMatrix4MultiplyVector4(matrixLeft: GLKMatrix4, _ vectorRight: GLKVector4) -> GLKVector4
func GLKMatrix4MultiplyVector4Array(matrix: GLKMatrix4, _ vectors: UnsafeMutablePointer<GLKVector4>, _ vectorCount: Int)
