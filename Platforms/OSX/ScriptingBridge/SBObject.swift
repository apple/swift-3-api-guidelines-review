
@available(OSX 10.5, *)
class SBObject : Object, Coding {
  init()
  init(properties: [Object : AnyObject])
  init(data: AnyObject)
  func get() -> AnyObject?
  @available(OSX 10.6, *)
  func lastError() -> Error?
  @available(OSX 10.5, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SBObject {
  init(elementCode code: DescType, properties: [String : AnyObject]?, data: AnyObject?)
  func property(code code: AEKeyword) -> SBObject
  func property(cls: AnyClass, code: AEKeyword) -> SBObject
  func elementArray(code code: DescType) -> SBElementArray
  func setTo(value: AnyObject?)
}
