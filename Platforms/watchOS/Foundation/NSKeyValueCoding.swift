
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
  class func value(forKey key: String) -> AnyObject?
  func value(forKey key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValue(forKey key: String) -> NSMutableArray
  func mutableArrayValue(forKey key: String) -> NSMutableArray
  @available(watchOS 2.0, *)
  class func mutableOrderedSetValue(forKey key: String) -> NSMutableOrderedSet
  @available(watchOS 2.0, *)
  func mutableOrderedSetValue(forKey key: String) -> NSMutableOrderedSet
  class func mutableSetValue(forKey key: String) -> NSMutableSet
  func mutableSetValue(forKey key: String) -> NSMutableSet
  class func value(forKeyPath keyPath: String) -> AnyObject?
  func value(forKeyPath keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValue(forKeyPath keyPath: String) -> NSMutableArray
  func mutableArrayValue(forKeyPath keyPath: String) -> NSMutableArray
  @available(watchOS 2.0, *)
  class func mutableOrderedSetValue(forKeyPath keyPath: String) -> NSMutableOrderedSet
  @available(watchOS 2.0, *)
  func mutableOrderedSetValue(forKeyPath keyPath: String) -> NSMutableOrderedSet
  class func mutableSetValue(forKeyPath keyPath: String) -> NSMutableSet
  func mutableSetValue(forKeyPath keyPath: String) -> NSMutableSet
  class func value(forUndefinedKey key: String) -> AnyObject?
  func value(forUndefinedKey key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValues(forKeys keys: [String]) -> [String : AnyObject]
  func dictionaryWithValues(forKeys keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWith(keyedValues: [String : AnyObject])
  func setValuesForKeysWith(keyedValues: [String : AnyObject])
}
extension NSArray {
  func value(forKey key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func value(forKey key: String) -> AnyObject?
}
extension NSMutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSOrderedSet {
  @available(watchOS 2.0, *)
  func value(forKey key: String) -> AnyObject
  @available(watchOS 2.0, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func value(forKey key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
