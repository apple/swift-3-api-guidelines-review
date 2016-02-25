
struct NSPropertyListMutabilityOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Immutable: NSPropertyListMutabilityOptions { get }
  static var MutableContainers: NSPropertyListMutabilityOptions { get }
  static var MutableContainersAndLeaves: NSPropertyListMutabilityOptions { get }
}
enum NSPropertyListFormat : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case OpenStepFormat
  case XMLFormat_v1_0
  case BinaryFormat_v1_0
}
typealias NSPropertyListReadOptions = NSPropertyListMutabilityOptions
typealias NSPropertyListWriteOptions = Int
class NSPropertyListSerialization : NSObject {
  class func propertyList(_ plist: AnyObject, isValidForFormat format: NSPropertyListFormat) -> Bool
  @available(watchOS 2.0, *)
  class func dataWithPropertyList(_ plist: AnyObject, format format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions) throws -> NSData
  @available(watchOS 2.0, *)
  class func writePropertyList(_ plist: AnyObject, toStream stream: NSOutputStream, format format: NSPropertyListFormat, options opt: NSPropertyListWriteOptions, error error: NSErrorPointer) -> Int
  @available(watchOS 2.0, *)
  class func propertyListWithData(_ data: NSData, options opt: NSPropertyListReadOptions, format format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(watchOS 2.0, *)
  class func propertyListWithStream(_ stream: NSInputStream, options opt: NSPropertyListReadOptions, format format: UnsafeMutablePointer<NSPropertyListFormat>) throws -> AnyObject
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use dataWithPropertyList:format:options:error: instead.")
  class func dataFromPropertyList(_ plist: AnyObject, format format: NSPropertyListFormat, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> NSData?
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use propertyListWithData:options:format:error: instead.")
  class func propertyListFromData(_ data: NSData, mutabilityOption opt: NSPropertyListMutabilityOptions, format format: UnsafeMutablePointer<NSPropertyListFormat>, errorDescription errorString: UnsafeMutablePointer<NSString?>) -> AnyObject?
}
