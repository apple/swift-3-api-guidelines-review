
class DRErase : NSObject {
  /*not inherited*/ init!(for device: DRDevice!)
  init!(device: DRDevice!)
  func start()
  func status() -> [NSObject : AnyObject]!
  func properties() -> [NSObject : AnyObject]!
  func setProperties(properties: [NSObject : AnyObject]!)
  func device() -> DRDevice!
  init()
}
extension DRErase {
  func eraseType() -> String!
  func setEraseType(type: String!)
}
@available(OSX 10.2, *)
let DREraseTypeKey: String
@available(OSX 10.2, *)
let DREraseTypeQuick: String
@available(OSX 10.2, *)
let DREraseTypeComplete: String
@available(OSX 10.2, *)
let DREraseStatusChangedNotification: String
