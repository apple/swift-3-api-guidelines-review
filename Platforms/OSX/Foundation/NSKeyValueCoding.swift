
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
  class func valueFor(key key: String) -> AnyObject?
  func valueFor(key key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  func setValue(value: AnyObject?, forKey key: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueFor(key key: String) -> MutableArray
  func mutableArrayValueFor(key key: String) -> MutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueFor(key key: String) -> MutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueFor(key key: String) -> MutableOrderedSet
  class func mutableSetValueFor(key key: String) -> MutableSet
  func mutableSetValueFor(key key: String) -> MutableSet
  class func valueFor(keyPath keyPath: String) -> AnyObject?
  func valueFor(keyPath keyPath: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKeyPath keyPath: String)
  func setValue(value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueFor(keyPath keyPath: String) -> MutableArray
  func mutableArrayValueFor(keyPath keyPath: String) -> MutableArray
  @available(OSX 10.7, *)
  class func mutableOrderedSetValueFor(keyPath keyPath: String) -> MutableOrderedSet
  @available(OSX 10.7, *)
  func mutableOrderedSetValueFor(keyPath keyPath: String) -> MutableOrderedSet
  class func mutableSetValueFor(keyPath keyPath: String) -> MutableSet
  func mutableSetValueFor(keyPath keyPath: String) -> MutableSet
  class func valueFor(undefinedKey key: String) -> AnyObject?
  func valueFor(undefinedKey key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forUndefinedKey key: String)
  func setValue(value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(key: String)
  func setNilValueForKey(key: String)
  class func dictionaryWithValuesFor(keys keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesFor(keys keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWith(keyedValues: [String : AnyObject])
  func setValuesForKeysWith(keyedValues: [String : AnyObject])
}
extension NSArray {
  func valueFor(key key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSDictionary {
  func valueFor(key key: String) -> AnyObject?
}
extension MutableDictionary {
  func setValue(value: AnyObject?, forKey key: String)
}
extension OrderedSet {
  @available(OSX 10.7, *)
  func valueFor(key key: String) -> AnyObject
  @available(OSX 10.7, *)
  func setValue(value: AnyObject?, forKey key: String)
}
extension NSSet {
  func valueFor(key key: String) -> AnyObject
  func setValue(value: AnyObject?, forKey key: String)
}
extension Object {
}
