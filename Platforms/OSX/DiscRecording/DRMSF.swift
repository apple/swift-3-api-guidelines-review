
class DRMSF : NSNumber {
  init!(frames frames: UInt32)
  init!(string string: String!)
  func minutes() -> UInt32
  func seconds() -> UInt32
  func frames() -> UInt32
  func sectors() -> UInt32
  func adding(_ msf: DRMSF!) -> DRMSF!
  func subtracting(_ msf: DRMSF!) -> DRMSF!
  func description() -> String!
  func description(withFormat format: String!) -> String!
  func isEqual(to otherDRMSF: DRMSF!) -> Bool
}
