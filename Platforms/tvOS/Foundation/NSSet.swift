
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(_ object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init(objects objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSSet : SequenceType {
}

extension NSSet {
  convenience init(objects elements: AnyObject...)
}

extension NSSet : ArrayLiteralConvertible {
}

extension NSSet {
  @objc(_swiftInitWithSet_NSSet:) convenience init(set anSet: NSSet)
}

extension NSSet : CustomReflectable {
}
extension NSSet {
  var allObjects: [AnyObject] { get }
  func anyObject() -> AnyObject?
  func containsObject(_ anObject: AnyObject) -> Bool
  func descriptionWithLocale(_ locale: AnyObject?) -> String
  func intersectsSet(_ otherSet: Set<NSObject>) -> Bool
  func isEqualToSet(_ otherSet: Set<NSObject>) -> Bool
  func isSubsetOfSet(_ otherSet: Set<NSObject>) -> Bool
  @available(tvOS 2.0, *)
  func setByAddingObject(_ anObject: AnyObject) -> Set<NSObject>
  @available(tvOS 2.0, *)
  func setByAddingObjectsFromSet(_ other: Set<NSObject>) -> Set<NSObject>
  @available(tvOS 2.0, *)
  func setByAddingObjectsFromArray(_ other: [AnyObject]) -> Set<NSObject>
  @available(tvOS 4.0, *)
  func enumerateObjectsUsingBlock(_ block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func enumerateObjectsWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 4.0, *)
  func objectsPassingTest(_ predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(tvOS 4.0, *)
  func objectsWithOptions(_ opts: NSEnumerationOptions, passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object object: AnyObject)
  convenience init(set set: Set<NSObject>)
  convenience init(set set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array array: [AnyObject])
}
class NSMutableSet : NSSet {
  func addObject(_ object: AnyObject)
  func removeObject(_ object: AnyObject)
  init(capacity numItems: Int)
}
extension NSMutableSet {
  func addObjectsFromArray(_ array: [AnyObject])
  func intersectSet(_ otherSet: Set<NSObject>)
  func minusSet(_ otherSet: Set<NSObject>)
  func removeAllObjects()
  func unionSet(_ otherSet: Set<NSObject>)
  func setSet(_ otherSet: Set<NSObject>)
}
extension NSMutableSet {
}
class NSCountedSet : NSMutableSet {
  func countForObject(_ object: AnyObject) -> Int
}
