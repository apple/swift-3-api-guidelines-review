
struct NSFastEnumerationState {
  var state: UInt
  var itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>
  var mutationsPtr: UnsafeMutablePointer<UInt>
  var extra: (UInt, UInt, UInt, UInt, UInt)
  init()
  init(state state: UInt, itemsPtr itemsPtr: AutoreleasingUnsafeMutablePointer<AnyObject?>, mutationsPtr mutationsPtr: UnsafeMutablePointer<UInt>, extra extra: (UInt, UInt, UInt, UInt, UInt))
}
protocol NSFastEnumeration {
  func countByEnumerating(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class NSEnumerator : NSObject, NSFastEnumeration {
  func nextObject() -> AnyObject?
  init()
  func countByEnumerating(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSEnumerator : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}
extension NSEnumerator {
  var allObjects: [AnyObject] { get }
}
