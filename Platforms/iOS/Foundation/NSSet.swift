
class NSSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copy(with zone: Zone = nil) -> AnyObject
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func intersectsSet(otherSet: Set<Object>) -> Bool
  func isEqual(to otherSet: Set<Object>) -> Bool
  func isSubsetOf(otherSet: Set<Object>) -> Bool
  @available(iOS 2.0, *)
  func adding(anObject: AnyObject) -> Set<Object>
  @available(iOS 2.0, *)
  func addingObjects(from other: Set<Object>) -> Set<Object>
  @available(iOS 2.0, *)
  func addingObjects(from other: [AnyObject]) -> Set<Object>
  @available(iOS 4.0, *)
  func enumerateObjects(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjects(opts: EnumerationOptions = [], using block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  @available(iOS 4.0, *)
  func objects(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
class MutableSet : NSSet {
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension MutableSet {
  func addObjects(from array: [AnyObject])
  func intersectSet(otherSet: Set<Object>)
  func minusSet(otherSet: Set<Object>)
  func removeAllObjects()
  func unionSet(otherSet: Set<Object>)
  func setSet(otherSet: Set<Object>)
}
extension MutableSet {
}
class CountedSet : MutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<Object>)
  func count(for object: AnyObject) -> Int
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}
