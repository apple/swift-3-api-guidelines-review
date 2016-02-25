
class NSTimeZone : NSObject, NSCopying, NSSecureCoding {
  var name: String { get }
  @NSCopying var data: NSData { get }
  func secondsFromGMT(for aDate: NSDate) -> Int
  func abbreviation(for aDate: NSDate) -> String?
  func isDaylightSavingTime(for aDate: NSDate) -> Bool
  @available(OSX 10.5, *)
  func daylightSavingTimeOffset(for aDate: NSDate) -> NSTimeInterval
  @available(OSX 10.5, *)
  func nextDaylightSavingTimeTransition(after aDate: NSDate) -> NSDate?
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTimeZone {
  class func system() -> NSTimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> NSTimeZone
  class func setDefaultTimeZone(_ aTimeZone: NSTimeZone)
  class func local() -> NSTimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(OSX 10.6, *)
  class func setAbbreviationDictionary(_ dict: [String : String])
  @available(OSX 10.6, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  @available(OSX 10.5, *)
  var daylightSavingTimeOffset: NSTimeInterval { get }
  @available(OSX 10.5, *)
  @NSCopying var nextDaylightSavingTimeTransition: NSDate? { get }
  func isEqual(to aTimeZone: NSTimeZone) -> Bool
  @available(OSX 10.5, *)
  func localizedName(_ style: NSTimeZoneNameStyle, locale locale: NSLocale?) -> String?
}
enum NSTimeZoneNameStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case standard
  case shortStandard
  case daylightSaving
  case shortDaylightSaving
  case generic
  case shortGeneric
}
extension NSTimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: NSData?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation abbreviation: String)
}
@available(OSX 10.5, *)
let NSSystemTimeZoneDidChangeNotification: String
