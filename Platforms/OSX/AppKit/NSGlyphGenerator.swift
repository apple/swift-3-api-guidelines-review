
var NSShowControlGlyphs: Int { get }
var NSShowInvisibleGlyphs: Int { get }
var NSWantsBidiLevels: Int { get }
protocol NSGlyphStorage {
  func insertGlyphs(glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAtIndex glyphIndex: Int, characterIndex charIndex: Int)
  func setIntAttribute(attributeTag: Int, value val: Int, forGlyphAtIndex glyphIndex: Int)
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func layoutOptions() -> Int
}
class NSGlyphGenerator : NSObject {
  func generateGlyphsForGlyphStorage(glyphStorage: NSGlyphStorage, desiredNumberOfCharacters nChars: Int, glyphIndex: UnsafeMutablePointer<Int>, characterIndex charIndex: UnsafeMutablePointer<Int>)
  class func sharedGlyphGenerator() -> NSGlyphGenerator
  init()
}
