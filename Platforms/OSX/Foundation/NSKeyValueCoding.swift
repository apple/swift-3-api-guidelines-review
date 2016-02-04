
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
  class func valueForKey(key: String) -> AnyObject?
  func valueForKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(key: String) -> MutableArray
  func mutableArrayValueForKey(key: String) -> MutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueForKey(key: String) -> MutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueForKey(key: String) -> MutableOrderedSet
  class func mutableSetValueForKey(key: String) -> MutableSet
  func mutableSetValueForKey(key: String) -> MutableSet
  class func valueForKeyPath(keyPath: String) -> AnyObject?
  func valueForKeyPath(keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(keyPath: String) -> MutableArray
  func mutableArrayValueForKeyPath(keyPath: String) -> MutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueForKeyPath(keyPath: String) -> MutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueForKeyPath(keyPath: String) -> MutableOrderedSet
  class func mutableSetValueForKeyPath(keyPath: String) -> MutableSet
  func mutableSetValueForKeyPath(keyPath: String) -> MutableSet
  class func valueForUndefinedKey(key: String) -> AnyObject?
  func valueForUndefinedKey(key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesForKeys(keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWith(keyedValues: [String : AnyObject])
  func setValuesForKeysWith(keyedValues: [String : AnyObject])
}
extension NSArray {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func valueForKey(key: String) -> AnyObject?
}
extension MutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func valueForKey(key: String) -> AnyObject
  @available(OSX 10.7, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueForKey(key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension Object {
}
