
struct NSTextCheckingType : OptionSetType {
  init(rawValue rawValue: UInt64)
  let rawValue: UInt64
  static var orthography: NSTextCheckingType { get }
  static var spelling: NSTextCheckingType { get }
  static var grammar: NSTextCheckingType { get }
  static var date: NSTextCheckingType { get }
  static var address: NSTextCheckingType { get }
  static var link: NSTextCheckingType { get }
  static var quote: NSTextCheckingType { get }
  static var dash: NSTextCheckingType { get }
  static var replacement: NSTextCheckingType { get }
  static var correction: NSTextCheckingType { get }
  @available(watchOS 2.0, *)
  static var regularExpression: NSTextCheckingType { get }
  @available(watchOS 2.0, *)
  static var phoneNumber: NSTextCheckingType { get }
  @available(watchOS 2.0, *)
  static var transitInformation: NSTextCheckingType { get }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
@available(watchOS 2.0, *)
class NSTextCheckingResult : NSObject, NSCopying, NSCoding {
  var resultType: NSTextCheckingType { get }
  var range: NSRange { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var duration: NSTimeInterval { get }
  @available(watchOS 2.0, *)
  var components: [String : String]? { get }
  @NSCopying var url: NSURL? { get }
  var replacementString: String? { get }
  @available(watchOS 2.0, *)
  var alternativeStrings: [String]? { get }
  @available(watchOS 2.0, *)
  @NSCopying var regularExpression: NSRegularExpression? { get }
  @available(watchOS 2.0, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(watchOS 2.0, *)
  var numberOfRanges: Int { get }
  @available(watchOS 2.0, *)
  func range(at idx: Int) -> NSRange
  @available(watchOS 2.0, *)
  func adjustingRanges(withOffset offset: Int) -> NSTextCheckingResult
}
@available(watchOS 2.0, *)
let NSTextCheckingNameKey: String
@available(watchOS 2.0, *)
let NSTextCheckingJobTitleKey: String
@available(watchOS 2.0, *)
let NSTextCheckingOrganizationKey: String
@available(watchOS 2.0, *)
let NSTextCheckingStreetKey: String
@available(watchOS 2.0, *)
let NSTextCheckingCityKey: String
@available(watchOS 2.0, *)
let NSTextCheckingStateKey: String
@available(watchOS 2.0, *)
let NSTextCheckingZIPKey: String
@available(watchOS 2.0, *)
let NSTextCheckingCountryKey: String
@available(watchOS 2.0, *)
let NSTextCheckingPhoneKey: String
@available(watchOS 2.0, *)
let NSTextCheckingAirlineKey: String
@available(watchOS 2.0, *)
let NSTextCheckingFlightKey: String
extension NSTextCheckingResult {
  class func orthographyCheckingResult(with range: NSRange, orthography orthography: NSOrthography) -> NSTextCheckingResult
  class func spell(with range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResult(with range: NSRange, details details: [String]) -> NSTextCheckingResult
  class func dateCheckingResult(with range: NSRange, date date: NSDate) -> NSTextCheckingResult
  class func dateCheckingResult(with range: NSRange, date date: NSDate, timeZone timeZone: NSTimeZone, duration duration: NSTimeInterval) -> NSTextCheckingResult
  class func addressCheckingResult(with range: NSRange, components components: [String : String]) -> NSTextCheckingResult
  class func linkCheckingResult(with range: NSRange, url url: NSURL) -> NSTextCheckingResult
  class func quoteCheckingResult(with range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResult(with range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResult(with range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResult(with range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func correctionCheckingResult(with range: NSRange, replacementString replacementString: String, alternativeStrings alternativeStrings: [String]) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func regularExpressionCheckingResult(withRanges ranges: NSRangePointer, count count: Int, regularExpression regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func phoneNumber(with range: NSRange, phoneNumber phoneNumber: String) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func transitInformationCheckingResult(with range: NSRange, components components: [String : String]) -> NSTextCheckingResult
}
