
class NSDictionary : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func objectFor(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<Copying?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(zone zone: Zone = nil) -> AnyObject
  func mutableCopy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func allKeysFor(anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func isEqualTo(otherDictionary: [Object : AnyObject]) -> Bool
  func objectEnumerator() -> Enumerator
  func objectsFor(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeTo(url: URL, atomically: Bool) -> Bool
  func keysSortedByValueUsing(comparator: Selector) -> [AnyObject]
  @available(OSX 10.7, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(OSX 10.8, *)
  subscript (key: Copying) -> AnyObject? { get }
  @available(OSX 10.6, *)
  func enumerateKeysAndObjectsUsing(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateKeysAndObjects(options opts: EnumerationOptions = [], usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func keysSortedByValueUsingComparator(cmptr: Comparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysSortedByValue(options opts: SortOptions = [], usingComparator cmptr: Comparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  @available(OSX 10.6, *)
  func keysOfEntries(options opts: EnumerationOptions = [], passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
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
  func removeObjectFor(aKey: AnyObject)
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
  func addEntriesFrom(otherDictionary: [Object : AnyObject])
  func removeAllObjects()
  func removeObjectsFor(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [Object : AnyObject])
  @available(OSX 10.8, *)
  subscript (key: Copying) -> AnyObject?
}
extension MutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOf url: URL)
}
extension NSDictionary {
  @available(OSX 10.8, *)
  class func sharedKeySetForKeys(keys: [Copying]) -> AnyObject
}
extension MutableDictionary {
  @available(OSX 10.8, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
