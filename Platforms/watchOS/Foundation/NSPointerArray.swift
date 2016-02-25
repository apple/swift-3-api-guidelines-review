
@available(watchOS 2.0, *)
class NSPointerArray : NSObject, NSFastEnumeration, NSCopying, NSCoding {
  init(options options: NSPointerFunctionsOptions)
  init(pointerFunctions functions: NSPointerFunctions)
  @NSCopying var pointerFunctions: NSPointerFunctions { get }
  func pointerAtIndex(_ index: Int) -> UnsafeMutablePointer<Void>
  func addPointer(_ pointer: UnsafeMutablePointer<Void>)
  func removePointerAtIndex(_ index: Int)
  func insertPointer(_ item: UnsafeMutablePointer<Void>, atIndex index: Int)
  func replacePointerAtIndex(_ index: Int, withPointer item: UnsafeMutablePointer<Void>)
  func compact()
  var count: Int
  @available(watchOS 2.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSPointerArray {
  @available(watchOS 2.0, *)
  class func strongObjectsPointerArray() -> NSPointerArray
  @available(watchOS 2.0, *)
  class func weakObjectsPointerArray() -> NSPointerArray
  var allObjects: [AnyObject] { get }
}
