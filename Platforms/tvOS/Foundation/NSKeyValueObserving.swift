
struct KeyValueObservingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var new: KeyValueObservingOptions { get }
  static var old: KeyValueObservingOptions { get }
  @available(tvOS 2.0, *)
  static var initial: KeyValueObservingOptions { get }
  @available(tvOS 2.0, *)
  static var prior: KeyValueObservingOptions { get }
}
enum KeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case setting
  case insertion
  case removal
  case replacement
}
enum KeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unionSetMutation
  case minusSetMutation
  case intersectSetMutation
  case setSetMutation
}
let keyValueChangeKindKey: String
let keyValueChangeNewKey: String
let keyValueChangeOldKey: String
let keyValueChangeIndexesKey: String
@available(tvOS 2.0, *)
let keyValueChangeNotificationIsPriorKey: String
extension Object {
  class func observeValue(forKeyPath keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
  func observeValue(forKeyPath keyPath: String?, of object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>)
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
  class func willChangeValue(forKey key: String)
  func willChangeValue(forKey key: String)
  class func didChangeValue(forKey key: String)
  func didChangeValue(forKey key: String)
  class func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func willChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func didChange(changeKind: KeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func willChangeValue(forKey key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func willChangeValue(forKey key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  class func didChangeValue(forKey key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
  func didChangeValue(forKey key: String, withSetMutation mutationKind: KeyValueSetMutationKind, usingObjects objects: Set<Object>)
}
extension Object {
  @available(tvOS 2.0, *)
  class func keyPathsForValuesAffectingValue(forKey key: String) -> Set<String>
  class func automaticallyNotifiesObservers(forKey key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(observationInfo: UnsafeMutablePointer<Void>)
}
