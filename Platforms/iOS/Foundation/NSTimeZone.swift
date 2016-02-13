
class TimeZone : Object, Copying, SecureCoding {
  var name: String { get }
  @NSCopying var data: Data { get }
  func secondsFromGMT(for aDate: Date) -> Int
  func abbreviation(for aDate: Date) -> String?
  func isDaylightSavingTime(for aDate: Date) -> Bool
  @available(iOS 2.0, *)
  func daylightSavingTimeOffset(for aDate: Date) -> TimeInterval
  @available(iOS 2.0, *)
  func nextDaylightSavingTimeTransition(after aDate: Date) -> Date?
  init()
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(aCoder: Coder)
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
  @available(iOS 4.0, *)
  class func setAbbreviationDictionary(dict: [String : String])
  @available(iOS 4.0, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  @available(iOS 2.0, *)
  var daylightSavingTimeOffset: TimeInterval { get }
  @available(iOS 2.0, *)
  @NSCopying var nextDaylightSavingTimeTransition: Date? { get }
  var description: String { get }
  func isEqual(to aTimeZone: TimeZone) -> Bool
  @available(iOS 2.0, *)
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
@available(iOS 2.0, *)
let systemTimeZoneDidChangeNotification: String
