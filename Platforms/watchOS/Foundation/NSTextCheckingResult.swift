
struct NSTextCheckingType : OptionSetType {
  init(rawValue rawValue: UInt64)
  let rawValue: UInt64
  static var Orthography: NSTextCheckingType { get }
  static var Spelling: NSTextCheckingType { get }
  static var Grammar: NSTextCheckingType { get }
  static var Date: NSTextCheckingType { get }
  static var Address: NSTextCheckingType { get }
  static var Link: NSTextCheckingType { get }
  static var Quote: NSTextCheckingType { get }
  static var Dash: NSTextCheckingType { get }
  static var Replacement: NSTextCheckingType { get }
  static var Correction: NSTextCheckingType { get }
  @available(watchOS 2.0, *)
  static var RegularExpression: NSTextCheckingType { get }
  @available(watchOS 2.0, *)
  static var PhoneNumber: NSTextCheckingType { get }
  @available(watchOS 2.0, *)
  static var TransitInformation: NSTextCheckingType { get }
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
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
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
  @NSCopying var URL: NSURL? { get }
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
  func rangeAtIndex(_ idx: Int) -> NSRange
  @available(watchOS 2.0, *)
  func resultByAdjustingRangesWithOffset(_ offset: Int) -> NSTextCheckingResult
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
  class func orthographyCheckingResultWithRange(_ range: NSRange, orthography orthography: NSOrthography) -> NSTextCheckingResult
  class func spellCheckingResultWithRange(_ range: NSRange) -> NSTextCheckingResult
  class func grammarCheckingResultWithRange(_ range: NSRange, details details: [String]) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(_ range: NSRange, date date: NSDate) -> NSTextCheckingResult
  class func dateCheckingResultWithRange(_ range: NSRange, date date: NSDate, timeZone timeZone: NSTimeZone, duration duration: NSTimeInterval) -> NSTextCheckingResult
  class func addressCheckingResultWithRange(_ range: NSRange, components components: [String : String]) -> NSTextCheckingResult
  class func linkCheckingResultWithRange(_ range: NSRange, URL url: NSURL) -> NSTextCheckingResult
  class func quoteCheckingResultWithRange(_ range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  class func dashCheckingResultWithRange(_ range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  class func replacementCheckingResultWithRange(_ range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  class func correctionCheckingResultWithRange(_ range: NSRange, replacementString replacementString: String) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func correctionCheckingResultWithRange(_ range: NSRange, replacementString replacementString: String, alternativeStrings alternativeStrings: [String]) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func regularExpressionCheckingResultWithRanges(_ ranges: NSRangePointer, count count: Int, regularExpression regularExpression: NSRegularExpression) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func phoneNumberCheckingResultWithRange(_ range: NSRange, phoneNumber phoneNumber: String) -> NSTextCheckingResult
  @available(watchOS 2.0, *)
  class func transitInformationCheckingResultWithRange(_ range: NSRange, components components: [String : String]) -> NSTextCheckingResult
}
