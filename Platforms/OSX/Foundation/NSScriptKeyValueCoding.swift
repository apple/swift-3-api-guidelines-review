
let operationNotSupportedForKeyException: String
extension Object {
  class func value(at index: Int, inPropertyWithKey key: String) -> AnyObject?
  func value(at index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func value(name name: String, inPropertyWithKey key: String) -> AnyObject?
  func value(name name: String, inPropertyWithKey key: String) -> AnyObject?
  class func value(uniqueID uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func value(uniqueID uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(value: AnyObject, at index: Int, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, at index: Int, inPropertyWithKey key: String)
  class func removeValue(at index: Int, fromPropertyWithKey key: String)
  func removeValue(at index: Int, fromPropertyWithKey key: String)
  class func replaceValue(at index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValue(at index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(value: AnyObject, inPropertyWithKey key: String)
  func insertValue(value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(value: AnyObject?, forKey key: String) -> AnyObject?
}
