
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(forKey aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSDictionary : DictionaryLiteralConvertible {
  required convenience init(dictionaryLiteral elements: (NSCopying, AnyObject)...)
  typealias Key = NSCopying
  typealias Value = AnyObject
}

extension NSDictionary : SequenceType {
  final class Generator : GeneratorType {
    var _fastGenerator: NSFastGenerator
    var _dictionary: NSDictionary { get }
    func next() -> (key: AnyObject, value: AnyObject)?
    init(_ _dict: NSDictionary)
    typealias Element = (key: AnyObject, value: AnyObject)
  }
  func generate() -> NSDictionary.Generator
  typealias SubSequence = AnySequence<(key: AnyObject, value: AnyObject)>
}

extension NSDictionary {
  @objc(_swiftInitWithDictionary_NSDictionary:) convenience init(dictionary otherDictionary: NSDictionary)
}

extension NSDictionary : CustomReflectable {
  func customMirror() -> Mirror
}
extension NSDictionary {
  var allKeys: [AnyObject] { get }
  func allKeys(for anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
  func isEqual(to otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objects(forKeys keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: NSURL, atomically: Bool) -> Bool
  func keysSortedByValue(using comparator: Selector) -> [AnyObject]
  @available(iOS 5.0, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(iOS 6.0, *)
  subscript(key: NSCopying) -> AnyObject? { get }
  @available(iOS 4.0, *)
  func enumerateKeysAndObjects(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateKeysAndObjects(opts: NSEnumerationOptions = [], using block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func keysSortedByValue(comparator cmptr: NSComparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func keysSortedByValue(opts: NSSortOptions = [], usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func keysOfEntries(passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(iOS 4.0, *)
  func keysOfEntries(opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSDictionary {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [NSCopying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
class NSMutableDictionary : NSDictionary {
  func removeObject(forKey aKey: AnyObject)
  func setObject(anObject: AnyObject, forKey aKey: NSCopying)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: NSCoder)
  convenience init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  convenience init(object: AnyObject, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [NSObject : AnyObject])
  convenience init(dictionary otherDictionary: [NSObject : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [NSCopying])
}
extension NSMutableDictionary {
  func addEntries(from otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjects(forKeys keyArray: [AnyObject])
  func setDictionary(otherDictionary: [NSObject : AnyObject])
  @available(iOS 6.0, *)
  subscript(key: NSCopying) -> AnyObject?
}
extension NSMutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: NSURL)
}
extension NSDictionary {
  @available(iOS 6.0, *)
  class func sharedKeySet(forKeys keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
  @available(iOS 6.0, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
