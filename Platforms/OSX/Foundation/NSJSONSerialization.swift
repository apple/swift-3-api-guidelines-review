
@available(OSX 10.7, *)
struct JSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var MutableContainers: JSONReadingOptions { get }
  static var MutableLeaves: JSONReadingOptions { get }
  static var AllowFragments: JSONReadingOptions { get }
}
@available(OSX 10.7, *)
struct JSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PrettyPrinted: JSONWritingOptions { get }
}
@available(OSX 10.7, *)
class JSONSerialization : Object {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func dataWith(jsonObject obj: AnyObject, options opt: JSONWritingOptions = []) throws -> Data
  class func jsonObjectWith(data: Data, options opt: JSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, to stream: OutputStream, options opt: JSONWritingOptions = [], error: ErrorPointer) -> Int
  class func jsonObjectWith(stream: InputStream, options opt: JSONReadingOptions = []) throws -> AnyObject
  init()
}
