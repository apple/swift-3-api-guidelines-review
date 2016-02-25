
@available(OSX 10.8, *)
enum GLKTextureTarget : GLenum {
  init?(rawValue rawValue: GLenum)
  var rawValue: GLenum { get }
  case Target2D
  case TargetCubeMap
  case TargetCt
}
@available(OSX 10.8, *)
enum GLKTextureEnvMode : GLint {
  init?(rawValue rawValue: GLint)
  var rawValue: GLint { get }
  case Replace
  case Modulate
  case Decal
}
@available(OSX 10.8, *)
class GLKEffectPropertyTexture : GLKEffectProperty {
  var enabled: GLboolean
  var name: GLuint
  var target: GLKTextureTarget
  var envMode: GLKTextureEnvMode
}
