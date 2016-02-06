
let netServicesErrorCode: String
let netServicesErrorDomain: String
enum NetServicesError : Int {
  init?(rawValue: Int)
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
struct NetServiceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoAutoRename: NetServiceOptions { get }
  @available(tvOS 7.0, *)
  static var ListenForConnections: NetServiceOptions { get }
}
class NetService : Object {
  init(domain: String, type: String, name: String, port: Int32)
  convenience init(domain: String, type: String, name: String)
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  unowned(unsafe) var delegate: @sil_unmanaged NetServiceDelegate?
  @available(tvOS 7.0, *)
  var includesPeerToPeer: Bool
  var name: String { get }
  var type: String { get }
  var domain: String { get }
  var hostName: String? { get }
  var addresses: [Data]? { get }
  @available(tvOS 2.0, *)
  var port: Int { get }
  func publish()
  @available(tvOS 2.0, *)
  func publishWith(options: NetServiceOptions = [])
  func stop()
  class func dictionaryFromTXTRecord(txtData: Data) -> [String : Data]
  class func dataFromTXTRecord(txtDictionary: [String : Data]) -> Data
  func resolve(timeout timeout: TimeInterval)
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
  @available(tvOS 7.0, *)
  var includesPeerToPeer: Bool
  func scheduleIn(aRunLoop: RunLoop, forMode mode: String)
  func removeFrom(aRunLoop: RunLoop, forMode mode: String)
  func searchForBrowsableDomains()
  func searchForRegistrationDomains()
  func searchForServicesOf(type type: String, inDomain domainString: String)
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
  @available(tvOS 7.0, *)
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
