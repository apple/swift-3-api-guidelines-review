
@available(watchOS 2.0, *)
class Orthography : Object, Copying, Coding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(watchOS 2.0, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: Coder)
  convenience init()
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(aCoder: Coder)
}
extension Orthography {
  @available(watchOS 2.0, *)
  func languages(forScript script: String) -> [String]?
  @available(watchOS 2.0, *)
  func dominantLanguage(forScript script: String) -> String?
  @available(watchOS 2.0, *)
  var dominantLanguage: String { get }
  @available(watchOS 2.0, *)
  var allScripts: [String] { get }
  @available(watchOS 2.0, *)
  var allLanguages: [String] { get }
}
extension Orthography {
}
