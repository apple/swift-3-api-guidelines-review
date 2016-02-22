
let NSNetServicesErrorCode: String
let NSNetServicesErrorDomain: String
enum NSNetServicesError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownError
  case collisionError
  case notFoundError
  case activityInProgress
  case badArgumentError
  case cancelledError
  case invalidError
  case timeoutError
}
struct NSNetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var noAutoRename: NSNetServiceOptions { get }
  @available(OSX 10.9, *)
  static var listenForConnections: NSNetServiceOptions { get }
}
class NSNetService : NSObject {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func schedule(in aRunLoop: NSRunLoop, forMode mode: String)
  func remove(from aRunLoop: NSRunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [NSData]? { get }
  @available(OSX 10.5, *)
  var port: Int { get }
  func publish()
  @available(OSX 10.5, *)
  func publish(options: NSNetServiceOptions = [])
  func stop()
  class func dictionary(fromTXTRecord txtData: NSData) -> [String : NSData]
  class func data(fromTXTRecord txtDictionary: [String : NSData]) -> NSData
  func resolve(timeout timeout: NSTimeInterval)
  func getInputStream(inputStream: UnsafeMutablePointer<NSInputStream?>, outputStream: UnsafeMutablePointer<NSOutputStream?>) -> Bool
  func setTXTRecord(recordData: NSData?) -> Bool
  func txtRecordData() -> NSData?
  func startMonitoring()
  func stopMonitoring()
  convenience init()
}
class NSNetServiceBrowser : NSObject {
  init()
  unowned(unsafe) var delegate: @sil_unmanaged NSNetServiceBrowserDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  func schedule(in aRunLoop: NSRunLoop, forMode mode: String)
  func remove(from aRunLoop: NSRunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServices(ofType type: String, inDomain domainString: String)
  func stop()
}
protocol NSNetServiceDelegate : NSObjectProtocol {
  optional func netServiceWillPublish(sender: NSNetService)
  optional func netServiceDidPublish(sender: NSNetService)
  optional func netService(sender: NSNetService, didNotPublish errorDict: [String : NSNumber])
  optional func netServiceWillResolve(sender: NSNetService)
  optional func netServiceDidResolveAddress(sender: NSNetService)
  optional func netService(sender: NSNetService, didNotResolve errorDict: [String : NSNumber])
  optional func netServiceDidStop(sender: NSNetService)
  optional func netService(sender: NSNetService, didUpdateTXTRecord data: NSData)
  @available(OSX 10.9, *)
  optional func netService(sender: NSNetService, didAcceptConnectionWith inputStream: NSInputStream, outputStream: NSOutputStream)
}
protocol NSNetServiceBrowserDelegate : NSObjectProtocol {
  optional func netServiceBrowserWillSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(browser: NSNetServiceBrowser)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didNotSearch errorDict: [String : NSNumber])
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didFind service: NSNetService, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NSNetServiceBrowser, didRemove service: NSNetService, moreComing: Bool)
}
