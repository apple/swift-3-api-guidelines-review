
@available(tvOS 4.0, *)
class NSOrthography : NSObject, NSCopying, NSCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(tvOS 4.0, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: NSCoder)
  @available(tvOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func encode(with aCoder: NSCoder)
}
extension NSOrthography {
  @available(tvOS 4.0, *)
  func languages(forScript script: String) -> [String]?
  @available(tvOS 4.0, *)
  func dominantLanguage(forScript script: String) -> String?
  @available(tvOS 4.0, *)
  var dominantLanguage: String { get }
  @available(tvOS 4.0, *)
  var allScripts: [String] { get }
  @available(tvOS 4.0, *)
  var allLanguages: [String] { get }
}
extension NSOrthography {
}
