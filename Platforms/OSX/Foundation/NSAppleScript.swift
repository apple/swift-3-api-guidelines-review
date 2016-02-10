
@available(OSX 10.2, *)
let appleScriptErrorMessage: String
@available(OSX 10.2, *)
let appleScriptErrorNumber: String
@available(OSX 10.2, *)
let appleScriptErrorAppName: String
@available(OSX 10.2, *)
let appleScriptErrorBriefMessage: String
@available(OSX 10.2, *)
let appleScriptErrorRange: String
class AppleScript : Object, Copying {
  init?(contentsOf url: URL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(source: String)
  var source: String? { get }
  var isCompiled: Bool { get }
  func compileAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  func executeAndReturnError(errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor
  func executeAppleEvent(event: AppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> AppleEventDescriptor
  convenience init()
  func copyWith(zone: Zone = nil) -> AnyObject
}
