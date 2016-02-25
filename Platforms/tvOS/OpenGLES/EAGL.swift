
var EAGL_MAJOR_VERSION: Int32 { get }
var EAGL_MINOR_VERSION: Int32 { get }
enum EAGLRenderingAPI : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case OpenGLES1
  case OpenGLES2
  case OpenGLES3
}
func EAGLGetVersion(_ major: UnsafeMutablePointer<UInt32>, _ minor: UnsafeMutablePointer<UInt32>)
class EAGLSharegroup : NSObject {
  @available(tvOS 6.0, *)
  var debugLabel: String!
}
class EAGLContext : NSObject {
  convenience init!(API api: EAGLRenderingAPI)
  init!(API api: EAGLRenderingAPI, sharegroup sharegroup: EAGLSharegroup!)
  class func setCurrentContext(_ context: EAGLContext!) -> Bool
  class func currentContext() -> EAGLContext!
  var API: EAGLRenderingAPI { get }
  var sharegroup: EAGLSharegroup! { get }
  @available(tvOS 6.0, *)
  var debugLabel: String!
  @available(tvOS 7.1, *)
  var multiThreaded: Bool
}
