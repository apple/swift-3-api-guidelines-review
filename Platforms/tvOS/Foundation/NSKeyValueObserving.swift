
struct KeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var New: KeyValueObservingOptions { get }
  static var Old: KeyValueObservingOptions { get }
  @available(tvOS 2.0, *)
  static var Initial: KeyValueObservingOptions { get }
  @available(tvOS 2.0, *)
  static var Prior: KeyValueObservingOptions { get }
}
enum KeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum KeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UnionSetMutation
  case MinusSetMutation
  case IntersectSetMutation
  case SetSetMutation
}
let keyValueChangeKindKey: String
let keyValueChangeNewKey: String
let keyValueChangeOldKey: String
let keyValueChangeIndexesKey: String
@available(tvOS 2.0, *)
let keyValueChangeNotificationIsPriorKey: String
extension Object {
  class func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
}
extension Object {
  class func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(tvOS 5.0, *)
  class func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  @available(tvOS 5.0, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  class func removeObserver(observer: Object, forKeyPath keyPath: String)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(observer: Object, toObjectsAt indexes: IndexSet, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(tvOS 5.0, *)
  func removeObserver(observer: Object, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String)
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(tvOS 5.0, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension OrderedSet {
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(tvOS 5.0, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension NSSet {
  func addObserver(observer: Object, forKeyPath keyPath: String, options: KeyValueObservingOptions = [], context: UnsafeMutablePointer<Void>)
  @available(tvOS 5.0, *)
  func removeObserver(observer: Object, forKeyPath keyPath: String, context: UnsafeMutablePointer<Void>)
  func removeObserver(observer: Object, forKeyPath keyPath: String)
}
extension Object {
  class func willChangeValueForKey(key: String)
  func willChangeValueForKey(key: String)
  class func didChangeValueForKey(key: String)
  func didChangeValueForKey(key: String)
  class func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func willChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func willChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  class func didChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func didChangeValueForKey(key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
}
extension Object {
  @available(tvOS 2.0, *)
  class func keyPathsForValuesAffectingValueForKey(key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
