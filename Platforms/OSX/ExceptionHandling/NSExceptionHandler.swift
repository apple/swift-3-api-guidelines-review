
let NSUncaughtSystemExceptionException: String
let NSUncaughtRuntimeErrorException: String
let NSStackTraceKey: String
func NSExceptionHandlerResume()
var NSLogUncaughtExceptionMask: Int { get }
var NSHandleUncaughtExceptionMask: Int { get }
var NSLogUncaughtSystemExceptionMask: Int { get }
var NSHandleUncaughtSystemExceptionMask: Int { get }
var NSLogUncaughtRuntimeErrorMask: Int { get }
var NSHandleUncaughtRuntimeErrorMask: Int { get }
var NSLogTopLevelExceptionMask: Int { get }
var NSHandleTopLevelExceptionMask: Int { get }
var NSLogOtherExceptionMask: Int { get }
var NSHandleOtherExceptionMask: Int { get }
var NSHangOnUncaughtExceptionMask: Int { get }
var NSHangOnUncaughtSystemExceptionMask: Int { get }
var NSHangOnUncaughtRuntimeErrorMask: Int { get }
var NSHangOnTopLevelExceptionMask: Int { get }
var NSHangOnOtherExceptionMask: Int { get }
class NSExceptionHandler : NSObject {
  class func defaultExceptionHandler() -> NSExceptionHandler!
  func setExceptionHandlingMask(_ aMask: Int)
  func exceptionHandlingMask() -> Int
  func setExceptionHangingMask(_ aMask: Int)
  func exceptionHangingMask() -> Int
  func setDelegate(_ anObject: AnyObject!)
  func delegate() -> AnyObject!
}
extension NSObject {
  class func exceptionHandler(_ sender: NSExceptionHandler!, shouldLogException exception: NSException!, mask aMask: Int) -> Bool
  func exceptionHandler(_ sender: NSExceptionHandler!, shouldLogException exception: NSException!, mask aMask: Int) -> Bool
  class func exceptionHandler(_ sender: NSExceptionHandler!, shouldHandle exception: NSException!, mask aMask: Int) -> Bool
  func exceptionHandler(_ sender: NSExceptionHandler!, shouldHandle exception: NSException!, mask aMask: Int) -> Bool
}
