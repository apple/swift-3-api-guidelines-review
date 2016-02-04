
let NSOperationNotSupportedForKeyException: String
extension NSObject {
  class func valueAtIndex(index: Int, inPropertyWithKey key: String) -> AnyObject?
  func valueAtIndex(index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithName(name: String, inPropertyWithKey key: String) -> AnyObject?
  func valueWithName(name: String, inPropertyWithKey key: String) -> AnyObject?
  class func valueWithUniqueID(uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func valueWithUniqueID(uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(value: AnyObject, atIndex index: Int, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, atIndex index: Int, inPropertyWithKey key: String)
  class func removeValueAtIndex(index: Int, fromPropertyWithKey key: String)
  func removeValueAtIndex(index: Int, fromPropertyWithKey key: String)
  class func replaceValueAtIndex(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValueAtIndex(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(value: AnyObject, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
}
