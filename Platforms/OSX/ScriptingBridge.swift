
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
@available(OSX 10.5, *)
class SBElementArray : NSMutableArray {
  func objectWithName(name: String) -> AnyObject
  func objectWithID(identifier: AnyObject) -> AnyObject
  func objectAtLocation(location: AnyObject) -> AnyObject
  func arrayByApplyingSelector(selector: Selector) -> [AnyObject]
  func arrayByApplyingSelector(aSelector: Selector, withObject argument: AnyObject) -> [AnyObject]
  func get() -> [AnyObject]?
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object anObject: AnyObject)
  convenience init(array: [AnyObject])
  convenience init(array: [AnyObject], copyItems flag: Bool)
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
@available(OSX 10.5, *)
class SBObject : NSObject, NSCoding {
  init()
  init(properties: [NSObject : AnyObject])
  init(data: AnyObject)
  func get() -> AnyObject?
  @available(OSX 10.6, *)
  func lastError() -> NSError?
  @available(OSX 10.5, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SBObject {
  init(elementCode code: DescType, properties: [String : AnyObject]?, data: AnyObject?)
  func propertyWithCode(code: AEKeyword) -> SBObject
  func propertyWithClass(cls: AnyClass, code: AEKeyword) -> SBObject
  func elementArrayWithCode(code: DescType) -> SBElementArray
  func setTo(value: AnyObject?)
}
