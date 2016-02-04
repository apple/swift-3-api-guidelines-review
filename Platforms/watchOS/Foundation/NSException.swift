
let genericException: String
let rangeException: String
let invalidArgumentException: String
let internalInconsistencyException: String
let mallocException: String
let objectInaccessibleException: String
let objectNotAvailableException: String
let destinationInvalidException: String
let portTimeoutException: String
let invalidSendPortException: String
let invalidReceivePortException: String
let portSendException: String
let portReceiveException: String
let oldStyleException: String
class Exception : Object, Copying, Coding {
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  var name: String { get }
  var reason: String? { get }
  var userInfo: [Object : AnyObject]? { get }
  @available(watchOS 2.0, *)
  var callStackReturnAddresses: [Number] { get }
  @available(watchOS 2.0, *)
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension Exception {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias UncaughtExceptionHandler = (Exception) -> Void
func getUncaughtExceptionHandler() -> (@convention(c) (Exception) -> Void)?
func setUncaughtExceptionHandler(_: (@convention(c) (Exception) -> Void)?)
@available(watchOS 2.0, *)
let assertionHandlerKey: String
class AssertionHandler : Object {
  class func current() -> AssertionHandler
  init()
}
