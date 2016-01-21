
@available(OSX 10.5, *)
class SBApplication : SBObject, Coding {
  init?(bundleIdentifier ident: String)
  init?(url: URL)
  init?(processIdentifier pid: pid_t)
  func classForScriptingClass(className: String) -> AnyClass?
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
@available(OSX 10.5, *)
class SBElementArray : MutableArray {
  func objectWithName(name: String) -> AnyObject
  func objectWithID(identifier: AnyObject) -> AnyObject
  func objectAtLocation(location: AnyObject) -> AnyObject
  func arrayByApplying(selector: Selector) -> [AnyObject]
  func arrayByApplying(aSelector: Selector, withObject argument: AnyObject) -> [AnyObject]
  func get() -> [AnyObject]?
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
@available(OSX 10.5, *)
class SBObject : Object, Coding {
  init()
  init(properties: [Object : AnyObject])
  init(data: AnyObject)
  func get() -> AnyObject?
  @available(OSX 10.6, *)
  func lastError() -> Error?
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SBObject {
  init(elementCode code: DescType, properties: [String : AnyObject]?, data: AnyObject?)
  func propertyWithCode(code: AEKeyword) -> SBObject
  func propertyWith(cls: AnyClass, code: AEKeyword) -> SBObject
  func elementArrayWithCode(code: DescType) -> SBElementArray
  func setTo(value: AnyObject?)
}
