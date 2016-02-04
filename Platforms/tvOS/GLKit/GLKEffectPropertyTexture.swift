
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
