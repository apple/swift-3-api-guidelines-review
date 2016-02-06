
@available(iOS 4.0, *)
class Orthography : Object, Copying, Coding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(iOS 4.0, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 4.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func encodeWith(aCoder: Coder)
}
extension Orthography {
  @available(iOS 4.0, *)
  func languagesFor(script script: String) -> [String]?
  @available(iOS 4.0, *)
  func dominantLanguageFor(script script: String) -> String?
  @available(iOS 4.0, *)
  var dominantLanguage: String { get }
  @available(iOS 4.0, *)
  var allScripts: [String] { get }
  @available(iOS 4.0, *)
  var allLanguages: [String] { get }
}
extension Orthography {
}
