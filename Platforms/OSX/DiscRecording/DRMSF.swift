
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
  init?(coder aDecoder: NSCoder)
  init(char value: Int8)
  init(unsignedChar value: UInt8)
  init(short value: Int16)
  init(unsignedShort value: UInt16)
  init(int value: Int32)
  init(unsignedInt value: UInt32)
  init(long value: Int)
  init(unsignedLong value: UInt)
  init(longLong value: Int64)
  init(unsignedLongLong value: UInt64)
  init(float value: Float)
  init(double value: Double)
  init(bool value: Bool)
  @available(OSX 10.5, *)
  init(integer value: Int)
  @available(OSX 10.5, *)
  init(unsignedInteger value: UInt)
  convenience init(bytes value: UnsafePointer<Void>, objCType type: UnsafePointer<Int8>)
  convenience init()
}
