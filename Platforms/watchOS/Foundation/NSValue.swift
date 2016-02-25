
class NSValue : NSObject, NSCopying, NSSecureCoding {
  func getValue(_ value: UnsafeMutablePointer<Void>)
  var objCType: UnsafePointer<Int8> { get }
  init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
}
extension NSValue {
  /*not inherited*/ init(_ value: UnsafePointer<Void>, withObjCType type: UnsafePointer<Int8>)
}
extension NSValue {
  /*not inherited*/ init(nonretainedObject anObject: AnyObject?)
  var nonretainedObjectValue: AnyObject? { get }
  /*not inherited*/ init(pointer pointer: UnsafePointer<Void>)
  var pointerValue: UnsafeMutablePointer<Void> { get }
  func isEqual(to value: NSValue) -> Bool
}
class NSNumber : NSValue {
  init(char value: Int8)
  init(unsignedChar value: UInt8)
  init(short value: Int16)
  init(unsignedShort value: UInt16)
  init(int value: Int32)
  init(unsignedInt value: UInt32)
  init(long value: Int)
  init(unsignedLong value: UInt)
  init(longLong value: Int64)
  init(unsignedLongLong value: UInt64)
  init(float value: Float)
  init(double value: Double)
  init(bool value: Bool)
  @available(watchOS 2.0, *)
  init(integer value: Int)
  @available(watchOS 2.0, *)
  init(unsignedInteger value: UInt)
  var charValue: Int8 { get }
  var unsignedCharValue: UInt8 { get }
  var shortValue: Int16 { get }
  var unsignedShortValue: UInt16 { get }
  var intValue: Int32 { get }
  var unsignedIntValue: UInt32 { get }
  var longValue: Int { get }
  var unsignedLongValue: UInt { get }
  var longLongValue: Int64 { get }
  var unsignedLongLongValue: UInt64 { get }
  var floatValue: Float { get }
  var doubleValue: Double { get }
  var boolValue: Bool { get }
  @available(watchOS 2.0, *)
  var integerValue: Int { get }
  @available(watchOS 2.0, *)
  var unsignedIntegerValue: UInt { get }
  var stringValue: String { get }
  func compare(_ otherNumber: NSNumber) -> NSComparisonResult
  func isEqual(to number: NSNumber) -> Bool
  func description(withLocale locale: AnyObject?) -> String
}

extension NSNumber : FloatLiteralConvertible, IntegerLiteralConvertible, BooleanLiteralConvertible {
}
extension NSNumber {
}
