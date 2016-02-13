
@available(OSX 10.8, *)
class UserScriptTask : Object {
  init(url: URL) throws
  @NSCopying var scriptURL: URL { get }
  func execute(completionHandler handler: UserScriptTaskCompletionHandler? = nil)
  convenience init()
}
typealias UserScriptTaskCompletionHandler = (Error?) -> Void
@available(OSX 10.8, *)
class UserUnixTask : UserScriptTask {
  var standardInput: FileHandle?
  var standardOutput: FileHandle?
  var standardError: FileHandle?
  func execute(withArguments arguments: [String]?, completionHandler handler: UserUnixTaskCompletionHandler? = nil)
  init(url: URL) throws
  convenience init()
}
typealias UserUnixTaskCompletionHandler = (Error?) -> Void
@available(OSX 10.8, *)
class UserAppleScriptTask : UserScriptTask {
  func execute(withAppleEvent event: AppleEventDescriptor?, completionHandler handler: UserAppleScriptTaskCompletionHandler? = nil)
  init(url: URL) throws
  convenience init()
}
typealias UserAppleScriptTaskCompletionHandler = (AppleEventDescriptor?, Error?) -> Void
@available(OSX 10.8, *)
class UserAutomatorTask : UserScriptTask {
  var variables: [String : AnyObject]?
  func execute(withInput input: SecureCoding?, completionHandler handler: UserAutomatorTaskCompletionHandler? = nil)
  init(url: URL) throws
  convenience init()
}
typealias UserAutomatorTaskCompletionHandler = (AnyObject?, Error?) -> Void
