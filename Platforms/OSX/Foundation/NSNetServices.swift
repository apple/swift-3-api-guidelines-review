
let netServicesErrorCode: String
let netServicesErrorDomain: String
enum NetServicesError : Int {
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
struct NetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var noAutoRename: NetServiceOptions { get }
  @available(OSX 10.9, *)
  static var listenForConnections: NetServiceOptions { get }
}
class NetService : Object {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func schedule(in aRunLoop: RunLoop, forMode mode: String)
  func remove(from aRunLoop: RunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [Data]? { get }
  @available(OSX 10.5, *)
  var port: Int { get }
  func publish()
  @available(OSX 10.5, *)
  func publish(options: NetServiceOptions = [])
  func stop()
  class func dictionary(fromTXTRecord txtData: Data) -> [String : Data]
  class func data(fromTXTRecord txtDictionary: [String : Data]) -> Data
  func resolve(withTimeout timeout: TimeInterval)
  func getInputStream(inputStream: UnsafeMutablePointer<InputStream?>, outputStream: UnsafeMutablePointer<OutputStream?>) -> Bool
  func setTXTRecord(recordData: Data?) -> Bool
  func txtRecordData() -> Data?
  func startMonitoring()
  func stopMonitoring()
  convenience init()
}
class NetServiceBrowser : Object {
  init()
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceBrowserDelegate?
  @available(OSX 10.10, *)
  var includesPeerToPeer: Bool
  func schedule(in aRunLoop: RunLoop, forMode mode: String)
  func remove(from aRunLoop: RunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServices(ofType type: String, inDomain domainString: String)
  func stop()
}
protocol NetServiceDelegate : ObjectProtocol {
  optional func netServiceWillPublish(sender: NetService)
  optional func netServiceDidPublish(sender: NetService)
  optional func netService(sender: NetService, didNotPublish errorDict: [String : Number])
  optional func netServiceWillResolve(sender: NetService)
  optional func netServiceDidResolveAddress(sender: NetService)
  optional func netService(sender: NetService, didNotResolve errorDict: [String : Number])
  optional func netServiceDidStop(sender: NetService)
  optional func netService(sender: NetService, didUpdateTXTRecord data: Data)
  @available(OSX 10.9, *)
  optional func netService(sender: NetService, didAcceptConnectionWith inputStream: InputStream, outputStream: OutputStream)
}
protocol NetServiceBrowserDelegate : ObjectProtocol {
  optional func netServiceBrowserWillSearch(browser: NetServiceBrowser)
  optional func netServiceBrowserDidStopSearch(browser: NetServiceBrowser)
  optional func netServiceBrowser(browser: NetServiceBrowser, didNotSearch errorDict: [String : Number])
  optional func netServiceBrowser(browser: NetServiceBrowser, didFindDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool)
  optional func netServiceBrowser(browser: NetServiceBrowser, didRemoveDomain domainString: String, moreComing: Bool)
  optional func netServiceBrowser(browser: NetServiceBrowser, didRemove service: NetService, moreComing: Bool)
}
