
struct _NSRange {
  var location: Int
  var length: Int
  init()
  init(location: Int, length: Int)
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
  static func _forceBridgeFromObjectiveC(x: NSValue, inout result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(x: NSValue, inout result: NSRange?) -> Bool
  typealias _ObjectiveCType = NSValue
}
typealias NSRange = _NSRange
typealias NSRangePointer = UnsafeMutablePointer<NSRange>
func NSMakeRange(loc: Int, _ len: Int) -> NSRange
func NSMaxRange(range: NSRange) -> Int
func NSLocationInRange(loc: Int, _ range: NSRange) -> Bool
func NSEqualRanges(range1: NSRange, _ range2: NSRange) -> Bool
func NSUnionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func NSIntersectionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func NSStringFromRange(range: NSRange) -> String
func NSRangeFromString(aString: String) -> NSRange
extension NSValue {
  /*not inherited*/ init(range: NSRange)
  var rangeValue: NSRange { get }
}
