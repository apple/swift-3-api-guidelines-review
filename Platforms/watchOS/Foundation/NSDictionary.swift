
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(forKey aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init(objects objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSDictionary : DictionaryLiteralConvertible {
}

extension NSDictionary : SequenceType {
}

extension NSDictionary {
  @objc(_swiftInitWithDictionary_NSDictionary:) convenience init(dictionary otherDictionary: NSDictionary)
}

extension NSDictionary : CustomReflectable {
}
extension NSDictionary {
  var allKeys: [AnyObject] { get }
  func allKeys(for anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var descriptionInStringsFileFormat: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
  func isEqual(to otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objects(forKeys keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: NSURL, atomically atomically: Bool) -> Bool
  func keysSortedByValue(using comparator: Selector) -> [AnyObject]
  @available(watchOS 2.0, *)
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count count: Int)
  @available(watchOS 2.0, *)
  subscript(_ key: NSCopying) -> AnyObject? { get }
  @available(watchOS 2.0, *)
  func enumerateKeysAndObjects(_ block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateKeysAndObjects(_ opts: NSEnumerationOptions = [], using block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func keysSortedByValue(comparator cmptr: NSComparator) -> [AnyObject]
  @available(watchOS 2.0, *)
  func keysSortedByValue(_ opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(watchOS 2.0, *)
  func keysOfEntries(passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(watchOS 2.0, *)
  func keysOfEntries(_ opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSDictionary {
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects objects: [AnyObject], forKeys keys: [NSCopying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
class NSMutableDictionary : NSDictionary {
  func removeObject(forKey aKey: AnyObject)
  func setObject(_ anObject: AnyObject, forKey aKey: NSCopying)
  init(capacity numItems: Int)
}
extension NSMutableDictionary {
  func addEntries(from otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjects(forKeys keyArray: [AnyObject])
  func setDictionary(_ otherDictionary: [NSObject : AnyObject])
}
extension NSMutableDictionary {
}
extension NSDictionary {
  @available(watchOS 2.0, *)
  class func sharedKeySet(forKeys keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
  @available(watchOS 2.0, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
