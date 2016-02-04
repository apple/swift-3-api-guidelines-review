
let CBUUIDCharacteristicExtendedPropertiesString: String
let CBUUIDCharacteristicUserDescriptionString: String
let CBUUIDClientCharacteristicConfigurationString: String
let CBUUIDServerCharacteristicConfigurationString: String
let CBUUIDCharacteristicFormatString: String
let CBUUIDCharacteristicAggregateFormatString: String
@available(iOS 5.0, *)
class CBUUID : Object, Copying {
  var data: Data { get }
  @available(iOS 7.1, *)
  var uuidString: String { get }
  /*not inherited*/ init(string theString: String)
  /*not inherited*/ init(data theData: Data)
  @available(iOS, introduced=5.0, deprecated=9.0)
  /*not inherited*/ init(cfuuid theUUID: CFUUID)
  @available(iOS 7.0, *)
  /*not inherited*/ init(nsuuid theUUID: UUID)
  init()
  @available(iOS 5.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
