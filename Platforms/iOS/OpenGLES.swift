
var EAGL_MAJOR_VERSION: Int32 { get }
var EAGL_MINOR_VERSION: Int32 { get }

/************************************************************************/
enum EAGLRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenGLES1
  case OpenGLES2
  case OpenGLES3
}

/************************************************************************/
func EAGLGetVersion(major: UnsafeMutablePointer<UInt32>, _ minor: UnsafeMutablePointer<UInt32>)

/************************************************************************/
class EAGLSharegroup : NSObject {
  @available(iOS 6.0, *)
  var debugLabel: String!
  init()
}

/************************************************************************/
class EAGLContext : NSObject {
  convenience init!(API api: EAGLRenderingAPI)
  init!(API api: EAGLRenderingAPI, sharegroup: EAGLSharegroup!)
  class func setCurrentContext(context: EAGLContext!) -> Bool
  class func currentContext() -> EAGLContext!
  var API: EAGLRenderingAPI { get }
  var sharegroup: EAGLSharegroup! { get }
  @available(iOS 6.0, *)
  var debugLabel: String!
  @available(iOS 7.1, *)
  var multiThreaded: Bool
}

/************************************************************************/
let kEAGLDrawablePropertyRetainedBacking: String
let kEAGLDrawablePropertyColorFormat: String

/************************************************************************/
let kEAGLColorFormatRGBA8: String
let kEAGLColorFormatRGB565: String
@available(iOS 7.0, *)
let kEAGLColorFormatSRGBA8: String

/************************************************************************/
protocol EAGLDrawable {
  @available(iOS 2.0, *)
  var drawableProperties: [NSObject : AnyObject]! { get set }
}
extension EAGLContext {
  func renderbufferStorage(target: Int, fromDrawable drawable: EAGLDrawable!) -> Bool
  func presentRenderbuffer(target: Int) -> Bool
}
var GL_VERSION_ES_CM_1_0: Int32 { get }
var GL_VERSION_ES_CL_1_0: Int32 { get }
var GL_VERSION_ES_CM_1_1: Int32 { get }
var GL_VERSION_ES_CL_1_1: Int32 { get }
var GL_OES_VERSION_1_0: Int32 { get }
var GL_OES_VERSION_1_1: Int32 { get }
var GL_OES_byte_coordinates: Int32 { get }
var GL_OES_compressed_paletted_texture: Int32 { get }
var GL_OES_draw_texture: Int32 { get }
var GL_OES_fixed_point: Int32 { get }
var GL_OES_matrix_get: Int32 { get }
var GL_OES_matrix_palette: Int32 { get }
var GL_OES_point_size_array: Int32 { get }
var GL_OES_point_sprite: Int32 { get }
var GL_OES_read_format: Int32 { get }
var GL_OES_single_precision: Int32 { get }
var GL_CLIP_PLANE0: Int32 { get }
var GL_CLIP_PLANE1: Int32 { get }
var GL_CLIP_PLANE2: Int32 { get }
var GL_CLIP_PLANE3: Int32 { get }
var GL_CLIP_PLANE4: Int32 { get }
var GL_CLIP_PLANE5: Int32 { get }
var GL_FOG: Int32 { get }
var GL_LIGHTING: Int32 { get }
var GL_ALPHA_TEST: Int32 { get }
var GL_COLOR_LOGIC_OP: Int32 { get }
var GL_POINT_SMOOTH: Int32 { get }
var GL_LINE_SMOOTH: Int32 { get }
var GL_COLOR_MATERIAL: Int32 { get }
var GL_NORMALIZE: Int32 { get }
var GL_RESCALE_NORMAL: Int32 { get }
var GL_VERTEX_ARRAY: Int32 { get }
var GL_NORMAL_ARRAY: Int32 { get }
var GL_COLOR_ARRAY: Int32 { get }
var GL_TEXTURE_COORD_ARRAY: Int32 { get }
var GL_MULTISAMPLE: Int32 { get }
var GL_SAMPLE_ALPHA_TO_ONE: Int32 { get }
var GL_STACK_OVERFLOW: Int32 { get }
var GL_STACK_UNDERFLOW: Int32 { get }
var GL_EXP: Int32 { get }
var GL_EXP2: Int32 { get }
var GL_FOG_DENSITY: Int32 { get }
var GL_FOG_START: Int32 { get }
var GL_FOG_END: Int32 { get }
var GL_FOG_MODE: Int32 { get }
var GL_FOG_COLOR: Int32 { get }
var GL_CURRENT_COLOR: Int32 { get }
var GL_CURRENT_NORMAL: Int32 { get }
var GL_CURRENT_TEXTURE_COORDS: Int32 { get }
var GL_POINT_SIZE: Int32 { get }
var GL_POINT_SIZE_MIN: Int32 { get }
var GL_POINT_SIZE_MAX: Int32 { get }
var GL_POINT_FADE_THRESHOLD_SIZE: Int32 { get }
var GL_POINT_DISTANCE_ATTENUATION: Int32 { get }
var GL_SMOOTH_POINT_SIZE_RANGE: Int32 { get }
var GL_SMOOTH_LINE_WIDTH_RANGE: Int32 { get }
var GL_SHADE_MODEL: Int32 { get }
var GL_MATRIX_MODE: Int32 { get }
var GL_MODELVIEW_STACK_DEPTH: Int32 { get }
var GL_PROJECTION_STACK_DEPTH: Int32 { get }
var GL_TEXTURE_STACK_DEPTH: Int32 { get }
var GL_MODELVIEW_MATRIX: Int32 { get }
var GL_PROJECTION_MATRIX: Int32 { get }
var GL_TEXTURE_MATRIX: Int32 { get }
var GL_ALPHA_TEST_FUNC: Int32 { get }
var GL_ALPHA_TEST_REF: Int32 { get }
var GL_BLEND_DST: Int32 { get }
var GL_BLEND_SRC: Int32 { get }
var GL_LOGIC_OP_MODE: Int32 { get }
var GL_MAX_LIGHTS: Int32 { get }
var GL_MAX_CLIP_PLANES: Int32 { get }
var GL_MAX_MODELVIEW_STACK_DEPTH: Int32 { get }
var GL_MAX_PROJECTION_STACK_DEPTH: Int32 { get }
var GL_MAX_TEXTURE_STACK_DEPTH: Int32 { get }
var GL_MAX_TEXTURE_UNITS: Int32 { get }
var GL_VERTEX_ARRAY_SIZE: Int32 { get }
var GL_VERTEX_ARRAY_TYPE: Int32 { get }
var GL_VERTEX_ARRAY_STRIDE: Int32 { get }
var GL_NORMAL_ARRAY_TYPE: Int32 { get }
var GL_NORMAL_ARRAY_STRIDE: Int32 { get }
var GL_COLOR_ARRAY_SIZE: Int32 { get }
var GL_COLOR_ARRAY_TYPE: Int32 { get }
var GL_COLOR_ARRAY_STRIDE: Int32 { get }
var GL_TEXTURE_COORD_ARRAY_SIZE: Int32 { get }
var GL_TEXTURE_COORD_ARRAY_TYPE: Int32 { get }
var GL_TEXTURE_COORD_ARRAY_STRIDE: Int32 { get }
var GL_VERTEX_ARRAY_POINTER: Int32 { get }
var GL_NORMAL_ARRAY_POINTER: Int32 { get }
var GL_COLOR_ARRAY_POINTER: Int32 { get }
var GL_TEXTURE_COORD_ARRAY_POINTER: Int32 { get }
var GL_IMPLEMENTATION_COLOR_READ_TYPE_OES: Int32 { get }
var GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES: Int32 { get }
var GL_PERSPECTIVE_CORRECTION_HINT: Int32 { get }
var GL_POINT_SMOOTH_HINT: Int32 { get }
var GL_LINE_SMOOTH_HINT: Int32 { get }
var GL_FOG_HINT: Int32 { get }
var GL_LIGHT_MODEL_AMBIENT: Int32 { get }
var GL_LIGHT_MODEL_TWO_SIDE: Int32 { get }
var GL_AMBIENT: Int32 { get }
var GL_DIFFUSE: Int32 { get }
var GL_SPECULAR: Int32 { get }
var GL_POSITION: Int32 { get }
var GL_SPOT_DIRECTION: Int32 { get }
var GL_SPOT_EXPONENT: Int32 { get }
var GL_SPOT_CUTOFF: Int32 { get }
var GL_CONSTANT_ATTENUATION: Int32 { get }
var GL_LINEAR_ATTENUATION: Int32 { get }
var GL_QUADRATIC_ATTENUATION: Int32 { get }
var GL_CLEAR: Int32 { get }
var GL_AND: Int32 { get }
var GL_AND_REVERSE: Int32 { get }
var GL_COPY: Int32 { get }
var GL_AND_INVERTED: Int32 { get }
var GL_NOOP: Int32 { get }
var GL_XOR: Int32 { get }
var GL_OR: Int32 { get }
var GL_NOR: Int32 { get }
var GL_EQUIV: Int32 { get }
var GL_OR_REVERSE: Int32 { get }
var GL_COPY_INVERTED: Int32 { get }
var GL_OR_INVERTED: Int32 { get }
var GL_NAND: Int32 { get }
var GL_SET: Int32 { get }
var GL_EMISSION: Int32 { get }
var GL_SHININESS: Int32 { get }
var GL_AMBIENT_AND_DIFFUSE: Int32 { get }
var GL_MODELVIEW: Int32 { get }
var GL_PROJECTION: Int32 { get }
var GL_FLAT: Int32 { get }
var GL_SMOOTH: Int32 { get }
var GL_MODULATE: Int32 { get }
var GL_DECAL: Int32 { get }
var GL_ADD: Int32 { get }
var GL_TEXTURE_ENV_MODE: Int32 { get }
var GL_TEXTURE_ENV_COLOR: Int32 { get }
var GL_TEXTURE_ENV: Int32 { get }
var GL_GENERATE_MIPMAP: Int32 { get }
var GL_CLIENT_ACTIVE_TEXTURE: Int32 { get }
var GL_PALETTE4_RGB8_OES: Int32 { get }
var GL_PALETTE4_RGBA8_OES: Int32 { get }
var GL_PALETTE4_R5_G6_B5_OES: Int32 { get }
var GL_PALETTE4_RGBA4_OES: Int32 { get }
var GL_PALETTE4_RGB5_A1_OES: Int32 { get }
var GL_PALETTE8_RGB8_OES: Int32 { get }
var GL_PALETTE8_RGBA8_OES: Int32 { get }
var GL_PALETTE8_R5_G6_B5_OES: Int32 { get }
var GL_PALETTE8_RGBA4_OES: Int32 { get }
var GL_PALETTE8_RGB5_A1_OES: Int32 { get }
var GL_LIGHT0: Int32 { get }
var GL_LIGHT1: Int32 { get }
var GL_LIGHT2: Int32 { get }
var GL_LIGHT3: Int32 { get }
var GL_LIGHT4: Int32 { get }
var GL_LIGHT5: Int32 { get }
var GL_LIGHT6: Int32 { get }
var GL_LIGHT7: Int32 { get }
var GL_VERTEX_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_NORMAL_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_COLOR_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_SUBTRACT: Int32 { get }
var GL_COMBINE: Int32 { get }
var GL_COMBINE_RGB: Int32 { get }
var GL_COMBINE_ALPHA: Int32 { get }
var GL_RGB_SCALE: Int32 { get }
var GL_ADD_SIGNED: Int32 { get }
var GL_INTERPOLATE: Int32 { get }
var GL_CONSTANT: Int32 { get }
var GL_PRIMARY_COLOR: Int32 { get }
var GL_PREVIOUS: Int32 { get }
var GL_OPERAND0_RGB: Int32 { get }
var GL_OPERAND1_RGB: Int32 { get }
var GL_OPERAND2_RGB: Int32 { get }
var GL_OPERAND0_ALPHA: Int32 { get }
var GL_OPERAND1_ALPHA: Int32 { get }
var GL_OPERAND2_ALPHA: Int32 { get }
var GL_ALPHA_SCALE: Int32 { get }
var GL_SRC0_RGB: Int32 { get }
var GL_SRC1_RGB: Int32 { get }
var GL_SRC2_RGB: Int32 { get }
var GL_SRC0_ALPHA: Int32 { get }
var GL_SRC1_ALPHA: Int32 { get }
var GL_SRC2_ALPHA: Int32 { get }
var GL_DOT3_RGB: Int32 { get }
var GL_DOT3_RGBA: Int32 { get }
var GL_TEXTURE_CROP_RECT_OES: Int32 { get }
var GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES: Int32 { get }
var GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES: Int32 { get }
var GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES: Int32 { get }
var GL_MAX_VERTEX_UNITS_OES: Int32 { get }
var GL_MAX_PALETTE_MATRICES_OES: Int32 { get }
var GL_MATRIX_PALETTE_OES: Int32 { get }
var GL_MATRIX_INDEX_ARRAY_OES: Int32 { get }
var GL_WEIGHT_ARRAY_OES: Int32 { get }
var GL_CURRENT_PALETTE_MATRIX_OES: Int32 { get }
var GL_MATRIX_INDEX_ARRAY_SIZE_OES: Int32 { get }
var GL_MATRIX_INDEX_ARRAY_TYPE_OES: Int32 { get }
var GL_MATRIX_INDEX_ARRAY_STRIDE_OES: Int32 { get }
var GL_MATRIX_INDEX_ARRAY_POINTER_OES: Int32 { get }
var GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES: Int32 { get }
var GL_WEIGHT_ARRAY_SIZE_OES: Int32 { get }
var GL_WEIGHT_ARRAY_TYPE_OES: Int32 { get }
var GL_WEIGHT_ARRAY_STRIDE_OES: Int32 { get }
var GL_WEIGHT_ARRAY_POINTER_OES: Int32 { get }
var GL_WEIGHT_ARRAY_BUFFER_BINDING_OES: Int32 { get }
var GL_POINT_SIZE_ARRAY_OES: Int32 { get }
var GL_POINT_SIZE_ARRAY_TYPE_OES: Int32 { get }
var GL_POINT_SIZE_ARRAY_STRIDE_OES: Int32 { get }
var GL_POINT_SIZE_ARRAY_POINTER_OES: Int32 { get }
var GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES: Int32 { get }
var GL_POINT_SPRITE_OES: Int32 { get }
var GL_COORD_REPLACE_OES: Int32 { get }

/*************************************************************/
func glAlphaFunc(func: GLenum, _ ref: GLclampf)
func glClipPlanef(plane: GLenum, _ equation: UnsafePointer<GLfloat>)
func glColor4f(red: GLfloat, _ green: GLfloat, _ blue: GLfloat, _ alpha: GLfloat)
func glFogf(pname: GLenum, _ param: GLfloat)
func glFogfv(pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glFrustumf(left: GLfloat, _ right: GLfloat, _ bottom: GLfloat, _ top: GLfloat, _ zNear: GLfloat, _ zFar: GLfloat)
func glGetClipPlanef(pname: GLenum, _ equation: UnsafeMutablePointer<GLfloat>)
func glGetLightfv(light: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
func glGetMaterialfv(face: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
func glGetTexEnvfv(env: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
func glLightModelf(pname: GLenum, _ param: GLfloat)
func glLightModelfv(pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glLightf(light: GLenum, _ pname: GLenum, _ param: GLfloat)
func glLightfv(light: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glLoadMatrixf(m: UnsafePointer<GLfloat>)
func glMaterialf(face: GLenum, _ pname: GLenum, _ param: GLfloat)
func glMaterialfv(face: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glMultMatrixf(m: UnsafePointer<GLfloat>)
func glMultiTexCoord4f(target: GLenum, _ s: GLfloat, _ t: GLfloat, _ r: GLfloat, _ q: GLfloat)
func glNormal3f(nx: GLfloat, _ ny: GLfloat, _ nz: GLfloat)
func glOrthof(left: GLfloat, _ right: GLfloat, _ bottom: GLfloat, _ top: GLfloat, _ zNear: GLfloat, _ zFar: GLfloat)
func glPointParameterf(pname: GLenum, _ param: GLfloat)
func glPointParameterfv(pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glPointSize(size: GLfloat)
func glRotatef(angle: GLfloat, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat)
func glScalef(x: GLfloat, _ y: GLfloat, _ z: GLfloat)
func glTexEnvf(target: GLenum, _ pname: GLenum, _ param: GLfloat)
func glTexEnvfv(target: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glTranslatef(x: GLfloat, _ y: GLfloat, _ z: GLfloat)
func glAlphaFuncx(func: GLenum, _ ref: GLclampx)
func glClearColorx(red: GLclampx, _ green: GLclampx, _ blue: GLclampx, _ alpha: GLclampx)
func glClearDepthx(depth: GLclampx)
func glClientActiveTexture(texture: GLenum)
func glClipPlanex(plane: GLenum, _ equation: UnsafePointer<GLfixed>)
func glColor4ub(red: GLubyte, _ green: GLubyte, _ blue: GLubyte, _ alpha: GLubyte)
func glColor4x(red: GLfixed, _ green: GLfixed, _ blue: GLfixed, _ alpha: GLfixed)
func glColorPointer(size: GLint, _ type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
func glDepthRangex(zNear: GLclampx, _ zFar: GLclampx)
func glDisableClientState(array: GLenum)
func glEnableClientState(array: GLenum)
func glFogx(pname: GLenum, _ param: GLfixed)
func glFogxv(pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glFrustumx(left: GLfixed, _ right: GLfixed, _ bottom: GLfixed, _ top: GLfixed, _ zNear: GLfixed, _ zFar: GLfixed)
func glGetClipPlanex(pname: GLenum, _ eqn: UnsafeMutablePointer<GLfixed>)
func glGetFixedv(pname: GLenum, _ params: UnsafeMutablePointer<GLfixed>)
func glGetLightxv(light: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfixed>)
func glGetMaterialxv(face: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfixed>)
func glGetPointerv(pname: GLenum, _ params: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func glGetTexEnviv(env: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
func glGetTexEnvxv(env: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfixed>)
func glGetTexParameterxv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfixed>)
func glLightModelx(pname: GLenum, _ param: GLfixed)
func glLightModelxv(pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glLightx(light: GLenum, _ pname: GLenum, _ param: GLfixed)
func glLightxv(light: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glLineWidthx(width: GLfixed)
func glLoadIdentity()
func glLoadMatrixx(m: UnsafePointer<GLfixed>)
func glLogicOp(opcode: GLenum)
func glMaterialx(face: GLenum, _ pname: GLenum, _ param: GLfixed)
func glMaterialxv(face: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glMatrixMode(mode: GLenum)
func glMultMatrixx(m: UnsafePointer<GLfixed>)
func glMultiTexCoord4x(target: GLenum, _ s: GLfixed, _ t: GLfixed, _ r: GLfixed, _ q: GLfixed)
func glNormal3x(nx: GLfixed, _ ny: GLfixed, _ nz: GLfixed)
func glNormalPointer(type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
func glOrthox(left: GLfixed, _ right: GLfixed, _ bottom: GLfixed, _ top: GLfixed, _ zNear: GLfixed, _ zFar: GLfixed)
func glPointParameterx(pname: GLenum, _ param: GLfixed)
func glPointParameterxv(pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glPointSizex(size: GLfixed)
func glPolygonOffsetx(factor: GLfixed, _ units: GLfixed)
func glPopMatrix()
func glPushMatrix()
func glRotatex(angle: GLfixed, _ x: GLfixed, _ y: GLfixed, _ z: GLfixed)
func glSampleCoveragex(value: GLclampx, _ invert: GLboolean)
func glScalex(x: GLfixed, _ y: GLfixed, _ z: GLfixed)
func glShadeModel(mode: GLenum)
func glTexCoordPointer(size: GLint, _ type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
func glTexEnvi(target: GLenum, _ pname: GLenum, _ param: GLint)
func glTexEnvx(target: GLenum, _ pname: GLenum, _ param: GLfixed)
func glTexEnviv(target: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLint>)
func glTexEnvxv(target: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glTexParameterx(target: GLenum, _ pname: GLenum, _ param: GLfixed)
func glTexParameterxv(target: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfixed>)
func glTranslatex(x: GLfixed, _ y: GLfixed, _ z: GLfixed)
func glVertexPointer(size: GLint, _ type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)

/*****************************************************************************************/
func glCurrentPaletteMatrixOES(matrixpaletteindex: GLuint)
func glLoadPaletteFromModelViewMatrixOES()
func glMatrixIndexPointerOES(size: GLint, _ type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
func glWeightPointerOES(size: GLint, _ type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
func glPointSizePointerOES(type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
func glDrawTexsOES(x: GLshort, _ y: GLshort, _ z: GLshort, _ width: GLshort, _ height: GLshort)
func glDrawTexiOES(x: GLint, _ y: GLint, _ z: GLint, _ width: GLint, _ height: GLint)
func glDrawTexxOES(x: GLfixed, _ y: GLfixed, _ z: GLfixed, _ width: GLfixed, _ height: GLfixed)
func glDrawTexsvOES(coords: UnsafePointer<GLshort>)
func glDrawTexivOES(coords: UnsafePointer<GLint>)
func glDrawTexxvOES(coords: UnsafePointer<GLfixed>)
func glDrawTexfOES(x: GLfloat, _ y: GLfloat, _ z: GLfloat, _ width: GLfloat, _ height: GLfloat)
func glDrawTexfvOES(coords: UnsafePointer<GLfloat>)
var GL_APPLE_texture_2D_limited_npot: Int32 { get }
var GL_EXT_texture_lod_bias: Int32 { get }
var GL_OES_blend_equation_separate: Int32 { get }
var GL_OES_blend_func_separate: Int32 { get }
var GL_OES_blend_subtract: Int32 { get }
var GL_OES_framebuffer_object: Int32 { get }
var GL_OES_stencil_wrap: Int32 { get }
var GL_OES_stencil8: Int32 { get }
var GL_OES_texture_mirrored_repeat: Int32 { get }
var GL_MAX_TEXTURE_LOD_BIAS_EXT: Int32 { get }
var GL_TEXTURE_FILTER_CONTROL_EXT: Int32 { get }
var GL_TEXTURE_LOD_BIAS_EXT: Int32 { get }
var GL_BLEND_EQUATION_RGB_OES: Int32 { get }
var GL_BLEND_EQUATION_ALPHA_OES: Int32 { get }
var GL_BLEND_DST_RGB_OES: Int32 { get }
var GL_BLEND_SRC_RGB_OES: Int32 { get }
var GL_BLEND_DST_ALPHA_OES: Int32 { get }
var GL_BLEND_SRC_ALPHA_OES: Int32 { get }
var GL_BLEND_EQUATION_OES: Int32 { get }
var GL_FUNC_ADD_OES: Int32 { get }
var GL_FUNC_SUBTRACT_OES: Int32 { get }
var GL_FUNC_REVERSE_SUBTRACT_OES: Int32 { get }
var GL_UNSIGNED_INT_OES: Int32 { get }
var GL_FRAMEBUFFER_OES: Int32 { get }
var GL_RENDERBUFFER_OES: Int32 { get }
var GL_RGBA4_OES: Int32 { get }
var GL_RGB5_A1_OES: Int32 { get }
var GL_RGB565_OES: Int32 { get }
var GL_DEPTH_COMPONENT16_OES: Int32 { get }
var GL_RENDERBUFFER_WIDTH_OES: Int32 { get }
var GL_RENDERBUFFER_HEIGHT_OES: Int32 { get }
var GL_RENDERBUFFER_INTERNAL_FORMAT_OES: Int32 { get }
var GL_RENDERBUFFER_RED_SIZE_OES: Int32 { get }
var GL_RENDERBUFFER_GREEN_SIZE_OES: Int32 { get }
var GL_RENDERBUFFER_BLUE_SIZE_OES: Int32 { get }
var GL_RENDERBUFFER_ALPHA_SIZE_OES: Int32 { get }
var GL_RENDERBUFFER_DEPTH_SIZE_OES: Int32 { get }
var GL_RENDERBUFFER_STENCIL_SIZE_OES: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES: Int32 { get }
var GL_COLOR_ATTACHMENT0_OES: Int32 { get }
var GL_DEPTH_ATTACHMENT_OES: Int32 { get }
var GL_STENCIL_ATTACHMENT_OES: Int32 { get }
var GL_FRAMEBUFFER_COMPLETE_OES: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_OES: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_OES: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_OES: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_FORMATS_OES: Int32 { get }
var GL_FRAMEBUFFER_UNSUPPORTED_OES: Int32 { get }
var GL_FRAMEBUFFER_BINDING_OES: Int32 { get }
var GL_RENDERBUFFER_BINDING_OES: Int32 { get }
var GL_MAX_RENDERBUFFER_SIZE_OES: Int32 { get }
var GL_INVALID_FRAMEBUFFER_OPERATION_OES: Int32 { get }
var GL_INCR_WRAP_OES: Int32 { get }
var GL_DECR_WRAP_OES: Int32 { get }
var GL_STENCIL_INDEX8_OES: Int32 { get }
var GL_MIRRORED_REPEAT_OES: Int32 { get }
@available(iOS 3.1, *)
func glBlendEquationSeparateOES(modeRGB: GLenum, _ modeAlpha: GLenum)
@available(iOS 3.1, *)
func glBlendFuncSeparateOES(srcRGB: GLenum, _ dstRGB: GLenum, _ srcAlpha: GLenum, _ dstAlpha: GLenum)
func glBlendEquationOES(mode: GLenum)
func glIsRenderbufferOES(renderbuffer: GLuint) -> GLboolean
func glBindRenderbufferOES(target: GLenum, _ renderbuffer: GLuint)
func glDeleteRenderbuffersOES(n: GLsizei, _ renderbuffers: UnsafePointer<GLuint>)
func glGenRenderbuffersOES(n: GLsizei, _ renderbuffers: UnsafeMutablePointer<GLuint>)
func glRenderbufferStorageOES(target: GLenum, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei)
func glGetRenderbufferParameterivOES(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
func glIsFramebufferOES(framebuffer: GLuint) -> GLboolean
func glBindFramebufferOES(target: GLenum, _ framebuffer: GLuint)
func glDeleteFramebuffersOES(n: GLsizei, _ framebuffers: UnsafePointer<GLuint>)
func glGenFramebuffersOES(n: GLsizei, _ framebuffers: UnsafeMutablePointer<GLuint>)
func glCheckFramebufferStatusOES(target: GLenum) -> GLenum
func glFramebufferRenderbufferOES(target: GLenum, _ attachment: GLenum, _ renderbuffertarget: GLenum, _ renderbuffer: GLuint)
func glFramebufferTexture2DOES(target: GLenum, _ attachment: GLenum, _ textarget: GLenum, _ texture: GLuint, _ level: GLint)
func glGetFramebufferAttachmentParameterivOES(target: GLenum, _ attachment: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
func glGenerateMipmapOES(target: GLenum)
var GL_APPLE_framebuffer_multisample: Int32 { get }
var GL_APPLE_sync: Int32 { get }
var GL_APPLE_texture_max_level: Int32 { get }
var GL_APPLE_texture_packed_float: Int32 { get }
var GL_EXT_blend_minmax: Int32 { get }
var GL_EXT_discard_framebuffer: Int32 { get }
var GL_EXT_draw_instanced: Int32 { get }
var GL_EXT_instanced_arrays: Int32 { get }
var GL_EXT_map_buffer_range: Int32 { get }
var GL_EXT_occlusion_query_boolean: Int32 { get }
var GL_EXT_sRGB: Int32 { get }
var GL_EXT_texture_rg: Int32 { get }
var GL_EXT_texture_storage: Int32 { get }
var GL_OES_depth_texture: Int32 { get }
var GL_OES_depth24: Int32 { get }
var GL_OES_element_index_uint: Int32 { get }
var GL_OES_fbo_render_mipmap: Int32 { get }
var GL_OES_mapbuffer: Int32 { get }
var GL_OES_packed_depth_stencil: Int32 { get }
var GL_OES_rgb8_rgba8: Int32 { get }
var GL_OES_texture_float: Int32 { get }
var GL_OES_texture_half_float: Int32 { get }
var GL_OES_texture_half_float_linear: Int32 { get }
var GL_OES_vertex_array_object: Int32 { get }
var GL_RENDERBUFFER_SAMPLES_APPLE: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE: Int32 { get }
var GL_MAX_SAMPLES_APPLE: Int32 { get }
var GL_READ_FRAMEBUFFER_APPLE: Int32 { get }
var GL_DRAW_FRAMEBUFFER_APPLE: Int32 { get }
var GL_DRAW_FRAMEBUFFER_BINDING_APPLE: Int32 { get }
var GL_READ_FRAMEBUFFER_BINDING_APPLE: Int32 { get }
var GL_UNSIGNED_INT_10F_11F_11F_REV_APPLE: Int32 { get }
var GL_UNSIGNED_INT_5_9_9_9_REV_APPLE: Int32 { get }
var GL_MAX_SERVER_WAIT_TIMEOUT_APPLE: Int32 { get }
var GL_OBJECT_TYPE_APPLE: Int32 { get }
var GL_SYNC_CONDITION_APPLE: Int32 { get }
var GL_SYNC_STATUS_APPLE: Int32 { get }
var GL_SYNC_FLAGS_APPLE: Int32 { get }
var GL_SYNC_FENCE_APPLE: Int32 { get }
var GL_SYNC_GPU_COMMANDS_COMPLETE_APPLE: Int32 { get }
var GL_UNSIGNALED_APPLE: Int32 { get }
var GL_SIGNALED_APPLE: Int32 { get }
var GL_ALREADY_SIGNALED_APPLE: Int32 { get }
var GL_TIMEOUT_EXPIRED_APPLE: Int32 { get }
var GL_CONDITION_SATISFIED_APPLE: Int32 { get }
var GL_WAIT_FAILED_APPLE: Int32 { get }
var GL_SYNC_FLUSH_COMMANDS_BIT_APPLE: Int32 { get }
var GL_TIMEOUT_IGNORED_APPLE: UInt64 { get }
var GL_TEXTURE_MAX_LEVEL_APPLE: Int32 { get }
var GL_MIN_EXT: Int32 { get }
var GL_MAX_EXT: Int32 { get }
var GL_COLOR_EXT: Int32 { get }
var GL_DEPTH_EXT: Int32 { get }
var GL_STENCIL_EXT: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT: Int32 { get }
var GL_MAP_READ_BIT_EXT: Int32 { get }
var GL_MAP_WRITE_BIT_EXT: Int32 { get }
var GL_MAP_INVALIDATE_RANGE_BIT_EXT: Int32 { get }
var GL_MAP_INVALIDATE_BUFFER_BIT_EXT: Int32 { get }
var GL_MAP_FLUSH_EXPLICIT_BIT_EXT: Int32 { get }
var GL_MAP_UNSYNCHRONIZED_BIT_EXT: Int32 { get }
var GL_ANY_SAMPLES_PASSED_EXT: Int32 { get }
var GL_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT: Int32 { get }
var GL_CURRENT_QUERY_EXT: Int32 { get }
var GL_QUERY_RESULT_EXT: Int32 { get }
var GL_QUERY_RESULT_AVAILABLE_EXT: Int32 { get }
var GL_SRGB_EXT: Int32 { get }
var GL_SRGB_ALPHA_EXT: Int32 { get }
var GL_SRGB8_ALPHA8_EXT: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT: Int32 { get }
var GL_RED_EXT: Int32 { get }
var GL_RG_EXT: Int32 { get }
var GL_R8_EXT: Int32 { get }
var GL_RG8_EXT: Int32 { get }
var GL_TEXTURE_IMMUTABLE_FORMAT_EXT: Int32 { get }
var GL_ALPHA8_EXT: Int32 { get }
var GL_LUMINANCE8_EXT: Int32 { get }
var GL_LUMINANCE8_ALPHA8_EXT: Int32 { get }
var GL_RGBA32F_EXT: Int32 { get }
var GL_RGB32F_EXT: Int32 { get }
var GL_RG32F_EXT: Int32 { get }
var GL_R32F_EXT: Int32 { get }
var GL_ALPHA32F_EXT: Int32 { get }
var GL_LUMINANCE32F_EXT: Int32 { get }
var GL_LUMINANCE_ALPHA32F_EXT: Int32 { get }
var GL_ALPHA16F_EXT: Int32 { get }
var GL_LUMINANCE16F_EXT: Int32 { get }
var GL_LUMINANCE_ALPHA16F_EXT: Int32 { get }
var GL_DEPTH_COMPONENT32_OES: Int32 { get }
var GL_DEPTH_COMPONENT24_OES: Int32 { get }
var GL_WRITE_ONLY_OES: Int32 { get }
var GL_BUFFER_ACCESS_OES: Int32 { get }
var GL_BUFFER_MAPPED_OES: Int32 { get }
var GL_BUFFER_MAP_POINTER_OES: Int32 { get }
var GL_DEPTH_STENCIL_OES: Int32 { get }
var GL_UNSIGNED_INT_24_8_OES: Int32 { get }
var GL_DEPTH24_STENCIL8_OES: Int32 { get }
var GL_RGB8_OES: Int32 { get }
var GL_RGBA8_OES: Int32 { get }
var GL_HALF_FLOAT_OES: Int32 { get }
var GL_VERTEX_ARRAY_BINDING_OES: Int32 { get }
@available(iOS 4.0, *)
func glRenderbufferStorageMultisampleAPPLE(target: GLenum, _ samples: GLsizei, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei)
@available(iOS 4.0, *)
func glResolveMultisampleFramebufferAPPLE()
@available(iOS 6.0, *)
func glFenceSyncAPPLE(condition: GLenum, _ flags: GLbitfield) -> GLsync
@available(iOS 6.0, *)
func glIsSyncAPPLE(sync: GLsync) -> GLboolean
@available(iOS 6.0, *)
func glDeleteSyncAPPLE(sync: GLsync)
@available(iOS 6.0, *)
func glClientWaitSyncAPPLE(sync: GLsync, _ flags: GLbitfield, _ timeout: GLuint64) -> GLenum
@available(iOS 6.0, *)
func glWaitSyncAPPLE(sync: GLsync, _ flags: GLbitfield, _ timeout: GLuint64)
@available(iOS 6.0, *)
func glGetInteger64vAPPLE(pname: GLenum, _ params: UnsafeMutablePointer<GLint64>)
@available(iOS 6.0, *)
func glGetSyncivAPPLE(sync: GLsync, _ pname: GLenum, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ values: UnsafeMutablePointer<GLint>)
@available(iOS 4.0, *)
func glDiscardFramebufferEXT(target: GLenum, _ numAttachments: GLsizei, _ attachments: UnsafePointer<GLenum>)
@available(iOS 7.0, *)
func glDrawArraysInstancedEXT(mode: GLenum, _ first: GLint, _ count: GLsizei, _ instanceCount: GLsizei)
@available(iOS 7.0, *)
func glDrawElementsInstancedEXT(mode: GLenum, _ count: GLsizei, _ type: GLenum, _ indices: UnsafePointer<Void>, _ instanceCount: GLsizei)
@available(iOS 7.0, *)
func glVertexAttribDivisorEXT(index: GLuint, _ divisor: GLuint)
@available(iOS 6.0, *)
func glMapBufferRangeEXT(target: GLenum, _ offset: GLintptr, _ length: GLsizeiptr, _ access: GLbitfield) -> UnsafeMutablePointer<Void>
@available(iOS 6.0, *)
func glFlushMappedBufferRangeEXT(target: GLenum, _ offset: GLintptr, _ length: GLsizeiptr)
@available(iOS 5.0, *)
func glGenQueriesEXT(n: GLsizei, _ ids: UnsafeMutablePointer<GLuint>)
@available(iOS 5.0, *)
func glDeleteQueriesEXT(n: GLsizei, _ ids: UnsafePointer<GLuint>)
@available(iOS 5.0, *)
func glIsQueryEXT(id: GLuint) -> GLboolean
@available(iOS 5.0, *)
func glBeginQueryEXT(target: GLenum, _ id: GLuint)
@available(iOS 5.0, *)
func glEndQueryEXT(target: GLenum)
@available(iOS 5.0, *)
func glGetQueryivEXT(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 5.0, *)
func glGetQueryObjectuivEXT(id: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLuint>)
@available(iOS 6.0, *)
func glTexStorage2DEXT(target: GLenum, _ levels: GLsizei, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei)
func glGetBufferPointervOES(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func glMapBufferOES(target: GLenum, _ access: GLenum) -> UnsafeMutablePointer<Void>
func glUnmapBufferOES(target: GLenum) -> GLboolean
@available(iOS 4.0, *)
func glBindVertexArrayOES(array: GLuint)
@available(iOS 4.0, *)
func glDeleteVertexArraysOES(n: GLsizei, _ arrays: UnsafePointer<GLuint>)
@available(iOS 4.0, *)
func glGenVertexArraysOES(n: GLsizei, _ arrays: UnsafeMutablePointer<GLuint>)
@available(iOS 4.0, *)
func glIsVertexArrayOES(array: GLuint) -> GLboolean
var GL_ES_VERSION_3_0: Int32 { get }
var GL_ES_VERSION_2_0: Int32 { get }
var GL_DEPTH_BUFFER_BIT: Int32 { get }
var GL_STENCIL_BUFFER_BIT: Int32 { get }
var GL_COLOR_BUFFER_BIT: Int32 { get }
var GL_FALSE: Int32 { get }
var GL_TRUE: Int32 { get }
var GL_POINTS: Int32 { get }
var GL_LINES: Int32 { get }
var GL_LINE_LOOP: Int32 { get }
var GL_LINE_STRIP: Int32 { get }
var GL_TRIANGLES: Int32 { get }
var GL_TRIANGLE_STRIP: Int32 { get }
var GL_TRIANGLE_FAN: Int32 { get }
var GL_ZERO: Int32 { get }
var GL_ONE: Int32 { get }
var GL_SRC_COLOR: Int32 { get }
var GL_ONE_MINUS_SRC_COLOR: Int32 { get }
var GL_SRC_ALPHA: Int32 { get }
var GL_ONE_MINUS_SRC_ALPHA: Int32 { get }
var GL_DST_ALPHA: Int32 { get }
var GL_ONE_MINUS_DST_ALPHA: Int32 { get }
var GL_DST_COLOR: Int32 { get }
var GL_ONE_MINUS_DST_COLOR: Int32 { get }
var GL_SRC_ALPHA_SATURATE: Int32 { get }
var GL_FUNC_ADD: Int32 { get }
var GL_BLEND_EQUATION: Int32 { get }
var GL_BLEND_EQUATION_RGB: Int32 { get }
var GL_BLEND_EQUATION_ALPHA: Int32 { get }
var GL_FUNC_SUBTRACT: Int32 { get }
var GL_FUNC_REVERSE_SUBTRACT: Int32 { get }
var GL_BLEND_DST_RGB: Int32 { get }
var GL_BLEND_SRC_RGB: Int32 { get }
var GL_BLEND_DST_ALPHA: Int32 { get }
var GL_BLEND_SRC_ALPHA: Int32 { get }
var GL_CONSTANT_COLOR: Int32 { get }
var GL_ONE_MINUS_CONSTANT_COLOR: Int32 { get }
var GL_CONSTANT_ALPHA: Int32 { get }
var GL_ONE_MINUS_CONSTANT_ALPHA: Int32 { get }
var GL_BLEND_COLOR: Int32 { get }
var GL_ARRAY_BUFFER: Int32 { get }
var GL_ELEMENT_ARRAY_BUFFER: Int32 { get }
var GL_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_ELEMENT_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_STREAM_DRAW: Int32 { get }
var GL_STATIC_DRAW: Int32 { get }
var GL_DYNAMIC_DRAW: Int32 { get }
var GL_BUFFER_SIZE: Int32 { get }
var GL_BUFFER_USAGE: Int32 { get }
var GL_CURRENT_VERTEX_ATTRIB: Int32 { get }
var GL_FRONT: Int32 { get }
var GL_BACK: Int32 { get }
var GL_FRONT_AND_BACK: Int32 { get }
var GL_TEXTURE_2D: Int32 { get }
var GL_CULL_FACE: Int32 { get }
var GL_BLEND: Int32 { get }
var GL_DITHER: Int32 { get }
var GL_STENCIL_TEST: Int32 { get }
var GL_DEPTH_TEST: Int32 { get }
var GL_SCISSOR_TEST: Int32 { get }
var GL_POLYGON_OFFSET_FILL: Int32 { get }
var GL_SAMPLE_ALPHA_TO_COVERAGE: Int32 { get }
var GL_SAMPLE_COVERAGE: Int32 { get }
var GL_NO_ERROR: Int32 { get }
var GL_INVALID_ENUM: Int32 { get }
var GL_INVALID_VALUE: Int32 { get }
var GL_INVALID_OPERATION: Int32 { get }
var GL_OUT_OF_MEMORY: Int32 { get }
var GL_CW: Int32 { get }
var GL_CCW: Int32 { get }
var GL_LINE_WIDTH: Int32 { get }
var GL_ALIASED_POINT_SIZE_RANGE: Int32 { get }
var GL_ALIASED_LINE_WIDTH_RANGE: Int32 { get }
var GL_CULL_FACE_MODE: Int32 { get }
var GL_FRONT_FACE: Int32 { get }
var GL_DEPTH_RANGE: Int32 { get }
var GL_DEPTH_WRITEMASK: Int32 { get }
var GL_DEPTH_CLEAR_VALUE: Int32 { get }
var GL_DEPTH_FUNC: Int32 { get }
var GL_STENCIL_CLEAR_VALUE: Int32 { get }
var GL_STENCIL_FUNC: Int32 { get }
var GL_STENCIL_FAIL: Int32 { get }
var GL_STENCIL_PASS_DEPTH_FAIL: Int32 { get }
var GL_STENCIL_PASS_DEPTH_PASS: Int32 { get }
var GL_STENCIL_REF: Int32 { get }
var GL_STENCIL_VALUE_MASK: Int32 { get }
var GL_STENCIL_WRITEMASK: Int32 { get }
var GL_STENCIL_BACK_FUNC: Int32 { get }
var GL_STENCIL_BACK_FAIL: Int32 { get }
var GL_STENCIL_BACK_PASS_DEPTH_FAIL: Int32 { get }
var GL_STENCIL_BACK_PASS_DEPTH_PASS: Int32 { get }
var GL_STENCIL_BACK_REF: Int32 { get }
var GL_STENCIL_BACK_VALUE_MASK: Int32 { get }
var GL_STENCIL_BACK_WRITEMASK: Int32 { get }
var GL_VIEWPORT: Int32 { get }
var GL_SCISSOR_BOX: Int32 { get }
var GL_COLOR_CLEAR_VALUE: Int32 { get }
var GL_COLOR_WRITEMASK: Int32 { get }
var GL_UNPACK_ALIGNMENT: Int32 { get }
var GL_PACK_ALIGNMENT: Int32 { get }
var GL_MAX_TEXTURE_SIZE: Int32 { get }
var GL_MAX_VIEWPORT_DIMS: Int32 { get }
var GL_SUBPIXEL_BITS: Int32 { get }
var GL_RED_BITS: Int32 { get }
var GL_GREEN_BITS: Int32 { get }
var GL_BLUE_BITS: Int32 { get }
var GL_ALPHA_BITS: Int32 { get }
var GL_DEPTH_BITS: Int32 { get }
var GL_STENCIL_BITS: Int32 { get }
var GL_POLYGON_OFFSET_UNITS: Int32 { get }
var GL_POLYGON_OFFSET_FACTOR: Int32 { get }
var GL_TEXTURE_BINDING_2D: Int32 { get }
var GL_SAMPLE_BUFFERS: Int32 { get }
var GL_SAMPLES: Int32 { get }
var GL_SAMPLE_COVERAGE_VALUE: Int32 { get }
var GL_SAMPLE_COVERAGE_INVERT: Int32 { get }
var GL_NUM_COMPRESSED_TEXTURE_FORMATS: Int32 { get }
var GL_COMPRESSED_TEXTURE_FORMATS: Int32 { get }
var GL_DONT_CARE: Int32 { get }
var GL_FASTEST: Int32 { get }
var GL_NICEST: Int32 { get }
var GL_GENERATE_MIPMAP_HINT: Int32 { get }
var GL_BYTE: Int32 { get }
var GL_UNSIGNED_BYTE: Int32 { get }
var GL_SHORT: Int32 { get }
var GL_UNSIGNED_SHORT: Int32 { get }
var GL_INT: Int32 { get }
var GL_UNSIGNED_INT: Int32 { get }
var GL_FLOAT: Int32 { get }
var GL_FIXED: Int32 { get }
var GL_DEPTH_COMPONENT: Int32 { get }
var GL_ALPHA: Int32 { get }
var GL_RGB: Int32 { get }
var GL_RGBA: Int32 { get }
var GL_LUMINANCE: Int32 { get }
var GL_LUMINANCE_ALPHA: Int32 { get }
var GL_UNSIGNED_SHORT_4_4_4_4: Int32 { get }
var GL_UNSIGNED_SHORT_5_5_5_1: Int32 { get }
var GL_UNSIGNED_SHORT_5_6_5: Int32 { get }
var GL_FRAGMENT_SHADER: Int32 { get }
var GL_VERTEX_SHADER: Int32 { get }
var GL_MAX_VERTEX_ATTRIBS: Int32 { get }
var GL_MAX_VERTEX_UNIFORM_VECTORS: Int32 { get }
var GL_MAX_VARYING_VECTORS: Int32 { get }
var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS: Int32 { get }
var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS: Int32 { get }
var GL_MAX_TEXTURE_IMAGE_UNITS: Int32 { get }
var GL_MAX_FRAGMENT_UNIFORM_VECTORS: Int32 { get }
var GL_SHADER_TYPE: Int32 { get }
var GL_DELETE_STATUS: Int32 { get }
var GL_LINK_STATUS: Int32 { get }
var GL_VALIDATE_STATUS: Int32 { get }
var GL_ATTACHED_SHADERS: Int32 { get }
var GL_ACTIVE_UNIFORMS: Int32 { get }
var GL_ACTIVE_UNIFORM_MAX_LENGTH: Int32 { get }
var GL_ACTIVE_ATTRIBUTES: Int32 { get }
var GL_ACTIVE_ATTRIBUTE_MAX_LENGTH: Int32 { get }
var GL_SHADING_LANGUAGE_VERSION: Int32 { get }
var GL_CURRENT_PROGRAM: Int32 { get }
var GL_NEVER: Int32 { get }
var GL_LESS: Int32 { get }
var GL_EQUAL: Int32 { get }
var GL_LEQUAL: Int32 { get }
var GL_GREATER: Int32 { get }
var GL_NOTEQUAL: Int32 { get }
var GL_GEQUAL: Int32 { get }
var GL_ALWAYS: Int32 { get }
var GL_KEEP: Int32 { get }
var GL_REPLACE: Int32 { get }
var GL_INCR: Int32 { get }
var GL_DECR: Int32 { get }
var GL_INVERT: Int32 { get }
var GL_INCR_WRAP: Int32 { get }
var GL_DECR_WRAP: Int32 { get }
var GL_VENDOR: Int32 { get }
var GL_RENDERER: Int32 { get }
var GL_VERSION: Int32 { get }
var GL_EXTENSIONS: Int32 { get }
var GL_NEAREST: Int32 { get }
var GL_LINEAR: Int32 { get }
var GL_NEAREST_MIPMAP_NEAREST: Int32 { get }
var GL_LINEAR_MIPMAP_NEAREST: Int32 { get }
var GL_NEAREST_MIPMAP_LINEAR: Int32 { get }
var GL_LINEAR_MIPMAP_LINEAR: Int32 { get }
var GL_TEXTURE_MAG_FILTER: Int32 { get }
var GL_TEXTURE_MIN_FILTER: Int32 { get }
var GL_TEXTURE_WRAP_S: Int32 { get }
var GL_TEXTURE_WRAP_T: Int32 { get }
var GL_TEXTURE: Int32 { get }
var GL_TEXTURE_CUBE_MAP: Int32 { get }
var GL_TEXTURE_BINDING_CUBE_MAP: Int32 { get }
var GL_TEXTURE_CUBE_MAP_POSITIVE_X: Int32 { get }
var GL_TEXTURE_CUBE_MAP_NEGATIVE_X: Int32 { get }
var GL_TEXTURE_CUBE_MAP_POSITIVE_Y: Int32 { get }
var GL_TEXTURE_CUBE_MAP_NEGATIVE_Y: Int32 { get }
var GL_TEXTURE_CUBE_MAP_POSITIVE_Z: Int32 { get }
var GL_TEXTURE_CUBE_MAP_NEGATIVE_Z: Int32 { get }
var GL_MAX_CUBE_MAP_TEXTURE_SIZE: Int32 { get }
var GL_TEXTURE0: Int32 { get }
var GL_TEXTURE1: Int32 { get }
var GL_TEXTURE2: Int32 { get }
var GL_TEXTURE3: Int32 { get }
var GL_TEXTURE4: Int32 { get }
var GL_TEXTURE5: Int32 { get }
var GL_TEXTURE6: Int32 { get }
var GL_TEXTURE7: Int32 { get }
var GL_TEXTURE8: Int32 { get }
var GL_TEXTURE9: Int32 { get }
var GL_TEXTURE10: Int32 { get }
var GL_TEXTURE11: Int32 { get }
var GL_TEXTURE12: Int32 { get }
var GL_TEXTURE13: Int32 { get }
var GL_TEXTURE14: Int32 { get }
var GL_TEXTURE15: Int32 { get }
var GL_TEXTURE16: Int32 { get }
var GL_TEXTURE17: Int32 { get }
var GL_TEXTURE18: Int32 { get }
var GL_TEXTURE19: Int32 { get }
var GL_TEXTURE20: Int32 { get }
var GL_TEXTURE21: Int32 { get }
var GL_TEXTURE22: Int32 { get }
var GL_TEXTURE23: Int32 { get }
var GL_TEXTURE24: Int32 { get }
var GL_TEXTURE25: Int32 { get }
var GL_TEXTURE26: Int32 { get }
var GL_TEXTURE27: Int32 { get }
var GL_TEXTURE28: Int32 { get }
var GL_TEXTURE29: Int32 { get }
var GL_TEXTURE30: Int32 { get }
var GL_TEXTURE31: Int32 { get }
var GL_ACTIVE_TEXTURE: Int32 { get }
var GL_REPEAT: Int32 { get }
var GL_CLAMP_TO_EDGE: Int32 { get }
var GL_MIRRORED_REPEAT: Int32 { get }
var GL_FLOAT_VEC2: Int32 { get }
var GL_FLOAT_VEC3: Int32 { get }
var GL_FLOAT_VEC4: Int32 { get }
var GL_INT_VEC2: Int32 { get }
var GL_INT_VEC3: Int32 { get }
var GL_INT_VEC4: Int32 { get }
var GL_BOOL: Int32 { get }
var GL_BOOL_VEC2: Int32 { get }
var GL_BOOL_VEC3: Int32 { get }
var GL_BOOL_VEC4: Int32 { get }
var GL_FLOAT_MAT2: Int32 { get }
var GL_FLOAT_MAT3: Int32 { get }
var GL_FLOAT_MAT4: Int32 { get }
var GL_SAMPLER_2D: Int32 { get }
var GL_SAMPLER_CUBE: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_ENABLED: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_SIZE: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_STRIDE: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_TYPE: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_POINTER: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: Int32 { get }
var GL_IMPLEMENTATION_COLOR_READ_TYPE: Int32 { get }
var GL_IMPLEMENTATION_COLOR_READ_FORMAT: Int32 { get }
var GL_COMPILE_STATUS: Int32 { get }
var GL_INFO_LOG_LENGTH: Int32 { get }
var GL_SHADER_SOURCE_LENGTH: Int32 { get }
var GL_SHADER_COMPILER: Int32 { get }
var GL_SHADER_BINARY_FORMATS: Int32 { get }
var GL_NUM_SHADER_BINARY_FORMATS: Int32 { get }
var GL_LOW_FLOAT: Int32 { get }
var GL_MEDIUM_FLOAT: Int32 { get }
var GL_HIGH_FLOAT: Int32 { get }
var GL_LOW_INT: Int32 { get }
var GL_MEDIUM_INT: Int32 { get }
var GL_HIGH_INT: Int32 { get }
var GL_FRAMEBUFFER: Int32 { get }
var GL_RENDERBUFFER: Int32 { get }
var GL_RGBA4: Int32 { get }
var GL_RGB5_A1: Int32 { get }
var GL_RGB565: Int32 { get }
var GL_DEPTH_COMPONENT16: Int32 { get }
var GL_STENCIL_INDEX8: Int32 { get }
var GL_RENDERBUFFER_WIDTH: Int32 { get }
var GL_RENDERBUFFER_HEIGHT: Int32 { get }
var GL_RENDERBUFFER_INTERNAL_FORMAT: Int32 { get }
var GL_RENDERBUFFER_RED_SIZE: Int32 { get }
var GL_RENDERBUFFER_GREEN_SIZE: Int32 { get }
var GL_RENDERBUFFER_BLUE_SIZE: Int32 { get }
var GL_RENDERBUFFER_ALPHA_SIZE: Int32 { get }
var GL_RENDERBUFFER_DEPTH_SIZE: Int32 { get }
var GL_RENDERBUFFER_STENCIL_SIZE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE: Int32 { get }
var GL_COLOR_ATTACHMENT0: Int32 { get }
var GL_DEPTH_ATTACHMENT: Int32 { get }
var GL_STENCIL_ATTACHMENT: Int32 { get }
var GL_NONE: Int32 { get }
var GL_FRAMEBUFFER_COMPLETE: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS: Int32 { get }
var GL_FRAMEBUFFER_UNSUPPORTED: Int32 { get }
var GL_FRAMEBUFFER_BINDING: Int32 { get }
var GL_RENDERBUFFER_BINDING: Int32 { get }
var GL_MAX_RENDERBUFFER_SIZE: Int32 { get }
var GL_INVALID_FRAMEBUFFER_OPERATION: Int32 { get }
var GL_READ_BUFFER: Int32 { get }
var GL_UNPACK_ROW_LENGTH: Int32 { get }
var GL_UNPACK_SKIP_ROWS: Int32 { get }
var GL_UNPACK_SKIP_PIXELS: Int32 { get }
var GL_PACK_ROW_LENGTH: Int32 { get }
var GL_PACK_SKIP_ROWS: Int32 { get }
var GL_PACK_SKIP_PIXELS: Int32 { get }
var GL_COLOR: Int32 { get }
var GL_DEPTH: Int32 { get }
var GL_STENCIL: Int32 { get }
var GL_RED: Int32 { get }
var GL_RGB8: Int32 { get }
var GL_RGBA8: Int32 { get }
var GL_RGB10_A2: Int32 { get }
var GL_TEXTURE_BINDING_3D: Int32 { get }
var GL_UNPACK_SKIP_IMAGES: Int32 { get }
var GL_UNPACK_IMAGE_HEIGHT: Int32 { get }
var GL_TEXTURE_3D: Int32 { get }
var GL_TEXTURE_WRAP_R: Int32 { get }
var GL_MAX_3D_TEXTURE_SIZE: Int32 { get }
var GL_UNSIGNED_INT_2_10_10_10_REV: Int32 { get }
var GL_MAX_ELEMENTS_VERTICES: Int32 { get }
var GL_MAX_ELEMENTS_INDICES: Int32 { get }
var GL_TEXTURE_MIN_LOD: Int32 { get }
var GL_TEXTURE_MAX_LOD: Int32 { get }
var GL_TEXTURE_BASE_LEVEL: Int32 { get }
var GL_TEXTURE_MAX_LEVEL: Int32 { get }
var GL_MIN: Int32 { get }
var GL_MAX: Int32 { get }
var GL_DEPTH_COMPONENT24: Int32 { get }
var GL_MAX_TEXTURE_LOD_BIAS: Int32 { get }
var GL_TEXTURE_COMPARE_MODE: Int32 { get }
var GL_TEXTURE_COMPARE_FUNC: Int32 { get }
var GL_CURRENT_QUERY: Int32 { get }
var GL_QUERY_RESULT: Int32 { get }
var GL_QUERY_RESULT_AVAILABLE: Int32 { get }
var GL_BUFFER_MAPPED: Int32 { get }
var GL_BUFFER_MAP_POINTER: Int32 { get }
var GL_STREAM_READ: Int32 { get }
var GL_STREAM_COPY: Int32 { get }
var GL_STATIC_READ: Int32 { get }
var GL_STATIC_COPY: Int32 { get }
var GL_DYNAMIC_READ: Int32 { get }
var GL_DYNAMIC_COPY: Int32 { get }
var GL_MAX_DRAW_BUFFERS: Int32 { get }
var GL_DRAW_BUFFER0: Int32 { get }
var GL_DRAW_BUFFER1: Int32 { get }
var GL_DRAW_BUFFER2: Int32 { get }
var GL_DRAW_BUFFER3: Int32 { get }
var GL_DRAW_BUFFER4: Int32 { get }
var GL_DRAW_BUFFER5: Int32 { get }
var GL_DRAW_BUFFER6: Int32 { get }
var GL_DRAW_BUFFER7: Int32 { get }
var GL_DRAW_BUFFER8: Int32 { get }
var GL_DRAW_BUFFER9: Int32 { get }
var GL_DRAW_BUFFER10: Int32 { get }
var GL_DRAW_BUFFER11: Int32 { get }
var GL_DRAW_BUFFER12: Int32 { get }
var GL_DRAW_BUFFER13: Int32 { get }
var GL_DRAW_BUFFER14: Int32 { get }
var GL_DRAW_BUFFER15: Int32 { get }
var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS: Int32 { get }
var GL_MAX_VERTEX_UNIFORM_COMPONENTS: Int32 { get }
var GL_SAMPLER_3D: Int32 { get }
var GL_SAMPLER_2D_SHADOW: Int32 { get }
var GL_FRAGMENT_SHADER_DERIVATIVE_HINT: Int32 { get }
var GL_PIXEL_PACK_BUFFER: Int32 { get }
var GL_PIXEL_UNPACK_BUFFER: Int32 { get }
var GL_PIXEL_PACK_BUFFER_BINDING: Int32 { get }
var GL_PIXEL_UNPACK_BUFFER_BINDING: Int32 { get }
var GL_FLOAT_MAT2x3: Int32 { get }
var GL_FLOAT_MAT2x4: Int32 { get }
var GL_FLOAT_MAT3x2: Int32 { get }
var GL_FLOAT_MAT3x4: Int32 { get }
var GL_FLOAT_MAT4x2: Int32 { get }
var GL_FLOAT_MAT4x3: Int32 { get }
var GL_SRGB: Int32 { get }
var GL_SRGB8: Int32 { get }
var GL_SRGB8_ALPHA8: Int32 { get }
var GL_COMPARE_REF_TO_TEXTURE: Int32 { get }
var GL_MAJOR_VERSION: Int32 { get }
var GL_MINOR_VERSION: Int32 { get }
var GL_NUM_EXTENSIONS: Int32 { get }
var GL_RGBA32F: Int32 { get }
var GL_RGB32F: Int32 { get }
var GL_RGBA16F: Int32 { get }
var GL_RGB16F: Int32 { get }
var GL_VERTEX_ATTRIB_ARRAY_INTEGER: Int32 { get }
var GL_MAX_ARRAY_TEXTURE_LAYERS: Int32 { get }
var GL_MIN_PROGRAM_TEXEL_OFFSET: Int32 { get }
var GL_MAX_PROGRAM_TEXEL_OFFSET: Int32 { get }
var GL_MAX_VARYING_COMPONENTS: Int32 { get }
var GL_TEXTURE_2D_ARRAY: Int32 { get }
var GL_TEXTURE_BINDING_2D_ARRAY: Int32 { get }
var GL_R11F_G11F_B10F: Int32 { get }
var GL_UNSIGNED_INT_10F_11F_11F_REV: Int32 { get }
var GL_RGB9_E5: Int32 { get }
var GL_UNSIGNED_INT_5_9_9_9_REV: Int32 { get }
var GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH: Int32 { get }
var GL_TRANSFORM_FEEDBACK_BUFFER_MODE: Int32 { get }
var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS: Int32 { get }
var GL_TRANSFORM_FEEDBACK_VARYINGS: Int32 { get }
var GL_TRANSFORM_FEEDBACK_BUFFER_START: Int32 { get }
var GL_TRANSFORM_FEEDBACK_BUFFER_SIZE: Int32 { get }
var GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN: Int32 { get }
var GL_RASTERIZER_DISCARD: Int32 { get }
var GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS: Int32 { get }
var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS: Int32 { get }
var GL_INTERLEAVED_ATTRIBS: Int32 { get }
var GL_SEPARATE_ATTRIBS: Int32 { get }
var GL_TRANSFORM_FEEDBACK_BUFFER: Int32 { get }
var GL_TRANSFORM_FEEDBACK_BUFFER_BINDING: Int32 { get }
var GL_RGBA32UI: Int32 { get }
var GL_RGB32UI: Int32 { get }
var GL_RGBA16UI: Int32 { get }
var GL_RGB16UI: Int32 { get }
var GL_RGBA8UI: Int32 { get }
var GL_RGB8UI: Int32 { get }
var GL_RGBA32I: Int32 { get }
var GL_RGB32I: Int32 { get }
var GL_RGBA16I: Int32 { get }
var GL_RGB16I: Int32 { get }
var GL_RGBA8I: Int32 { get }
var GL_RGB8I: Int32 { get }
var GL_RED_INTEGER: Int32 { get }
var GL_RGB_INTEGER: Int32 { get }
var GL_RGBA_INTEGER: Int32 { get }
var GL_SAMPLER_2D_ARRAY: Int32 { get }
var GL_SAMPLER_2D_ARRAY_SHADOW: Int32 { get }
var GL_SAMPLER_CUBE_SHADOW: Int32 { get }
var GL_UNSIGNED_INT_VEC2: Int32 { get }
var GL_UNSIGNED_INT_VEC3: Int32 { get }
var GL_UNSIGNED_INT_VEC4: Int32 { get }
var GL_INT_SAMPLER_2D: Int32 { get }
var GL_INT_SAMPLER_3D: Int32 { get }
var GL_INT_SAMPLER_CUBE: Int32 { get }
var GL_INT_SAMPLER_2D_ARRAY: Int32 { get }
var GL_UNSIGNED_INT_SAMPLER_2D: Int32 { get }
var GL_UNSIGNED_INT_SAMPLER_3D: Int32 { get }
var GL_UNSIGNED_INT_SAMPLER_CUBE: Int32 { get }
var GL_UNSIGNED_INT_SAMPLER_2D_ARRAY: Int32 { get }
var GL_BUFFER_ACCESS_FLAGS: Int32 { get }
var GL_BUFFER_MAP_LENGTH: Int32 { get }
var GL_BUFFER_MAP_OFFSET: Int32 { get }
var GL_DEPTH_COMPONENT32F: Int32 { get }
var GL_DEPTH32F_STENCIL8: Int32 { get }
var GL_FLOAT_32_UNSIGNED_INT_24_8_REV: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE: Int32 { get }
var GL_FRAMEBUFFER_DEFAULT: Int32 { get }
var GL_FRAMEBUFFER_UNDEFINED: Int32 { get }
var GL_DEPTH_STENCIL_ATTACHMENT: Int32 { get }
var GL_DEPTH_STENCIL: Int32 { get }
var GL_UNSIGNED_INT_24_8: Int32 { get }
var GL_DEPTH24_STENCIL8: Int32 { get }
var GL_UNSIGNED_NORMALIZED: Int32 { get }
var GL_DRAW_FRAMEBUFFER_BINDING: Int32 { get }
var GL_READ_FRAMEBUFFER: Int32 { get }
var GL_DRAW_FRAMEBUFFER: Int32 { get }
var GL_READ_FRAMEBUFFER_BINDING: Int32 { get }
var GL_RENDERBUFFER_SAMPLES: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER: Int32 { get }
var GL_MAX_COLOR_ATTACHMENTS: Int32 { get }
var GL_COLOR_ATTACHMENT1: Int32 { get }
var GL_COLOR_ATTACHMENT2: Int32 { get }
var GL_COLOR_ATTACHMENT3: Int32 { get }
var GL_COLOR_ATTACHMENT4: Int32 { get }
var GL_COLOR_ATTACHMENT5: Int32 { get }
var GL_COLOR_ATTACHMENT6: Int32 { get }
var GL_COLOR_ATTACHMENT7: Int32 { get }
var GL_COLOR_ATTACHMENT8: Int32 { get }
var GL_COLOR_ATTACHMENT9: Int32 { get }
var GL_COLOR_ATTACHMENT10: Int32 { get }
var GL_COLOR_ATTACHMENT11: Int32 { get }
var GL_COLOR_ATTACHMENT12: Int32 { get }
var GL_COLOR_ATTACHMENT13: Int32 { get }
var GL_COLOR_ATTACHMENT14: Int32 { get }
var GL_COLOR_ATTACHMENT15: Int32 { get }
var GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: Int32 { get }
var GL_MAX_SAMPLES: Int32 { get }
var GL_HALF_FLOAT: Int32 { get }
var GL_MAP_READ_BIT: Int32 { get }
var GL_MAP_WRITE_BIT: Int32 { get }
var GL_MAP_INVALIDATE_RANGE_BIT: Int32 { get }
var GL_MAP_INVALIDATE_BUFFER_BIT: Int32 { get }
var GL_MAP_FLUSH_EXPLICIT_BIT: Int32 { get }
var GL_MAP_UNSYNCHRONIZED_BIT: Int32 { get }
var GL_RG: Int32 { get }
var GL_RG_INTEGER: Int32 { get }
var GL_R8: Int32 { get }
var GL_RG8: Int32 { get }
var GL_R16F: Int32 { get }
var GL_R32F: Int32 { get }
var GL_RG16F: Int32 { get }
var GL_RG32F: Int32 { get }
var GL_R8I: Int32 { get }
var GL_R8UI: Int32 { get }
var GL_R16I: Int32 { get }
var GL_R16UI: Int32 { get }
var GL_R32I: Int32 { get }
var GL_R32UI: Int32 { get }
var GL_RG8I: Int32 { get }
var GL_RG8UI: Int32 { get }
var GL_RG16I: Int32 { get }
var GL_RG16UI: Int32 { get }
var GL_RG32I: Int32 { get }
var GL_RG32UI: Int32 { get }
var GL_VERTEX_ARRAY_BINDING: Int32 { get }
var GL_R8_SNORM: Int32 { get }
var GL_RG8_SNORM: Int32 { get }
var GL_RGB8_SNORM: Int32 { get }
var GL_RGBA8_SNORM: Int32 { get }
var GL_SIGNED_NORMALIZED: Int32 { get }
var GL_PRIMITIVE_RESTART_FIXED_INDEX: Int32 { get }
var GL_COPY_READ_BUFFER: Int32 { get }
var GL_COPY_WRITE_BUFFER: Int32 { get }
var GL_COPY_READ_BUFFER_BINDING: Int32 { get }
var GL_COPY_WRITE_BUFFER_BINDING: Int32 { get }
var GL_UNIFORM_BUFFER: Int32 { get }
var GL_UNIFORM_BUFFER_BINDING: Int32 { get }
var GL_UNIFORM_BUFFER_START: Int32 { get }
var GL_UNIFORM_BUFFER_SIZE: Int32 { get }
var GL_MAX_VERTEX_UNIFORM_BLOCKS: Int32 { get }
var GL_MAX_FRAGMENT_UNIFORM_BLOCKS: Int32 { get }
var GL_MAX_COMBINED_UNIFORM_BLOCKS: Int32 { get }
var GL_MAX_UNIFORM_BUFFER_BINDINGS: Int32 { get }
var GL_MAX_UNIFORM_BLOCK_SIZE: Int32 { get }
var GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS: Int32 { get }
var GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS: Int32 { get }
var GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT: Int32 { get }
var GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH: Int32 { get }
var GL_ACTIVE_UNIFORM_BLOCKS: Int32 { get }
var GL_UNIFORM_TYPE: Int32 { get }
var GL_UNIFORM_SIZE: Int32 { get }
var GL_UNIFORM_NAME_LENGTH: Int32 { get }
var GL_UNIFORM_BLOCK_INDEX: Int32 { get }
var GL_UNIFORM_OFFSET: Int32 { get }
var GL_UNIFORM_ARRAY_STRIDE: Int32 { get }
var GL_UNIFORM_MATRIX_STRIDE: Int32 { get }
var GL_UNIFORM_IS_ROW_MAJOR: Int32 { get }
var GL_UNIFORM_BLOCK_BINDING: Int32 { get }
var GL_UNIFORM_BLOCK_DATA_SIZE: Int32 { get }
var GL_UNIFORM_BLOCK_NAME_LENGTH: Int32 { get }
var GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS: Int32 { get }
var GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES: Int32 { get }
var GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER: Int32 { get }
var GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER: Int32 { get }
var GL_INVALID_INDEX: UInt32 { get }
var GL_MAX_VERTEX_OUTPUT_COMPONENTS: Int32 { get }
var GL_MAX_FRAGMENT_INPUT_COMPONENTS: Int32 { get }
var GL_MAX_SERVER_WAIT_TIMEOUT: Int32 { get }
var GL_OBJECT_TYPE: Int32 { get }
var GL_SYNC_CONDITION: Int32 { get }
var GL_SYNC_STATUS: Int32 { get }
var GL_SYNC_FLAGS: Int32 { get }
var GL_SYNC_FENCE: Int32 { get }
var GL_SYNC_GPU_COMMANDS_COMPLETE: Int32 { get }
var GL_UNSIGNALED: Int32 { get }
var GL_SIGNALED: Int32 { get }
var GL_ALREADY_SIGNALED: Int32 { get }
var GL_TIMEOUT_EXPIRED: Int32 { get }
var GL_CONDITION_SATISFIED: Int32 { get }
var GL_WAIT_FAILED: Int32 { get }
var GL_SYNC_FLUSH_COMMANDS_BIT: Int32 { get }
var GL_TIMEOUT_IGNORED: UInt64 { get }
var GL_VERTEX_ATTRIB_ARRAY_DIVISOR: Int32 { get }
var GL_ANY_SAMPLES_PASSED: Int32 { get }
var GL_ANY_SAMPLES_PASSED_CONSERVATIVE: Int32 { get }
var GL_SAMPLER_BINDING: Int32 { get }
var GL_RGB10_A2UI: Int32 { get }
var GL_TEXTURE_SWIZZLE_R: Int32 { get }
var GL_TEXTURE_SWIZZLE_G: Int32 { get }
var GL_TEXTURE_SWIZZLE_B: Int32 { get }
var GL_TEXTURE_SWIZZLE_A: Int32 { get }
var GL_GREEN: Int32 { get }
var GL_BLUE: Int32 { get }
var GL_INT_2_10_10_10_REV: Int32 { get }
var GL_TRANSFORM_FEEDBACK: Int32 { get }
var GL_TRANSFORM_FEEDBACK_PAUSED: Int32 { get }
var GL_TRANSFORM_FEEDBACK_ACTIVE: Int32 { get }
var GL_TRANSFORM_FEEDBACK_BINDING: Int32 { get }
var GL_PROGRAM_BINARY_RETRIEVABLE_HINT: Int32 { get }
var GL_PROGRAM_BINARY_LENGTH: Int32 { get }
var GL_NUM_PROGRAM_BINARY_FORMATS: Int32 { get }
var GL_PROGRAM_BINARY_FORMATS: Int32 { get }
var GL_COMPRESSED_R11_EAC: Int32 { get }
var GL_COMPRESSED_SIGNED_R11_EAC: Int32 { get }
var GL_COMPRESSED_RG11_EAC: Int32 { get }
var GL_COMPRESSED_SIGNED_RG11_EAC: Int32 { get }
var GL_COMPRESSED_RGB8_ETC2: Int32 { get }
var GL_COMPRESSED_SRGB8_ETC2: Int32 { get }
var GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2: Int32 { get }
var GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2: Int32 { get }
var GL_COMPRESSED_RGBA8_ETC2_EAC: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC: Int32 { get }
var GL_TEXTURE_IMMUTABLE_FORMAT: Int32 { get }
var GL_MAX_ELEMENT_INDEX: Int32 { get }
var GL_NUM_SAMPLE_COUNTS: Int32 { get }
var GL_TEXTURE_IMMUTABLE_LEVELS: Int32 { get }
func glActiveTexture(texture: GLenum)
@available(iOS 3.0, *)
func glAttachShader(program: GLuint, _ shader: GLuint)
@available(iOS 3.0, *)
func glBindAttribLocation(program: GLuint, _ index: GLuint, _ name: UnsafePointer<GLchar>)
func glBindBuffer(target: GLenum, _ buffer: GLuint)
@available(iOS 3.0, *)
func glBindFramebuffer(target: GLenum, _ framebuffer: GLuint)
@available(iOS 3.0, *)
func glBindRenderbuffer(target: GLenum, _ renderbuffer: GLuint)
func glBindTexture(target: GLenum, _ texture: GLuint)
@available(iOS 3.0, *)
func glBlendColor(red: GLfloat, _ green: GLfloat, _ blue: GLfloat, _ alpha: GLfloat)
@available(iOS 3.0, *)
func glBlendEquation(mode: GLenum)
@available(iOS 3.0, *)
func glBlendEquationSeparate(modeRGB: GLenum, _ modeAlpha: GLenum)
func glBlendFunc(sfactor: GLenum, _ dfactor: GLenum)
@available(iOS 3.0, *)
func glBlendFuncSeparate(srcRGB: GLenum, _ dstRGB: GLenum, _ srcAlpha: GLenum, _ dstAlpha: GLenum)
func glBufferData(target: GLenum, _ size: GLsizeiptr, _ data: UnsafePointer<Void>, _ usage: GLenum)
func glBufferSubData(target: GLenum, _ offset: GLintptr, _ size: GLsizeiptr, _ data: UnsafePointer<Void>)
@available(iOS 3.0, *)
func glCheckFramebufferStatus(target: GLenum) -> GLenum
func glClear(mask: GLbitfield)
func glClearColor(red: GLfloat, _ green: GLfloat, _ blue: GLfloat, _ alpha: GLfloat)
func glClearDepthf(depth: GLclampf)
func glClearStencil(s: GLint)
func glColorMask(red: GLboolean, _ green: GLboolean, _ blue: GLboolean, _ alpha: GLboolean)
@available(iOS 3.0, *)
func glCompileShader(shader: GLuint)
func glCompressedTexImage2D(target: GLenum, _ level: GLint, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei, _ border: GLint, _ imageSize: GLsizei, _ data: UnsafePointer<Void>)
func glCompressedTexSubImage2D(target: GLenum, _ level: GLint, _ xoffset: GLint, _ yoffset: GLint, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ imageSize: GLsizei, _ data: UnsafePointer<Void>)
func glCopyTexImage2D(target: GLenum, _ level: GLint, _ internalformat: GLenum, _ x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei, _ border: GLint)
func glCopyTexSubImage2D(target: GLenum, _ level: GLint, _ xoffset: GLint, _ yoffset: GLint, _ x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei)
@available(iOS 3.0, *)
func glCreateProgram() -> GLuint
@available(iOS 3.0, *)
func glCreateShader(type: GLenum) -> GLuint
func glCullFace(mode: GLenum)
func glDeleteBuffers(n: GLsizei, _ buffers: UnsafePointer<GLuint>)
@available(iOS 3.0, *)
func glDeleteFramebuffers(n: GLsizei, _ framebuffers: UnsafePointer<GLuint>)
@available(iOS 3.0, *)
func glDeleteProgram(program: GLuint)
@available(iOS 3.0, *)
func glDeleteRenderbuffers(n: GLsizei, _ renderbuffers: UnsafePointer<GLuint>)
@available(iOS 3.0, *)
func glDeleteShader(shader: GLuint)
func glDeleteTextures(n: GLsizei, _ textures: UnsafePointer<GLuint>)
func glDepthFunc(func: GLenum)
func glDepthMask(flag: GLboolean)
func glDepthRangef(zNear: GLclampf, _ zFar: GLclampf)
@available(iOS 3.0, *)
func glDetachShader(program: GLuint, _ shader: GLuint)
func glDisable(cap: GLenum)
@available(iOS 3.0, *)
func glDisableVertexAttribArray(index: GLuint)
func glDrawArrays(mode: GLenum, _ first: GLint, _ count: GLsizei)
func glDrawElements(mode: GLenum, _ count: GLsizei, _ type: GLenum, _ indices: UnsafePointer<Void>)
func glEnable(cap: GLenum)
@available(iOS 3.0, *)
func glEnableVertexAttribArray(index: GLuint)
func glFinish()
func glFlush()
@available(iOS 3.0, *)
func glFramebufferRenderbuffer(target: GLenum, _ attachment: GLenum, _ renderbuffertarget: GLenum, _ renderbuffer: GLuint)
@available(iOS 3.0, *)
func glFramebufferTexture2D(target: GLenum, _ attachment: GLenum, _ textarget: GLenum, _ texture: GLuint, _ level: GLint)
func glFrontFace(mode: GLenum)
func glGenBuffers(n: GLsizei, _ buffers: UnsafeMutablePointer<GLuint>)
@available(iOS 3.0, *)
func glGenerateMipmap(target: GLenum)
@available(iOS 3.0, *)
func glGenFramebuffers(n: GLsizei, _ framebuffers: UnsafeMutablePointer<GLuint>)
@available(iOS 3.0, *)
func glGenRenderbuffers(n: GLsizei, _ renderbuffers: UnsafeMutablePointer<GLuint>)
func glGenTextures(n: GLsizei, _ textures: UnsafeMutablePointer<GLuint>)
@available(iOS 3.0, *)
func glGetActiveAttrib(program: GLuint, _ index: GLuint, _ bufsize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ size: UnsafeMutablePointer<GLint>, _ type: UnsafeMutablePointer<GLenum>, _ name: UnsafeMutablePointer<GLchar>)
@available(iOS 3.0, *)
func glGetActiveUniform(program: GLuint, _ index: GLuint, _ bufsize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ size: UnsafeMutablePointer<GLint>, _ type: UnsafeMutablePointer<GLenum>, _ name: UnsafeMutablePointer<GLchar>)
@available(iOS 3.0, *)
func glGetAttachedShaders(program: GLuint, _ maxcount: GLsizei, _ count: UnsafeMutablePointer<GLsizei>, _ shaders: UnsafeMutablePointer<GLuint>)
@available(iOS 3.0, *)
func glGetAttribLocation(program: GLuint, _ name: UnsafePointer<GLchar>) -> Int32
func glGetBooleanv(pname: GLenum, _ params: UnsafeMutablePointer<GLboolean>)
func glGetBufferParameteriv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
func glGetError() -> GLenum
func glGetFloatv(pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
@available(iOS 3.0, *)
func glGetFramebufferAttachmentParameteriv(target: GLenum, _ attachment: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
func glGetIntegerv(pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetProgramiv(program: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetProgramInfoLog(program: GLuint, _ bufsize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ infolog: UnsafeMutablePointer<GLchar>)
@available(iOS 3.0, *)
func glGetRenderbufferParameteriv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetShaderiv(shader: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetShaderInfoLog(shader: GLuint, _ bufsize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ infolog: UnsafeMutablePointer<GLchar>)
@available(iOS 3.0, *)
func glGetShaderPrecisionFormat(shadertype: GLenum, _ precisiontype: GLenum, _ range: UnsafeMutablePointer<GLint>, _ precision: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetShaderSource(shader: GLuint, _ bufsize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ source: UnsafeMutablePointer<GLchar>)
func glGetString(name: GLenum) -> UnsafePointer<GLubyte>
func glGetTexParameterfv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
func glGetTexParameteriv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetUniformfv(program: GLuint, _ location: GLint, _ params: UnsafeMutablePointer<GLfloat>)
@available(iOS 3.0, *)
func glGetUniformiv(program: GLuint, _ location: GLint, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetUniformLocation(program: GLuint, _ name: UnsafePointer<GLchar>) -> Int32
@available(iOS 3.0, *)
func glGetVertexAttribfv(index: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
@available(iOS 3.0, *)
func glGetVertexAttribiv(index: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 3.0, *)
func glGetVertexAttribPointerv(index: GLuint, _ pname: GLenum, _ pointer: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
func glHint(target: GLenum, _ mode: GLenum)
func glIsBuffer(buffer: GLuint) -> GLboolean
func glIsEnabled(cap: GLenum) -> GLboolean
@available(iOS 3.0, *)
func glIsFramebuffer(framebuffer: GLuint) -> GLboolean
func glIsProgram(program: GLuint) -> GLboolean
@available(iOS 3.0, *)
func glIsRenderbuffer(renderbuffer: GLuint) -> GLboolean
@available(iOS 3.0, *)
func glIsShader(shader: GLuint) -> GLboolean
func glIsTexture(texture: GLuint) -> GLboolean
func glLineWidth(width: GLfloat)
@available(iOS 3.0, *)
func glLinkProgram(program: GLuint)
func glPixelStorei(pname: GLenum, _ param: GLint)
func glPolygonOffset(factor: GLfloat, _ units: GLfloat)
func glReadPixels(x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ type: GLenum, _ pixels: UnsafeMutablePointer<Void>)
@available(iOS 3.0, *)
func glReleaseShaderCompiler()
@available(iOS 3.0, *)
func glRenderbufferStorage(target: GLenum, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei)
func glSampleCoverage(value: GLclampf, _ invert: GLboolean)
func glScissor(x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei)
@available(iOS 3.0, *)
func glShaderBinary(n: GLsizei, _ shaders: UnsafePointer<GLuint>, _ binaryformat: GLenum, _ binary: UnsafePointer<Void>, _ length: GLsizei)
@available(iOS 3.0, *)
func glShaderSource(shader: GLuint, _ count: GLsizei, _ string: UnsafePointer<UnsafePointer<GLchar>>, _ length: UnsafePointer<GLint>)
func glStencilFunc(func: GLenum, _ ref: GLint, _ mask: GLuint)
@available(iOS 3.0, *)
func glStencilFuncSeparate(face: GLenum, _ func: GLenum, _ ref: GLint, _ mask: GLuint)
func glStencilMask(mask: GLuint)
@available(iOS 3.0, *)
func glStencilMaskSeparate(face: GLenum, _ mask: GLuint)
func glStencilOp(fail: GLenum, _ zfail: GLenum, _ zpass: GLenum)
@available(iOS 3.0, *)
func glStencilOpSeparate(face: GLenum, _ fail: GLenum, _ zfail: GLenum, _ zpass: GLenum)
func glTexImage2D(target: GLenum, _ level: GLint, _ internalformat: GLint, _ width: GLsizei, _ height: GLsizei, _ border: GLint, _ format: GLenum, _ type: GLenum, _ pixels: UnsafePointer<Void>)
func glTexParameterf(target: GLenum, _ pname: GLenum, _ param: GLfloat)
func glTexParameterfv(target: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLfloat>)
func glTexParameteri(target: GLenum, _ pname: GLenum, _ param: GLint)
func glTexParameteriv(target: GLenum, _ pname: GLenum, _ params: UnsafePointer<GLint>)
func glTexSubImage2D(target: GLenum, _ level: GLint, _ xoffset: GLint, _ yoffset: GLint, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ type: GLenum, _ pixels: UnsafePointer<Void>)
@available(iOS 3.0, *)
func glUniform1f(location: GLint, _ x: GLfloat)
@available(iOS 3.0, *)
func glUniform1fv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUniform1i(location: GLint, _ x: GLint)
@available(iOS 3.0, *)
func glUniform1iv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLint>)
@available(iOS 3.0, *)
func glUniform2f(location: GLint, _ x: GLfloat, _ y: GLfloat)
@available(iOS 3.0, *)
func glUniform2fv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUniform2i(location: GLint, _ x: GLint, _ y: GLint)
@available(iOS 3.0, *)
func glUniform2iv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLint>)
@available(iOS 3.0, *)
func glUniform3f(location: GLint, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat)
@available(iOS 3.0, *)
func glUniform3fv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUniform3i(location: GLint, _ x: GLint, _ y: GLint, _ z: GLint)
@available(iOS 3.0, *)
func glUniform3iv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLint>)
@available(iOS 3.0, *)
func glUniform4f(location: GLint, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat, _ w: GLfloat)
@available(iOS 3.0, *)
func glUniform4fv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUniform4i(location: GLint, _ x: GLint, _ y: GLint, _ z: GLint, _ w: GLint)
@available(iOS 3.0, *)
func glUniform4iv(location: GLint, _ count: GLsizei, _ v: UnsafePointer<GLint>)
@available(iOS 3.0, *)
func glUniformMatrix2fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUniformMatrix3fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUniformMatrix4fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glUseProgram(program: GLuint)
@available(iOS 3.0, *)
func glValidateProgram(program: GLuint)
@available(iOS 3.0, *)
func glVertexAttrib1f(indx: GLuint, _ x: GLfloat)
@available(iOS 3.0, *)
func glVertexAttrib1fv(indx: GLuint, _ values: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glVertexAttrib2f(indx: GLuint, _ x: GLfloat, _ y: GLfloat)
@available(iOS 3.0, *)
func glVertexAttrib2fv(indx: GLuint, _ values: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glVertexAttrib3f(indx: GLuint, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat)
@available(iOS 3.0, *)
func glVertexAttrib3fv(indx: GLuint, _ values: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glVertexAttrib4f(indx: GLuint, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat, _ w: GLfloat)
@available(iOS 3.0, *)
func glVertexAttrib4fv(indx: GLuint, _ values: UnsafePointer<GLfloat>)
@available(iOS 3.0, *)
func glVertexAttribPointer(indx: GLuint, _ size: GLint, _ type: GLenum, _ normalized: GLboolean, _ stride: GLsizei, _ ptr: UnsafePointer<Void>)
func glViewport(x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei)
@available(iOS 7.0, *)
func glReadBuffer(mode: GLenum)
@available(iOS 7.0, *)
func glDrawRangeElements(mode: GLenum, _ start: GLuint, _ end: GLuint, _ count: GLsizei, _ type: GLenum, _ indices: UnsafePointer<Void>)
@available(iOS 7.0, *)
func glTexImage3D(target: GLenum, _ level: GLint, _ internalformat: GLint, _ width: GLsizei, _ height: GLsizei, _ depth: GLsizei, _ border: GLint, _ format: GLenum, _ type: GLenum, _ pixels: UnsafePointer<Void>)
@available(iOS 7.0, *)
func glTexSubImage3D(target: GLenum, _ level: GLint, _ xoffset: GLint, _ yoffset: GLint, _ zoffset: GLint, _ width: GLsizei, _ height: GLsizei, _ depth: GLsizei, _ format: GLenum, _ type: GLenum, _ pixels: UnsafePointer<Void>)
@available(iOS 7.0, *)
func glCopyTexSubImage3D(target: GLenum, _ level: GLint, _ xoffset: GLint, _ yoffset: GLint, _ zoffset: GLint, _ x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei)
@available(iOS 7.0, *)
func glCompressedTexImage3D(target: GLenum, _ level: GLint, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei, _ depth: GLsizei, _ border: GLint, _ imageSize: GLsizei, _ data: UnsafePointer<Void>)
@available(iOS 7.0, *)
func glCompressedTexSubImage3D(target: GLenum, _ level: GLint, _ xoffset: GLint, _ yoffset: GLint, _ zoffset: GLint, _ width: GLsizei, _ height: GLsizei, _ depth: GLsizei, _ format: GLenum, _ imageSize: GLsizei, _ data: UnsafePointer<Void>)
@available(iOS 7.0, *)
func glGenQueries(n: GLsizei, _ ids: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glDeleteQueries(n: GLsizei, _ ids: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glIsQuery(id: GLuint) -> GLboolean
@available(iOS 7.0, *)
func glBeginQuery(target: GLenum, _ id: GLuint)
@available(iOS 7.0, *)
func glEndQuery(target: GLenum)
@available(iOS 7.0, *)
func glGetQueryiv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glGetQueryObjectuiv(id: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glUnmapBuffer(target: GLenum) -> GLboolean
@available(iOS 7.0, *)
func glGetBufferPointerv(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<UnsafeMutablePointer<Void>>)
@available(iOS 7.0, *)
func glDrawBuffers(n: GLsizei, _ bufs: UnsafePointer<GLenum>)
@available(iOS 7.0, *)
func glUniformMatrix2x3fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glUniformMatrix3x2fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glUniformMatrix2x4fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glUniformMatrix4x2fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glUniformMatrix3x4fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glUniformMatrix4x3fv(location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glBlitFramebuffer(srcX0: GLint, _ srcY0: GLint, _ srcX1: GLint, _ srcY1: GLint, _ dstX0: GLint, _ dstY0: GLint, _ dstX1: GLint, _ dstY1: GLint, _ mask: GLbitfield, _ filter: GLenum)
@available(iOS 7.0, *)
func glRenderbufferStorageMultisample(target: GLenum, _ samples: GLsizei, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei)
@available(iOS 7.0, *)
func glFramebufferTextureLayer(target: GLenum, _ attachment: GLenum, _ texture: GLuint, _ level: GLint, _ layer: GLint)
@available(iOS 7.0, *)
func glMapBufferRange(target: GLenum, _ offset: GLintptr, _ length: GLsizeiptr, _ access: GLbitfield) -> UnsafeMutablePointer<Void>
@available(iOS 7.0, *)
func glFlushMappedBufferRange(target: GLenum, _ offset: GLintptr, _ length: GLsizeiptr)
@available(iOS 7.0, *)
func glBindVertexArray(array: GLuint)
@available(iOS 7.0, *)
func glDeleteVertexArrays(n: GLsizei, _ arrays: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glGenVertexArrays(n: GLsizei, _ arrays: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glIsVertexArray(array: GLuint) -> GLboolean
@available(iOS 7.0, *)
func glGetIntegeri_v(target: GLenum, _ index: GLuint, _ data: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glBeginTransformFeedback(primitiveMode: GLenum)
@available(iOS 7.0, *)
func glEndTransformFeedback()
@available(iOS 7.0, *)
func glBindBufferRange(target: GLenum, _ index: GLuint, _ buffer: GLuint, _ offset: GLintptr, _ size: GLsizeiptr)
@available(iOS 7.0, *)
func glBindBufferBase(target: GLenum, _ index: GLuint, _ buffer: GLuint)
@available(iOS 7.0, *)
func glTransformFeedbackVaryings(program: GLuint, _ count: GLsizei, _ varyings: UnsafePointer<UnsafePointer<GLchar>>, _ bufferMode: GLenum)
@available(iOS 7.0, *)
func glGetTransformFeedbackVarying(program: GLuint, _ index: GLuint, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ size: UnsafeMutablePointer<GLsizei>, _ type: UnsafeMutablePointer<GLenum>, _ name: UnsafeMutablePointer<GLchar>)
@available(iOS 7.0, *)
func glVertexAttribIPointer(index: GLuint, _ size: GLint, _ type: GLenum, _ stride: GLsizei, _ pointer: UnsafePointer<Void>)
@available(iOS 7.0, *)
func glGetVertexAttribIiv(index: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glGetVertexAttribIuiv(index: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glVertexAttribI4i(index: GLuint, _ x: GLint, _ y: GLint, _ z: GLint, _ w: GLint)
@available(iOS 7.0, *)
func glVertexAttribI4ui(index: GLuint, _ x: GLuint, _ y: GLuint, _ z: GLuint, _ w: GLuint)
@available(iOS 7.0, *)
func glVertexAttribI4iv(index: GLuint, _ v: UnsafePointer<GLint>)
@available(iOS 7.0, *)
func glVertexAttribI4uiv(index: GLuint, _ v: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glGetUniformuiv(program: GLuint, _ location: GLint, _ params: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glGetFragDataLocation(program: GLuint, _ name: UnsafePointer<GLchar>) -> GLint
@available(iOS 7.0, *)
func glUniform1ui(location: GLint, _ v0: GLuint)
@available(iOS 7.0, *)
func glUniform2ui(location: GLint, _ v0: GLuint, _ v1: GLuint)
@available(iOS 7.0, *)
func glUniform3ui(location: GLint, _ v0: GLuint, _ v1: GLuint, _ v2: GLuint)
@available(iOS 7.0, *)
func glUniform4ui(location: GLint, _ v0: GLuint, _ v1: GLuint, _ v2: GLuint, _ v3: GLuint)
@available(iOS 7.0, *)
func glUniform1uiv(location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glUniform2uiv(location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glUniform3uiv(location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glUniform4uiv(location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glClearBufferiv(buffer: GLenum, _ drawbuffer: GLint, _ value: UnsafePointer<GLint>)
@available(iOS 7.0, *)
func glClearBufferuiv(buffer: GLenum, _ drawbuffer: GLint, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glClearBufferfv(buffer: GLenum, _ drawbuffer: GLint, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glClearBufferfi(buffer: GLenum, _ drawbuffer: GLint, _ depth: GLfloat, _ stencil: GLint)
@available(iOS 7.0, *)
func glGetStringi(name: GLenum, _ index: GLuint) -> UnsafePointer<GLubyte>
@available(iOS 7.0, *)
func glCopyBufferSubData(readTarget: GLenum, _ writeTarget: GLenum, _ readOffset: GLintptr, _ writeOffset: GLintptr, _ size: GLsizeiptr)
@available(iOS 7.0, *)
func glGetUniformIndices(program: GLuint, _ uniformCount: GLsizei, _ uniformNames: UnsafePointer<UnsafePointer<GLchar>>, _ uniformIndices: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glGetActiveUniformsiv(program: GLuint, _ uniformCount: GLsizei, _ uniformIndices: UnsafePointer<GLuint>, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glGetUniformBlockIndex(program: GLuint, _ uniformBlockName: UnsafePointer<GLchar>) -> GLuint
@available(iOS 7.0, *)
func glGetActiveUniformBlockiv(program: GLuint, _ uniformBlockIndex: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glGetActiveUniformBlockName(program: GLuint, _ uniformBlockIndex: GLuint, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ uniformBlockName: UnsafeMutablePointer<GLchar>)
@available(iOS 7.0, *)
func glUniformBlockBinding(program: GLuint, _ uniformBlockIndex: GLuint, _ uniformBlockBinding: GLuint)
@available(iOS 7.0, *)
func glDrawArraysInstanced(mode: GLenum, _ first: GLint, _ count: GLsizei, _ instancecount: GLsizei)
@available(iOS 7.0, *)
func glDrawElementsInstanced(mode: GLenum, _ count: GLsizei, _ type: GLenum, _ indices: UnsafePointer<Void>, _ instancecount: GLsizei)
@available(iOS 7.0, *)
func glFenceSync(condition: GLenum, _ flags: GLbitfield) -> GLsync
@available(iOS 7.0, *)
func glIsSync(sync: GLsync) -> GLboolean
@available(iOS 7.0, *)
func glDeleteSync(sync: GLsync)
@available(iOS 7.0, *)
func glClientWaitSync(sync: GLsync, _ flags: GLbitfield, _ timeout: GLuint64) -> GLenum
@available(iOS 7.0, *)
func glWaitSync(sync: GLsync, _ flags: GLbitfield, _ timeout: GLuint64)
@available(iOS 7.0, *)
func glGetInteger64v(pname: GLenum, _ params: UnsafeMutablePointer<GLint64>)
@available(iOS 7.0, *)
func glGetSynciv(sync: GLsync, _ pname: GLenum, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ values: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glGetInteger64i_v(target: GLenum, _ index: GLuint, _ data: UnsafeMutablePointer<GLint64>)
@available(iOS 7.0, *)
func glGetBufferParameteri64v(target: GLenum, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint64>)
@available(iOS 7.0, *)
func glGenSamplers(count: GLsizei, _ samplers: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glDeleteSamplers(count: GLsizei, _ samplers: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glIsSampler(sampler: GLuint) -> GLboolean
@available(iOS 7.0, *)
func glBindSampler(unit: GLuint, _ sampler: GLuint)
@available(iOS 7.0, *)
func glSamplerParameteri(sampler: GLuint, _ pname: GLenum, _ param: GLint)
@available(iOS 7.0, *)
func glSamplerParameteriv(sampler: GLuint, _ pname: GLenum, _ param: UnsafePointer<GLint>)
@available(iOS 7.0, *)
func glSamplerParameterf(sampler: GLuint, _ pname: GLenum, _ param: GLfloat)
@available(iOS 7.0, *)
func glSamplerParameterfv(sampler: GLuint, _ pname: GLenum, _ param: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glGetSamplerParameteriv(sampler: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 7.0, *)
func glGetSamplerParameterfv(sampler: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLfloat>)
@available(iOS 7.0, *)
func glVertexAttribDivisor(index: GLuint, _ divisor: GLuint)
@available(iOS 7.0, *)
func glBindTransformFeedback(target: GLenum, _ id: GLuint)
@available(iOS 7.0, *)
func glDeleteTransformFeedbacks(n: GLsizei, _ ids: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glGenTransformFeedbacks(n: GLsizei, _ ids: UnsafeMutablePointer<GLuint>)
@available(iOS 7.0, *)
func glIsTransformFeedback(id: GLuint) -> GLboolean
@available(iOS 7.0, *)
func glPauseTransformFeedback()
@available(iOS 7.0, *)
func glResumeTransformFeedback()
@available(iOS 7.0, *)
func glGetProgramBinary(program: GLuint, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ binaryFormat: UnsafeMutablePointer<GLenum>, _ binary: UnsafeMutablePointer<Void>)
@available(iOS 7.0, *)
func glProgramBinary(program: GLuint, _ binaryFormat: GLenum, _ binary: UnsafePointer<Void>, _ length: GLsizei)
@available(iOS 7.0, *)
func glProgramParameteri(program: GLuint, _ pname: GLenum, _ value: GLint)
@available(iOS 7.0, *)
func glInvalidateFramebuffer(target: GLenum, _ numAttachments: GLsizei, _ attachments: UnsafePointer<GLenum>)
@available(iOS 7.0, *)
func glInvalidateSubFramebuffer(target: GLenum, _ numAttachments: GLsizei, _ attachments: UnsafePointer<GLenum>, _ x: GLint, _ y: GLint, _ width: GLsizei, _ height: GLsizei)
@available(iOS 7.0, *)
func glTexStorage2D(target: GLenum, _ levels: GLsizei, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei)
@available(iOS 7.0, *)
func glTexStorage3D(target: GLenum, _ levels: GLsizei, _ internalformat: GLenum, _ width: GLsizei, _ height: GLsizei, _ depth: GLsizei)
@available(iOS 7.0, *)
func glGetInternalformativ(target: GLenum, _ internalformat: GLenum, _ pname: GLenum, _ bufSize: GLsizei, _ params: UnsafeMutablePointer<GLint>)
var GL_APPLE_clip_distance: Int32 { get }
var GL_APPLE_color_buffer_packed_float: Int32 { get }
var GL_APPLE_copy_texture_levels: Int32 { get }
var GL_APPLE_rgb_422: Int32 { get }
var GL_APPLE_texture_format_BGRA8888: Int32 { get }
var GL_EXT_color_buffer_half_float: Int32 { get }
var GL_EXT_debug_label: Int32 { get }
var GL_EXT_debug_marker: Int32 { get }
var GL_EXT_pvrtc_sRGB: Int32 { get }
var GL_EXT_read_format_bgra: Int32 { get }
var GL_EXT_separate_shader_objects: Int32 { get }
var GL_EXT_shader_texture_lod: Int32 { get }
var GL_EXT_shadow_samplers: Int32 { get }
var GL_EXT_shader_framebuffer_fetch: Int32 { get }
var GL_EXT_texture_filter_anisotropic: Int32 { get }
var GL_IMG_read_format: Int32 { get }
var GL_IMG_texture_compression_pvrtc: Int32 { get }
var GL_KHR_texture_compression_astc_ldr: Int32 { get }
var GL_OES_standard_derivatives: Int32 { get }
var GL_R11F_G11F_B10F_APPLE: Int32 { get }
var GL_RGB9_E5_APPLE: Int32 { get }
var GL_CLIP_DISTANCE0_APPLE: Int32 { get }
var GL_CLIP_DISTANCE1_APPLE: Int32 { get }
var GL_CLIP_DISTANCE2_APPLE: Int32 { get }
var GL_CLIP_DISTANCE3_APPLE: Int32 { get }
var GL_CLIP_DISTANCE4_APPLE: Int32 { get }
var GL_CLIP_DISTANCE5_APPLE: Int32 { get }
var GL_CLIP_DISTANCE6_APPLE: Int32 { get }
var GL_CLIP_DISTANCE7_APPLE: Int32 { get }
var GL_MAX_CLIP_DISTANCES_APPLE: Int32 { get }
var GL_RGB_422_APPLE: Int32 { get }
var GL_UNSIGNED_SHORT_8_8_APPLE: Int32 { get }
var GL_UNSIGNED_SHORT_8_8_REV_APPLE: Int32 { get }
var GL_RGB_RAW_422_APPLE: Int32 { get }
var GL_BGRA_EXT: Int32 { get }
var GL_BGRA8_EXT: Int32 { get }
var GL_BGRA: Int32 { get }
var GL_RGBA16F_EXT: Int32 { get }
var GL_RGB16F_EXT: Int32 { get }
var GL_RG16F_EXT: Int32 { get }
var GL_R16F_EXT: Int32 { get }
var GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT: Int32 { get }
var GL_UNSIGNED_NORMALIZED_EXT: Int32 { get }
var GL_BUFFER_OBJECT_EXT: Int32 { get }
var GL_SHADER_OBJECT_EXT: Int32 { get }
var GL_PROGRAM_OBJECT_EXT: Int32 { get }
var GL_QUERY_OBJECT_EXT: Int32 { get }
var GL_VERTEX_ARRAY_OBJECT_EXT: Int32 { get }
var GL_PROGRAM_PIPELINE_OBJECT_EXT: Int32 { get }
var GL_SYNC_OBJECT_APPLE: Int32 { get }
var GL_SAMPLER: Int32 { get }
var GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT: Int32 { get }
var GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT: Int32 { get }
var GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT: Int32 { get }
var GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT: Int32 { get }
var GL_UNSIGNED_SHORT_4_4_4_4_REV_EXT: Int32 { get }
var GL_UNSIGNED_SHORT_1_5_5_5_REV_EXT: Int32 { get }
var GL_UNSIGNED_SHORT_1_5_5_5_REV: Int32 { get }
var GL_UNSIGNED_SHORT_4_4_4_4_REV: Int32 { get }
var GL_VERTEX_SHADER_BIT_EXT: Int32 { get }
var GL_FRAGMENT_SHADER_BIT_EXT: Int32 { get }
var GL_ALL_SHADER_BITS_EXT: UInt32 { get }
var GL_PROGRAM_SEPARABLE_EXT: Int32 { get }
var GL_ACTIVE_PROGRAM_EXT: Int32 { get }
var GL_PROGRAM_PIPELINE_BINDING_EXT: Int32 { get }
var GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT: Int32 { get }
var GL_TEXTURE_COMPARE_MODE_EXT: Int32 { get }
var GL_TEXTURE_COMPARE_FUNC_EXT: Int32 { get }
var GL_COMPARE_REF_TO_TEXTURE_EXT: Int32 { get }
var GL_SAMPLER_2D_SHADOW_EXT: Int32 { get }
var GL_TEXTURE_MAX_ANISOTROPY_EXT: Int32 { get }
var GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT: Int32 { get }
var GL_BGRA_IMG: Int32 { get }
var GL_UNSIGNED_SHORT_4_4_4_4_REV_IMG: Int32 { get }
var GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG: Int32 { get }
var GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG: Int32 { get }
var GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG: Int32 { get }
var GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_4x4_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_5x4_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_5x5_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_6x5_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_6x6_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_8x5_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_8x6_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_8x8_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_10x5_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_10x6_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_10x8_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_10x10_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_12x10_KHR: Int32 { get }
var GL_COMPRESSED_RGBA_ASTC_12x12_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR: Int32 { get }
var GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR: Int32 { get }
var GL_FRAGMENT_SHADER_DERIVATIVE_HINT_OES: Int32 { get }
@available(iOS 6.0, *)
func glCopyTextureLevelsAPPLE(destinationTexture: GLuint, _ sourceTexture: GLuint, _ sourceBaseLevel: GLint, _ sourceLevelCount: GLsizei)
@available(iOS 5.0, *)
func glLabelObjectEXT(type: GLenum, _ object: GLuint, _ length: GLsizei, _ label: UnsafePointer<GLchar>)
@available(iOS 5.0, *)
func glGetObjectLabelEXT(type: GLenum, _ object: GLuint, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ label: UnsafeMutablePointer<GLchar>)
@available(iOS 5.0, *)
func glInsertEventMarkerEXT(length: GLsizei, _ marker: UnsafePointer<GLchar>)
@available(iOS 5.0, *)
func glPushGroupMarkerEXT(length: GLsizei, _ marker: UnsafePointer<GLchar>)
@available(iOS 5.0, *)
func glPopGroupMarkerEXT()
@available(iOS 5.0, *)
func glUseProgramStagesEXT(pipeline: GLuint, _ stages: GLbitfield, _ program: GLuint)
@available(iOS 5.0, *)
func glActiveShaderProgramEXT(pipeline: GLuint, _ program: GLuint)
@available(iOS 5.0, *)
func glCreateShaderProgramvEXT(type: GLenum, _ count: GLsizei, _ strings: UnsafePointer<UnsafePointer<GLchar>>) -> GLuint
@available(iOS 5.0, *)
func glBindProgramPipelineEXT(pipeline: GLuint)
@available(iOS 5.0, *)
func glDeleteProgramPipelinesEXT(n: GLsizei, _ pipelines: UnsafePointer<GLuint>)
@available(iOS 5.0, *)
func glGenProgramPipelinesEXT(n: GLsizei, _ pipelines: UnsafeMutablePointer<GLuint>)
@available(iOS 5.0, *)
func glIsProgramPipelineEXT(pipeline: GLuint) -> GLboolean
@available(iOS 5.0, *)
func glProgramParameteriEXT(program: GLuint, _ pname: GLenum, _ value: GLint)
@available(iOS 5.0, *)
func glGetProgramPipelineivEXT(pipeline: GLuint, _ pname: GLenum, _ params: UnsafeMutablePointer<GLint>)
@available(iOS 5.0, *)
func glValidateProgramPipelineEXT(pipeline: GLuint)
@available(iOS 5.0, *)
func glGetProgramPipelineInfoLogEXT(pipeline: GLuint, _ bufSize: GLsizei, _ length: UnsafeMutablePointer<GLsizei>, _ infoLog: UnsafeMutablePointer<GLchar>)
@available(iOS 5.0, *)
func glProgramUniform1iEXT(program: GLuint, _ location: GLint, _ x: GLint)
@available(iOS 5.0, *)
func glProgramUniform2iEXT(program: GLuint, _ location: GLint, _ x: GLint, _ y: GLint)
@available(iOS 5.0, *)
func glProgramUniform3iEXT(program: GLuint, _ location: GLint, _ x: GLint, _ y: GLint, _ z: GLint)
@available(iOS 5.0, *)
func glProgramUniform4iEXT(program: GLuint, _ location: GLint, _ x: GLint, _ y: GLint, _ z: GLint, _ w: GLint)
@available(iOS 5.0, *)
func glProgramUniform1fEXT(program: GLuint, _ location: GLint, _ x: GLfloat)
@available(iOS 5.0, *)
func glProgramUniform2fEXT(program: GLuint, _ location: GLint, _ x: GLfloat, _ y: GLfloat)
@available(iOS 5.0, *)
func glProgramUniform3fEXT(program: GLuint, _ location: GLint, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat)
@available(iOS 5.0, *)
func glProgramUniform4fEXT(program: GLuint, _ location: GLint, _ x: GLfloat, _ y: GLfloat, _ z: GLfloat, _ w: GLfloat)
@available(iOS 7.0, *)
func glProgramUniform1uiEXT(program: GLuint, _ location: GLint, _ x: GLuint)
@available(iOS 7.0, *)
func glProgramUniform2uiEXT(program: GLuint, _ location: GLint, _ x: GLuint, _ y: GLuint)
@available(iOS 7.0, *)
func glProgramUniform3uiEXT(program: GLuint, _ location: GLint, _ x: GLuint, _ y: GLuint, _ z: GLuint)
@available(iOS 7.0, *)
func glProgramUniform4uiEXT(program: GLuint, _ location: GLint, _ x: GLuint, _ y: GLuint, _ z: GLuint, _ w: GLuint)
@available(iOS 5.0, *)
func glProgramUniform1ivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLint>)
@available(iOS 5.0, *)
func glProgramUniform2ivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLint>)
@available(iOS 5.0, *)
func glProgramUniform3ivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLint>)
@available(iOS 5.0, *)
func glProgramUniform4ivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLint>)
@available(iOS 5.0, *)
func glProgramUniform1fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLfloat>)
@available(iOS 5.0, *)
func glProgramUniform2fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLfloat>)
@available(iOS 5.0, *)
func glProgramUniform3fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLfloat>)
@available(iOS 5.0, *)
func glProgramUniform4fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniform1uivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glProgramUniform2uivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glProgramUniform3uivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 7.0, *)
func glProgramUniform4uivEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ value: UnsafePointer<GLuint>)
@available(iOS 5.0, *)
func glProgramUniformMatrix2fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 5.0, *)
func glProgramUniformMatrix3fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 5.0, *)
func glProgramUniformMatrix4fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniformMatrix2x3fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniformMatrix3x2fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniformMatrix2x4fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniformMatrix4x2fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniformMatrix3x4fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
@available(iOS 7.0, *)
func glProgramUniformMatrix4x3fvEXT(program: GLuint, _ location: GLint, _ count: GLsizei, _ transpose: GLboolean, _ value: UnsafePointer<GLfloat>)
typealias GLbitfield = UInt32
typealias GLboolean = UInt8
typealias GLbyte = Int8
typealias GLclampf = Float
typealias GLenum = UInt32
typealias GLfloat = Float
typealias GLint = Int32
typealias GLshort = Int16
typealias GLsizei = Int32
typealias GLubyte = UInt8
typealias GLuint = UInt32
typealias GLushort = UInt16
typealias GLchar = Int8
typealias GLclampx = Int32
typealias GLfixed = Int32
typealias GLhalf = UInt16
typealias GLint64 = Int64
typealias GLsync = COpaquePointer
typealias GLuint64 = UInt64
typealias GLintptr = Int
typealias GLsizeiptr = Int
