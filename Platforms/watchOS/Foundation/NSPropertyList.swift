
struct PropertyListMutabilityOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var immutable: PropertyListMutabilityOptions { get }
  static var mutableContainers: PropertyListMutabilityOptions { get }
  static var mutableContainersAndLeaves: PropertyListMutabilityOptions { get }
}
enum PropertyListFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case openStepFormat
  case xmlFormat_v1_0
  case binaryFormat_v1_0
}
typealias PropertyListReadOptions = PropertyListMutabilityOptions
typealias PropertyListWriteOptions = Int
class PropertyListSerialization : Object {
  class func propertyList(plist: AnyObject, isValidFor format: PropertyListFormat) -> Bool
  @available(watchOS 2.0, *)
  class func data(withPropertyList plist: AnyObject, format: PropertyListFormat, options opt: PropertyListWriteOptions) throws -> Data
  @available(watchOS 2.0, *)
  class func writePropertyList(plist: AnyObject, to stream: OutputStream, format: PropertyListFormat, options opt: PropertyListWriteOptions, error: ErrorPointer) -> Int
  @available(watchOS 2.0, *)
  class func propertyList(withData data: Data, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  @available(watchOS 2.0, *)
  class func propertyList(withStream stream: InputStream, options opt: PropertyListReadOptions = [], format: UnsafeMutablePointer<PropertyListFormat>) throws -> AnyObject
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use dataWithPropertyList:format:options:error: instead.")
  class func data(fromPropertyList plist: AnyObject, format: PropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> Data?
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyList(from data: Data, mutabilityOption opt: PropertyListMutabilityOptions = [], format: UnsafeMutablePointer<PropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
  init()
}
