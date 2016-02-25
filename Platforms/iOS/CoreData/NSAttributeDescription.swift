
enum NSAttributeType : UInt {
  init?(rawValue rawValue: UInt)
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
  @available(iOS 3.0, *)
  case TransformableAttributeType
  @available(iOS 3.0, *)
  case ObjectIDAttributeType
}
@available(iOS 3.0, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: AnyObject?
  @available(iOS 3.0, *)
  var valueTransformerName: String?
  @available(iOS 5.0, *)
  var allowsExternalBinaryDataStorage: Bool
}
struct __attributeDescriptionFlags {
  var _hasMaxValueInExtraIvars: UInt32
  var _hasMinValueInExtraIvars: UInt32
  var _storeBinaryDataExternally: UInt32
  var _reservedAttributeDescription: UInt32
  init()
  init(_hasMaxValueInExtraIvars _hasMaxValueInExtraIvars: UInt32, _hasMinValueInExtraIvars _hasMinValueInExtraIvars: UInt32, _storeBinaryDataExternally _storeBinaryDataExternally: UInt32, _reservedAttributeDescription _reservedAttributeDescription: UInt32)
}
