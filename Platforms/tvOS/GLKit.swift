
@available(tvOS 5.0, *)
class GLKBaseEffect : NSObject, GLKNamedEffect {
  func prepareToDraw()
  var colorMaterialEnabled: GLboolean
  var lightModelTwoSided: GLboolean
  var useConstantColor: GLboolean
  var transform: GLKEffectPropertyTransform { get }
  var light0: GLKEffectPropertyLight { get }
  var light1: GLKEffectPropertyLight { get }
  var light2: GLKEffectPropertyLight { get }
  var lightingType: GLKLightingType
  var lightModelAmbientColor: GLKVector4
  var material: GLKEffectPropertyMaterial { get }
  var texture2d0: GLKEffectPropertyTexture { get }
  var texture2d1: GLKEffectPropertyTexture { get }
  var textureOrder: [GLKEffectPropertyTexture]?
  var constantColor: GLKVector4
  var fog: GLKEffectPropertyFog { get }
  var label: String?
  init()
}
typealias GLKEffectPropertyPrvPtr = COpaquePointer
@available(tvOS 5.0, *)
class GLKEffectProperty : NSObject {
  init()
}
@available(tvOS 5.0, *)
enum GLKFogMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Exp
  case Exp2
  case Linear
}
@available(tvOS 5.0, *)
class GLKEffectPropertyFog : GLKEffectProperty {
  var enabled: GLboolean
  var mode: GLint
  var color: GLKVector4
  var density: GLfloat
  var start: GLfloat
  var end: GLfloat
  init()
}
@available(tvOS 5.0, *)
enum GLKLightingType : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case PerVertex
  case PerPixel
}
@available(tvOS 5.0, *)
class GLKEffectPropertyLight : GLKEffectProperty {
  var enabled: GLboolean
  var position: GLKVector4
  var ambientColor: GLKVector4
  var diffuseColor: GLKVector4
  var specularColor: GLKVector4
  var spotDirection: GLKVector3
  var spotExponent: GLfloat
  var spotCutoff: GLfloat
  var constantAttenuation: GLfloat
  var linearAttenuation: GLfloat
  var quadraticAttenuation: GLfloat
  var transform: GLKEffectPropertyTransform
  init()
}
@available(tvOS 5.0, *)
class GLKEffectPropertyMaterial : GLKEffectProperty {
  var ambientColor: GLKVector4
  var diffuseColor: GLKVector4
  var specularColor: GLKVector4
  var emissiveColor: GLKVector4
  var shininess: GLfloat
  init()
}
@available(tvOS 5.0, *)
enum GLKTextureTarget : GLenum {
  init?(rawValue: GLenum)
  var rawValue: GLenum { get }
  case Target2D
  case TargetCubeMap
  case TargetCt
}
@available(tvOS 5.0, *)
enum GLKTextureEnvMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Replace
  case Modulate
  case Decal
}
@available(tvOS 5.0, *)
class GLKEffectPropertyTexture : GLKEffectProperty {
  var enabled: GLboolean
  var name: GLuint
  var target: GLKTextureTarget
  var envMode: GLKTextureEnvMode
  init()
}
@available(tvOS 5.0, *)
class GLKEffectPropertyTransform : GLKEffectProperty {
  var modelviewMatrix: GLKMatrix4
  var projectionMatrix: GLKMatrix4
  var normalMatrix: GLKMatrix3 { get }
  init()
}
@available(tvOS 5.0, *)
enum GLKVertexAttrib : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Position
  case Normal
  case Color
  case TexCoord0
  case TexCoord1
}
struct _GLKMatrix2 {
  var m2: ((Float, Float), (Float, Float))
  var m: (Float, Float, Float, Float)
  init(m2: ((Float, Float), (Float, Float)))
  init(m: (Float, Float, Float, Float))
  init()
}

extension _GLKMatrix2 {
  typealias _Tuple = (Float, Float, Float, Float)
  var _tuple: _Tuple { get }
  var m00: Float { get }
  var m01: Float { get }
  var m10: Float { get }
  var m11: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKMatrix2 = _GLKMatrix2
struct _GLKMatrix3 {
  var m: (Float, Float, Float, Float, Float, Float, Float, Float, Float)
  init(m: (Float, Float, Float, Float, Float, Float, Float, Float, Float))
  init()
}

extension _GLKMatrix3 {
  typealias _Tuple = (Float, Float, Float, Float, Float, Float, Float, Float, Float)
  var _tuple: _Tuple { get }
  var m00: Float { get }
  var m01: Float { get }
  var m02: Float { get }
  var m10: Float { get }
  var m11: Float { get }
  var m12: Float { get }
  var m20: Float { get }
  var m21: Float { get }
  var m22: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKMatrix3 = _GLKMatrix3
struct _GLKMatrix4 {
  var m: (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float)
  init(m: (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float))
  init()
}

extension _GLKMatrix4 {
  typealias _Tuple = (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float)
  var _tuple: _Tuple { get }
  var m00: Float { get }
  var m01: Float { get }
  var m02: Float { get }
  var m03: Float { get }
  var m10: Float { get }
  var m11: Float { get }
  var m12: Float { get }
  var m13: Float { get }
  var m20: Float { get }
  var m21: Float { get }
  var m22: Float { get }
  var m23: Float { get }
  var m30: Float { get }
  var m31: Float { get }
  var m32: Float { get }
  var m33: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKMatrix4 = _GLKMatrix4
struct _GLKVector2 {
  var v: (Float, Float)
  init(v: (Float, Float))
  init()
}

extension _GLKVector2 {
  typealias _Tuple = (Float, Float)
  var _tuple: _Tuple { get }
  var x: Float { get }
  var y: Float { get }
  var s: Float { get }
  var t: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKVector2 = _GLKVector2
struct _GLKVector3 {
  var v: (Float, Float, Float)
  init(v: (Float, Float, Float))
  init()
}

extension _GLKVector3 {
  typealias _Tuple = (Float, Float, Float)
  var _tuple: _Tuple { get }
  var x: Float { get }
  var y: Float { get }
  var z: Float { get }
  var s: Float { get }
  var t: Float { get }
  var p: Float { get }
  var r: Float { get }
  var g: Float { get }
  var b: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKVector3 = _GLKVector3
struct _GLKVector4 {
  var v: (Float, Float, Float, Float)
  init(v: (Float, Float, Float, Float))
  init()
}

extension _GLKVector4 {
  typealias _Tuple = (Float, Float, Float, Float)
  var _tuple: _Tuple { get }
  var x: Float { get }
  var y: Float { get }
  var z: Float { get }
  var w: Float { get }
  var s: Float { get }
  var t: Float { get }
  var p: Float { get }
  var q: Float { get }
  var r: Float { get }
  var g: Float { get }
  var b: Float { get }
  var a: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKVector4 = _GLKVector4
struct _GLKQuaternion {
  var q: (Float, Float, Float, Float)
  init(q: (Float, Float, Float, Float))
  init()
}

extension _GLKQuaternion {
  typealias _Tuple = (Float, Float, Float, Float)
  var _tuple: _Tuple { get }
  var v: GLKVector3 { get }
  var s: Float { get }
  var x: Float { get }
  var y: Float { get }
  var z: Float { get }
  var w: Float { get }
  subscript (i: Int) -> Float { get }
}
typealias GLKQuaternion = _GLKQuaternion
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
func __builtin_neon_vgetq_lane_f32(_: float4, _: Int32) -> Float
func __builtin___memcpy_chk(_: UnsafeMutablePointer<Void>, _: UnsafePointer<Void>, _: UInt, _: UInt) -> UnsafeMutablePointer<Void>
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
let GLKMatrix4Identity: GLKMatrix4
func GLKMatrix4Invert(matrix: GLKMatrix4, _ isInvertible: UnsafeMutablePointer<Bool>) -> GLKMatrix4
func GLKMatrix4InvertAndTranspose(matrix: GLKMatrix4, _ isInvertible: UnsafeMutablePointer<Bool>) -> GLKMatrix4
func GLKMatrix4Make(m00: Float, _ m01: Float, _ m02: Float, _ m03: Float, _ m10: Float, _ m11: Float, _ m12: Float, _ m13: Float, _ m20: Float, _ m21: Float, _ m22: Float, _ m23: Float, _ m30: Float, _ m31: Float, _ m32: Float, _ m33: Float) -> GLKMatrix4
func GLKMatrix4MakeAndTranspose(m00: Float, _ m01: Float, _ m02: Float, _ m03: Float, _ m10: Float, _ m11: Float, _ m12: Float, _ m13: Float, _ m20: Float, _ m21: Float, _ m22: Float, _ m23: Float, _ m30: Float, _ m31: Float, _ m32: Float, _ m33: Float) -> GLKMatrix4
func GLKMatrix4MakeWithArray(values: UnsafeMutablePointer<Float>) -> GLKMatrix4
func GLKMatrix4MakeWithArrayAndTranspose(values: UnsafeMutablePointer<Float>) -> GLKMatrix4
func __builtin_neon_vld4q_v(_: UnsafeMutablePointer<Void>, _: UnsafePointer<Void>, _: Int32)
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
class GLKMatrixStack {
}
typealias GLKMatrixStackRef = GLKMatrixStack
func GLKMatrixStackCreate(alloc: CFAllocator?) -> Unmanaged<GLKMatrixStack>?
func GLKMatrixStackGetTypeID() -> CFTypeID
func GLKMatrixStackPush(stack: GLKMatrixStack)
func GLKMatrixStackPop(stack: GLKMatrixStack)
func GLKMatrixStackSize(stack: GLKMatrixStack) -> Int32
func GLKMatrixStackLoadMatrix4(stack: GLKMatrixStack, _ matrix: GLKMatrix4)
func GLKMatrixStackGetMatrix4(stack: GLKMatrixStack) -> GLKMatrix4
func GLKMatrixStackGetMatrix3(stack: GLKMatrixStack) -> GLKMatrix3
func GLKMatrixStackGetMatrix2(stack: GLKMatrixStack) -> GLKMatrix2
func GLKMatrixStackGetMatrix4Inverse(stack: GLKMatrixStack) -> GLKMatrix4
func GLKMatrixStackGetMatrix4InverseTranspose(stack: GLKMatrixStack) -> GLKMatrix4
func GLKMatrixStackGetMatrix3Inverse(stack: GLKMatrixStack) -> GLKMatrix3
func GLKMatrixStackGetMatrix3InverseTranspose(stack: GLKMatrixStack) -> GLKMatrix3
func GLKMatrixStackMultiplyMatrix4(stack: GLKMatrixStack, _ matrix: GLKMatrix4)
func GLKMatrixStackMultiplyMatrixStack(stackLeft: GLKMatrixStack, _ stackRight: GLKMatrixStack)
func GLKMatrixStackTranslate(stack: GLKMatrixStack, _ tx: Float, _ ty: Float, _ tz: Float)
func GLKMatrixStackTranslateWithVector3(stack: GLKMatrixStack, _ translationVector: GLKVector3)
func GLKMatrixStackTranslateWithVector4(stack: GLKMatrixStack, _ translationVector: GLKVector4)
func GLKMatrixStackScale(stack: GLKMatrixStack, _ sx: Float, _ sy: Float, _ sz: Float)
func GLKMatrixStackScaleWithVector3(stack: GLKMatrixStack, _ scaleVector: GLKVector3)
func GLKMatrixStackScaleWithVector4(stack: GLKMatrixStack, _ scaleVector: GLKVector4)
func GLKMatrixStackRotate(stack: GLKMatrixStack, _ radians: Float, _ x: Float, _ y: Float, _ z: Float)
func GLKMatrixStackRotateWithVector3(stack: GLKMatrixStack, _ radians: Float, _ axisVector: GLKVector3)
func GLKMatrixStackRotateWithVector4(stack: GLKMatrixStack, _ radians: Float, _ axisVector: GLKVector4)
func GLKMatrixStackRotateX(stack: GLKMatrixStack, _ radians: Float)
func GLKMatrixStackRotateY(stack: GLKMatrixStack, _ radians: Float)
func GLKMatrixStackRotateZ(stack: GLKMatrixStack, _ radians: Float)

/*!
 @constant kGLKModelErrorDomain
 */
@available(tvOS 9.0, *)
let kGLKModelErrorDomain: String

/*!
 @constant kGLKModelErrorKey
 */
@available(tvOS 9.0, *)
let kGLKModelErrorKey: String

/*!
 @class GLKMeshBufferAllocator
 @abstract Allocator passed to MDLAsset init method to load vertex and index data directly into OpenGL buffer object
 */
@available(tvOS 9.0, *)
class GLKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
  init()

  /*!
   @method newZone:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param capacity Total size in bytes of all buffers which can be created from 
          this zone
   */
  @available(tvOS 9.0, *)
  func newZone(capacity: Int) -> MDLMeshBufferZone

  /*!
   @method newZoneForBuffersWithSize:andType:
   @abstract Create a zone which can be used to allocate MDLMeshBuffer objects
   @param sizes Sizes of each buffer to be created in this zone
   @param types Type of each buffer to be created in this zone. Values to be of
                MDLMeshBufferType
   @discussion Will create a zone from which MDLMeshBuffer objects can be 
               allocated.  This will allocate a zone with enough capacity
               for each of the buffers with sizes and types specified even taking
               into any alignment restrictions necessary to use these buffers.
   */
  @available(tvOS 9.0, *)
  func newZoneForBuffersWithSize(sizes: [NSNumber], andType types: [NSNumber]) -> MDLMeshBufferZone

  /*!
   @method newBuffer:type:
   @abstract Create a buffer in a default zone
   @param length Size of buffer to be created in bytes
   @param type Type of data to be stored in this buffer
   */
  @available(tvOS 9.0, *)
  func newBuffer(length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferWithData:type:
   @abstract Create a buffer in a default zone and fill with data in the supplied 
             NSData object
   @param data Memory to fill the buffer with
   @param type Type of data to be stored in this buffer
   */
  @available(tvOS 9.0, *)
  func newBufferWith(data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer

  /*!
   @method newBufferFromZone:length:type:
   @abstract Create a buffer from a given zone with the given length
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the zone given.
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size.  Alternatively the implementation may return nil if the 
               buffer could not be allocated.
  
   */
  @available(tvOS 9.0, *)
  func newBufferFrom(zone: MDLMeshBufferZone?, length: Int, type: MDLMeshBufferType) -> MDLMeshBuffer?

  /*!
   @method newBufferFromZone:data:type:
   @abstract Create a buffer from a given zone and fill with data in the supplied 
             NSData object
   @return An object conforming to the MDLMeshBuffer protocol.  Returns nil the 
           buffer could not be allocated in the given zone
   @param zone Zone from which to allocate the memory
   @param data Values with which to fill the buffer
   @param type Type of data to be stored in this buffer
   @discussion An implementing MDLMeshBufferAllocator object may increase the size 
               of the zone if the buffer could not be allocated with the current 
               zone size. Alternatively the implementation may return nil if the 
               buffer could not be allocated.
   */
  @available(tvOS 9.0, *)
  func newBufferFrom(zone: MDLMeshBufferZone?, data: NSData, type: MDLMeshBufferType) -> MDLMeshBuffer?
}

/*!
 @class GLKMeshBuffer
 @abstract Mesh buffers created when  needs to allocate memory to back vertex or index data
 @discussion Memory backing these buffer are OpenGL buffers. Model I/O will load index and vertex data from from a model asset directly in to the OpenGL buffer object.
 */
@available(tvOS 9.0, *)
class GLKMeshBuffer : NSObject, MDLMeshBuffer {

  /*!
   @method length
   @abstract Size in bytes of the buffer allocation
   */
  var length: Int { get }

  /*!
   @property allocator
   @abstract Allocator object used to create this buffer.
   @discussion This allcoator used for copy and relayout operations (such as when a new vertex descriptor is applied to a vertex buffer)
   */
  var allocator: GLKMeshBufferAllocator { get }

  /*!
   @property glBufferName
   @abstract glBufferName for buffer object backing vertex/index data
   @discussion Many GLKMeshBuffers may reference the same OpenGL buffer object, but each with its own offset.  (i.e. Many GLKMeshBuffers may be suballocated from a single OpenGL buffer object)
   */
  var glBufferName: GLuint { get }

  /*!
   @property offset
   @abstract Byte offset of the data within the OpenGL buffer
   */
  var offset: Int { get }

  /*!
   @property type
   @abstract the intended type of the buffer
   */
  var type: MDLMeshBufferType { get }
  func zone() -> MDLMeshBufferZone?
  init()

  /*!
   @method fillData:offset:
   @abstract Fills buffer with data at offset
   @param data Data to fill buffer with
   @param offset Byte offset in buffer to begin filling data
   @discussion Fills data.length bytes of data.  Will not write beyond length of 
               this buffer.
   */
  @available(tvOS 9.0, *)
  func fill(data: NSData, offset: Int)

  /*!
   @method map
   @abstract CPU access to buffer's memory
   @return An MDLMeshBufferMap object to read or modify a buffer's memory
   @discussion The buffer will remain mapped as long as the returned MDLMeshBufferMap
               object exists. Mapping a buffer may impose restrictions on a system.
               For instance,  if the implementing class maps an OpenGL buffer, that
               buffer may be  unavailable for rendering while mapped, and cause a
               draw failure.  Precautions must be taken in such cases.
   */
  @available(tvOS 9.0, *)
  func map() -> MDLMeshBufferMap
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GLKSubmesh : NSObject {

  /*!
   @property type
   @abstract Type of data in the elementBuffer (aka indexBuffer)
   @discussion This value should be used for the type parameter of glDrawElements
   */
  var type: GLenum { get }

  /*!
   @property mode
   @abstract Primitive type mode value of data in the elementBuffer (aka indexBuffer)
   @discussion This value should be used for the mode parameter in glDrawElements
   */
  var mode: GLenum { get }

  /*!
   @property elementCount
   @abstract Number of elements (aka indicies) in the elementBuffer (aka indexBuffer)
   @discussion This value should be used for the count parameter in glDrawElements
  */
  var elementCount: GLsizei { get }

  /*!
   @property elementBuffer
   @abstract Name of buffer object with index data
   @discussion The buffer name to be used with DrawElements
   */
  var elementBuffer: GLKMeshBuffer { get }

  /*!
   @property mesh
   @abstract Parent GLKit mesh containing vertex data of this object
   @discussion Buffer of this parent mesh should be set in the encoder before a drawIndexedPrimitives call is made
   */
  weak var mesh: @sil_weak GLKMesh? { get }

  /*!
   @property name
   @abstract Name from the original MDLSubmesh object.
   @discussion Although not directly used by this object, the application may use this to identify the submesh in it renderer/scene/world.
   */
  var name: String { get }
}
@available(tvOS 9.0, *)
class GLKMesh : NSObject {

  /*!
   @method initWithMesh:error:
   @abstract Initialize the mesh and the mesh's submeshes
   @discussion This does NOT initialize any meshes that are children of the Model I/O mesh
   @error Pointer to an NSError object which will be set if an error occurred
   @param mesh Model I/O Mesh from which to create this GLKit mesh
   */
  init(mesh: MDLMesh) throws

  /*!
   @method newMeshesFromAsset:sourceMeshes:error:
   @abstract Initialize all meshes in a Model I/O asset.
   @result An array of GLKit meshes built an asset
   @param asset Model I/O asset from which to create GLKit meshes
   @param sourceMeshes Model I/O meshes corresponding the newly created GLKMeshes
   @param error Pointer to an NSError object set if an error occurred
   @param return GLKit meshes created from the Model I/O asset
   @dicussion A convenience method to create GLKit meshes from each mesh in a Model/IO asset.  Resulting meshes are returned while Model I/O meshes from which they were generated will appear in the sourceMeshes array.
   */
  class func newMeshesFrom(asset: MDLAsset, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>) throws -> [GLKMesh]

  /*!
   @property vertexCount
   @abstract Number of verticies in the vertexBuffers
   */
  var vertexCount: Int { get }

  /*!
   @property vertexBuffers
   @abstract Array of buffers in which mesh vertex data resides
   */
  var vertexBuffers: [GLKMeshBuffer] { get }

  /*!
   @property vertexDescriptor
   @abstract Model I/O vertex descriptor specifying the layout of data in vertexBuffers
   @discussion This is not directly used by this object, but the application can use this information to determine rendering state or setup a vertex attribute object.
   */
  var vertexDescriptor: MDLVertexDescriptor { get }

  /*!
   @property submeshes
   @abstract Submeshes containing index buffers to rendering mesh verticies.
   @discussion Submeshes may also contain texture materials to apply when rendering this object
   */
  var submeshes: [GLKSubmesh] { get }

  /*!
   @property name
   @abstract Name of the mesh copies from the originating Model I/O mesh
   @discussion Can be used by the app to identiry the mesh in it's scene/world/renderer etc.
   */
  var name: String { get }
}

/*!
 @struct GLKVertexAttributeParameters
 @abstract Structure for parameters to use in glVertexAttribPointer given a MDLVertexForamt
 */
struct _GLKVertexAttributeParameters {
  var type: GLenum
  var size: GLint
  var normalized: GLboolean
  init()
  init(type: GLenum, size: GLint, normalized: GLboolean)
}
typealias GLKVertexAttributeParameters = _GLKVertexAttributeParameters

/*!
 @struct GLKVertexAttributeParametersFromModelIO
 @abstract Returns parameters to use in a call to glVertexAttribPointer given a MDLVertexFormat
 */
func GLKVertexAttributeParametersFromModelIO(vertexFormat: MDLVertexFormat) -> GLKVertexAttributeParameters
protocol GLKNamedEffect {
  func prepareToDraw()
}
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
func __builtin_neon_vsetq_lane_i32(_: Int32, _: int4, _: Int32) -> int4
func GLKQuaternionInvert(quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionNormalize(quaternion: GLKQuaternion) -> GLKQuaternion
func GLKQuaternionRotateVector3(quaternion: GLKQuaternion, _ vector: GLKVector3) -> GLKVector3
func GLKQuaternionRotateVector4(quaternion: GLKQuaternion, _ vector: GLKVector4) -> GLKVector4
@available(tvOS 5.0, *)
class GLKReflectionMapEffect : GLKBaseEffect, GLKNamedEffect {
  func prepareToDraw()
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var matrix: GLKMatrix3
  init()
}
@available(tvOS 5.0, *)
class GLKSkyboxEffect : NSObject, GLKNamedEffect {
  func prepareToDraw()
  func draw()
  var center: GLKVector3
  var xSize: GLfloat
  var ySize: GLfloat
  var zSize: GLfloat
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var transform: GLKEffectPropertyTransform { get }
  var label: String?
  init()
}
@available(tvOS 5.0, *)
let GLKTextureLoaderApplyPremultiplication: String
@available(tvOS 5.0, *)
let GLKTextureLoaderGenerateMipmaps: String
@available(tvOS 5.0, *)
let GLKTextureLoaderOriginBottomLeft: String
@available(tvOS 5.0, *)
let GLKTextureLoaderGrayscaleAsAlpha: String
@available(tvOS 7.0, *)
let GLKTextureLoaderSRGB: String
@available(tvOS 5.0, *)
let GLKTextureLoaderErrorDomain: String
@available(tvOS 5.0, *)
let GLKTextureLoaderErrorKey: String
@available(tvOS 5.0, *)
let GLKTextureLoaderGLErrorKey: String
@available(tvOS 5.0, *)
enum GLKTextureLoaderError : GLuint {
  init?(rawValue: GLuint)
  var rawValue: GLuint { get }
  case FileOrURLNotFound
  case InvalidNSData
  case InvalidCGImage
  case UnknownPathType
  case UnknownFileType
  case PVRAtlasUnsupported
  case CubeMapInvalidNumFiles
  case CompressedTextureUpload
  case UncompressedTextureUpload
  case UnsupportedCubeMapDimensions
  case UnsupportedBitDepth
  case UnsupportedPVRFormat
  case DataPreprocessingFailure
  case MipmapUnsupported
  case UnsupportedOrientation
  case ReorientationFailure
  case AlphaPremultiplicationFailure
  case InvalidEAGLContext
  case IncompatibleFormatSRGB
}
@available(tvOS 5.0, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case None
  case NonPremultiplied
  case Premultiplied
}
@available(tvOS 5.0, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Unknown
  case TopLeft
  case BottomLeft
}
@available(tvOS 5.0, *)
class GLKTextureInfo : NSObject, NSCopying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  init()
  @available(tvOS 5.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, NSError?) -> Void
@available(tvOS 5.0, *)
class GLKTextureLoader : NSObject {
  class func textureWithContentsOfFile(path: String, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOf(url: NSURL, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWithContentsOf(data: NSData, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func textureWith(cgImage: CGImage, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFiles(paths: [AnyObject], options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOfFile(path: String, options: [String : NSNumber]?) throws -> GLKTextureInfo
  class func cubeMapWithContentsOf(url: NSURL, options: [String : NSNumber]?) throws -> GLKTextureInfo
  init(sharegroup: EAGLSharegroup)
  func textureWithContentsOfFile(path: String, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOf(url: NSURL, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWithContentsOf(data: NSData, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func textureWith(cgImage: CGImage, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFiles(paths: [AnyObject], options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOfFile(path: String, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMapWithContentsOf(url: NSURL, options: [String : NSNumber]?, queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  init()
}
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
@available(tvOS 5.0, *)
enum GLKViewDrawableColorFormat : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case RGBA8888
  case RGB565
  case SRGBA8888
}
@available(tvOS 5.0, *)
enum GLKViewDrawableDepthFormat : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case FormatNone
  case Format16
  case Format24
}
@available(tvOS 5.0, *)
enum GLKViewDrawableStencilFormat : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case FormatNone
  case Format8
}
@available(tvOS 5.0, *)
enum GLKViewDrawableMultisample : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case MultisampleNone
  case Multisample4X
}
@available(tvOS 5.0, *)
class GLKView : UIView, NSCoding {
  init(frame: CGRect, context: EAGLContext)
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged GLKViewDelegate?
  var context: EAGLContext
  var drawableWidth: Int { get }
  var drawableHeight: Int { get }
  var drawableColorFormat: GLKViewDrawableColorFormat
  var drawableDepthFormat: GLKViewDrawableDepthFormat
  var drawableStencilFormat: GLKViewDrawableStencilFormat
  var drawableMultisample: GLKViewDrawableMultisample
  func bindDrawable()
  func deleteDrawable()
  var snapshot: UIImage { get }
  var enableSetNeedsDisplay: Bool
  func display()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol GLKViewDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func glkView(view: GLKView, drawIn rect: CGRect)
}
@available(tvOS 5.0, *)
class GLKViewController : UIViewController, NSCoding, GLKViewDelegate {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged GLKViewControllerDelegate?
  var preferredFramesPerSecond: Int
  var framesPerSecond: Int { get }
  var isPaused: Bool
  var framesDisplayed: Int { get }
  var timeSinceFirstResume: NSTimeInterval { get }
  var timeSinceLastResume: NSTimeInterval { get }
  var timeSinceLastUpdate: NSTimeInterval { get }
  var timeSinceLastDraw: NSTimeInterval { get }
  var pauseOnWillResignActive: Bool
  var resumeOnDidBecomeActive: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 5.0, *)
  func glkView(view: GLKView, drawIn rect: CGRect)
}
protocol GLKViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func glkViewControllerUpdate(controller: GLKViewController)
  @available(tvOS 5.0, *)
  optional func glkViewController(controller: GLKViewController, willPause pause: Bool)
}
