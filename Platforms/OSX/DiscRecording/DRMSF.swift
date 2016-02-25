
class DRMSF : NSNumber {
  init!(frames frames: UInt32)
  init!(string string: String!)
  func minutes() -> UInt32
  func seconds() -> UInt32
  func frames() -> UInt32
  func sectors() -> UInt32
  func msfByAdding(_ msf: DRMSF!) -> DRMSF!
  func msfBySubtracting(_ msf: DRMSF!) -> DRMSF!
  func description() -> String!
  func descriptionWithFormat(_ format: String!) -> String!
  func isEqualToMSF(_ otherDRMSF: DRMSF!) -> Bool
}
