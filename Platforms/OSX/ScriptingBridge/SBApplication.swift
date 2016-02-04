
@available(OSX 10.5, *)
class SBApplication : SBObject, NSCoding {
  init?(bundleIdentifier ident: String)
  init?(URL url: NSURL)
  init?(processIdentifier pid: pid_t)
  func classForScriptingClass(className: String) -> AnyClass?
  var running: Bool { get }
  func activate()
  var delegate: SBApplicationDelegate?
  var launchFlags: LSLaunchFlags
  var sendMode: AESendMode
  var timeout: Int
  init()
  init(properties: [NSObject : AnyObject])
  init(data: AnyObject)
  init?(coder aDecoder: NSCoder)
  init(elementCode code: DescType, properties: [String : AnyObject]?, data: AnyObject?)
}
protocol SBApplicationDelegate {
  func eventDidFail(event: UnsafePointer<AppleEvent>, withError error: NSError) -> AnyObject
}
