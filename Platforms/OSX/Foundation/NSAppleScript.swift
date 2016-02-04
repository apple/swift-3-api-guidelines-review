
@available(OSX 10.2, *)
let NSAppleScriptErrorMessage: String
@available(OSX 10.2, *)
let NSAppleScriptErrorNumber: String
@available(OSX 10.2, *)
let NSAppleScriptErrorAppName: String
@available(OSX 10.2, *)
let NSAppleScriptErrorBriefMessage: String
@available(OSX 10.2, *)
let NSAppleScriptErrorRange: String
class NSAppleScript : NSObject, NSCopying {
  init?(contentsOfURL url: NSURL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(source: String)
  var source: String? { get }
  var compiled: Bool { get }
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor
  func executeAppleEvent(event: NSAppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> NSAppleEventDescriptor
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
