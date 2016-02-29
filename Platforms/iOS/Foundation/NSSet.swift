
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(_ object: AnyObject) -> AnyObject?
  func objectEnumerator() -> NSEnumerator
  init(objects objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
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
  func contains(_ anObject: AnyObject) -> Bool
  func description(withLocale locale: AnyObject?) -> String
  func intersects(_ otherSet: Set<NSObject>) -> Bool
  func isEqual(to otherSet: Set<NSObject>) -> Bool
  func isSubset(of otherSet: Set<NSObject>) -> Bool
  @available(iOS 2.0, *)
  func adding(_ anObject: AnyObject) -> Set<NSObject>
  @available(iOS 2.0, *)
  func addingObjects(from other: Set<NSObject>) -> Set<NSObject>
  @available(iOS 2.0, *)
  func addingObjects(from other: [AnyObject]) -> Set<NSObject>
  @available(iOS 4.0, *)
  func enumerateObjects(_ block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjects(_ opts: NSEnumerationOptions = [], using block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func objects(passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
  @available(iOS 4.0, *)
  func objects(_ opts: NSEnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<NSObject>
}
extension NSSet {
  convenience init(object object: AnyObject)
  convenience init(set set: Set<NSObject>)
  convenience init(set set: Set<NSObject>, copyItems flag: Bool)
  convenience init(array array: [AnyObject])
}
class NSMutableSet : NSSet {
  func add(_ object: AnyObject)
  func remove(_ object: AnyObject)
  init(capacity numItems: Int)
}
extension NSMutableSet {
  func addObjects(from array: [AnyObject])
  func intersect(_ otherSet: Set<NSObject>)
  func minus(_ otherSet: Set<NSObject>)
  func removeAllObjects()
  func union(_ otherSet: Set<NSObject>)
  func setSet(_ otherSet: Set<NSObject>)
}
extension NSMutableSet {
}
class NSCountedSet : NSMutableSet {
  func count(for object: AnyObject) -> Int
}
