
let NSOperationNotSupportedForKeyException: String
extension NSObject {
  class func valueAtIndex(_ index: Int, inPropertyWithKey key: String) -> AnyObject?
  func valueAtIndex(_ index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithName(_ name: String, inPropertyWithKey key: String) -> AnyObject?
  func valueWithName(_ name: String, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithUniqueID(_ uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func valueWithUniqueID(_ uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(_ value: AnyObject, atIndex index: Int, inPropertyWithKey key: String)
  func insertValue(_ value: AnyObject, atIndex index: Int, inPropertyWithKey key: String)
  class func removeValueAtIndex(_ index: Int, fromPropertyWithKey key: String)
  func removeValueAtIndex(_ index: Int, fromPropertyWithKey key: String)
  class func replaceValueAtIndex(_ index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValueAtIndex(_ index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(_ value: AnyObject, inPropertyWithKey key: String)
  func insertValue(_ value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(_ value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(_ value: AnyObject?, forKey key: String) -> AnyObject?
}
