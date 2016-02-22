
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(iOS 6.0, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(iOS 6.0, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(iOS 6.0, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions: NSPointerFunctionsOptions = [], valueOptions: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions: NSPointerFunctionsOptions = [], valueOptions: NSPointerFunctionsOptions = [])
  @available(iOS 6.0, *)
  class func strongToStrongObjects() -> NSMapTable
  @available(iOS 6.0, *)
  class func weakToStrongObjects() -> NSMapTable
  @available(iOS 6.0, *)
  class func strongToWeakObjects() -> NSMapTable
  @available(iOS 6.0, *)
  class func weakToWeakObjects() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func object(for aKey: AnyObject?) -> AnyObject?
  func removeObject(for aKey: AnyObject?)
  func setObject(anObject: AnyObject?, for aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  convenience init()
  @available(iOS 6.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 6.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
