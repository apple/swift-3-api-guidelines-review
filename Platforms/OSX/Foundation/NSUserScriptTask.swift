
@available(OSX 10.8, *)
class NSUserScriptTask : NSObject {
  init(URL url: NSURL) throws
  @NSCopying var scriptURL: NSURL { get }
  func executeWithCompletionHandler(handler: NSUserScriptTaskCompletionHandler?)
  convenience init()
}
typealias NSUserScriptTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserUnixTask : NSUserScriptTask {
  var standardInput: NSFileHandle?
  var standardOutput: NSFileHandle?
  var standardError: NSFileHandle?
  func executeWithArguments(arguments: [String]?, completionHandler handler: NSUserUnixTaskCompletionHandler?)
  init(URL url: NSURL) throws
  convenience init()
}
typealias NSUserUnixTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAppleScriptTask : NSUserScriptTask {
  func executeWithAppleEvent(event: NSAppleEventDescriptor?, completionHandler handler: NSUserAppleScriptTaskCompletionHandler?)
  init(URL url: NSURL) throws
  convenience init()
}
typealias NSUserAppleScriptTaskCompletionHandler = (NSAppleEventDescriptor?, NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAutomatorTask : NSUserScriptTask {
  var variables: [String : AnyObject]?
  func executeWithInput(input: NSSecureCoding?, completionHandler handler: NSUserAutomatorTaskCompletionHandler?)
  init(URL url: NSURL) throws
  convenience init()
}
typealias NSUserAutomatorTaskCompletionHandler = (AnyObject?, NSError?) -> Void
