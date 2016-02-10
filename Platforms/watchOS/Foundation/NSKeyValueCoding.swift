
let undefinedKeyException: String
let averageKeyValueOperator: String
let countKeyValueOperator: String
let distinctUnionOfArraysKeyValueOperator: String
let distinctUnionOfObjectsKeyValueOperator: String
let distinctUnionOfSetsKeyValueOperator: String
let maximumKeyValueOperator: String
let minimumKeyValueOperator: String
let sumKeyValueOperator: String
let unionOfArraysKeyValueOperator: String
let unionOfObjectsKeyValueOperator: String
let unionOfSetsKeyValueOperator: String
extension Object {
  class func accessInstanceVariablesDirectly() -> Bool
  class func value(forKey key: String) -> AnyObject?
  func value(forKey key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValue(forKey key: String) -> MutableArray
  func mutableArrayValue(forKey key: String) -> MutableArray
  @available(watchOS 2.0, *)
  class func mutableOrderedSetValue(forKey key: String) -> MutableOrderedSet
  @available(watchOS 2.0, *)
  func mutableOrderedSetValue(forKey key: String) -> MutableOrderedSet
  class func mutableSetValue(forKey key: String) -> MutableSet
  func mutableSetValue(forKey key: String) -> MutableSet
  class func value(forKeyPath keyPath: String) -> AnyObject?
  func value(forKeyPath keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValue(forKeyPath keyPath: String) -> MutableArray
  func mutableArrayValue(forKeyPath keyPath: String) -> MutableArray
  @available(watchOS 2.0, *)
  class func mutableOrderedSetValue(forKeyPath keyPath: String) -> MutableOrderedSet
  @available(watchOS 2.0, *)
  func mutableOrderedSetValue(forKeyPath keyPath: String) -> MutableOrderedSet
  class func mutableSetValue(forKeyPath keyPath: String) -> MutableSet
  func mutableSetValue(forKeyPath keyPath: String) -> MutableSet
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
extension MutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension OrderedSet {
  @available(watchOS 2.0, *)
  func value(forKey key: String) -> AnyObject
  @available(watchOS 2.0, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func value(forKey key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
