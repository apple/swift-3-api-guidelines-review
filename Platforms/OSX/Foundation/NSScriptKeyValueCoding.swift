
let operationNotSupportedForKeyException: String
extension Object {
  class func valueAt(index: Int, inPropertyWithKey key: String) -> AnyObject?
  func valueAt(index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func valueWith(name name: String, inPropertyWithKey key: String) -> AnyObject?
  func valueWith(name name: String, inPropertyWithKey key: String) -> AnyObject?
  class func valueWith(uniqueID uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func valueWith(uniqueID uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(value: AnyObject, at index: Int, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, at index: Int, inPropertyWithKey key: String)
  class func removeValueAt(index: Int, fromPropertyWithKey key: String)
  func removeValueAt(index: Int, fromPropertyWithKey key: String)
  class func replaceValueAt(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValueAt(index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(value: AnyObject, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
}
