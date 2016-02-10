
@available(OSX 10.6, *)
class Orthography : Object, Copying, Coding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(OSX 10.6, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: Coder)
  convenience init()
  @available(OSX 10.6, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encode(with aCoder: Coder)
}
extension Orthography {
  @available(OSX 10.6, *)
  func languages(forScript script: String) -> [String]?
  @available(OSX 10.6, *)
  func dominantLanguage(forScript script: String) -> String?
  @available(OSX 10.6, *)
  var dominantLanguage: String { get }
  @available(OSX 10.6, *)
  var allScripts: [String] { get }
  @available(OSX 10.6, *)
  var allLanguages: [String] { get }
}
extension Orthography {
}
