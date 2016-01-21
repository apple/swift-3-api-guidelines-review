
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
class NSExceptionHandler : Object {
  class func defaultExceptionHandler() -> NSExceptionHandler!
  func setExceptionHandlingMask(aMask: Int)
  func exceptionHandlingMask() -> Int
  func setExceptionHangingMask(aMask: Int)
  func exceptionHangingMask() -> Int
  func setDelegate(anObject: AnyObject!)
  func delegate() -> AnyObject!
  init()
}
extension Object {
  class func exceptionHandler(sender: NSExceptionHandler!, shouldLogException exception: Exception!, mask aMask: Int) -> Bool
  func exceptionHandler(sender: NSExceptionHandler!, shouldLogException exception: Exception!, mask aMask: Int) -> Bool
  class func exceptionHandler(sender: NSExceptionHandler!, shouldHandle exception: Exception!, mask aMask: Int) -> Bool
  func exceptionHandler(sender: NSExceptionHandler!, shouldHandle exception: Exception!, mask aMask: Int) -> Bool
}
