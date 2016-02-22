
let NSOperationNotSupportedForKeyException: String
extension NSObject {
  class func value(at index: Int, inPropertyWithKey key: String) -> AnyObject?
  func value(at index: Int, inPropertyWithKey key: String) -> AnyObject?
  class func value(withName name: String, inPropertyWithKey key: String) -> AnyObject?
  func value(withName name: String, inPropertyWithKey key: String) -> AnyObject?
  class func value(withUniqueID uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  func value(withUniqueID uniqueID: AnyObject, inPropertyWithKey key: String) -> AnyObject?
  class func insertValue(_ value: AnyObject, at index: Int, inPropertyWithKey key: String)
  func insertValue(_ value: AnyObject, at index: Int, inPropertyWithKey key: String)
  class func removeValue(at index: Int, fromPropertyWithKey key: String)
  func removeValue(at index: Int, fromPropertyWithKey key: String)
  class func replaceValue(at index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  func replaceValue(at index: Int, inPropertyWithKey key: String, withValue value: AnyObject)
  class func insertValue(_ value: AnyObject, inPropertyWithKey key: String)
  func insertValue(_ value: AnyObject, inPropertyWithKey key: String)
  class func coerceValue(_ value: AnyObject?, forKey key: String) -> AnyObject?
  func coerceValue(_ value: AnyObject?, forKey key: String) -> AnyObject?
}
