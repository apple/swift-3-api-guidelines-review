
struct NSKeyValueObservingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var New: NSKeyValueObservingOptions { get }
  static var Old: NSKeyValueObservingOptions { get }
  @available(iOS 2.0, *)
  static var Initial: NSKeyValueObservingOptions { get }
  @available(iOS 2.0, *)
  static var Prior: NSKeyValueObservingOptions { get }
}
enum NSKeyValueChange : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Setting
  case Insertion
  case Removal
  case Replacement
}
enum NSKeyValueSetMutationKind : UInt {
  init?(rawValue rawValue: UInt)
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
@available(iOS 2.0, *)
let NSKeyValueChangeNotificationIsPriorKey: String
extension NSObject {
  class func observeValueForKeyPath(_ keyPath: String?, ofObject object: AnyObject?, change change: [String : AnyObject]?, context context: UnsafeMutablePointer<Void>)
  func observeValueForKeyPath(_ keyPath: String?, ofObject object: AnyObject?, change change: [String : AnyObject]?, context context: UnsafeMutablePointer<Void>)
}
extension NSObject {
  class func addObserver(_ observer: NSObject, forKeyPath keyPath: String, options options: NSKeyValueObservingOptions, context context: UnsafeMutablePointer<Void>)
  func addObserver(_ observer: NSObject, forKeyPath keyPath: String, options options: NSKeyValueObservingOptions, context context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  class func removeObserver(_ observer: NSObject, forKeyPath keyPath: String, context context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(_ observer: NSObject, forKeyPath keyPath: String, context context: UnsafeMutablePointer<Void>)
  class func removeObserver(_ observer: NSObject, forKeyPath keyPath: String)
  func removeObserver(_ observer: NSObject, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(_ observer: NSObject, toObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, options options: NSKeyValueObservingOptions, context context: UnsafeMutablePointer<Void>)
  @available(iOS 5.0, *)
  func removeObserver(_ observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String, context context: UnsafeMutablePointer<Void>)
  func removeObserver(_ observer: NSObject, fromObjectsAtIndexes indexes: NSIndexSet, forKeyPath keyPath: String)
}
extension NSOrderedSet {
}
extension NSSet {
}
extension NSObject {
  class func willChangeValueForKey(_ key: String)
  func willChangeValueForKey(_ key: String)
  class func didChangeValueForKey(_ key: String)
  func didChangeValueForKey(_ key: String)
  class func willChange(_ changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func willChange(_ changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func didChange(_ changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  func didChange(_ changeKind: NSKeyValueChange, valuesAtIndexes indexes: NSIndexSet, forKey key: String)
  class func willChangeValueForKey(_ key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func willChangeValueForKey(_ key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  class func didChangeValueForKey(_ key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
  func didChangeValueForKey(_ key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, usingObjects objects: Set<NSObject>)
}
extension NSObject {
  @available(iOS 2.0, *)
  class func keyPathsForValuesAffectingValueForKey(_ key: String) -> Set<String>
  class func automaticallyNotifiesObserversForKey(_ key: String) -> Bool
  var observationInfo: UnsafeMutablePointer<Void>
  class func observationInfo() -> UnsafeMutablePointer<Void>
  class func setObservationInfo(_ observationInfo: UnsafeMutablePointer<Void>)
}
