
@available(iOS 5.0, *)
struct NSJSONReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var mutableContainers: NSJSONReadingOptions { get }
  static var mutableLeaves: NSJSONReadingOptions { get }
  static var allowFragments: NSJSONReadingOptions { get }
}
@available(iOS 5.0, *)
struct NSJSONWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var prettyPrinted: NSJSONWritingOptions { get }
}
@available(iOS 5.0, *)
class NSJSONSerialization : NSObject {
  class func isValidJSONObject(_ obj: AnyObject) -> Bool
  class func data(withJSONObject obj: AnyObject, options opt: NSJSONWritingOptions = []) throws -> NSData
  class func jsonObject(with data: NSData, options opt: NSJSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(_ obj: AnyObject, to stream: NSOutputStream, options opt: NSJSONWritingOptions = [], error error: NSErrorPointer) -> Int
  class func jsonObject(with stream: NSInputStream, options opt: NSJSONReadingOptions = []) throws -> AnyObject
}
