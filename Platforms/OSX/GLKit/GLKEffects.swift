
@available(OSX 10.8, *)
enum GLKVertexAttrib : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Position
  case Normal
  case Color
  case TexCoord0
  case TexCoord1
}
