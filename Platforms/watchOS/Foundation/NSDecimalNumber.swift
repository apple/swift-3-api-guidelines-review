
let NSDecimalNumberExactnessException: String
let NSDecimalNumberOverflowException: String
let NSDecimalNumberUnderflowException: String
let NSDecimalNumberDivideByZeroException: String
protocol NSDecimalNumberBehaviors {
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(_ operation: Selector, error error: NSCalculationError, leftOperand leftOperand: NSDecimalNumber, rightOperand rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
}
class NSDecimalNumber : NSNumber {
  convenience init(mantissa mantissa: UInt64, exponent exponent: Int16, isNegative flag: Bool)
  init(decimal dcm: NSDecimal)
  convenience init(string numberValue: String?)
  convenience init(string numberValue: String?, locale locale: AnyObject?)
  func description(withLocale locale: AnyObject?) -> String
  var decimalValue: NSDecimal { get }
  class func zero() -> NSDecimalNumber
  class func one() -> NSDecimalNumber
  class func minimum() -> NSDecimalNumber
  class func maximum() -> NSDecimalNumber
  class func notA() -> NSDecimalNumber
  func adding(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func adding(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func subtracting(_ decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func subtracting(_ decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func multiplying(by decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func multiplying(by decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func dividing(by decimalNumber: NSDecimalNumber) -> NSDecimalNumber
  func dividing(by decimalNumber: NSDecimalNumber, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func raising(toPower power: Int) -> NSDecimalNumber
  func raising(toPower power: Int, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func multiplying(byPowerOf10 power: Int16) -> NSDecimalNumber
  func multiplying(byPowerOf10 power: Int16, withBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func rounding(accordingToBehavior behavior: NSDecimalNumberBehaviors?) -> NSDecimalNumber
  func compare(_ decimalNumber: NSNumber) -> NSComparisonResult
  class func setDefaultBehavior(_ behavior: NSDecimalNumberBehaviors)
  class func defaultBehavior() -> NSDecimalNumberBehaviors
  var objCType: UnsafePointer<Int8> { get }
  var doubleValue: Double { get }
  init?(coder aDecoder: NSCoder)
  convenience init(char value: Int8)
  convenience init(unsignedChar value: UInt8)
  convenience init(short value: Int16)
  convenience init(unsignedShort value: UInt16)
  convenience init(int value: Int32)
  convenience init(unsignedInt value: UInt32)
  convenience init(long value: Int)
  convenience init(unsignedLong value: UInt)
  convenience init(longLong value: Int64)
  convenience init(unsignedLongLong value: UInt64)
  convenience init(float value: Float)
  convenience init(double value: Double)
  convenience init(bool value: Bool)
  @available(watchOS 2.0, *)
  convenience init(integer value: Int)
  @available(watchOS 2.0, *)
  convenience init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class func defaultDecimalNumberHandler() -> NSDecimalNumberHandler
  init(roundingMode roundingMode: NSRoundingMode, scale scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
  convenience init()
  func roundingMode() -> NSRoundingMode
  func scale() -> Int16
  func exceptionDuringOperation(_ operation: Selector, error error: NSCalculationError, leftOperand leftOperand: NSDecimalNumber, rightOperand rightOperand: NSDecimalNumber?) -> NSDecimalNumber?
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSNumber {
  var decimalValue: NSDecimal { get }
}
extension NSScanner {
  func scanDecimal(_ dcm: UnsafeMutablePointer<NSDecimal>) -> Bool
}
