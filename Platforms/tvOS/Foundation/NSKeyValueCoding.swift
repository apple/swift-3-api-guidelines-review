
let NSUndefinedKeyException: String
let NSAverageKeyValueOperator: String
let NSCountKeyValueOperator: String
let NSDistinctUnionOfArraysKeyValueOperator: String
let NSDistinctUnionOfObjectsKeyValueOperator: String
let NSDistinctUnionOfSetsKeyValueOperator: String
let NSMaximumKeyValueOperator: String
let NSMinimumKeyValueOperator: String
let NSSumKeyValueOperator: String
let NSUnionOfArraysKeyValueOperator: String
let NSUnionOfObjectsKeyValueOperator: String
let NSUnionOfSetsKeyValueOperator: String
extension NSObject {
  class func accessInstanceVariablesDirectly() -> Bool
  class func valueForKey(key: String) -> AnyObject?
  func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(key: String) -> NSMutableArray
  func mutableArrayValueForKey(key: String) -> NSMutableArray
  @available(tvOS 5.0, *)
  class func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  @available(tvOS 5.0, *)
  func mutableOrderedSetValueForKey(key: String) -> NSMutableOrderedSet
  class func mutableSetValueForKey(key: String) -> NSMutableSet
  func mutableSetValueForKey(key: String) -> NSMutableSet
  class func valueForKeyPath(keyPath: String) -> AnyObject?
  func valueForKeyPath(keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(keyPath: String) -> NSMutableArray
  func mutableArrayValueForKeyPath(keyPath: String) -> NSMutableArray
  @available(tvOS 5.0, *)
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  @available(tvOS 5.0, *)
  func mutableOrderedSetValueForKeyPath(keyPath: String) -> NSMutableOrderedSet
  class func mutableSetValueForKeyPath(keyPath: String) -> NSMutableSet
  func mutableSetValueForKeyPath(keyPath: String) -> NSMutableSet
  class func valueForUndefinedKey(key: String) -> AnyObject?
  func valueForUndefinedKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject])
  func setValuesForKeysWithDictionary(keyedValues: [String : AnyObject])
}
extension NSArray {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func valueForKey(key: String) -> AnyObject?
}
extension NSMutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSOrderedSet {
  @available(tvOS 5.0, *)
  func valueForKey(key: String) -> AnyObject
  @available(tvOS 5.0, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
