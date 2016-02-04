
let NSGenericException: String
let NSRangeException: String
let NSInvalidArgumentException: String
let NSInternalInconsistencyException: String
let NSMallocException: String
let NSObjectInaccessibleException: String
let NSObjectNotAvailableException: String
let NSDestinationInvalidException: String
let NSPortTimeoutException: String
let NSInvalidSendPortException: String
let NSInvalidReceivePortException: String
let NSPortSendException: String
let NSPortReceiveException: String
let NSOldStyleException: String
class NSException : NSObject, NSCopying, NSCoding {
  init(name aName: String, reason aReason: String?, userInfo aUserInfo: [NSObject : AnyObject]?)
  var name: String { get }
  var reason: String? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(OSX 10.5, *)
  var callStackReturnAddresses: [NSNumber] { get }
  @available(OSX 10.6, *)
  var callStackSymbols: [String] { get }
  func raise()
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSException {
  class func raise(name: String, format: String, arguments argList: CVaListPointer)
}
typealias NSUncaughtExceptionHandler = (NSException) -> Void
func NSGetUncaughtExceptionHandler() -> (@convention(c) (NSException) -> Void)?
func NSSetUncaughtExceptionHandler(_: (@convention(c) (NSException) -> Void)?)
@available(OSX 10.6, *)
let NSAssertionHandlerKey: String
class NSAssertionHandler : NSObject {
  class func currentHandler() -> NSAssertionHandler
  init()
}
