
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
  func propertyForKey(key: String) -> AnyObject?
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
  @available(iOS 4.0, *)
  init?(url: URL)
  convenience init()
}
class OutputStream : Stream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(iOS 4.0, *)
  init?(url: URL, append shouldAppend: Bool)
  convenience init()
}
extension Stream {
  @available(iOS 8.0, *)
  class func getStreamsToHostWithName(hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
}
extension Stream {
  @available(iOS 8.0, *)
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>)
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
@available(iOS 2.0, *)
let streamSocketSecurityLevelKey: String
@available(iOS 2.0, *)
let streamSocketSecurityLevelNone: String
@available(iOS 2.0, *)
let streamSocketSecurityLevelSSLv2: String
@available(iOS 2.0, *)
let streamSocketSecurityLevelSSLv3: String
@available(iOS 2.0, *)
let streamSocketSecurityLevelTLSv1: String
@available(iOS 2.0, *)
let streamSocketSecurityLevelNegotiatedSSL: String
@available(iOS 2.0, *)
let streamSOCKSProxyConfigurationKey: String
@available(iOS 2.0, *)
let streamSOCKSProxyHostKey: String
@available(iOS 2.0, *)
let streamSOCKSProxyPortKey: String
@available(iOS 2.0, *)
let streamSOCKSProxyVersionKey: String
@available(iOS 2.0, *)
let streamSOCKSProxyUserKey: String
@available(iOS 2.0, *)
let streamSOCKSProxyPasswordKey: String
@available(iOS 2.0, *)
let streamSOCKSProxyVersion4: String
@available(iOS 2.0, *)
let streamSOCKSProxyVersion5: String
@available(iOS 2.0, *)
let streamDataWrittenToMemoryStreamKey: String
@available(iOS 2.0, *)
let streamFileCurrentOffsetKey: String
@available(iOS 2.0, *)
let streamSocketSSLErrorDomain: String
@available(iOS 2.0, *)
let streamSOCKSErrorDomain: String
@available(iOS 4.0, *)
let streamNetworkServiceType: String
@available(iOS 4.0, *)
let streamNetworkServiceTypeVoIP: String
@available(iOS 5.0, *)
let streamNetworkServiceTypeVideo: String
@available(iOS 5.0, *)
let streamNetworkServiceTypeBackground: String
@available(iOS 5.0, *)
let streamNetworkServiceTypeVoice: String
