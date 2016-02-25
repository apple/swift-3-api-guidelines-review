
@available(tvOS 5.0, *)
enum GLKVertexAttrib : GLint {
  init?(rawValue rawValue: GLint)
  var rawValue: GLint { get }
  case Position
  case Normal
  case Color
  case TexCoord0
  case TexCoord1
}
