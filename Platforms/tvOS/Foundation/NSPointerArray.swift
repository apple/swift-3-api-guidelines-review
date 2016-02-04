
@available(tvOS 6.0, *)
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSCoding {
  init(options: NSPointerFunctionsOptions)
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointerAtIndex(index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(pointer: UnsafeMutablePointer<Void>)
  func removePointerAtIndex(index: Int)
  func insertPointer(item: UnsafeMutablePointer<Void>, atIndex index: Int)
  func replacePointerAtIndex(index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  convenience init()
  @available(tvOS 6.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(tvOS 6.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 6.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPointerArray {
  @available(tvOS 6.0, *)
  class func strongObjectsPointerArray() -> NSPointerArray
  @available(tvOS 6.0, *)
  class func weakObjectsPointerArray() -> NSPointerArray
  var allObjects: [AnyObject] { get }
}
