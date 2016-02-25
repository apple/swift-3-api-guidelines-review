
class NSScanner : NSObject, NSCopying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: NSCharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string string: String)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension NSScanner {
  func scanInt(_ result: UnsafeMutablePointer<Int32>) -> Bool
  @available(watchOS 2.0, *)
  func scanInteger(_ result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(_ result: UnsafeMutablePointer<Int64>) -> Bool
  @available(watchOS 2.0, *)
  func scanUnsignedLongLong(_ result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(_ result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(_ result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(_ result: UnsafeMutablePointer<UInt32>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexLongLong(_ result: UnsafeMutablePointer<UInt64>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexFloat(_ result: UnsafeMutablePointer<Float>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexDouble(_ result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(_ string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFromSet(_ set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToString(_ string: String, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFromSet(_ set: NSCharacterSet, intoString result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var atEnd: Bool { get }
  class func localizedScannerWithString(_ string: String) -> AnyObject
}
