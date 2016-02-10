
let invalidArchiveOperationException: String
let invalidUnarchiveOperationException: String
@available(watchOS 2.0, *)
let keyedArchiveRootObjectKey: String
class KeyedArchiver : Coder {
  class func archivedDataWith(rootObject rootObject: AnyObject) -> Data
  class func archiveRootObject(rootObject: AnyObject, toFile path: String) -> Bool
  init(forWritingWith data: MutableData)
  unowned(unsafe) var delegate: @sil_unmanaged KeyedArchiverDelegate?
  var outputFormat: PropertyListFormat
  func finishEncoding()
  class func setClassName(codedName: String?, forClass cls: AnyClass)
  func setClassName(codedName: String?, forClass cls: AnyClass)
  class func classNameFor(cls: AnyClass) -> String?
  func classNameFor(cls: AnyClass) -> String?
  func encode(objv: AnyObject?, forKey key: String)
  func encodeConditionalObject(objv: AnyObject?, forKey key: String)
  func encode(boolv: Bool, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int32, forKey key: String)
  func encode(intv: Int64, forKey key: String)
  func encode(realv: Float, forKey key: String)
  func encode(realv: Double, forKey key: String)
  func encodeBytes(bytesp: UnsafePointer<UInt8>, length lenv: Int, forKey key: String)
  @available(watchOS 2.0, *)
  var requiresSecureCoding: Bool
  init()
}
class KeyedUnarchiver : Coder {
  class func unarchiveObjectWith(data: Data) -> AnyObject?
  class func unarchiveObjectWith(file path: String) -> AnyObject?
  init(forReadingWith data: Data)
  unowned(unsafe) var delegate: @sil_unmanaged KeyedUnarchiverDelegate?
  func finishDecoding()
  class func setClass(cls: AnyClass?, forClassName codedName: String)
  func setClass(cls: AnyClass?, forClassName codedName: String)
  class func classFor(className codedName: String) -> AnyClass?
  func classFor(className codedName: String) -> AnyClass?
  func containsValueFor(key key: String) -> Bool
  func decodeObjectFor(key key: String) -> AnyObject?
  func decodeBoolFor(key key: String) -> Bool
  func decodeIntFor(key key: String) -> Int32
  func decodeInt32For(key key: String) -> Int32
  func decodeInt64For(key key: String) -> Int64
  func decodeFloatFor(key key: String) -> Float
  func decodeDoubleFor(key key: String) -> Double
  func decodeBytesFor(key key: String, returnedLength lengthp: UnsafeMutablePointer<Int>) -> UnsafePointer<UInt8>
  @available(watchOS 2.0, *)
  var requiresSecureCoding: Bool
  init()
}

extension KeyedUnarchiver {
  @warn_unused_result
  class func unarchiveTopLevelObjectWithData(data: Data) throws -> AnyObject?
}
protocol KeyedArchiverDelegate : ObjectProtocol {
  optional func archiver(archiver: KeyedArchiver, willEncode object: AnyObject) -> AnyObject?
  optional func archiver(archiver: KeyedArchiver, didEncode object: AnyObject?)
  optional func archiver(archiver: KeyedArchiver, willReplace object: AnyObject?, withObject newObject: AnyObject?)
  optional func archiverWillFinish(archiver: KeyedArchiver)
  optional func archiverDidFinish(archiver: KeyedArchiver)
}
protocol KeyedUnarchiverDelegate : ObjectProtocol {
  optional func unarchiver(unarchiver: KeyedUnarchiver, cannotDecodeObjectOfClassName name: String, originalClasses classNames: [String]) -> AnyClass?
  optional func unarchiver(unarchiver: KeyedUnarchiver, didDecode object: AnyObject?) -> AnyObject?
  optional func unarchiver(unarchiver: KeyedUnarchiver, willReplace object: AnyObject, withObject newObject: AnyObject)
  optional func unarchiverWillFinish(unarchiver: KeyedUnarchiver)
  optional func unarchiverDidFinish(unarchiver: KeyedUnarchiver)
}
extension Object {
  var classForKeyedArchiver: AnyClass? { get }
  class func replacementObjectFor(archiver: KeyedArchiver) -> AnyObject?
  func replacementObjectFor(archiver: KeyedArchiver) -> AnyObject?
  class func classFallbacksForKeyedArchiver() -> [String]
  class func classForKeyedArchiver() -> AnyClass?
}
extension Object {
  class func classForKeyedUnarchiver() -> AnyClass
}
