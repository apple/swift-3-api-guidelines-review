
enum StreamStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotOpen
  case Opening
  case Open
  case Reading
  case Writing
  case AtEnd
  case Closed
  case Error
}
struct StreamEvent : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: StreamEvent { get }
  static var OpenCompleted: StreamEvent { get }
  static var HasBytesAvailable: StreamEvent { get }
  static var HasSpaceAvailable: StreamEvent { get }
  static var ErrorOccurred: StreamEvent { get }
  static var EndEncountered: StreamEvent { get }
}
class Stream : Object {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged StreamDelegate?
  func propertyFor(key key: String) -> AnyObject?
  func setProperty(property: AnyObject?, forKey key: String) -> Bool
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  var streamStatus: StreamStatus { get }
  @NSCopying var streamError: Error? { get }
  init()
}
class InputStream : Stream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: Data)
  @available(OSX 10.6, *)
  init?(url: URL)
  convenience init()
}
class OutputStream : Stream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(OSX 10.6, *)
  init?(url: URL, append shouldAppend: Bool)
  convenience init()
}
extension Stream {
  @available(OSX 10.10, *)
  class func getStreamsToHost(name hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
  @available(OSX, introduced=10.3, deprecated=10.10, message="Please use getStreamsToHostWithName:port:inputStream:outputStream: instead")
  class func getStreamsTo(host: Host, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
}
extension Stream {
  @available(OSX 10.10, *)
  class func getBoundStreams(bufferSize bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
}
extension InputStream {
  convenience init?(fileAtPath path: String)
}
extension OutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func toMemory() -> Self
}
protocol StreamDelegate : ObjectProtocol {
  optional func stream(aStream: Stream, handle eventCode: StreamEvent)
}
@available(OSX 10.3, *)
let streamSocketSecurityLevelKey: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelNone: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelSSLv2: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelSSLv3: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelTLSv1: String
@available(OSX 10.3, *)
let streamSocketSecurityLevelNegotiatedSSL: String
@available(OSX 10.3, *)
let streamSOCKSProxyConfigurationKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyHostKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyPortKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyVersionKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyUserKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyPasswordKey: String
@available(OSX 10.3, *)
let streamSOCKSProxyVersion4: String
@available(OSX 10.3, *)
let streamSOCKSProxyVersion5: String
@available(OSX 10.3, *)
let streamDataWrittenToMemoryStreamKey: String
@available(OSX 10.3, *)
let streamFileCurrentOffsetKey: String
@available(OSX 10.3, *)
let streamSocketSSLErrorDomain: String
@available(OSX 10.3, *)
let streamSOCKSErrorDomain: String
@available(OSX 10.7, *)
let streamNetworkServiceType: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeVoIP: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeVideo: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeBackground: String
@available(OSX 10.7, *)
let streamNetworkServiceTypeVoice: String
