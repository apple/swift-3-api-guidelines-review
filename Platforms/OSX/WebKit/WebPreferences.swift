
enum WebCacheModel : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case DocumentViewer
  case DocumentBrowser
  case PrimaryWebBrowser
}
let WebPreferencesChangedNotification: String
class WebPreferences : NSObject, NSCoding {
  class func standardPreferences() -> WebPreferences!
  init!(identifier anIdentifier: String!)
  var identifier: String! { get }
  var standardFontFamily: String!
  var fixedFontFamily: String!
  var serifFontFamily: String!
  var sansSerifFontFamily: String!
  var cursiveFontFamily: String!
  var fantasyFontFamily: String!
  var defaultFontSize: Int32
  var defaultFixedFontSize: Int32
  var minimumFontSize: Int32
  var minimumLogicalFontSize: Int32
  var defaultTextEncodingName: String!
  var userStyleSheetEnabled: Bool
  var userStyleSheetLocation: NSURL!
  var javaEnabled: Bool
  var javaScriptEnabled: Bool
  var javaScriptCanOpenWindowsAutomatically: Bool
  var plugInsEnabled: Bool
  var allowsAnimatedImages: Bool
  var allowsAnimatedImageLooping: Bool
  var loadsImagesAutomatically: Bool
  var autosaves: Bool
  var shouldPrintBackgrounds: Bool
  var privateBrowsingEnabled: Bool
  var tabsToLinks: Bool
  var usesPageCache: Bool
  var cacheModel: WebCacheModel
  var suppressesIncrementalRendering: Bool
  var allowsAirPlayForMediaPlayback: Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
