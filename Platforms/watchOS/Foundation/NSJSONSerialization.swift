
@available(watchOS 2.0, *)
struct NSJSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: NSJSONReadingOptions { get }
  static var MutableLeaves: NSJSONReadingOptions { get }
  static var AllowFragments: NSJSONReadingOptions { get }
}
@available(watchOS 2.0, *)
struct NSJSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: NSJSONWritingOptions { get }
}
@available(watchOS 2.0, *)
class NSJSONSerialization : NSObject {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWithJSONObject(obj: AnyObject, options opt: NSJSONWritingOptions) throws -> NSData
  class func JSONObjectWithData(data: NSData, options opt: NSJSONReadingOptions) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, toStream stream: NSOutputStream, options opt: NSJSONWritingOptions, error: NSErrorPointer) -> Int
  class func JSONObjectWithStream(stream: NSInputStream, options opt: NSJSONReadingOptions) throws -> AnyObject
  init()
}
