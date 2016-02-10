
class DRErase : Object {
  /*not inherited*/ init!(forDevice device: DRDevice!)
  init!(device: DRDevice!)
  func start()
  func status() -> [Object : AnyObject]!
  func properties() -> [Object : AnyObject]!
  func setProperties(properties: [Object : AnyObject]!)
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
