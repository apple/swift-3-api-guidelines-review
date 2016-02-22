
@available(OSX 10.8, *)
class NSUserScriptTask : NSObject {
  init(url url: NSURL) throws
  @NSCopying var scriptURL: NSURL { get }
  func execute(completionHandler handler: NSUserScriptTaskCompletionHandler? = nil)
  convenience init()
}
typealias NSUserScriptTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserUnixTask : NSUserScriptTask {
  var standardInput: NSFileHandle?
  var standardOutput: NSFileHandle?
  var standardError: NSFileHandle?
  func execute(arguments arguments: [String]?, completionHandler handler: NSUserUnixTaskCompletionHandler? = nil)
  init(url url: NSURL) throws
  convenience init()
}
typealias NSUserUnixTaskCompletionHandler = (NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAppleScriptTask : NSUserScriptTask {
  func execute(appleEvent event: NSAppleEventDescriptor?, completionHandler handler: NSUserAppleScriptTaskCompletionHandler? = nil)
  init(url url: NSURL) throws
  convenience init()
}
typealias NSUserAppleScriptTaskCompletionHandler = (NSAppleEventDescriptor?, NSError?) -> Void
@available(OSX 10.8, *)
class NSUserAutomatorTask : NSUserScriptTask {
  var variables: [String : AnyObject]?
  func execute(input input: NSSecureCoding?, completionHandler handler: NSUserAutomatorTaskCompletionHandler? = nil)
  init(url url: NSURL) throws
  convenience init()
}
typealias NSUserAutomatorTaskCompletionHandler = (AnyObject?, NSError?) -> Void
