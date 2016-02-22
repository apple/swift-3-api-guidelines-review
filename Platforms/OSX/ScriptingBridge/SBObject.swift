
@available(OSX 10.5, *)
class SBObject : NSObject, NSCoding {
  init()
  init(properties: [NSObject : AnyObject])
  init(data: AnyObject)
  func get() -> AnyObject?
  @available(OSX 10.6, *)
  func lastError() -> NSError?
  @available(OSX 10.5, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SBObject {
  init(elementCode code: DescType, properties: [String : AnyObject]?, data: AnyObject?)
  func property(withCode code: AEKeyword) -> SBObject
  func property(with cls: AnyClass, code: AEKeyword) -> SBObject
  func elementArray(withCode code: DescType) -> SBElementArray
  func setTo(value: AnyObject?)
}
