
@available(watchOS 20000, *)
class HMCharacteristicMetadata : Object {
  var minimumValue: Number? { get }
  var maximumValue: Number? { get }
  var stepValue: Number? { get }
  var maxLength: Number? { get }
  var format: String? { get }
  var units: String? { get }
  var manufacturerDescription: String? { get }
  init()
}
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatBool: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatInt: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatFloat: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatString: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatArray: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatDictionary: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt8: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt16: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt32: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatUInt64: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatData: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataFormatTLV8: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsCelsius: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsFahrenheit: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsPercentage: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsArcDegree: String
@available(watchOS 20000, *)
let HMCharacteristicMetadataUnitsSeconds: String
