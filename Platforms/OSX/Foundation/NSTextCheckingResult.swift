
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
  @available(OSX 10.7, *)
  static var regularExpression: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var phoneNumber: NSTextCheckingType { get }
  @available(OSX 10.7, *)
  static var transitInformation: NSTextCheckingType { get }
}
typealias NSTextCheckingTypes = UInt64
var NSTextCheckingAllSystemTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllCustomTypes: NSTextCheckingTypes { get }
var NSTextCheckingAllTypes: NSTextCheckingTypes { get }
@available(OSX 10.6, *)
class NSTextCheckingResult : NSObject, NSCopying, NSCoding {
  var resultType: NSTextCheckingType { get }
  var range: NSRange { get }
  @available(OSX 10.6, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension NSTextCheckingResult {
  @NSCopying var orthography: NSOrthography? { get }
  var grammarDetails: [String]? { get }
  @NSCopying var date: NSDate? { get }
  @NSCopying var timeZone: NSTimeZone? { get }
  var duration: NSTimeInterval { get }
  @available(OSX 10.7, *)
  var components: [String : String]? { get }
  @NSCopying var url: NSURL? { get }
  var replacementString: String? { get }
  @available(OSX 10.9, *)
  var alternativeStrings: [String]? { get }
  @available(OSX 10.7, *)
  @NSCopying var regularExpression: NSRegularExpression? { get }
  @available(OSX 10.7, *)
  var phoneNumber: String? { get }
  var addressComponents: [String : String]? { get }
  @available(OSX 10.7, *)
  var numberOfRanges: Int { get }
  @available(OSX 10.7, *)
  func range(at idx: Int) -> NSRange
  @available(OSX 10.7, *)
  func adjustingRanges(withOffset offset: Int) -> NSTextCheckingResult
}
@available(OSX 10.6, *)
let NSTextCheckingNameKey: String
@available(OSX 10.6, *)
let NSTextCheckingJobTitleKey: String
@available(OSX 10.6, *)
let NSTextCheckingOrganizationKey: String
@available(OSX 10.6, *)
let NSTextCheckingStreetKey: String
@available(OSX 10.6, *)
let NSTextCheckingCityKey: String
@available(OSX 10.6, *)
let NSTextCheckingStateKey: String
@available(OSX 10.6, *)
let NSTextCheckingZIPKey: String
@available(OSX 10.6, *)
let NSTextCheckingCountryKey: String
@available(OSX 10.6, *)
let NSTextCheckingPhoneKey: String
@available(OSX 10.7, *)
let NSTextCheckingAirlineKey: String
@available(OSX 10.7, *)
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
  @available(OSX 10.9, *)
  class func correctionCheckingResult(with range: NSRange, replacementString replacementString: String, alternativeStrings alternativeStrings: [String]) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func regularExpressionCheckingResult(withRanges ranges: NSRangePointer, count count: Int, regularExpression regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func phoneNumber(with range: NSRange, phoneNumber phoneNumber: String) -> NSTextCheckingResult
  @available(OSX 10.7, *)
  class func transitInformationCheckingResult(with range: NSRange, components components: [String : String]) -> NSTextCheckingResult
}
