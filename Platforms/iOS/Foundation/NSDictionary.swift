
class NSDictionary : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func object(forKey aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSDictionary : DictionaryLiteralConvertible {
  required convenience init(dictionaryLiteral elements: (Copying, AnyObject)...)
  typealias Key = Copying
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
  func allKeys(forObject anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func description(withLocale locale: AnyObject?, indent level: Int) -> String
  func isEqual(to otherDictionary: [Object : AnyObject]) -> Bool
  func objectEnumerator() -> Enumerator
  func objects(forKeys keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func write(to url: URL, atomically: Bool) -> Bool
  func keysSortedByValue(usingSelector comparator: Selector) -> [AnyObject]
  @available(iOS 5.0, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(iOS 6.0, *)
  subscript (forKeyedSubscript key: Copying) -> AnyObject? { get }
  @available(iOS 4.0, *)
  func enumerateKeysAndObjects(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateKeysAndObjects(opts: EnumerationOptions = [], usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func keysSortedByValue(comparator cmptr: Comparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func keysSortedByValue(opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  @available(iOS 4.0, *)
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  @available(iOS 4.0, *)
  func keysOfEntries(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSDictionary {
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>)
}
extension NSDictionary {
  convenience init(object: AnyObject, forKey key: Copying)
  convenience init(dictionary otherDictionary: [Object : AnyObject])
  convenience init(dictionary otherDictionary: [Object : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [Copying])
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
class MutableDictionary : NSDictionary {
  func removeObject(forKey aKey: AnyObject)
  func setObject(anObject: AnyObject, forKey aKey: Copying)
  init()
  init(capacity numItems: Int)
  init?(coder aDecoder: Coder)
  convenience init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  convenience init(object: AnyObject, forKey key: Copying)
  convenience init(dictionary otherDictionary: [Object : AnyObject])
  convenience init(dictionary otherDictionary: [Object : AnyObject], copyItems flag: Bool)
  convenience init(objects: [AnyObject], forKeys keys: [Copying])
}
extension MutableDictionary {
  func addEntries(from otherDictionary: [Object : AnyObject])
  func removeAllObjects()
  func removeObjects(forKeys keyArray: [AnyObject])
  func setDictionary(otherDictionary: [Object : AnyObject])
  @available(iOS 6.0, *)
  subscript (forKeyedSubscript key: Copying) -> AnyObject?
}
extension MutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSDictionary {
  @available(iOS 6.0, *)
  class func sharedKeySet(forKeys keys: [Copying]) -> AnyObject
}
extension MutableDictionary {
  @available(iOS 6.0, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
