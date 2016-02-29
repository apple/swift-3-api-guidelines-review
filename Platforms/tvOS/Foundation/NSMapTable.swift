
var __FOUNDATION_NSMAPTABLE__: Int32 { get }
@available(tvOS 6.0, *)
let NSMapTableStrongMemory: NSPointerFunctionsOptions
@available(tvOS 6.0, *)
let NSMapTableCopyIn: NSPointerFunctionsOptions
@available(tvOS 6.0, *)
let NSMapTableObjectPointerPersonality: NSPointerFunctionsOptions
@available(tvOS 6.0, *)
let NSMapTableWeakMemory: NSPointerFunctionsOptions
typealias NSMapTableOptions = Int
@available(tvOS 6.0, *)
class NSMapTable : NSObject, NSCopying, NSCoding, NSFastEnumeration {
  init(keyOptions keyOptions: NSPointerFunctionsOptions = [], valueOptions valueOptions: NSPointerFunctionsOptions = [], capacity initialCapacity: Int)
  init(keyPointerFunctions keyFunctions: NSPointerFunctions, valuePointerFunctions valueFunctions: NSPointerFunctions, capacity initialCapacity: Int)
  /*not inherited*/ init(keyOptions keyOptions: NSPointerFunctionsOptions = [], valueOptions valueOptions: NSPointerFunctionsOptions = [])
  @available(tvOS 6.0, *)
  class func strongToStrongObjects() -> NSMapTable
  @available(tvOS 6.0, *)
  class func weakToStrongObjects() -> NSMapTable
  @available(tvOS 6.0, *)
  class func strongToWeakObjects() -> NSMapTable
  @available(tvOS 6.0, *)
  class func weakToWeakObjects() -> NSMapTable
  @NSCopying var keyPointerFunctions: NSPointerFunctions { get }
  @NSCopying var valuePointerFunctions: NSPointerFunctions { get }
  func object(forKey aKey: AnyObject?) -> AnyObject?
  func removeObject(forKey aKey: AnyObject?)
  func setObject(_ anObject: AnyObject?, forKey aKey: AnyObject?)
  var count: Int { get }
  func keyEnumerator() -> NSEnumerator
  func objectEnumerator() -> NSEnumerator?
  func removeAllObjects()
  func dictionaryRepresentation() -> [NSObject : AnyObject]
  @available(tvOS 6.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 6.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(tvOS 6.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
