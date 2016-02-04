
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
  func _bridgeToObjectiveC() -> Value
  static func _forceBridgeFromObjectiveC(x: Value, inout result: NSRange?)
  static func _conditionallyBridgeFromObjectiveC(x: Value, inout result: NSRange?) -> Bool
  typealias _ObjectiveCType = Value
}
typealias NSRange = _NSRange
typealias RangePointer = UnsafeMutablePointer<NSRange>
func makeRange(loc: Int, _ len: Int) -> NSRange
func maxRange(range: NSRange) -> Int
func locationInRange(loc: Int, _ range: NSRange) -> Bool
func equalRanges(range1: NSRange, _ range2: NSRange) -> Bool
func unionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func intersectionRange(range1: NSRange, _ range2: NSRange) -> NSRange
func stringFromRange(range: NSRange) -> String
func rangeFromString(aString: String) -> NSRange
extension Value {
  /*not inherited*/ init(range: NSRange)
  var rangeValue: NSRange { get }
}
