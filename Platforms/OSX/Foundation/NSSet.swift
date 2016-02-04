
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func containsObject(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  func intersectsSet(otherSet: Set<NSObject>) -> Bool
  func isEqualToSet(otherSet: Set<NSObject>) -> Bool
  func isSubsetOfSet(otherSet: Set<NSObject>) -> Bool
  @available(OSX 10.5, *)
  func setByAddingObject(anObject: AnyObject) -> Set<NSObject>
  @available(OSX 10.5, *)
  func setByAddingObjectsFromSet(other: Set<NSObject>) -> Set<NSObject>
  @available(OSX 10.5, *)
  func setByAddingObjectsFromArray(other: [AnyObject]) -> Set<NSObject>
  @available(OSX 10.6, *)
  func enumerateObjectsUsingBlock(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(OSX 10.6, *)
  func objectsWithOptions(opts: NSEnumerationOptions, passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
class NSMutableSet : NSSet {
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
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
  func addObjectsFromArray(array: [AnyObject])
  func intersectSet(otherSet: Set<NSObject>)
  func minusSet(otherSet: Set<NSObject>)
  func removeAllObjects()
  func unionSet(otherSet: Set<NSObject>)
  func setSet(otherSet: Set<NSObject>)
}
extension NSMutableSet {
}
class NSCountedSet : NSMutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<NSObject>)
  func countForObject(object: AnyObject) -> Int
  func objectEnumerator() -> NSEnumerator
  func addObject(object: AnyObject)
  func removeObject(object: AnyObject)
  init?(coder aDecoder: NSCoder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<NSObject>, copyItems flag: Bool)
}
