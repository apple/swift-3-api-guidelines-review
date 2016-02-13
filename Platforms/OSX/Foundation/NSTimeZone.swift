
class TimeZone : Object, Copying, SecureCoding {
  var name: String { get }
  @NSCopying var data: Data { get }
  func secondsFromGMT(for aDate: Date) -> Int
  func abbreviation(for aDate: Date) -> String?
  func isDaylightSavingTime(for aDate: Date) -> Bool
  @available(OSX 10.5, *)
  func daylightSavingTimeOffset(for aDate: Date) -> TimeInterval
  @available(OSX 10.5, *)
  func nextDaylightSavingTimeTransition(after aDate: Date) -> Date?
  init()
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TimeZone {
  class func system() -> TimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> TimeZone
  class func setDefaultTimeZone(aTimeZone: TimeZone)
  class func local() -> TimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(OSX 10.6, *)
  class func setAbbreviationDictionary(dict: [String : String])
  @available(OSX 10.6, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  @available(OSX 10.5, *)
  var daylightSavingTimeOffset: TimeInterval { get }
  @available(OSX 10.5, *)
  @NSCopying var nextDaylightSavingTimeTransition: Date? { get }
  var description: String { get }
  func isEqual(to aTimeZone: TimeZone) -> Bool
  @available(OSX 10.5, *)
  func localizedName(style: TimeZoneNameStyle, locale: Locale?) -> String?
}
enum TimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case standard
  case shortStandard
  case daylightSaving
  case shortDaylightSaving
  case generic
  case shortGeneric
}
extension TimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: Data?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
@available(OSX 10.5, *)
let systemTimeZoneDidChangeNotification: String
