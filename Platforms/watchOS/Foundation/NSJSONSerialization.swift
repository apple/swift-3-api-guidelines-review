
@available(watchOS 2.0, *)
struct NSJSONReadingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: NSJSONReadingOptions { get }
  static var MutableLeaves: NSJSONReadingOptions { get }
  static var AllowFragments: NSJSONReadingOptions { get }
}
@available(watchOS 2.0, *)
struct NSJSONWritingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: NSJSONWritingOptions { get }
}
@available(watchOS 2.0, *)
class NSJSONSerialization : NSObject {
  class func isValidJSONObject(_ obj: AnyObject) -> Bool
  class func dataWithJSONObject(_ obj: AnyObject, options opt: NSJSONWritingOptions) throws -> NSData
  class func JSONObjectWithData(_ data: NSData, options opt: NSJSONReadingOptions) throws -> AnyObject
  class func writeJSONObject(_ obj: AnyObject, toStream stream: NSOutputStream, options opt: NSJSONWritingOptions, error error: NSErrorPointer) -> Int
  class func JSONObjectWithStream(_ stream: NSInputStream, options opt: NSJSONReadingOptions) throws -> AnyObject
}
