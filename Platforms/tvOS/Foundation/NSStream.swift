
enum NSStreamStatus : UInt {
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
struct NSStreamEvent : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSStreamEvent { get }
  static var OpenCompleted: NSStreamEvent { get }
  static var HasBytesAvailable: NSStreamEvent { get }
  static var HasSpaceAvailable: NSStreamEvent { get }
  static var ErrorOccurred: NSStreamEvent { get }
  static var EndEncountered: NSStreamEvent { get }
}
class NSStream : NSObject {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged NSStreamDelegate?
  func propertyForKey(key: String) -> AnyObject?
  func setProperty(property: AnyObject?, forKey key: String) -> Bool
  func scheduleInRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(aRunLoop: NSRunLoop, forMode mode: String)
  var streamStatus: NSStreamStatus { get }
  @NSCopying var streamError: NSError? { get }
  init()
}
class NSInputStream : NSStream {
  func read(buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: NSData)
  @available(tvOS 4.0, *)
  init?(URL url: NSURL)
  convenience init()
}
class NSOutputStream : NSStream {
  func write(buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(tvOS 4.0, *)
  init?(URL url: NSURL, append shouldAppend: Bool)
  convenience init()
}
extension NSStream {
  @available(tvOS 8.0, *)
  class func getStreamsToHostWithName(hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSStream {
  @available(tvOS 8.0, *)
  class func getBoundStreamsWithBufferSize(bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<NSInputStream?>, outputStream: AutoreleasingUnsafeMutablePointer<NSOutputStream?>)
}
extension NSInputStream {
  convenience init?(fileAtPath path: String)
}
extension NSOutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func outputStreamToMemory() -> Self
}
protocol NSStreamDelegate : NSObjectProtocol {
  optional func stream(aStream: NSStream, handleEvent eventCode: NSStreamEvent)
}
@available(tvOS 2.0, *)
let NSStreamSocketSecurityLevelKey: String
@available(tvOS 2.0, *)
let NSStreamSocketSecurityLevelNone: String
@available(tvOS 2.0, *)
let NSStreamSocketSecurityLevelSSLv2: String
@available(tvOS 2.0, *)
let NSStreamSocketSecurityLevelSSLv3: String
@available(tvOS 2.0, *)
let NSStreamSocketSecurityLevelTLSv1: String
@available(tvOS 2.0, *)
let NSStreamSocketSecurityLevelNegotiatedSSL: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyConfigurationKey: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyHostKey: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyPortKey: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyVersionKey: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyUserKey: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyPasswordKey: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyVersion4: String
@available(tvOS 2.0, *)
let NSStreamSOCKSProxyVersion5: String
@available(tvOS 2.0, *)
let NSStreamDataWrittenToMemoryStreamKey: String
@available(tvOS 2.0, *)
let NSStreamFileCurrentOffsetKey: String
@available(tvOS 2.0, *)
let NSStreamSocketSSLErrorDomain: String
@available(tvOS 2.0, *)
let NSStreamSOCKSErrorDomain: String
@available(tvOS 4.0, *)
let NSStreamNetworkServiceType: String
@available(tvOS 4.0, *)
let NSStreamNetworkServiceTypeVoIP: String
@available(tvOS 5.0, *)
let NSStreamNetworkServiceTypeVideo: String
@available(tvOS 5.0, *)
let NSStreamNetworkServiceTypeBackground: String
@available(tvOS 5.0, *)
let NSStreamNetworkServiceTypeVoice: String
