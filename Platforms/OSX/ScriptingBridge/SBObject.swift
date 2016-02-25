
@available(OSX 10.5, *)
class SBObject : NSObject, NSCoding {
  init(properties properties: [NSObject : AnyObject])
  init(data data: AnyObject)
  func get() -> AnyObject?
  @available(OSX 10.6, *)
  func lastError() -> NSError?
  @available(OSX 10.5, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SBObject {
  init(elementCode code: DescType, properties properties: [String : AnyObject]?, data data: AnyObject?)
  func propertyWithCode(_ code: AEKeyword) -> SBObject
  func propertyWithClass(_ cls: AnyClass, code code: AEKeyword) -> SBObject
  func elementArrayWithCode(_ code: DescType) -> SBElementArray
  func setTo(_ value: AnyObject?)
}
