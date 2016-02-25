
class DRErase : NSObject {
  /*not inherited*/ init!(for device: DRDevice!)
  init!(device device: DRDevice!)
  func start()
  func status() -> [NSObject : AnyObject]!
  func properties() -> [NSObject : AnyObject]!
  func setProperties(_ properties: [NSObject : AnyObject]!)
  func device() -> DRDevice!
}
extension DRErase {
  func eraseType() -> String!
  func setEraseType(_ type: String!)
}
@available(OSX 10.2, *)
let DREraseTypeKey: String
@available(OSX 10.2, *)
let DREraseTypeQuick: String
@available(OSX 10.2, *)
let DREraseTypeComplete: String
@available(OSX 10.2, *)
let DREraseStatusChangedNotification: String
