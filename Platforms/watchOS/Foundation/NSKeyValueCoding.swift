
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
  class func valueForKey(_ key: String) -> AnyObject?
  func valueForKey(_ key: String) -> AnyObject?
  class func setValue(_ value: AnyObject?, forKey key: String)
  func setValue(_ value: AnyObject?, forKey key: String)
  class func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValueForKey(_ key: String) -> NSMutableArray
  func mutableArrayValueForKey(_ key: String) -> NSMutableArray
  @available(watchOS 2.0, *)
  class func mutableOrderedSetValueForKey(_ key: String) -> NSMutableOrderedSet
  @available(watchOS 2.0, *)
  func mutableOrderedSetValueForKey(_ key: String) -> NSMutableOrderedSet
  class func mutableSetValueForKey(_ key: String) -> NSMutableSet
  func mutableSetValueForKey(_ key: String) -> NSMutableSet
  class func valueForKeyPath(_ keyPath: String) -> AnyObject?
  func valueForKeyPath(_ keyPath: String) -> AnyObject?
  class func setValue(_ value: AnyObject?, forKeyPath keyPath: String)
  func setValue(_ value: AnyObject?, forKeyPath keyPath: String)
  class func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValueForKeyPath(_ keyPath: String) -> NSMutableArray
  func mutableArrayValueForKeyPath(_ keyPath: String) -> NSMutableArray
  @available(watchOS 2.0, *)
  class func mutableOrderedSetValueForKeyPath(_ keyPath: String) -> NSMutableOrderedSet
  @available(watchOS 2.0, *)
  func mutableOrderedSetValueForKeyPath(_ keyPath: String) -> NSMutableOrderedSet
  class func mutableSetValueForKeyPath(_ keyPath: String) -> NSMutableSet
  func mutableSetValueForKeyPath(_ keyPath: String) -> NSMutableSet
  class func valueForUndefinedKey(_ key: String) -> AnyObject?
  func valueForUndefinedKey(_ key: String) -> AnyObject?
  class func setValue(_ value: AnyObject?, forUndefinedKey key: String)
  func setValue(_ value: AnyObject?, forUndefinedKey key: String)
  class func setNilValueForKey(_ key: String)
  func setNilValueForKey(_ key: String)
  class func dictionaryWithValuesForKeys(_ keys: [String]) -> [String : AnyObject]
  func dictionaryWithValuesForKeys(_ keys: [String]) -> [String : AnyObject]
  class func setValuesForKeysWithDictionary(_ keyedValues: [String : AnyObject])
  func setValuesForKeysWithDictionary(_ keyedValues: [String : AnyObject])
}
extension NSArray {
}
extension NSDictionary {
}
extension NSMutableDictionary {
}
extension NSOrderedSet {
}
extension NSSet {
}
