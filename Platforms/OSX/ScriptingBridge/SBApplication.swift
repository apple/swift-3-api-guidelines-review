
@available(OSX 10.5, *)
class SBApplication : SBObject, Coding {
  init?(bundleIdentifier ident: String)
  init?(url: URL)
  init?(processIdentifier pid: pid_t)
  func `class`(forScriptingClass className: String) -> AnyClass?
  var isRunning: Bool { get }
  func activate()
  var delegate: SBApplicationDelegate?
  var launchFlags: LSLaunchFlags
  var sendMode: AESendMode
  var timeout: Int
  init()
  init(properties: [Object : AnyObject])
  init(data: AnyObject)
  init?(coder aDecoder: Coder)
  init(elementCode code: DescType, properties: [String : AnyObject]?, data: AnyObject?)
}
protocol SBApplicationDelegate {
  func eventDidFail(event: UnsafePointer<AppleEvent>, withError error: Error) -> AnyObject
}
