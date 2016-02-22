
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location location: Int, length length: Int)
}

extension NSRange {
  init(_ x: Range<Int>)
  @warn_unused_result
  func toRange() -> Range<Int>?
}

extension NSRange : CustomReflectable {
  func customMirror() -> Mirror
}

extension NSRange : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}

extension NSRange : _ObjectiveCBridgeable {
  static func _isBridgedToObjectiveC() -> Bool
  static func _getObjectiveCType() -> Any.Type
  func _bridgeToObjectiveC() -> NSValue
  static func _forceBridgeFromObjectiveC(_ x: NSValue, inout result result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(_ x: NSValue, inout result result: NSRange?) -> Bool
  typealias _ObjectiveCType = NSValue
}
typealias NSRange = _NSRange
typealias NSRangePointer = UnsafeMutablePointer<NSRange>
func NSMakeRange(_ loc: Int, _ len: Int) -> NSRange
func NSMaxRange(_ range: NSRange) -> Int
func NSLocationInRange(_ loc: Int, _ range: NSRange) -> Bool
func NSEqualRanges(_ range1: NSRange, _ range2: NSRange) -> Bool
func NSUnionRange(_ range1: NSRange, _ range2: NSRange) -> NSRange
func NSIntersectionRange(_ range1: NSRange, _ range2: NSRange) -> NSRange
func NSStringFromRange(_ range: NSRange) -> String
func NSRangeFromString(_ aString: String) -> NSRange
extension NSValue {
  /*not inherited*/ init(range range: NSRange)
  var rangeValue: NSRange { get }
}
