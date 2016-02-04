
struct PropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Immutable: PropertyListMutabilityOptions { get }
  static var MutableContainers: PropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: PropertyListMutabilityOptions { get }
}
enum PropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias PropertyListReadOptions = PropertyListMutabilityOptions
typealias PropertyListWriteOptions = Int
class PropertyListSerialization : Object {
  class func propertyList(plist: AnyObject, isValidFor format: PropertyListFormat) -> Bool
  @available(tvOS 4.0, *)
  class func dataWithPropertyList(plist: AnyObject, format: PropertyListFormat, options opt: PropertyListWriteOptions) throws -> Data
  @available(tvOS 4.0, *)
  class func writePropertyList(plist: AnyObject, to stream: OutputStream, format: PropertyListFormat, options opt: PropertyListWriteOptions, error: ErrorPointer) -> Int
  @available(tvOS 4.0, *)
  class func propertyListWith(data: Data, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  @available(tvOS 4.0, *)
  class func propertyListWith(stream: InputStream, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(plist: AnyObject, format: PropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> Data?
  @available(tvOS, introduced=2.0, deprecated=8.0, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyListFrom(data: Data, mutabilityOption opt: PropertyListMutabilityOptions = [], format: UnsafeMutablePointer<PropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
