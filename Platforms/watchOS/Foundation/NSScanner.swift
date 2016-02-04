
class NSScanner : NSObject, NSCopying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: NSCharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension NSScanner {
  func scanInt(result: UnsafeMutablePointer<Int32>) -> Bool
  @available(watchOS 2.0, *)
  func scanInteger(result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(result: UnsafeMutablePointer<Int64>) -> Bool
  @available(watchOS 2.0, *)
  func scanUnsignedLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(result: UnsafeMutablePointer<UInt32>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexFloat(result: UnsafeMutablePointer<Float>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFromSet(set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToString(string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFromSet(set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var atEnd: Bool { get }
  class func localizedScannerWithString(string: String) -> AnyObject
}
