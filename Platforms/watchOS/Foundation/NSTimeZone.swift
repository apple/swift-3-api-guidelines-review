
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  @NSCopying var data: NSData { get }
  func secondsFromGMTForDate(aDate: NSDate) -> Int
  func abbreviationForDate(aDate: NSDate) -> String?
  func isDaylightSavingTimeForDate(aDate: NSDate) -> Bool
  @available(watchOS 2.0, *)
  func daylightSavingTimeOffsetForDate(aDate: NSDate) -> NSTimeInterval
  @available(watchOS 2.0, *)
  func nextDaylightSavingTimeTransitionAfterDate(aDate: NSDate) -> NSDate?
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTimeZone {
  class func systemTimeZone() -> NSTimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> NSTimeZone
  class func setDefaultTimeZone(aTimeZone: NSTimeZone)
  class func localTimeZone() -> NSTimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(watchOS 2.0, *)
  class func setAbbreviationDictionary(dict: [String : String])
  @available(watchOS 2.0, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var daylightSavingTime: Bool { get }
  @available(watchOS 2.0, *)
  var daylightSavingTimeOffset: NSTimeInterval { get }
  @available(watchOS 2.0, *)
  @NSCopying var nextDaylightSavingTimeTransition: NSDate? { get }
  var description: String { get }
  func isEqualToTimeZone(aTimeZone: NSTimeZone) -> Bool
  @available(watchOS 2.0, *)
  func localizedName(style: NSTimeZoneNameStyle, locale: NSLocale?) -> String?
}
enum NSTimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Standard
  case ShortStandard
  case DaylightSaving
  case ShortDaylightSaving
  case Generic
  case ShortGeneric
}
extension NSTimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: NSData?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
@available(watchOS 2.0, *)
let NSSystemTimeZoneDidChangeNotification: String
