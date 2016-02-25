
var NSShowControlGlyphs: Int { get }
var NSShowInvisibleGlyphs: Int { get }
var NSWantsBidiLevels: Int { get }
protocol NSGlyphStorage {
  func insertGlyphs(_ glyphs: UnsafePointer<NSGlyph>, length length: Int, forStartingGlyphAtIndex glyphIndex: Int, characterIndex charIndex: Int)
  func setIntAttribute(_ attributeTag: Int, value val: Int, forGlyphAtIndex glyphIndex: Int)
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString
  func layoutOptions() -> Int
}
class NSGlyphGenerator : NSObject {
  func generateGlyphsForGlyphStorage(_ glyphStorage: NSGlyphStorage, desiredNumberOfCharacters nChars: Int, glyphIndex glyphIndex: UnsafeMutablePointer<Int>, characterIndex charIndex: UnsafeMutablePointer<Int>)
  class func sharedGlyphGenerator() -> NSGlyphGenerator
}
