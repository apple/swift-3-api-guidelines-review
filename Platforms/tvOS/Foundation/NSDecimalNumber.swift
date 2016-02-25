
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
  class func setDefaultBehavior(_ behavior: NSDecimalNumberBehaviors)
  class func defaultBehavior() -> NSDecimalNumberBehaviors
}
class NSDecimalNumberHandler : NSObject, NSDecimalNumberBehaviors, NSCoding {
  class func defaultDecimalNumberHandler() -> NSDecimalNumberHandler
  init(roundingMode roundingMode: NSRoundingMode, scale scale: Int16, raiseOnExactness exact: Bool, raiseOnOverflow overflow: Bool, raiseOnUnderflow underflow: Bool, raiseOnDivideByZero divideByZero: Bool)
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
