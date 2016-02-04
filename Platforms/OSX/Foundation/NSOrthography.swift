
@available(OSX 10.6, *)
class NSOrthography : NSObject, NSCopying, NSCoding {
  var dominantScript: String { get }
  var languageMap: [String : [String]] { get }
  @available(OSX 10.6, *)
  init(dominantScript script: String, languageMap map: [String : [String]])
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(OSX 10.6, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSOrthography {
  @available(OSX 10.6, *)
  func languagesForScript(script: String) -> [String]?
  @available(OSX 10.6, *)
  func dominantLanguageForScript(script: String) -> String?
  @available(OSX 10.6, *)
  var dominantLanguage: String { get }
  @available(OSX 10.6, *)
  var allScripts: [String] { get }
  @available(OSX 10.6, *)
  var allLanguages: [String] { get }
}
extension NSOrthography {
}
