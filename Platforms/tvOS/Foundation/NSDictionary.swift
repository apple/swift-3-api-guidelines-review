
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectForKey(aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func allKeysForObject(anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var description: String { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func descriptionWithLocale(locale: AnyObject?, indent level: Int) -> String
  func isEqualToDictionary(otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objectsForKeys(keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(url: NSURL, atomically: Bool) -> Bool
  func keysSortedByValueUsingSelector(comparator: Selector) -> [AnyObject]
  @available(tvOS 5.0, *)
  func getObjects(objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count: Int)
  @available(tvOS 6.0, *)
  subscript (key: NSCopying) -> AnyObject? { get }
  @available(tvOS 4.0, *)
  func enumerateKeysAndObjectsUsingBlock(block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateKeysAndObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func keysSortedByValueUsingComparator(cmptr: NSComparator) -> [AnyObject]
  @available(tvOS 4.0, *)
  func keysSortedByValueWithOptions(opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(tvOS 4.0, *)
  func keysOfEntriesPassingTest(predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(tvOS 4.0, *)
  func keysOfEntriesWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
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
  convenience init?(contentsOfURL url: NSURL)
}
class NSMutableDictionary : NSDictionary {
  func removeObjectForKey(aKey: AnyObject)
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
  func addEntriesFromDictionary(otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjectsForKeys(keyArray: [AnyObject])
  func setDictionary(otherDictionary: [NSObject : AnyObject])
  @available(tvOS 6.0, *)
  subscript (key: NSCopying) -> AnyObject?
}
extension NSMutableDictionary {
  convenience init?(contentsOfFile path: String)
  convenience init?(contentsOfURL url: NSURL)
}
extension NSDictionary {
  @available(tvOS 6.0, *)
  class func sharedKeySetForKeys(keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
  @available(tvOS 6.0, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
