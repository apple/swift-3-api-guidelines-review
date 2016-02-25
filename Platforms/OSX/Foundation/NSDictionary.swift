
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func objectForKey(_ aKey: AnyObject) -> AnyObject?
  func keyEnumerator() -> NSEnumerator
  init(objects objects: UnsafePointer<AnyObject?>, forKeys keys: UnsafePointer<NSCopying?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func allKeysForObject(_ anObject: AnyObject) -> [AnyObject]
  var allValues: [AnyObject] { get }
  var descriptionInStringsFileFormat: String { get }
  func descriptionWithLocale(_ locale: AnyObject?) -> String
  func descriptionWithLocale(_ locale: AnyObject?, indent level: Int) -> String
  func isEqualToDictionary(_ otherDictionary: [NSObject : AnyObject]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objectsForKeys(_ keys: [AnyObject], notFoundMarker marker: AnyObject) -> [AnyObject]
  func writeToFile(_ path: String, atomically useAuxiliaryFile: Bool) -> Bool
  func writeToURL(_ url: NSURL, atomically atomically: Bool) -> Bool
  func keysSortedByValueUsingSelector(_ comparator: Selector) -> [AnyObject]
  @available(OSX 10.7, *)
  func getObjects(_ objects: AutoreleasingUnsafeMutablePointer<AnyObject?>, andKeys keys: AutoreleasingUnsafeMutablePointer<AnyObject?>, count count: Int)
  @available(OSX 10.8, *)
  subscript(_ key: NSCopying) -> AnyObject? { get }
  @available(OSX 10.6, *)
  func enumerateKeysAndObjectsUsingBlock(_ block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateKeysAndObjectsWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func keysSortedByValueUsingComparator(_ cmptr: NSComparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysSortedByValueWithOptions(_ opts: NSSortOptions, usingComparator cmptr: NSComparator) -> [AnyObject]
  @available(OSX 10.6, *)
  func keysOfEntriesPassingTest(_ predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(OSX 10.6, *)
  func keysOfEntriesWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (AnyObject, AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
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
  convenience init?(contentsOfURL url: NSURL)
}
class NSMutableDictionary : NSDictionary {
  func removeObjectForKey(_ aKey: AnyObject)
  func setObject(_ anObject: AnyObject, forKey aKey: NSCopying)
  init(capacity numItems: Int)
}
extension NSMutableDictionary {
  func addEntriesFromDictionary(_ otherDictionary: [NSObject : AnyObject])
  func removeAllObjects()
  func removeObjectsForKeys(_ keyArray: [AnyObject])
  func setDictionary(_ otherDictionary: [NSObject : AnyObject])
}
extension NSMutableDictionary {
}
extension NSDictionary {
  @available(OSX 10.8, *)
  class func sharedKeySetForKeys(_ keys: [NSCopying]) -> AnyObject
}
extension NSMutableDictionary {
  @available(OSX 10.8, *)
  /*not inherited*/ init(sharedKeySet keyset: AnyObject)
}
