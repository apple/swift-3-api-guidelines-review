
@available(tvOS 5.0, *)
struct JSONReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var mutableContainers: JSONReadingOptions { get }
  static var mutableLeaves: JSONReadingOptions { get }
  static var allowFragments: JSONReadingOptions { get }
}
@available(tvOS 5.0, *)
struct JSONWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var prettyPrinted: JSONWritingOptions { get }
}
@available(tvOS 5.0, *)
class JSONSerialization : Object {
  class func isValidJSONObject(obj: AnyObject) -> Bool
  class func data(withJSONObject obj: AnyObject, options opt: JSONWritingOptions = []) throws -> Data
  class func jsonObject(withData data: Data, options opt: JSONReadingOptions = []) throws -> AnyObject
  class func writeJSONObject(obj: AnyObject, to stream: OutputStream, options opt: JSONWritingOptions = [], error: ErrorPointer) -> Int
  class func jsonObject(withStream stream: InputStream, options opt: JSONReadingOptions = []) throws -> AnyObject
  init()
}
