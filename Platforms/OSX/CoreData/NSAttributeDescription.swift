
enum NSAttributeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UndefinedAttributeType
  case Integer16AttributeType
  case Integer32AttributeType
  case Integer64AttributeType
  case DecimalAttributeType
  case DoubleAttributeType
  case FloatAttributeType
  case StringAttributeType
  case BooleanAttributeType
  case DateAttributeType
  case BinaryDataAttributeType
  @available(OSX 10.5, *)
  case TransformableAttributeType
  @available(OSX 10.6, *)
  case ObjectIDAttributeType
}
@available(OSX 10.4, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: AnyObject?
  @available(OSX 10.5, *)
  @NSCopying var versionHash: NSData { get }
  @available(OSX 10.5, *)
  var valueTransformerName: String?
  @available(OSX 10.7, *)
  var allowsExternalBinaryDataStorage: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
struct __attributeDescriptionFlags {
  var _hasMaxValueInExtraIvars: UInt32
  var _hasMinValueInExtraIvars: UInt32
  var _storeBinaryDataExternally: UInt32
  var _reservedAttributeDescription: UInt32
  init()
  init(_hasMaxValueInExtraIvars: UInt32, _hasMinValueInExtraIvars: UInt32, _storeBinaryDataExternally: UInt32, _reservedAttributeDescription: UInt32)
}
