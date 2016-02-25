
@available(OSX 10.8, *)
class NSUserScriptTask : NSObject {
  init(URL url: NSURL) throws
  @NSCopying var scriptURL: NSURL { get }
  func executeWithCompletionHandler(_ handler: NSUserScriptTaskCompletionHandler?)
}
typealias NSUserScriptTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserUnixTask : NSUserScriptTask {
  var standardInput: NSFileHandle?
  var standardOutput: NSFileHandle?
  var standardError: NSFileHandle?
  func executeWithArguments(_ arguments: [String]?, completionHandler handler: NSUserUnixTaskCompletionHandler?)
}
typealias NSUserUnixTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAppleScriptTask : NSUserScriptTask {
  func executeWithAppleEvent(_ event: NSAppleEventDescriptor?, completionHandler handler: NSUserAppleScriptTaskCompletionHandler?)
}
typealias NSUserAppleScriptTaskCompletionHandler = (NSAppleEventDescriptor?, NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAutomatorTask : NSUserScriptTask {
  var variables: [String : AnyObject]?
  func executeWithInput(_ input: NSSecureCoding?, completionHandler handler: NSUserAutomatorTaskCompletionHandler?)
}
typealias NSUserAutomatorTaskCompletionHandler = (AnyObject?, NSError?) -> Void
