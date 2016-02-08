
@available(iOS 5.0, *)
struct JSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var mutableContainers: JSONReadingOptions { get }
  static var mutableLeaves: JSONReadingOptions { get }
  static var allowFragments: JSONReadingOptions { get }
}
@available(iOS 5.0, *)
struct JSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var prettyPrinted: JSONWritingOptions { get }
}
@available(iOS 5.0, *)
class JSONSerialization : Object {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWith(jsonObject obj: AnyObject, options opt: JSONWritingOptions = []) throws -> Data
  class func jsonObjectWith(data: Data, options opt: JSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, to stream: OutputStream, options opt: JSONWritingOptions = [], error: ErrorPointer) -> Int
  class func jsonObjectWith(stream: InputStream, options opt: JSONReadingOptions = []) throws -> AnyObject
  init()
}
