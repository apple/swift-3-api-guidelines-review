
@available(OSX 10.6, *)
class Orthography : Object, Copying, Coding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(OSX 10.6, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: Coder)
  convenience init()
  @available(OSX 10.6, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWith(aCoder: Coder)
}
extension Orthography {
  @available(OSX 10.6, *)
  func languagesFor(script script: String) -> [String]?
  @available(OSX 10.6, *)
  func dominantLanguageFor(script script: String) -> String?
  @available(OSX 10.6, *)
  var dominantLanguage: String { get }
  @available(OSX 10.6, *)
  var allScripts: [String] { get }
  @available(OSX 10.6, *)
  var allLanguages: [String] { get }
}
extension Orthography {
}
