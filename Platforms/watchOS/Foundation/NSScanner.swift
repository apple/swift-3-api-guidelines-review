
class NSScanner : NSObject, NSCopying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: NSCharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string string: String)
  func copy(with zone: NSZone = nil) -> AnyObject
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
  func scanString(_ string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharacters(from set: NSCharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUp(to string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharacters(from set: NSCharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScanner(with string: String) -> AnyObject
}
