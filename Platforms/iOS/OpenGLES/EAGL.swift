
var EAGL_MAJOR_VERSION: Int32 { get }
var EAGL_MINOR_VERSION: Int32 { get }
enum EAGLRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenGLES1
  case OpenGLES2
  case OpenGLES3
}
func EAGLGetVersion(major: UnsafeMutablePointer<UInt32>, _ minor: UnsafeMutablePointer<UInt32>)
class EAGLSharegroup : Object {
  @available(iOS 6.0, *)
  var debugLabel: String!
  init()
}
class EAGLContext : Object {
  convenience init!(api: EAGLRenderingAPI)
  init!(api: EAGLRenderingAPI, sharegroup: EAGLSharegroup!)
  class func setCurrentContext(context: EAGLContext!) -> Bool
  class func current() -> EAGLContext!
  var api: EAGLRenderingAPI { get }
  var sharegroup: EAGLSharegroup! { get }
  @available(iOS 6.0, *)
  var debugLabel: String!
  @available(iOS 7.1, *)
  var isMultiThreaded: Bool
}
