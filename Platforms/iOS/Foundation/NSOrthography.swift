
@available(iOS 4.0, *)
class NSOrthography : NSObject, NSCopying, NSCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(iOS 4.0, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension NSOrthography {
  @available(iOS 4.0, *)
  func languagesForScript(_ script: String) -> [String]?
  @available(iOS 4.0, *)
  func dominantLanguageForScript(_ script: String) -> String?
  @available(iOS 4.0, *)
  var dominantLanguage: String { get }
  @available(iOS 4.0, *)
  var allScripts: [String] { get }
  @available(iOS 4.0, *)
  var allLanguages: [String] { get }
}
extension NSOrthography {
}
