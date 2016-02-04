
struct NSKeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: NSKeyValueObservingOptions { get }
  static var Old: NSKeyValueObservingOptions { get }
  @available(watchOS 2.0, *)
  static var Initial: NSKeyValueObservingOptions { get }
  @available(watchOS 2.0, *)
  static var Prior: NSKeyValueObservingOptions { get }
}
enum NSKeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum NSKeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnionSetMutation
  case MinusSetMutation
  case IntersectSetMutation
  case SetSetMutation
}
let NSKeyValueChangeKindKey: String
let NSKeyValueChangeNewKey: String
let NSKeyValueChangeOldKey: String
let NSKeyValueChangeIndexesKey: String
@available(watchOS 2.0, *)
let NSKeyValueChangeNotificationIsPriorKey: String
extension NSObject {
  class func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(watchOS 2.0, *)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  @available(watchOS 2.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: NSObject, forKeyPath keyPath: String)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: NSObject, toObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(watchOS 2.0, *)
  func removeObserver(observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String)
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(watchOS 2.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSOrderedSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(watchOS 2.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions, context: UnsafeMutablePointer<Void>)
  @available(watchOS 2.0, *)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: NSObject, forKeyPath keyPath: String)
}
extension NSObject {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func willChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func didChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func didChange(changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
}
extension NSObject {
  @available(watchOS 2.0, *)
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
