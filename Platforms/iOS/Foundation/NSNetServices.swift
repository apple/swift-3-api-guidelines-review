
let NSNetServicesErrorCode: String
let NSNetServicesErrorDomain: String
enum NSNetServicesError : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case CollisionError
  case NotFoundError
  case ActivityInProgress
  case BadArgumentError
  case CancelledError
  case InvalidError
  case TimeoutError
}
struct NSNetServiceOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NSNetServiceOptions { get }
  @available(iOS 7.0, *)
  static var ListenForConnections: NSNetServiceOptions { get }
}
class NSNetService : NSObject {
  init(domain domain: String, type type: String, name name: String, port port: Int32)
  convenience init(domain domain: String, type type: String, name name: String)
  func scheduleInRunLoop(_ aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(_ aRunLoop: NSRunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceDelegate?
  @available(iOS 7.0, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [NSData]? { get }
  @available(iOS 2.0, *)
  var port: Int { get }
  func publish()
  @available(iOS 2.0, *)
  func publishWithOptions(_ options: NSNetServiceOptions)
  func stop()
  class func dictionaryFromTXTRecordData(_ txtData: NSData) -> [String : NSData]
  class func dataFromTXTRecordDictionary(_ txtDictionary: [String : NSData]) -> NSData
  func resolveWithTimeout(_ timeout: NSTimeInterval)
  func getInputStream(_ inputStream: UnsafeMutablePointer<NSInputStream?>, outputStream outputStream: UnsafeMutablePointer<NSOutputStream?>) -> Bool
  func setTXTRecordData(_ recordData: NSData?) -> Bool
  func TXTRecordData() -> NSData?
  func startMonitoring()
  func stopMonitoring()
}
class NSNetServiceBrowser : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceBrowserDelegate?
  @available(iOS 7.0, *)
  var includesPeerToPeer: Bool
  func scheduleInRunLoop(_ aRunLoop: NSRunLoop, forMode mode: String)
  func removeFromRunLoop(_ aRunLoop: NSRunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServicesOfType(_ type: String, inDomain domainString: String)
  func stop()
}
protocol NSNetServiceDelegate : NSObjectProtocol {
  optional func netServiceWillPublish(_ sender: NSNetService)
  optional func netServiceDidPublish(_ sender: NSNetService)
  optional func netService(_ sender: NSNetService, didNotPublish errorDict: [String : NSNumber])
  optional func netServiceWillResolve(_ sender: NSNetService)
  optional func netServiceDidResolveAddress(_ sender: NSNetService)
  optional func netService(_ sender: NSNetService, didNotResolve errorDict: [String : NSNumber])
  optional func netServiceDidStop(_ sender: NSNetService)
  optional func netService(_ sender: NSNetService, didUpdateTXTRecordData data: NSData)
  @available(iOS 7.0, *)
  optional func netService(_ sender: NSNetService, didAcceptConnectionWithInputStream inputStream: NSInputStream, outputStream outputStream: NSOutputStream)
}
protocol NSNetServiceBrowserDelegate : NSObjectProtocol {
  optional func netServiceBrowserWillSearch(_ browser: NSNetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(_ browser: NSNetServiceBrowser)
  optional func netServiceBrowser(_ browser: NSNetServiceBrowser, didNotSearch errorDict: [String : NSNumber])
  optional func netServiceBrowser(_ browser: NSNetServiceBrowser, didFindDomain domainString: String, moreComing moreComing: Bool)
  optional func netServiceBrowser(_ browser: NSNetServiceBrowser, didFindService service: NSNetService, moreComing moreComing: Bool)
  optional func netServiceBrowser(_ browser: NSNetServiceBrowser, didRemoveDomain domainString: String, moreComing moreComing: Bool)
  optional func netServiceBrowser(_ browser: NSNetServiceBrowser, didRemoveService service: NSNetService, moreComing moreComing: Bool)
}
