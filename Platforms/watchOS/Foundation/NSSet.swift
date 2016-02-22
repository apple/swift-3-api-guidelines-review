
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSSet {
  convenience init(objects elements: AnyObject...)
}

extension NSSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}

extension NSSet {
  @objc(_swiftInitWithSet_NSSet:) convenience init(set anSet: NSSet)
}

extension NSSet : CustomReflectable {
  func customMirror() -> Mirror
}
extension NSSet {
  var allObjects: [AnyObject] { get }
  func anyObject() -> AnyObject?
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func description(withLocale locale: AnyObject?) -> String
  func intersects(otherSet: Set<NSObject>) -> Bool
  func isEqual(to otherSet: Set<NSObject>) -> Bool
  func isSubsetOf(otherSet: Set<NSObject>) -> Bool
  @available(watchOS 2.0, *)
  func adding(anObject: AnyObject) -> Set<NSObject>
  @available(watchOS 2.0, *)
  func addingObjects(from other: Set<NSObject>) -> Set<NSObject>
  @available(watchOS 2.0, *)
  func addingObjects(from other: [AnyObject]) -> Set<NSObject>
  @available(watchOS 2.0, *)
  func enumerateObjects(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateObjects(opts: NSEnumerationOptions = [], using block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func objects(passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(watchOS 2.0, *)
  func objects(opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
class NSMutableSet : NSSet {
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension NSMutableSet {
  func addObjects(from array: [AnyObject])
  func intersect(otherSet: Set<NSObject>)
  func minus(otherSet: Set<NSObject>)
  func removeAllObjects()
  func union(otherSet: Set<NSObject>)
  func setSet(otherSet: Set<NSObject>)
}
extension NSMutableSet {
}
class NSCountedSet : NSMutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<NSObject>)
  func count(for object: AnyObject) -> Int
  func objectEnumerator() -> NSEnumerator
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
