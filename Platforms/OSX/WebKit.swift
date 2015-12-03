
@available(OSX 10.4, *)
class DOMAbstractView : DOMObject {
  var document: DOMDocument! { get }
}
@available(OSX 10.4, *)
class DOMAttr : DOMNode {
  var name: String! { get }
  var isSpecified: Bool { get }
  var value: String!
  var ownerElement: DOMElement! { get }
  @available(OSX 10.5, *)
  var style: DOMCSSStyleDeclaration! { get }
}
@available(OSX 10.6, *)
class DOMBlob : DOMObject {
  var size: UInt64 { get }
}
@available(OSX 10.4, *)
class DOMCDATASection : DOMText {
}
extension DOMCSSStyleDeclaration {
  @available(OSX 10.4, *)
  func azimuth() -> String!
  @available(OSX 10.4, *)
  func setAzimuth(azimuth: String!)
  @available(OSX 10.4, *)
  func background() -> String!
  @available(OSX 10.4, *)
  func setBackground(background: String!)
  @available(OSX 10.4, *)
  func backgroundAttachment() -> String!
  @available(OSX 10.4, *)
  func setBackgroundAttachment(backgroundAttachment: String!)
  @available(OSX 10.4, *)
  func backgroundColor() -> String!
  @available(OSX 10.4, *)
  func setBackgroundColor(backgroundColor: String!)
  @available(OSX 10.4, *)
  func backgroundImage() -> String!
  @available(OSX 10.4, *)
  func setBackgroundImage(backgroundImage: String!)
  @available(OSX 10.4, *)
  func backgroundPosition() -> String!
  @available(OSX 10.4, *)
  func setBackgroundPosition(backgroundPosition: String!)
  @available(OSX 10.4, *)
  func backgroundRepeat() -> String!
  @available(OSX 10.4, *)
  func setBackgroundRepeat(backgroundRepeat: String!)
  @available(OSX 10.4, *)
  func border() -> String!
  @available(OSX 10.4, *)
  func setBorder(border: String!)
  @available(OSX 10.4, *)
  func borderCollapse() -> String!
  @available(OSX 10.4, *)
  func setBorderCollapse(borderCollapse: String!)
  @available(OSX 10.4, *)
  func borderColor() -> String!
  @available(OSX 10.4, *)
  func setBorderColor(borderColor: String!)
  @available(OSX 10.4, *)
  func borderSpacing() -> String!
  @available(OSX 10.4, *)
  func setBorderSpacing(borderSpacing: String!)
  @available(OSX 10.4, *)
  func borderStyle() -> String!
  @available(OSX 10.4, *)
  func setBorderStyle(borderStyle: String!)
  @available(OSX 10.4, *)
  func borderTop() -> String!
  @available(OSX 10.4, *)
  func setBorderTop(borderTop: String!)
  @available(OSX 10.4, *)
  func borderRight() -> String!
  @available(OSX 10.4, *)
  func setBorderRight(borderRight: String!)
  @available(OSX 10.4, *)
  func borderBottom() -> String!
  @available(OSX 10.4, *)
  func setBorderBottom(borderBottom: String!)
  @available(OSX 10.4, *)
  func borderLeft() -> String!
  @available(OSX 10.4, *)
  func setBorderLeft(borderLeft: String!)
  @available(OSX 10.4, *)
  func borderTopColor() -> String!
  @available(OSX 10.4, *)
  func setBorderTopColor(borderTopColor: String!)
  @available(OSX 10.4, *)
  func borderRightColor() -> String!
  @available(OSX 10.4, *)
  func setBorderRightColor(borderRightColor: String!)
  @available(OSX 10.4, *)
  func borderBottomColor() -> String!
  @available(OSX 10.4, *)
  func setBorderBottomColor(borderBottomColor: String!)
  @available(OSX 10.4, *)
  func borderLeftColor() -> String!
  @available(OSX 10.4, *)
  func setBorderLeftColor(borderLeftColor: String!)
  @available(OSX 10.4, *)
  func borderTopStyle() -> String!
  @available(OSX 10.4, *)
  func setBorderTopStyle(borderTopStyle: String!)
  @available(OSX 10.4, *)
  func borderRightStyle() -> String!
  @available(OSX 10.4, *)
  func setBorderRightStyle(borderRightStyle: String!)
  @available(OSX 10.4, *)
  func borderBottomStyle() -> String!
  @available(OSX 10.4, *)
  func setBorderBottomStyle(borderBottomStyle: String!)
  @available(OSX 10.4, *)
  func borderLeftStyle() -> String!
  @available(OSX 10.4, *)
  func setBorderLeftStyle(borderLeftStyle: String!)
  @available(OSX 10.4, *)
  func borderTopWidth() -> String!
  @available(OSX 10.4, *)
  func setBorderTopWidth(borderTopWidth: String!)
  @available(OSX 10.4, *)
  func borderRightWidth() -> String!
  @available(OSX 10.4, *)
  func setBorderRightWidth(borderRightWidth: String!)
  @available(OSX 10.4, *)
  func borderBottomWidth() -> String!
  @available(OSX 10.4, *)
  func setBorderBottomWidth(borderBottomWidth: String!)
  @available(OSX 10.4, *)
  func borderLeftWidth() -> String!
  @available(OSX 10.4, *)
  func setBorderLeftWidth(borderLeftWidth: String!)
  @available(OSX 10.4, *)
  func borderWidth() -> String!
  @available(OSX 10.4, *)
  func setBorderWidth(borderWidth: String!)
  @available(OSX 10.4, *)
  func bottom() -> String!
  @available(OSX 10.4, *)
  func setBottom(bottom: String!)
  @available(OSX 10.4, *)
  func captionSide() -> String!
  @available(OSX 10.4, *)
  func setCaptionSide(captionSide: String!)
  @available(OSX 10.4, *)
  func clear() -> String!
  @available(OSX 10.4, *)
  func setClear(clear: String!)
  @available(OSX 10.4, *)
  func clip() -> String!
  @available(OSX 10.4, *)
  func setClip(clip: String!)
  @available(OSX 10.4, *)
  func color() -> String!
  @available(OSX 10.4, *)
  func setColor(color: String!)
  @available(OSX 10.4, *)
  func content() -> String!
  @available(OSX 10.4, *)
  func setContent(content: String!)
  @available(OSX 10.4, *)
  func counterIncrement() -> String!
  @available(OSX 10.4, *)
  func setCounterIncrement(counterIncrement: String!)
  @available(OSX 10.4, *)
  func counterReset() -> String!
  @available(OSX 10.4, *)
  func setCounterReset(counterReset: String!)
  @available(OSX 10.4, *)
  func cue() -> String!
  @available(OSX 10.4, *)
  func setCue(cue: String!)
  @available(OSX 10.4, *)
  func cueAfter() -> String!
  @available(OSX 10.4, *)
  func setCueAfter(cueAfter: String!)
  @available(OSX 10.4, *)
  func cueBefore() -> String!
  @available(OSX 10.4, *)
  func setCueBefore(cueBefore: String!)
  @available(OSX 10.4, *)
  func cursor() -> String!
  @available(OSX 10.4, *)
  func setCursor(cursor: String!)
  @available(OSX 10.4, *)
  func direction() -> String!
  @available(OSX 10.4, *)
  func setDirection(direction: String!)
  @available(OSX 10.4, *)
  func display() -> String!
  @available(OSX 10.4, *)
  func setDisplay(display: String!)
  @available(OSX 10.4, *)
  func elevation() -> String!
  @available(OSX 10.4, *)
  func setElevation(elevation: String!)
  @available(OSX 10.4, *)
  func emptyCells() -> String!
  @available(OSX 10.4, *)
  func setEmptyCells(emptyCells: String!)
  @available(OSX 10.4, *)
  func cssFloat() -> String!
  @available(OSX 10.4, *)
  func setCssFloat(cssFloat: String!)
  @available(OSX 10.4, *)
  func font() -> String!
  @available(OSX 10.4, *)
  func setFont(font: String!)
  @available(OSX 10.4, *)
  func fontFamily() -> String!
  @available(OSX 10.4, *)
  func setFontFamily(fontFamily: String!)
  @available(OSX 10.4, *)
  func fontSize() -> String!
  @available(OSX 10.4, *)
  func setFontSize(fontSize: String!)
  @available(OSX 10.4, *)
  func fontSizeAdjust() -> String!
  @available(OSX 10.4, *)
  func setFontSizeAdjust(fontSizeAdjust: String!)
  @available(OSX 10.4, *)
  func fontStretch() -> String!
  @available(OSX 10.4, *)
  func setFontStretch(fontStretch: String!)
  @available(OSX 10.4, *)
  func fontStyle() -> String!
  @available(OSX 10.4, *)
  func setFontStyle(fontStyle: String!)
  @available(OSX 10.4, *)
  func fontVariant() -> String!
  @available(OSX 10.4, *)
  func setFontVariant(fontVariant: String!)
  @available(OSX 10.4, *)
  func fontWeight() -> String!
  @available(OSX 10.4, *)
  func setFontWeight(fontWeight: String!)
  @available(OSX 10.4, *)
  func height() -> String!
  @available(OSX 10.4, *)
  func setHeight(height: String!)
  @available(OSX 10.4, *)
  func left() -> String!
  @available(OSX 10.4, *)
  func setLeft(left: String!)
  @available(OSX 10.4, *)
  func letterSpacing() -> String!
  @available(OSX 10.4, *)
  func setLetterSpacing(letterSpacing: String!)
  @available(OSX 10.4, *)
  func lineHeight() -> String!
  @available(OSX 10.4, *)
  func setLineHeight(lineHeight: String!)
  @available(OSX 10.4, *)
  func listStyle() -> String!
  @available(OSX 10.4, *)
  func setListStyle(listStyle: String!)
  @available(OSX 10.4, *)
  func listStyleImage() -> String!
  @available(OSX 10.4, *)
  func setListStyleImage(listStyleImage: String!)
  @available(OSX 10.4, *)
  func listStylePosition() -> String!
  @available(OSX 10.4, *)
  func setListStylePosition(listStylePosition: String!)
  @available(OSX 10.4, *)
  func listStyleType() -> String!
  @available(OSX 10.4, *)
  func setListStyleType(listStyleType: String!)
  @available(OSX 10.4, *)
  func margin() -> String!
  @available(OSX 10.4, *)
  func setMargin(margin: String!)
  @available(OSX 10.4, *)
  func marginTop() -> String!
  @available(OSX 10.4, *)
  func setMarginTop(marginTop: String!)
  @available(OSX 10.4, *)
  func marginRight() -> String!
  @available(OSX 10.4, *)
  func setMarginRight(marginRight: String!)
  @available(OSX 10.4, *)
  func marginBottom() -> String!
  @available(OSX 10.4, *)
  func setMarginBottom(marginBottom: String!)
  @available(OSX 10.4, *)
  func marginLeft() -> String!
  @available(OSX 10.4, *)
  func setMarginLeft(marginLeft: String!)
  @available(OSX 10.4, *)
  func markerOffset() -> String!
  @available(OSX 10.4, *)
  func setMarkerOffset(markerOffset: String!)
  @available(OSX 10.4, *)
  func marks() -> String!
  @available(OSX 10.4, *)
  func setMarks(marks: String!)
  @available(OSX 10.4, *)
  func maxHeight() -> String!
  @available(OSX 10.4, *)
  func setMaxHeight(maxHeight: String!)
  @available(OSX 10.4, *)
  func maxWidth() -> String!
  @available(OSX 10.4, *)
  func setMaxWidth(maxWidth: String!)
  @available(OSX 10.4, *)
  func minHeight() -> String!
  @available(OSX 10.4, *)
  func setMinHeight(minHeight: String!)
  @available(OSX 10.4, *)
  func minWidth() -> String!
  @available(OSX 10.4, *)
  func setMinWidth(minWidth: String!)
  @available(OSX 10.4, *)
  func orphans() -> String!
  @available(OSX 10.4, *)
  func setOrphans(orphans: String!)
  @available(OSX 10.4, *)
  func outline() -> String!
  @available(OSX 10.4, *)
  func setOutline(outline: String!)
  @available(OSX 10.4, *)
  func outlineColor() -> String!
  @available(OSX 10.4, *)
  func setOutlineColor(outlineColor: String!)
  @available(OSX 10.4, *)
  func outlineStyle() -> String!
  @available(OSX 10.4, *)
  func setOutlineStyle(outlineStyle: String!)
  @available(OSX 10.4, *)
  func outlineWidth() -> String!
  @available(OSX 10.4, *)
  func setOutlineWidth(outlineWidth: String!)
  @available(OSX 10.4, *)
  func overflow() -> String!
  @available(OSX 10.4, *)
  func setOverflow(overflow: String!)
  @available(OSX 10.4, *)
  func padding() -> String!
  @available(OSX 10.4, *)
  func setPadding(padding: String!)
  @available(OSX 10.4, *)
  func paddingTop() -> String!
  @available(OSX 10.4, *)
  func setPaddingTop(paddingTop: String!)
  @available(OSX 10.4, *)
  func paddingRight() -> String!
  @available(OSX 10.4, *)
  func setPaddingRight(paddingRight: String!)
  @available(OSX 10.4, *)
  func paddingBottom() -> String!
  @available(OSX 10.4, *)
  func setPaddingBottom(paddingBottom: String!)
  @available(OSX 10.4, *)
  func paddingLeft() -> String!
  @available(OSX 10.4, *)
  func setPaddingLeft(paddingLeft: String!)
  @available(OSX 10.4, *)
  func page() -> String!
  @available(OSX 10.4, *)
  func setPage(page: String!)
  @available(OSX 10.4, *)
  func pageBreakAfter() -> String!
  @available(OSX 10.4, *)
  func setPageBreakAfter(pageBreakAfter: String!)
  @available(OSX 10.4, *)
  func pageBreakBefore() -> String!
  @available(OSX 10.4, *)
  func setPageBreakBefore(pageBreakBefore: String!)
  @available(OSX 10.4, *)
  func pageBreakInside() -> String!
  @available(OSX 10.4, *)
  func setPageBreakInside(pageBreakInside: String!)
  @available(OSX 10.4, *)
  func pause() -> String!
  @available(OSX 10.4, *)
  func setPause(pause: String!)
  @available(OSX 10.4, *)
  func pauseAfter() -> String!
  @available(OSX 10.4, *)
  func setPauseAfter(pauseAfter: String!)
  @available(OSX 10.4, *)
  func pauseBefore() -> String!
  @available(OSX 10.4, *)
  func setPauseBefore(pauseBefore: String!)
  @available(OSX 10.4, *)
  func pitch() -> String!
  @available(OSX 10.4, *)
  func setPitch(pitch: String!)
  @available(OSX 10.4, *)
  func pitchRange() -> String!
  @available(OSX 10.4, *)
  func setPitchRange(pitchRange: String!)
  @available(OSX 10.4, *)
  func playDuring() -> String!
  @available(OSX 10.4, *)
  func setPlayDuring(playDuring: String!)
  @available(OSX 10.4, *)
  func position() -> String!
  @available(OSX 10.4, *)
  func setPosition(position: String!)
  @available(OSX 10.4, *)
  func quotes() -> String!
  @available(OSX 10.4, *)
  func setQuotes(quotes: String!)
  @available(OSX 10.4, *)
  func richness() -> String!
  @available(OSX 10.4, *)
  func setRichness(richness: String!)
  @available(OSX 10.4, *)
  func right() -> String!
  @available(OSX 10.4, *)
  func setRight(right: String!)
  @available(OSX 10.4, *)
  func size() -> String!
  @available(OSX 10.4, *)
  func setSize(size: String!)
  @available(OSX 10.4, *)
  func speak() -> String!
  @available(OSX 10.4, *)
  func setSpeak(speak: String!)
  @available(OSX 10.4, *)
  func speakHeader() -> String!
  @available(OSX 10.4, *)
  func setSpeakHeader(speakHeader: String!)
  @available(OSX 10.4, *)
  func speakNumeral() -> String!
  @available(OSX 10.4, *)
  func setSpeakNumeral(speakNumeral: String!)
  @available(OSX 10.4, *)
  func speakPunctuation() -> String!
  @available(OSX 10.4, *)
  func setSpeakPunctuation(speakPunctuation: String!)
  @available(OSX 10.4, *)
  func speechRate() -> String!
  @available(OSX 10.4, *)
  func setSpeechRate(speechRate: String!)
  @available(OSX 10.4, *)
  func stress() -> String!
  @available(OSX 10.4, *)
  func setStress(stress: String!)
  @available(OSX 10.4, *)
  func tableLayout() -> String!
  @available(OSX 10.4, *)
  func setTableLayout(tableLayout: String!)
  @available(OSX 10.4, *)
  func textAlign() -> String!
  @available(OSX 10.4, *)
  func setTextAlign(textAlign: String!)
  @available(OSX 10.4, *)
  func textDecoration() -> String!
  @available(OSX 10.4, *)
  func setTextDecoration(textDecoration: String!)
  @available(OSX 10.4, *)
  func textIndent() -> String!
  @available(OSX 10.4, *)
  func setTextIndent(textIndent: String!)
  @available(OSX 10.4, *)
  func textShadow() -> String!
  @available(OSX 10.4, *)
  func setTextShadow(textShadow: String!)
  @available(OSX 10.4, *)
  func textTransform() -> String!
  @available(OSX 10.4, *)
  func setTextTransform(textTransform: String!)
  @available(OSX 10.4, *)
  func top() -> String!
  @available(OSX 10.4, *)
  func setTop(top: String!)
  @available(OSX 10.4, *)
  func unicodeBidi() -> String!
  @available(OSX 10.4, *)
  func setUnicodeBidi(unicodeBidi: String!)
  @available(OSX 10.4, *)
  func verticalAlign() -> String!
  @available(OSX 10.4, *)
  func setVerticalAlign(verticalAlign: String!)
  @available(OSX 10.4, *)
  func visibility() -> String!
  @available(OSX 10.4, *)
  func setVisibility(visibility: String!)
  @available(OSX 10.4, *)
  func voiceFamily() -> String!
  @available(OSX 10.4, *)
  func setVoiceFamily(voiceFamily: String!)
  @available(OSX 10.4, *)
  func volume() -> String!
  @available(OSX 10.4, *)
  func setVolume(volume: String!)
  @available(OSX 10.4, *)
  func whiteSpace() -> String!
  @available(OSX 10.4, *)
  func setWhiteSpace(whiteSpace: String!)
  @available(OSX 10.4, *)
  func widows() -> String!
  @available(OSX 10.4, *)
  func setWidows(widows: String!)
  @available(OSX 10.4, *)
  func width() -> String!
  @available(OSX 10.4, *)
  func setWidth(width: String!)
  @available(OSX 10.4, *)
  func wordSpacing() -> String!
  @available(OSX 10.4, *)
  func setWordSpacing(wordSpacing: String!)
  @available(OSX 10.4, *)
  func zIndex() -> String!
  @available(OSX 10.4, *)
  func setZIndex(zIndex: String!)
}
@available(OSX 10.4, *)
class DOMCSSCharsetRule : DOMCSSRule {
  var encoding: String! { get }
}
@available(OSX 10.4, *)
class DOMCSSFontFaceRule : DOMCSSRule {
  var style: DOMCSSStyleDeclaration! { get }
}
@available(OSX 10.4, *)
class DOMCSSImportRule : DOMCSSRule {
  var href: String! { get }
  var media: DOMMediaList! { get }
  var styleSheet: DOMCSSStyleSheet! { get }
}
@available(OSX 10.4, *)
class DOMCSSMediaRule : DOMCSSRule {
  var media: DOMMediaList! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(OSX 10.5, *)
  func insertRule(rule: String!, index: UInt32) -> UInt32
  func deleteRule(index: UInt32)
}
extension DOMCSSMediaRule {
}
@available(OSX 10.4, *)
class DOMCSSPageRule : DOMCSSRule {
  var selectorText: String!
  var style: DOMCSSStyleDeclaration! { get }
}
var DOM_CSS_UNKNOWN: Int { get }
var DOM_CSS_NUMBER: Int { get }
var DOM_CSS_PERCENTAGE: Int { get }
var DOM_CSS_EMS: Int { get }
var DOM_CSS_EXS: Int { get }
var DOM_CSS_PX: Int { get }
var DOM_CSS_CM: Int { get }
var DOM_CSS_MM: Int { get }
var DOM_CSS_IN: Int { get }
var DOM_CSS_PT: Int { get }
var DOM_CSS_PC: Int { get }
var DOM_CSS_DEG: Int { get }
var DOM_CSS_RAD: Int { get }
var DOM_CSS_GRAD: Int { get }
var DOM_CSS_MS: Int { get }
var DOM_CSS_S: Int { get }
var DOM_CSS_HZ: Int { get }
var DOM_CSS_KHZ: Int { get }
var DOM_CSS_DIMENSION: Int { get }
var DOM_CSS_STRING: Int { get }
var DOM_CSS_URI: Int { get }
var DOM_CSS_IDENT: Int { get }
var DOM_CSS_ATTR: Int { get }
var DOM_CSS_COUNTER: Int { get }
var DOM_CSS_RECT: Int { get }
var DOM_CSS_RGBCOLOR: Int { get }
var DOM_CSS_VW: Int { get }
var DOM_CSS_VH: Int { get }
var DOM_CSS_VMIN: Int { get }
var DOM_CSS_VMAX: Int { get }
@available(OSX 10.4, *)
class DOMCSSPrimitiveValue : DOMCSSValue {
  var primitiveType: UInt16 { get }
  @available(OSX 10.5, *)
  func setFloatValue(unitType: UInt16, floatValue: Float)
  func getFloatValue(unitType: UInt16) -> Float
  @available(OSX 10.5, *)
  func setStringValue(stringType: UInt16, stringValue: String!)
  func getStringValue() -> String!
  func getCounterValue() -> DOMCounter!
  func getRectValue() -> DOMRect!
  func getRGBColorValue() -> DOMRGBColor!
}
extension DOMCSSPrimitiveValue {
}
var DOM_UNKNOWN_RULE: Int { get }
var DOM_STYLE_RULE: Int { get }
var DOM_CHARSET_RULE: Int { get }
var DOM_IMPORT_RULE: Int { get }
var DOM_MEDIA_RULE: Int { get }
var DOM_FONT_FACE_RULE: Int { get }
var DOM_PAGE_RULE: Int { get }
var DOM_KEYFRAMES_RULE: Int { get }
var DOM_KEYFRAME_RULE: Int { get }
var DOM_SUPPORTS_RULE: Int { get }
var DOM_WEBKIT_REGION_RULE: Int { get }
var DOM_WEBKIT_KEYFRAMES_RULE: Int { get }
var DOM_WEBKIT_KEYFRAME_RULE: Int { get }
@available(OSX 10.4, *)
class DOMCSSRule : DOMObject {
  var type: UInt16 { get }
  var cssText: String!
  var parentStyleSheet: DOMCSSStyleSheet! { get }
  var parent: DOMCSSRule! { get }
}
@available(OSX 10.4, *)
class DOMCSSRuleList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMCSSRule!
}
@available(OSX 10.4, *)
class DOMCSSStyleDeclaration : DOMObject {
  var cssText: String!
  var length: UInt32 { get }
  var parentRule: DOMCSSRule! { get }
  func getPropertyValue(propertyName: String!) -> String!
  func getPropertyCSSValue(propertyName: String!) -> DOMCSSValue!
  func removeProperty(propertyName: String!) -> String!
  func getPropertyPriority(propertyName: String!) -> String!
  @available(OSX 10.5, *)
  func setProperty(propertyName: String!, value: String!, priority: String!)
  func item(index: UInt32) -> String!
  @available(OSX 10.5, *)
  func isPropertyImplicit(propertyName: String!) -> Bool
}
extension DOMCSSStyleDeclaration {
}
@available(OSX 10.4, *)
class DOMCSSStyleRule : DOMCSSRule {
  var selectorText: String!
  var style: DOMCSSStyleDeclaration! { get }
}
@available(OSX 10.4, *)
class DOMCSSStyleSheet : DOMStyleSheet {
  var ownerRule: DOMCSSRule! { get }
  var cssRules: DOMCSSRuleList! { get }
  @available(OSX 10.6, *)
  var rules: DOMCSSRuleList! { get }
  @available(OSX 10.5, *)
  func insertRule(rule: String!, index: UInt32) -> UInt32
  func deleteRule(index: UInt32)
  @available(OSX 10.6, *)
  func addRule(selector: String!, style: String!, index: UInt32) -> Int32
  @available(OSX 10.6, *)
  func removeRule(index: UInt32)
}
extension DOMCSSStyleSheet {
}
@available(OSX 10.4, *)
class DOMCSSUnknownRule : DOMCSSRule {
}
var DOM_CSS_INHERIT: Int { get }
var DOM_CSS_PRIMITIVE_VALUE: Int { get }
var DOM_CSS_VALUE_LIST: Int { get }
var DOM_CSS_CUSTOM: Int { get }
@available(OSX 10.4, *)
class DOMCSSValue : DOMObject {
  var cssText: String!
  var cssValueType: UInt16 { get }
}
@available(OSX 10.4, *)
class DOMCSSValueList : DOMCSSValue {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMCSSValue!
}
@available(OSX 10.4, *)
class DOMCharacterData : DOMNode {
  var data: String!
  var length: UInt32 { get }
  @available(OSX 10.5, *)
  func substringData(offset: UInt32, length: UInt32) -> String!
  func appendData(data: String!)
  @available(OSX 10.5, *)
  func insertData(offset: UInt32, data: String!)
  @available(OSX 10.5, *)
  func deleteData(offset: UInt32, length: UInt32)
  @available(OSX 10.5, *)
  func replaceData(offset: UInt32, length: UInt32, data: String!)
}
extension DOMCharacterData {
}
@available(OSX 10.4, *)
class DOMComment : DOMCharacterData {
}
@available(OSX 10.4, *)
class DOMCounter : DOMObject {
  var identifier: String! { get }
  var listStyle: String! { get }
  var separator: String! { get }
}
@available(OSX 10.4, *)
class DOMDocument : DOMNode {
  var doctype: DOMDocumentType! { get }
  var implementation: DOMImplementation! { get }
  var documentElement: DOMElement! { get }
  @available(OSX 10.5, *)
  var inputEncoding: String! { get }
  @available(OSX 10.5, *)
  var xmlEncoding: String! { get }
  @available(OSX 10.5, *)
  var xmlVersion: String!
  @available(OSX 10.5, *)
  var isXmlStandalone: Bool
  @available(OSX 10.5, *)
  var documentURI: String!
  var defaultView: DOMAbstractView! { get }
  var styleSheets: DOMStyleSheetList! { get }
  var title: String!
  var referrer: String! { get }
  var domain: String! { get }
  var url: String! { get }
  var cookie: String!
  var body: DOMHTMLElement!
  var images: DOMHTMLCollection! { get }
  var applets: DOMHTMLCollection! { get }
  var links: DOMHTMLCollection! { get }
  var forms: DOMHTMLCollection! { get }
  var anchors: DOMHTMLCollection! { get }
  @available(OSX 10.6, *)
  var lastModified: String! { get }
  @available(OSX 10.5, *)
  var charset: String!
  @available(OSX 10.5, *)
  var defaultCharset: String! { get }
  @available(OSX 10.5, *)
  var readyState: String! { get }
  @available(OSX 10.5, *)
  var characterSet: String! { get }
  @available(OSX 10.5, *)
  var preferredStylesheetSet: String! { get }
  @available(OSX 10.5, *)
  var selectedStylesheetSet: String!
  @available(OSX 10.6, *)
  var activeElement: DOMElement! { get }
  func createElement(tagName: String!) -> DOMElement!
  func createDocumentFragment() -> DOMDocumentFragment!
  func createTextNode(data: String!) -> DOMText!
  func createComment(data: String!) -> DOMComment!
  func createCDATASection(data: String!) -> DOMCDATASection!
  @available(OSX 10.5, *)
  func createProcessingInstruction(target: String!, data: String!) -> DOMProcessingInstruction!
  func createAttribute(name: String!) -> DOMAttr!
  func createEntityReference(name: String!) -> DOMEntityReference!
  func getElementsByTagName(tagname: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func importNode(importedNode: DOMNode!, deep: Bool) -> DOMNode!
  @available(OSX 10.5, *)
  func createElementNS(namespaceURI: String!, qualifiedName: String!) -> DOMElement!
  @available(OSX 10.5, *)
  func createAttributeNS(namespaceURI: String!, qualifiedName: String!) -> DOMAttr!
  @available(OSX 10.5, *)
  func getElementsByTagNameNS(namespaceURI: String!, localName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func adoptNode(source: DOMNode!) -> DOMNode!
  func createEvent(eventType: String!) -> DOMEvent!
  func createRange() -> DOMRange!
  @available(OSX 10.5, *)
  func createNodeIterator(root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMNodeIterator!
  @available(OSX 10.5, *)
  func createTreeWalker(root: DOMNode!, whatToShow: UInt32, filter: DOMNodeFilter!, expandEntityReferences: Bool) -> DOMTreeWalker!
  @available(OSX 10.5, *)
  func getOverrideStyle(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func createExpression(expression: String!, resolver: DOMXPathNSResolver!) -> DOMXPathExpression!
  @available(OSX 10.5, *)
  func createNSResolver(nodeResolver: DOMNode!) -> DOMXPathNSResolver!
  @available(OSX 10.5, *)
  func evaluate(expression: String!, contextNode: DOMNode!, resolver: DOMXPathNSResolver!, type: UInt16, `in` inResult: DOMXPathResult!) -> DOMXPathResult!
  @available(OSX 10.5, *)
  func execCommand(command: String!, userInterface: Bool, value: String!) -> Bool
  @available(OSX 10.5, *)
  func execCommand(command: String!, userInterface: Bool) -> Bool
  @available(OSX 10.5, *)
  func execCommand(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandEnabled(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandIndeterm(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandState(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandSupported(command: String!) -> Bool
  @available(OSX 10.5, *)
  func queryCommandValue(command: String!) -> String!
  func getElementsByName(elementName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func elementFromPoint(x: Int32, y: Int32) -> DOMElement!
  @available(OSX 10.5, *)
  func createCSSStyleDeclaration() -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func getComputedStyle(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
  @available(OSX 10.5, *)
  func getMatchedCSSRules(element: DOMElement!, pseudoElement: String!) -> DOMCSSRuleList!
  @available(OSX 10.5, *)
  func getMatchedCSSRules(element: DOMElement!, pseudoElement: String!, authorOnly: Bool) -> DOMCSSRuleList!
  @available(OSX 10.6, *)
  func getElementsByClassName(classNames: String!) -> DOMNodeList!
  @available(OSX 10.6, *)
  func hasFocus() -> Bool
  @available(OSX 10.6, *)
  func webkitCancelFullScreen()
  func getElementById(elementId: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelector(selectors: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelectorAll(selectors: String!) -> DOMNodeList!
}
extension DOMDocument {
}
@available(OSX 10.4, *)
class DOMDocumentFragment : DOMNode {
}
@available(OSX 10.4, *)
class DOMDocumentType : DOMNode {
  var name: String! { get }
  var entities: DOMNamedNodeMap! { get }
  var notations: DOMNamedNodeMap! { get }
  var publicId: String! { get }
  var systemId: String! { get }
  var internalSubset: String! { get }
}
var DOM_ALLOW_KEYBOARD_INPUT: Int { get }
@available(OSX 10.4, *)
class DOMElement : DOMNode {
  var tagName: String! { get }
  var style: DOMCSSStyleDeclaration! { get }
  var offsetLeft: Int32 { get }
  var offsetTop: Int32 { get }
  var offsetWidth: Int32 { get }
  var offsetHeight: Int32 { get }
  @available(OSX 10.5, *)
  var clientLeft: Int32 { get }
  @available(OSX 10.5, *)
  var clientTop: Int32 { get }
  var clientWidth: Int32 { get }
  var clientHeight: Int32 { get }
  var scrollLeft: Int32
  var scrollTop: Int32
  var scrollWidth: Int32 { get }
  var scrollHeight: Int32 { get }
  var offsetParent: DOMElement! { get }
  var innerHTML: String!
  var outerHTML: String!
  var className: String!
  @available(OSX 10.5, *)
  var innerText: String! { get }
  @available(OSX 10.6, *)
  var previousElementSibling: DOMElement! { get }
  @available(OSX 10.6, *)
  var nextElementSibling: DOMElement! { get }
  @available(OSX 10.6, *)
  var firstElementChild: DOMElement! { get }
  @available(OSX 10.6, *)
  var lastElementChild: DOMElement! { get }
  @available(OSX 10.6, *)
  var childElementCount: UInt32 { get }
  func getAttribute(name: String!) -> String!
  @available(OSX 10.5, *)
  func setAttribute(name: String!, value: String!)
  func removeAttribute(name: String!)
  func getAttributeNode(name: String!) -> DOMAttr!
  func setAttributeNode(newAttr: DOMAttr!) -> DOMAttr!
  func removeAttributeNode(oldAttr: DOMAttr!) -> DOMAttr!
  func getElementsByTagName(name: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func getAttributeNS(namespaceURI: String!, localName: String!) -> String!
  @available(OSX 10.5, *)
  func setAttributeNS(namespaceURI: String!, qualifiedName: String!, value: String!)
  @available(OSX 10.5, *)
  func removeAttributeNS(namespaceURI: String!, localName: String!)
  @available(OSX 10.5, *)
  func getElementsByTagNameNS(namespaceURI: String!, localName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func getAttributeNodeNS(namespaceURI: String!, localName: String!) -> DOMAttr!
  func setAttributeNodeNS(newAttr: DOMAttr!) -> DOMAttr!
  func hasAttribute(name: String!) -> Bool
  @available(OSX 10.5, *)
  func hasAttributeNS(namespaceURI: String!, localName: String!) -> Bool
  @available(OSX 10.6, *)
  func focus()
  @available(OSX 10.6, *)
  func blur()
  @available(OSX 10.5, *)
  func scrollIntoView(alignWithTop: Bool)
  @available(OSX 10.5, *)
  func scrollIntoViewIfNeeded(centerIfNeeded: Bool)
  @available(OSX 10.5, *)
  func scrollByLines(lines: Int32)
  @available(OSX 10.5, *)
  func scrollByPages(pages: Int32)
  @available(OSX 10.6, *)
  func getElementsByClassName(name: String!) -> DOMNodeList!
  @available(OSX 10.6, *)
  func webkitRequestFullScreen(flags: UInt16)
  @available(OSX 10.6, *)
  func querySelector(selectors: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelectorAll(selectors: String!) -> DOMNodeList!
}
extension DOMElement {
}
@available(OSX 10.4, *)
class DOMEntity : DOMNode {
  var publicId: String! { get }
  var systemId: String! { get }
  var notationName: String! { get }
}
@available(OSX 10.4, *)
class DOMEntityReference : DOMNode {
}
var DOM_NONE: Int { get }
var DOM_CAPTURING_PHASE: Int { get }
var DOM_AT_TARGET: Int { get }
var DOM_BUBBLING_PHASE: Int { get }
@available(OSX 10.4, *)
class DOMEvent : DOMObject {
  var type: String! { get }
  var target: DOMEventTarget! { get }
  var currentTarget: DOMEventTarget! { get }
  var eventPhase: UInt16 { get }
  var bubbles: Bool { get }
  var isCancelable: Bool { get }
  var timeStamp: DOMTimeStamp { get }
  @available(OSX 10.6, *)
  var srcElement: DOMEventTarget! { get }
  @available(OSX 10.6, *)
  var isReturnValue: Bool
  @available(OSX 10.6, *)
  var isCancelBubble: Bool
  func stopPropagation()
  func preventDefault()
  @available(OSX 10.5, *)
  func initEvent(eventTypeArg: String!, canBubbleArg: Bool, cancelableArg: Bool)
}
extension DOMEvent {
}
@available(OSX 10.4, *)
let DOMEventException: String
@available(OSX 10.4, *)
struct DOMEventExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_UNSPECIFIED_EVENT_TYPE_ERR: DOMEventExceptionCode { get }
@available(OSX 10.4, *)
protocol DOMEventListener : NSObjectProtocol {
  func handle(event: DOMEvent!)
}
@available(OSX 10.4, *)
protocol DOMEventTarget : NSObjectProtocol, NSCopying {
  @available(OSX 10.5, *)
  func addEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(OSX 10.5, *)
  func removeEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  func dispatchEvent(event: DOMEvent!) -> Bool
}
@available(OSX 10.4, *)
let DOMException: String
@available(OSX 10.4, *)
struct DOMExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_INDEX_SIZE_ERR: DOMExceptionCode { get }
var DOM_DOMSTRING_SIZE_ERR: DOMExceptionCode { get }
var DOM_HIERARCHY_REQUEST_ERR: DOMExceptionCode { get }
var DOM_WRONG_DOCUMENT_ERR: DOMExceptionCode { get }
var DOM_INVALID_CHARACTER_ERR: DOMExceptionCode { get }
var DOM_NO_DATA_ALLOWED_ERR: DOMExceptionCode { get }
var DOM_NO_MODIFICATION_ALLOWED_ERR: DOMExceptionCode { get }
var DOM_NOT_FOUND_ERR: DOMExceptionCode { get }
var DOM_NOT_SUPPORTED_ERR: DOMExceptionCode { get }
var DOM_INUSE_ATTRIBUTE_ERR: DOMExceptionCode { get }
var DOM_INVALID_STATE_ERR: DOMExceptionCode { get }
var DOM_SYNTAX_ERR: DOMExceptionCode { get }
var DOM_INVALID_MODIFICATION_ERR: DOMExceptionCode { get }
var DOM_NAMESPACE_ERR: DOMExceptionCode { get }
var DOM_INVALID_ACCESS_ERR: DOMExceptionCode { get }
extension DOMNode {
  @available(OSX 10.5, *)
  func boundingBox() -> NSRect
  @available(OSX 10.5, *)
  func lineBoxRects() -> [AnyObject]!
}
extension DOMElement {
  @available(OSX 10.5, *)
  func image() -> NSImage!
}
extension DOMHTMLDocument {
  @available(OSX 10.5, *)
  func createDocumentFragmentWithMarkupString(markupString: String!, baseURL: NSURL!) -> DOMDocumentFragment!
  @available(OSX 10.5, *)
  func createDocumentFragmentWithText(text: String!) -> DOMDocumentFragment!
}
@available(OSX 10.6, *)
class DOMFile : DOMBlob {
  var name: String! { get }
}
@available(OSX 10.6, *)
class DOMFileList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMFile!
}
@available(OSX 10.4, *)
class DOMHTMLAnchorElement : DOMHTMLElement {
  var charset: String!
  var coords: String!
  var href: String!
  var hreflang: String!
  var name: String!
  var rel: String!
  var rev: String!
  var shape: String!
  var target: String!
  var type: String!
  @available(OSX 10.5, *)
  var hashName: String! { get }
  @available(OSX 10.5, *)
  var host: String! { get }
  @available(OSX 10.5, *)
  var hostname: String! { get }
  @available(OSX 10.5, *)
  var pathname: String! { get }
  @available(OSX 10.5, *)
  var port: String! { get }
  @available(OSX 10.5, *)
  var `protocol`: String! { get }
  @available(OSX 10.5, *)
  var search: String! { get }
  @available(OSX 10.5, *)
  var text: String! { get }
  @available(OSX 10.5, *)
  @NSCopying var absoluteLinkURL: NSURL! { get }
}
@available(OSX 10.4, *)
class DOMHTMLAppletElement : DOMHTMLElement {
  var align: String!
  var alt: String!
  var archive: String!
  var code: String!
  var codeBase: String!
  var height: String!
  var hspace: Int32
  var name: String!
  var object: String!
  var vspace: Int32
  var width: String!
}
@available(OSX 10.4, *)
class DOMHTMLAreaElement : DOMHTMLElement {
  var alt: String!
  var coords: String!
  var href: String!
  var isNoHref: Bool
  var shape: String!
  var target: String!
  @available(OSX 10.5, *)
  var hashName: String! { get }
  @available(OSX 10.5, *)
  var host: String! { get }
  @available(OSX 10.5, *)
  var hostname: String! { get }
  @available(OSX 10.5, *)
  var pathname: String! { get }
  @available(OSX 10.5, *)
  var port: String! { get }
  @available(OSX 10.5, *)
  var `protocol`: String! { get }
  @available(OSX 10.5, *)
  var search: String! { get }
  @available(OSX 10.5, *)
  @NSCopying var absoluteLinkURL: NSURL! { get }
}
@available(OSX 10.4, *)
class DOMHTMLBRElement : DOMHTMLElement {
  var clear: String!
}
@available(OSX 10.4, *)
class DOMHTMLBaseElement : DOMHTMLElement {
  var href: String!
  var target: String!
}
@available(OSX 10.4, *)
class DOMHTMLBaseFontElement : DOMHTMLElement {
  var color: String!
  var face: String!
  var size: String!
}
@available(OSX 10.4, *)
class DOMHTMLBodyElement : DOMHTMLElement {
  var aLink: String!
  var background: String!
  var bgColor: String!
  var link: String!
  var text: String!
  var vLink: String!
}
@available(OSX 10.4, *)
class DOMHTMLButtonElement : DOMHTMLElement {
  @available(OSX 10.6, *)
  var autofocus: Bool
  var isDisabled: Bool
  var form: DOMHTMLFormElement! { get }
  var name: String!
  var type: String!
  var value: String!
  @available(OSX 10.6, *)
  var willValidate: Bool { get }
  @available(OSX 10.5, *)
  func click()
}
@available(OSX 10.4, *)
class DOMHTMLCollection : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMNode!
  func namedItem(name: String!) -> DOMNode!
  @available(OSX 10.6, *)
  func tags(name: String!) -> DOMNodeList!
}
@available(OSX 10.4, *)
class DOMHTMLDListElement : DOMHTMLElement {
  var isCompact: Bool
}
@available(OSX 10.4, *)
class DOMHTMLDirectoryElement : DOMHTMLElement {
  var isCompact: Bool
}
@available(OSX 10.4, *)
class DOMHTMLDivElement : DOMHTMLElement {
  var align: String!
}
@available(OSX 10.4, *)
class DOMHTMLDocument : DOMDocument {
  @available(OSX 10.5, *)
  var embeds: DOMHTMLCollection! { get }
  @available(OSX 10.5, *)
  var plugins: DOMHTMLCollection! { get }
  @available(OSX 10.5, *)
  var scripts: DOMHTMLCollection! { get }
  @available(OSX 10.5, *)
  var width: Int32 { get }
  @available(OSX 10.5, *)
  var height: Int32 { get }
  @available(OSX 10.5, *)
  var dir: String!
  @available(OSX 10.5, *)
  var designMode: String!
  @available(OSX 10.6, *)
  var compatMode: String! { get }
  @available(OSX 10.5, *)
  var bgColor: String!
  @available(OSX 10.5, *)
  var fgColor: String!
  @available(OSX 10.5, *)
  var alinkColor: String!
  @available(OSX 10.5, *)
  var linkColor: String!
  @available(OSX 10.5, *)
  var vlinkColor: String!
  func open()
  func close()
  func write(text: String!)
  func writeln(text: String!)
  @available(OSX 10.6, *)
  func clear()
  @available(OSX 10.5, *)
  func captureEvents()
  @available(OSX 10.5, *)
  func releaseEvents()
}
@available(OSX 10.4, *)
class DOMHTMLElement : DOMElement {
  var idName: String!
  var title: String!
  var lang: String!
  var dir: String!
  var tabIndex: Int32
  @available(OSX 10.8, *)
  var accessKey: String!
  var innerText: String!
  var outerText: String!
  var children: DOMHTMLCollection! { get }
  var contentEditable: String!
  var isContentEditable: Bool { get }
  @available(OSX 10.5, *)
  var titleDisplayString: String! { get }
  @available(OSX 10.8, *)
  func click()
}
@available(OSX 10.4, *)
class DOMHTMLEmbedElement : DOMHTMLElement {
  var align: String!
  var height: Int32
  var name: String!
  var src: String!
  var type: String!
  var width: Int32
}
@available(OSX 10.4, *)
class DOMHTMLFieldSetElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
}
@available(OSX 10.4, *)
class DOMHTMLFontElement : DOMHTMLElement {
  var color: String!
  var face: String!
  var size: String!
}
@available(OSX 10.4, *)
class DOMHTMLFormElement : DOMHTMLElement {
  var acceptCharset: String!
  var action: String!
  var enctype: String!
  @available(OSX 10.5, *)
  var encoding: String!
  var method: String!
  var name: String!
  var target: String!
  var elements: DOMHTMLCollection! { get }
  var length: Int32 { get }
  func submit()
  func reset()
}
@available(OSX 10.4, *)
class DOMHTMLFrameElement : DOMHTMLElement {
  var frameBorder: String!
  var longDesc: String!
  var marginHeight: String!
  var marginWidth: String!
  var name: String!
  var isNoResize: Bool
  var scrolling: String!
  var src: String!
  var contentDocument: DOMDocument! { get }
  @available(OSX 10.5, *)
  var contentWindow: DOMAbstractView! { get }
  @available(OSX 10.5, *)
  var location: String!
  @available(OSX 10.5, *)
  var width: Int32 { get }
  @available(OSX 10.5, *)
  var height: Int32 { get }
}
@available(OSX 10.4, *)
class DOMHTMLFrameSetElement : DOMHTMLElement {
  var cols: String!
  var rows: String!
}
@available(OSX 10.4, *)
class DOMHTMLHRElement : DOMHTMLElement {
  var align: String!
  var isNoShade: Bool
  var size: String!
  var width: String!
}
@available(OSX 10.4, *)
class DOMHTMLHeadElement : DOMHTMLElement {
  var profile: String!
}
@available(OSX 10.4, *)
class DOMHTMLHeadingElement : DOMHTMLElement {
  var align: String!
}
@available(OSX 10.4, *)
class DOMHTMLHtmlElement : DOMHTMLElement {
  var version: String!
}
@available(OSX 10.4, *)
class DOMHTMLIFrameElement : DOMHTMLElement {
  var align: String!
  var frameBorder: String!
  var height: String!
  var longDesc: String!
  var marginHeight: String!
  var marginWidth: String!
  var name: String!
  var scrolling: String!
  var src: String!
  var width: String!
  var contentDocument: DOMDocument! { get }
  @available(OSX 10.6, *)
  var contentWindow: DOMAbstractView! { get }
}
@available(OSX 10.4, *)
class DOMHTMLImageElement : DOMHTMLElement {
  var name: String!
  var align: String!
  var alt: String!
  var border: String!
  var height: Int32
  var hspace: Int32
  var isMap: Bool
  var longDesc: String!
  var src: String!
  var useMap: String!
  var vspace: Int32
  var width: Int32
  @available(OSX 10.5, *)
  var isComplete: Bool { get }
  @available(OSX 10.5, *)
  var lowsrc: String!
  @available(OSX 10.5, *)
  var naturalHeight: Int32 { get }
  @available(OSX 10.5, *)
  var naturalWidth: Int32 { get }
  @available(OSX 10.5, *)
  var x: Int32 { get }
  @available(OSX 10.5, *)
  var y: Int32 { get }
  @available(OSX 10.5, *)
  var altDisplayString: String! { get }
  @available(OSX 10.5, *)
  @NSCopying var absoluteImageURL: NSURL! { get }
}
@available(OSX 10.4, *)
class DOMHTMLInputElement : DOMHTMLElement {
  var accept: String!
  var alt: String!
  @available(OSX 10.6, *)
  var autofocus: Bool
  var isDefaultChecked: Bool
  var isChecked: Bool
  var isDisabled: Bool
  var form: DOMHTMLFormElement! { get }
  @available(OSX 10.6, *)
  var files: DOMFileList!
  @available(OSX 10.5, *)
  var isIndeterminate: Bool
  var maxLength: Int32
  @available(OSX 10.6, *)
  var isMultiple: Bool
  var name: String!
  var isReadOnly: Bool
  var size: String!
  var src: String!
  var type: String!
  var defaultValue: String!
  var value: String!
  @available(OSX 10.6, *)
  var willValidate: Bool { get }
  @available(OSX 10.5, *)
  var selectionStart: Int32
  @available(OSX 10.5, *)
  var selectionEnd: Int32
  var align: String!
  var useMap: String!
  @available(OSX 10.5, *)
  var altDisplayString: String! { get }
  @available(OSX 10.5, *)
  @NSCopying var absoluteImageURL: NSURL! { get }
  func select()
  @available(OSX 10.5, *)
  func setSelectionRange(start: Int32, end: Int32)
  func click()
}
@available(OSX 10.4, *)
class DOMHTMLLIElement : DOMHTMLElement {
  var type: String!
  var value: Int32
}
@available(OSX 10.4, *)
class DOMHTMLLabelElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
  var htmlFor: String!
}
@available(OSX 10.4, *)
class DOMHTMLLegendElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
  var align: String!
}
@available(OSX 10.4, *)
class DOMHTMLLinkElement : DOMHTMLElement {
  var isDisabled: Bool
  var charset: String!
  var href: String!
  var hreflang: String!
  var media: String!
  var rel: String!
  var rev: String!
  var target: String!
  var type: String!
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
  @available(OSX 10.5, *)
  @NSCopying var absoluteLinkURL: NSURL! { get }
}
@available(OSX 10.4, *)
class DOMHTMLMapElement : DOMHTMLElement {
  var areas: DOMHTMLCollection! { get }
  var name: String!
}
@available(OSX 10.5, *)
class DOMHTMLMarqueeElement : DOMHTMLElement {
  func start()
  func stop()
}
@available(OSX 10.4, *)
class DOMHTMLMenuElement : DOMHTMLElement {
  var isCompact: Bool
}
@available(OSX 10.4, *)
class DOMHTMLMetaElement : DOMHTMLElement {
  var content: String!
  var httpEquiv: String!
  var name: String!
  var scheme: String!
}
@available(OSX 10.4, *)
class DOMHTMLModElement : DOMHTMLElement {
  var cite: String!
  var dateTime: String!
}
@available(OSX 10.4, *)
class DOMHTMLOListElement : DOMHTMLElement {
  var isCompact: Bool
  var start: Int32
  var type: String!
}
@available(OSX 10.4, *)
class DOMHTMLObjectElement : DOMHTMLElement {
  var form: DOMHTMLFormElement! { get }
  var code: String!
  var align: String!
  var archive: String!
  var border: String!
  var codeBase: String!
  var codeType: String!
  var data: String!
  var isDeclare: Bool
  var height: String!
  var hspace: Int32
  var name: String!
  var standby: String!
  var type: String!
  var useMap: String!
  var vspace: Int32
  var width: String!
  var contentDocument: DOMDocument! { get }
  @available(OSX 10.5, *)
  @NSCopying var absoluteImageURL: NSURL! { get }
}
@available(OSX 10.4, *)
class DOMHTMLOptGroupElement : DOMHTMLElement {
  var isDisabled: Bool
  var label: String!
}
@available(OSX 10.4, *)
class DOMHTMLOptionElement : DOMHTMLElement {
  var isDisabled: Bool
  var form: DOMHTMLFormElement! { get }
  var label: String!
  var isDefaultSelected: Bool
  var isSelected: Bool
  var value: String!
  var text: String! { get }
  var index: Int32 { get }
}
@available(OSX 10.4, *)
class DOMHTMLOptionsCollection : DOMObject {
  @available(OSX 10.5, *)
  var selectedIndex: Int32
  var length: UInt32
  func namedItem(name: String!) -> DOMNode!
  @available(OSX 10.5, *)
  func add(option: DOMHTMLOptionElement!, index: UInt32)
  @available(OSX 10.6, *)
  func remove(index: UInt32)
  func item(index: UInt32) -> DOMNode!
}
@available(OSX 10.4, *)
class DOMHTMLParagraphElement : DOMHTMLElement {
  var align: String!
}
@available(OSX 10.4, *)
class DOMHTMLParamElement : DOMHTMLElement {
  var name: String!
  var type: String!
  var value: String!
  var valueType: String!
}
@available(OSX 10.4, *)
class DOMHTMLPreElement : DOMHTMLElement {
  var width: Int32
  @available(OSX 10.5, *)
  var isWrap: Bool
}
@available(OSX 10.4, *)
class DOMHTMLQuoteElement : DOMHTMLElement {
  var cite: String!
}
@available(OSX 10.4, *)
class DOMHTMLScriptElement : DOMHTMLElement {
  var text: String!
  var htmlFor: String!
  var event: String!
  var charset: String!
  var isDefer: Bool
  var src: String!
  var type: String!
}
@available(OSX 10.4, *)
class DOMHTMLSelectElement : DOMHTMLElement {
  @available(OSX 10.6, *)
  var autofocus: Bool
  var isDisabled: Bool
  var form: DOMHTMLFormElement! { get }
  var isMultiple: Bool
  var name: String!
  var size: Int32
  var type: String! { get }
  var options: DOMHTMLOptionsCollection! { get }
  var length: Int32 { get }
  var selectedIndex: Int32
  var value: String!
  @available(OSX 10.6, *)
  var willValidate: Bool { get }
  @available(OSX 10.6, *)
  func item(index: UInt32) -> DOMNode!
  @available(OSX 10.6, *)
  func namedItem(name: String!) -> DOMNode!
  @available(OSX 10.5, *)
  func add(element: DOMHTMLElement!, before: DOMHTMLElement!)
  func remove(index: Int32)
}
extension DOMHTMLSelectElement {
}
@available(OSX 10.4, *)
class DOMHTMLStyleElement : DOMHTMLElement {
  var isDisabled: Bool
  var media: String!
  var type: String!
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
@available(OSX 10.4, *)
class DOMHTMLTableCaptionElement : DOMHTMLElement {
  var align: String!
}
@available(OSX 10.4, *)
class DOMHTMLTableCellElement : DOMHTMLElement {
  var cellIndex: Int32 { get }
  var abbr: String!
  var align: String!
  var axis: String!
  var bgColor: String!
  var ch: String!
  var chOff: String!
  var colSpan: Int32
  var headers: String!
  var height: String!
  var isNoWrap: Bool
  var rowSpan: Int32
  var scope: String!
  var vAlign: String!
  var width: String!
}
@available(OSX 10.4, *)
class DOMHTMLTableColElement : DOMHTMLElement {
  var align: String!
  var ch: String!
  var chOff: String!
  var span: Int32
  var vAlign: String!
  var width: String!
}
@available(OSX 10.4, *)
class DOMHTMLTableElement : DOMHTMLElement {
  var caption: DOMHTMLTableCaptionElement!
  var tHead: DOMHTMLTableSectionElement!
  var tFoot: DOMHTMLTableSectionElement!
  var rows: DOMHTMLCollection! { get }
  var tBodies: DOMHTMLCollection! { get }
  var align: String!
  var bgColor: String!
  var border: String!
  var cellPadding: String!
  var cellSpacing: String!
  var frameBorders: String!
  var rules: String!
  var summary: String!
  var width: String!
  func createTHead() -> DOMHTMLElement!
  func deleteTHead()
  func createTFoot() -> DOMHTMLElement!
  func deleteTFoot()
  func createCaption() -> DOMHTMLElement!
  func deleteCaption()
  func insertRow(index: Int32) -> DOMHTMLElement!
  func deleteRow(index: Int32)
}
@available(OSX 10.4, *)
class DOMHTMLTableRowElement : DOMHTMLElement {
  var rowIndex: Int32 { get }
  var sectionRowIndex: Int32 { get }
  var cells: DOMHTMLCollection! { get }
  var align: String!
  var bgColor: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  func insertCell(index: Int32) -> DOMHTMLElement!
  func deleteCell(index: Int32)
}
@available(OSX 10.4, *)
class DOMHTMLTableSectionElement : DOMHTMLElement {
  var align: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  var rows: DOMHTMLCollection! { get }
  func insertRow(index: Int32) -> DOMHTMLElement!
  func deleteRow(index: Int32)
}
@available(OSX 10.4, *)
class DOMHTMLTextAreaElement : DOMHTMLElement {
  @available(OSX 10.6, *)
  var autofocus: Bool
  var cols: Int32
  var isDisabled: Bool
  var form: DOMHTMLFormElement! { get }
  var name: String!
  var isReadOnly: Bool
  var rows: Int32
  var type: String! { get }
  var defaultValue: String!
  var value: String!
  @available(OSX 10.6, *)
  var willValidate: Bool { get }
  @available(OSX 10.5, *)
  var selectionStart: Int32
  @available(OSX 10.5, *)
  var selectionEnd: Int32
  func select()
  @available(OSX 10.5, *)
  func setSelectionRange(start: Int32, end: Int32)
}
@available(OSX 10.4, *)
class DOMHTMLTitleElement : DOMHTMLElement {
  var text: String!
}
@available(OSX 10.4, *)
class DOMHTMLUListElement : DOMHTMLElement {
  var isCompact: Bool
  var type: String!
}
@available(OSX 10.4, *)
class DOMImplementation : DOMObject {
  @available(OSX 10.5, *)
  func hasFeature(feature: String!, version: String!) -> Bool
  @available(OSX 10.5, *)
  func createDocumentType(qualifiedName: String!, publicId: String!, systemId: String!) -> DOMDocumentType!
  @available(OSX 10.5, *)
  func createDocument(namespaceURI: String!, qualifiedName: String!, doctype: DOMDocumentType!) -> DOMDocument!
  @available(OSX 10.5, *)
  func createCSSStyleSheet(title: String!, media: String!) -> DOMCSSStyleSheet!
  @available(OSX 10.5, *)
  func createHTMLDocument(title: String!) -> DOMHTMLDocument!
}
extension DOMImplementation {
}
var DOM_KEY_LOCATION_STANDARD: Int { get }
var DOM_KEY_LOCATION_LEFT: Int { get }
var DOM_KEY_LOCATION_RIGHT: Int { get }
var DOM_KEY_LOCATION_NUMPAD: Int { get }
@available(OSX 10.5, *)
class DOMKeyboardEvent : DOMUIEvent {
  var keyIdentifier: String! { get }
  @available(OSX 10.8, *)
  var location: UInt32 { get }
  var isCtrlKey: Bool { get }
  var isShiftKey: Bool { get }
  var isAltKey: Bool { get }
  var isMetaKey: Bool { get }
  @available(OSX 10.5, *)
  var isAltGraphKey: Bool { get }
  var keyCode: Int32 { get }
  var charCode: Int32 { get }
  func getModifierState(keyIdentifierArg: String!) -> Bool
  @available(OSX 10.8, *)
  func initKeyboardEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, altGraphKey: Bool)
  @available(OSX 10.8, *)
  func initKeyboardEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, keyIdentifier: String!, location: UInt32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
@available(OSX 10.4, *)
class DOMMediaList : DOMObject {
  var mediaText: String!
  var length: UInt32 { get }
  func item(index: UInt32) -> String!
  func deleteMedium(oldMedium: String!)
  func appendMedium(newMedium: String!)
}
@available(OSX 10.4, *)
class DOMMouseEvent : DOMUIEvent {
  var screenX: Int32 { get }
  var screenY: Int32 { get }
  var clientX: Int32 { get }
  var clientY: Int32 { get }
  var isCtrlKey: Bool { get }
  var isShiftKey: Bool { get }
  var isAltKey: Bool { get }
  var isMetaKey: Bool { get }
  var button: UInt16 { get }
  var relatedTarget: DOMEventTarget! { get }
  @available(OSX 10.5, *)
  var offsetX: Int32 { get }
  @available(OSX 10.5, *)
  var offsetY: Int32 { get }
  @available(OSX 10.5, *)
  var x: Int32 { get }
  @available(OSX 10.5, *)
  var y: Int32 { get }
  @available(OSX 10.5, *)
  var fromElement: DOMNode! { get }
  @available(OSX 10.5, *)
  var toElement: DOMNode! { get }
  @available(OSX 10.5, *)
  func initMouseEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool, button: UInt16, relatedTarget: DOMEventTarget!)
}
extension DOMMouseEvent {
}
var DOM_MODIFICATION: Int { get }
var DOM_ADDITION: Int { get }
var DOM_REMOVAL: Int { get }
@available(OSX 10.4, *)
class DOMMutationEvent : DOMEvent {
  var relatedNode: DOMNode! { get }
  var prevValue: String! { get }
  var newValue: String! { get }
  var attrName: String! { get }
  var attrChange: UInt16 { get }
  @available(OSX 10.5, *)
  func initMutationEvent(type: String!, canBubble: Bool, cancelable: Bool, relatedNode: DOMNode!, prevValue: String!, newValue: String!, attrName: String!, attrChange: UInt16)
}
extension DOMMutationEvent {
}
@available(OSX 10.4, *)
class DOMNamedNodeMap : DOMObject {
  var length: UInt32 { get }
  func getNamedItem(name: String!) -> DOMNode!
  func setNamedItem(node: DOMNode!) -> DOMNode!
  func removeNamedItem(name: String!) -> DOMNode!
  func item(index: UInt32) -> DOMNode!
  @available(OSX 10.5, *)
  func getNamedItemNS(namespaceURI: String!, localName: String!) -> DOMNode!
  func setNamedItemNS(node: DOMNode!) -> DOMNode!
  @available(OSX 10.5, *)
  func removeNamedItemNS(namespaceURI: String!, localName: String!) -> DOMNode!
}
extension DOMNamedNodeMap {
}
var DOM_ELEMENT_NODE: Int { get }
var DOM_ATTRIBUTE_NODE: Int { get }
var DOM_TEXT_NODE: Int { get }
var DOM_CDATA_SECTION_NODE: Int { get }
var DOM_ENTITY_REFERENCE_NODE: Int { get }
var DOM_ENTITY_NODE: Int { get }
var DOM_PROCESSING_INSTRUCTION_NODE: Int { get }
var DOM_COMMENT_NODE: Int { get }
var DOM_DOCUMENT_NODE: Int { get }
var DOM_DOCUMENT_TYPE_NODE: Int { get }
var DOM_DOCUMENT_FRAGMENT_NODE: Int { get }
var DOM_NOTATION_NODE: Int { get }
var DOM_DOCUMENT_POSITION_DISCONNECTED: Int { get }
var DOM_DOCUMENT_POSITION_PRECEDING: Int { get }
var DOM_DOCUMENT_POSITION_FOLLOWING: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINS: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINED_BY: Int { get }
var DOM_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: Int { get }
@available(OSX 10.4, *)
class DOMNode : DOMObject, DOMEventTarget {
  var nodeName: String! { get }
  var nodeValue: String!
  var nodeType: UInt16 { get }
  var parent: DOMNode! { get }
  var childNodes: DOMNodeList! { get }
  var firstChild: DOMNode! { get }
  var lastChild: DOMNode! { get }
  var previousSibling: DOMNode! { get }
  var nextSibling: DOMNode! { get }
  var ownerDocument: DOMDocument! { get }
  var namespaceURI: String! { get }
  var prefix: String!
  var localName: String! { get }
  var attributes: DOMNamedNodeMap! { get }
  @available(OSX 10.5, *)
  var baseURI: String! { get }
  @available(OSX 10.5, *)
  var textContent: String!
  @available(OSX 10.5, *)
  var parentElement: DOMElement! { get }
  @available(OSX 10.5, *)
  var isContentEditable: Bool { get }
  @available(OSX 10.5, *)
  func insertBefore(newChild: DOMNode!, refChild: DOMNode!) -> DOMNode!
  @available(OSX 10.5, *)
  func replaceChild(newChild: DOMNode!, oldChild: DOMNode!) -> DOMNode!
  func removeChild(oldChild: DOMNode!) -> DOMNode!
  func appendChild(newChild: DOMNode!) -> DOMNode!
  func hasChildNodes() -> Bool
  func cloneNode(deep: Bool) -> DOMNode!
  func normalize()
  @available(OSX 10.5, *)
  func isSupported(feature: String!, version: String!) -> Bool
  func hasAttributes() -> Bool
  @available(OSX 10.5, *)
  func isSameNode(other: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func isEqualNode(other: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func lookupPrefix(namespaceURI: String!) -> String!
  @available(OSX 10.5, *)
  func isDefaultNamespace(namespaceURI: String!) -> Bool
  @available(OSX 10.5, *)
  func lookupNamespaceURI(prefix: String!) -> String!
  @available(OSX 10.6, *)
  func compareDocumentPosition(other: DOMNode!) -> UInt16
  @available(OSX 10.5, *)
  func contains(other: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func addEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(OSX 10.5, *)
  func removeEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(OSX 10.4, *)
  func dispatchEvent(event: DOMEvent!) -> Bool
}
extension DOMNode {
}
var DOM_FILTER_ACCEPT: UInt32 { get }
var DOM_FILTER_REJECT: UInt32 { get }
var DOM_FILTER_SKIP: UInt32 { get }
var DOM_SHOW_ALL: UInt32 { get }
var DOM_SHOW_ELEMENT: UInt32 { get }
var DOM_SHOW_ATTRIBUTE: UInt32 { get }
var DOM_SHOW_TEXT: UInt32 { get }
var DOM_SHOW_CDATA_SECTION: UInt32 { get }
var DOM_SHOW_ENTITY_REFERENCE: UInt32 { get }
var DOM_SHOW_ENTITY: UInt32 { get }
var DOM_SHOW_PROCESSING_INSTRUCTION: UInt32 { get }
var DOM_SHOW_COMMENT: UInt32 { get }
var DOM_SHOW_DOCUMENT: UInt32 { get }
var DOM_SHOW_DOCUMENT_TYPE: UInt32 { get }
var DOM_SHOW_DOCUMENT_FRAGMENT: UInt32 { get }
var DOM_SHOW_NOTATION: UInt32 { get }
@available(OSX 10.4, *)
protocol DOMNodeFilter : NSObjectProtocol {
  func accept(n: DOMNode!) -> Int16
}
@available(OSX 10.4, *)
class DOMNodeIterator : DOMObject {
  var root: DOMNode! { get }
  var whatToShow: UInt32 { get }
  var filter: DOMNodeFilter! { get }
  var expandEntityReferences: Bool { get }
  @available(OSX 10.5, *)
  var referenceNode: DOMNode! { get }
  @available(OSX 10.5, *)
  var isPointerBeforeReferenceNode: Bool { get }
  func nextNode() -> DOMNode!
  func previousNode() -> DOMNode!
  func detach()
}
@available(OSX 10.4, *)
class DOMNodeList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMNode!
}
typealias DOMTimeStamp = UInt64
@available(OSX 10.4, *)
class DOMObject : WebScriptObject, NSCopying {
  @available(OSX 10.4, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension DOMObject {
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
var DOM_HORIZONTAL: Int { get }
var DOM_VERTICAL: Int { get }
var DOM_BOTH: Int { get }
@available(OSX 10.5, *)
class DOMOverflowEvent : DOMEvent {
  var orient: UInt16 { get }
  var isHorizontalOverflow: Bool { get }
  var isVerticalOverflow: Bool { get }
  func initOverflowEvent(orient: UInt16, horizontalOverflow: Bool, verticalOverflow: Bool)
}
@available(OSX 10.4, *)
class DOMProcessingInstruction : DOMCharacterData {
  var target: String! { get }
  @available(OSX 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
@available(OSX 10.4, *)
class DOMRGBColor : DOMObject {
  var red: DOMCSSPrimitiveValue! { get }
  var green: DOMCSSPrimitiveValue! { get }
  var blue: DOMCSSPrimitiveValue! { get }
  var alpha: DOMCSSPrimitiveValue! { get }
  @available(OSX 10.5, *)
  @NSCopying var color: NSColor! { get }
}
var DOM_START_TO_START: Int { get }
var DOM_START_TO_END: Int { get }
var DOM_END_TO_END: Int { get }
var DOM_END_TO_START: Int { get }
var DOM_NODE_BEFORE: Int { get }
var DOM_NODE_AFTER: Int { get }
var DOM_NODE_BEFORE_AND_AFTER: Int { get }
var DOM_NODE_INSIDE: Int { get }
@available(OSX 10.4, *)
class DOMRange : DOMObject {
  var startContainer: DOMNode! { get }
  var startOffset: Int32 { get }
  var endContainer: DOMNode! { get }
  var endOffset: Int32 { get }
  var isCollapsed: Bool { get }
  var commonAncestorContainer: DOMNode! { get }
  @available(OSX 10.5, *)
  var text: String! { get }
  @available(OSX 10.5, *)
  func setStart(refNode: DOMNode!, offset: Int32)
  @available(OSX 10.5, *)
  func setEnd(refNode: DOMNode!, offset: Int32)
  func setStartBefore(refNode: DOMNode!)
  func setStartAfter(refNode: DOMNode!)
  func setEndBefore(refNode: DOMNode!)
  func setEndAfter(refNode: DOMNode!)
  func collapse(toStart: Bool)
  func select(refNode: DOMNode!)
  func selectNodeContents(refNode: DOMNode!)
  @available(OSX 10.5, *)
  func compareBoundaryPoints(how: UInt16, sourceRange: DOMRange!) -> Int16
  func deleteContents()
  func extractContents() -> DOMDocumentFragment!
  func cloneContents() -> DOMDocumentFragment!
  func insert(newNode: DOMNode!)
  func surroundContents(newParent: DOMNode!)
  func clone() -> DOMRange!
  func toString() -> String!
  func detach()
  @available(OSX 10.5, *)
  func createContextualFragment(html: String!) -> DOMDocumentFragment!
  @available(OSX 10.5, *)
  func intersectsNode(refNode: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func compare(refNode: DOMNode!) -> Int16
  @available(OSX 10.5, *)
  func comparePoint(refNode: DOMNode!, offset: Int32) -> Int16
  @available(OSX 10.5, *)
  func isPointInRange(refNode: DOMNode!, offset: Int32) -> Bool
}
extension DOMRange {
}
@available(OSX 10.4, *)
let DOMRangeException: String
@available(OSX 10.4, *)
struct DOMRangeExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_BAD_BOUNDARYPOINTS_ERR: DOMRangeExceptionCode { get }
var DOM_INVALID_NODE_TYPE_ERR: DOMRangeExceptionCode { get }
@available(OSX 10.4, *)
class DOMRect : DOMObject {
  var top: DOMCSSPrimitiveValue! { get }
  var right: DOMCSSPrimitiveValue! { get }
  var bottom: DOMCSSPrimitiveValue! { get }
  var left: DOMCSSPrimitiveValue! { get }
}
@available(OSX 10.4, *)
class DOMStyleSheet : DOMObject {
  var type: String! { get }
  var isDisabled: Bool
  var ownerNode: DOMNode! { get }
  var parent: DOMStyleSheet! { get }
  var href: String! { get }
  var title: String! { get }
  var media: DOMMediaList! { get }
}
@available(OSX 10.4, *)
class DOMStyleSheetList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMStyleSheet!
}
@available(OSX 10.4, *)
class DOMText : DOMCharacterData {
  @available(OSX 10.6, *)
  var wholeText: String! { get }
  func splitText(offset: UInt32) -> DOMText!
  @available(OSX 10.6, *)
  func replaceWholeText(content: String!) -> DOMText!
}
@available(OSX 10.4, *)
class DOMTreeWalker : DOMObject {
  var root: DOMNode! { get }
  var whatToShow: UInt32 { get }
  var filter: DOMNodeFilter! { get }
  var expandEntityReferences: Bool { get }
  var currentNode: DOMNode!
  func parentNode() -> DOMNode!
  func firstChild() -> DOMNode!
  func lastChild() -> DOMNode!
  func previousSibling() -> DOMNode!
  func nextSibling() -> DOMNode!
  func previousNode() -> DOMNode!
  func nextNode() -> DOMNode!
}
@available(OSX 10.4, *)
class DOMUIEvent : DOMEvent {
  var view: DOMAbstractView! { get }
  var detail: Int32 { get }
  @available(OSX 10.5, *)
  var keyCode: Int32 { get }
  @available(OSX 10.5, *)
  var charCode: Int32 { get }
  @available(OSX 10.5, *)
  var pageX: Int32 { get }
  @available(OSX 10.5, *)
  var pageY: Int32 { get }
  @available(OSX 10.5, *)
  var which: Int32 { get }
  @available(OSX 10.5, *)
  func initUIEvent(type: String!, canBubble: Bool, cancelable: Bool, view: DOMAbstractView!, detail: Int32)
}
extension DOMUIEvent {
}
var DOM_DOM_DELTA_PIXEL: Int { get }
var DOM_DOM_DELTA_LINE: Int { get }
var DOM_DOM_DELTA_PAGE: Int { get }
@available(OSX 10.5, *)
class DOMWheelEvent : DOMMouseEvent {
  @available(OSX 10.5, *)
  var wheelDeltaX: Int32 { get }
  @available(OSX 10.5, *)
  var wheelDeltaY: Int32 { get }
  var wheelDelta: Int32 { get }
  var isHorizontal: Bool { get }
  @available(OSX 10.5, *)
  func initWheelEvent(wheelDeltaX: Int32, wheelDeltaY: Int32, view: DOMAbstractView!, screenX: Int32, screenY: Int32, clientX: Int32, clientY: Int32, ctrlKey: Bool, altKey: Bool, shiftKey: Bool, metaKey: Bool)
}
@available(OSX 10.4, *)
let DOMXPathException: String
@available(OSX 10.4, *)
struct DOMXPathExceptionCode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var DOM_INVALID_EXPRESSION_ERR: DOMXPathExceptionCode { get }
var DOM_TYPE_ERR: DOMXPathExceptionCode { get }
@available(OSX 10.5, *)
class DOMXPathExpression : DOMObject {
  @available(OSX 10.5, *)
  func evaluate(contextNode: DOMNode!, type: UInt16, `in` inResult: DOMXPathResult!) -> DOMXPathResult!
}
extension DOMXPathExpression {
}
@available(OSX 10.5, *)
protocol DOMXPathNSResolver : NSObjectProtocol {
  func lookupNamespaceURI(prefix: String!) -> String!
}
var DOM_ANY_TYPE: Int { get }
var DOM_NUMBER_TYPE: Int { get }
var DOM_STRING_TYPE: Int { get }
var DOM_BOOLEAN_TYPE: Int { get }
var DOM_UNORDERED_NODE_ITERATOR_TYPE: Int { get }
var DOM_ORDERED_NODE_ITERATOR_TYPE: Int { get }
var DOM_UNORDERED_NODE_SNAPSHOT_TYPE: Int { get }
var DOM_ORDERED_NODE_SNAPSHOT_TYPE: Int { get }
var DOM_ANY_UNORDERED_NODE_TYPE: Int { get }
var DOM_FIRST_ORDERED_NODE_TYPE: Int { get }
@available(OSX 10.5, *)
class DOMXPathResult : DOMObject {
  var resultType: UInt16 { get }
  var numberValue: Double { get }
  var stringValue: String! { get }
  var isBooleanValue: Bool { get }
  var singleNodeValue: DOMNode! { get }
  var isInvalidIteratorState: Bool { get }
  var snapshotLength: UInt32 { get }
  func iterateNext() -> DOMNode!
  func snapshotItem(index: UInt32) -> DOMNode!
}

/*! @abstract A WKBackForwardList object is a list of webpages previously
 visited in a web view that can be reached by going back or forward.
 */
@available(OSX 10.10, *)
class WKBackForwardList : NSObject {

  /*! @abstract The current item.
   */
  var currentItem: WKBackForwardListItem? { get }

  /*! @abstract The item immediately preceding the current item, or nil
  if there isn't one.
   */
  var backItem: WKBackForwardListItem? { get }

  /*! @abstract The item immediately following the current item, or nil
  if there isn't one.
   */
  var forwardItem: WKBackForwardListItem? { get }

  /*! @abstract Returns the item at a specified distance from the current
   item.
   @param index Index of the desired list item relative to the current item:
   0 for the current item, -1 for the immediately preceding item, 1 for the
   immediately following item, and so on.
   @result The item at the specified distance from the current item, or nil
   if the index parameter exceeds the limits of the list.
   */
  func itemAt(index: Int) -> WKBackForwardListItem?

  /*! @abstract The portion of the list preceding the current item.
   @discussion The items are in the order in which they were originally
   visited.
   */
  var backList: [WKBackForwardListItem] { get }

  /*! @abstract The portion of the list following the current item.
   @discussion The items are in the order in which they were originally
   visited.
   */
  var forwardList: [WKBackForwardListItem] { get }
  init()
}

/*! A WKBackForwardListItem object represents a webpage in the back-forward list of a web view.
 */
@available(OSX 10.10, *)
class WKBackForwardListItem : NSObject {

  /*! @abstract The URL of the webpage represented by this item.
   */
  @NSCopying var url: NSURL { get }

  /*! @abstract The title of the webpage represented by this item.
   */
  var title: String? { get }

  /*! @abstract The URL of the initial request that created this item.
   */
  @NSCopying var initialURL: NSURL { get }
  init()
}

/*! @constant WKErrorDomain Indicates a WebKit error. */
@available(OSX 10.10, *)
let WKErrorDomain: String

/*! @enum WKErrorCode
 @abstract Constants used by NSError to indicate errors in the WebKit domain.
 @constant WKErrorUnknown                           Indicates that an unknown error occurred.
 @constant WKErrorWebContentProcessTerminated       Indicates that the Web Content process was terminated.
 @constant WKErrorWebViewInvalidated                Indicates that the WKWebView was invalidated.
 @constant WKErrorJavaScriptExceptionOccurred       Indicates that a JavaScript exception occurred.
 @constant WKErrorJavaScriptResultTypeIsUnsupported Indicates that the result of JavaScript execution could not be returned.
 */
@available(OSX 10.10, *)
enum WKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case WebContentProcessTerminated
  case WebViewInvalidated
  case JavaScriptExceptionOccurred
  @available(OSX 10.11, *)
  case JavaScriptResultTypeIsUnsupported
}

@available(OSX 10.10, iOS 8.0, *)
extension WKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/*! A WKFrameInfo object contains information about a frame on a webpage.
 @discussion An instance of this class is a transient, data-only object;
 it does not uniquely identify a frame across multiple delegate method
 calls.
 */
@available(OSX 10.10, *)
class WKFrameInfo : NSObject, NSCopying {

  /*! @abstract A Boolean value indicating whether the frame is the main frame
   or a subframe.
   */
  var isMainFrame: Bool { get }

  /*! @abstract The frame's current request.
   */
  @NSCopying var request: NSURLRequest { get }

  /*! @abstract The frame's current security origin.
   */
  @available(OSX 10.11, *)
  var securityOrigin: WKSecurityOrigin { get }
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*! A WKNavigation object can be used for tracking the loading progress of a webpage.
 @discussion A navigation is returned from the web view load methods, and is
 also passed to the navigation delegate methods, to uniquely identify a webpage
 load from start to finish.
 */
@available(OSX 10.10, *)
class WKNavigation : NSObject {
  init()
}

/*! @enum WKNavigationType
 @abstract The type of action triggering a navigation.
 @constant WKNavigationTypeLinkActivated    A link with an href attribute was activated by the user.
 @constant WKNavigationTypeFormSubmitted    A form was submitted.
 @constant WKNavigationTypeBackForward      An item from the back-forward list was requested.
 @constant WKNavigationTypeReload           The webpage was reloaded.
 @constant WKNavigationTypeFormResubmitted  A form was resubmitted (for example by going back, going forward, or reloading).
 @constant WKNavigationTypeOther            Navigation is taking place for some other reason.
 */
@available(OSX 10.10, *)
enum WKNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkActivated
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}

/*! 
A WKNavigationAction object contains information about an action that may cause a navigation, used for making policy decisions.
 */
@available(OSX 10.10, *)
class WKNavigationAction : NSObject {

  /*! @abstract The frame requesting the navigation.
   */
  @NSCopying var sourceFrame: WKFrameInfo { get }

  /*! @abstract The target frame, or nil if this is a new window navigation.
   */
  @NSCopying var targetFrame: WKFrameInfo? { get }

  /*! @abstract The type of action that triggered the navigation.
   @discussion The value is one of the constants of the enumerated type WKNavigationType.
   */
  var navigationType: WKNavigationType { get }

  /*! @abstract The navigation's request.
   */
  @NSCopying var request: NSURLRequest { get }

  /*! @abstract The modifier keys that were in effect when the navigation was requested.
   */
  var modifierFlags: NSEventModifierFlags { get }

  /*! @abstract The number of the mouse button causing the navigation to be requested.
   */
  var buttonNumber: Int { get }
  init()
}

/*! @enum WKNavigationActionPolicy
 @abstract The policy to pass back to the decision handler from the
 webView:decidePolicyForNavigationAction:decisionHandler: method.
 @constant WKNavigationActionPolicyCancel   Cancel the navigation.
 @constant WKNavigationActionPolicyAllow    Allow the navigation to continue.
 */
@available(OSX 10.10, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}

/*! @enum WKNavigationResponsePolicy
 @abstract The policy to pass back to the decision handler from the webView:decidePolicyForNavigationResponse:decisionHandler: method.
 @constant WKNavigationResponsePolicyCancel   Cancel the navigation.
 @constant WKNavigationResponsePolicyAllow    Allow the navigation to continue.
 */
@available(OSX 10.10, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Cancel
  case Allow
}

/*! A class conforming to the WKNavigationDelegate protocol can provide
 methods for tracking progress for main frame navigations and for deciding
 policy for main frame and subframe navigations.
 */
protocol WKNavigationDelegate : NSObjectProtocol {

  /*! @abstract Decides whether to allow or cancel a navigation.
   @param webView The web view invoking the delegate method.
   @param navigationAction Descriptive information about the action
   triggering the navigation request.
   @param decisionHandler The decision handler to call to allow or cancel the
   navigation. The argument is one of the constants of the enumerated type WKNavigationActionPolicy.
   @discussion If you do not implement this method, the web view will load the request or, if appropriate, forward it to another application.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void)

  /*! @abstract Decides whether to allow or cancel a navigation after its
   response is known.
   @param webView The web view invoking the delegate method.
   @param navigationResponse Descriptive information about the navigation
   response.
   @param decisionHandler The decision handler to call to allow or cancel the
   navigation. The argument is one of the constants of the enumerated type WKNavigationResponsePolicy.
   @discussion If you do not implement this method, the web view will allow the response, if the web view can show it.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void)

  /*! @abstract Invoked when a main frame navigation starts.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)

  /*! @abstract Invoked when a server redirect is received for the main
   frame.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)

  /*! @abstract Invoked when an error occurs while starting to load data for
   the main frame.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   @param error The error that occurred.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError)

  /*! @abstract Invoked when content starts arriving for the main frame.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didCommit navigation: WKNavigation!)

  /*! @abstract Invoked when a main frame navigation completes.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!)

  /*! @abstract Invoked when an error occurs during a committed main frame
   navigation.
   @param webView The web view invoking the delegate method.
   @param navigation The navigation.
   @param error The error that occurred.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didFail navigation: WKNavigation!, withError error: NSError)

  /*! @abstract Invoked when the web view needs to respond to an authentication challenge.
   @param webView The web view that received the authentication challenge.
   @param challenge The authentication challenge.
   @param completionHandler The completion handler you must invoke to respond to the challenge. The
   disposition argument is one of the constants of the enumerated type
   NSURLSessionAuthChallengeDisposition. When disposition is NSURLSessionAuthChallengeUseCredential,
   the credential argument is the credential to use, or nil to indicate continuing without a
   credential.
   @discussion If you do not implement this method, the web view will respond to the authentication challenge with the NSURLSessionAuthChallengeRejectProtectionSpace disposition.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, didReceive challenge: NSURLAuthenticationChallenge, completionHandler: (NSURLSessionAuthChallengeDisposition, NSURLCredential?) -> Void)

  /*! @abstract Invoked when the web view's web content process is terminated.
   @param webView The web view whose underlying web content process was terminated.
   */
  @available(OSX 10.11, *)
  optional func webViewWebContentProcessDidTerminate(webView: WKWebView)
}

/*! Contains information about a navigation response, used for making policy decisions.
 */
@available(OSX 10.10, *)
class WKNavigationResponse : NSObject {

  /*! @abstract A Boolean value indicating whether the frame being navigated is the main frame.
   */
  var isForMainFrame: Bool { get }

  /*! @abstract The frame's response.
   */
  @NSCopying var response: NSURLResponse { get }

  /*! @abstract A Boolean value indicating whether WebKit can display the response's MIME type natively.
   @discussion Allowing a navigation response with a MIME type that can't be shown will cause the navigation to fail.
   */
  var canShowMIMEType: Bool { get }
  init()
}

/*! A WKPreferences object encapsulates the preference settings for a web
 view. The preferences object associated with a web view is specified by
 its web view configuration.
 */
@available(OSX 10.10, *)
class WKPreferences : NSObject {

  /*! @abstract The minimum font size in points.
   @discussion The default value is 0.
   */
  var minimumFontSize: CGFloat

  /*! @abstract A Boolean value indicating whether JavaScript is enabled.
   @discussion The default value is YES.
   */
  var isJavaScriptEnabled: Bool

  /*! @abstract A Boolean value indicating whether JavaScript can open
   windows without user interaction.
   @discussion The default value is NO in iOS and YES in OS X.
   */
  var javaScriptCanOpenWindowsAutomatically: Bool

  /*! @abstract A Boolean value indicating whether Java is enabled.
   @discussion The default value is NO.
   */
  var isJavaEnabled: Bool

  /*! @abstract A Boolean value indicating whether plug-ins are enabled.
   @discussion The default value is NO.
   */
  var plugInsEnabled: Bool
  init()
}

/*! A WKProcessPool object represents a pool of web content processes.
 The process pool associated with a web view is specified by its web view
 configuration. Each web view is given its own web content process until an
 implementation-defined process limit is reached; after that, web views
 with the same process pool end up sharing web content processes.
 */
@available(OSX 10.10, *)
class WKProcessPool : NSObject {
  init()
}

/*! A WKScriptMessage object contains information about a message sent from
 a webpage.
 */
@available(OSX 10.10, *)
class WKScriptMessage : NSObject {

  /*! @abstract The body of the message.
   @discussion Allowed types are NSNumber, NSString, NSDate, NSArray,
   NSDictionary, and NSNull.
   */
  @NSCopying var body: AnyObject { get }

  /*! @abstract The web view sending the message. */
  weak var webView: @sil_weak WKWebView? { get }

  /*! @abstract The frame sending the message. */
  @NSCopying var frameInfo: WKFrameInfo { get }

  /*! @abstract The name of the message handler to which the message is sent.
   */
  var name: String { get }
  init()
}

/*! A class conforming to the WKScriptMessageHandler protocol provides a
 method for receiving messages from JavaScript running in a webpage.
 */
protocol WKScriptMessageHandler : NSObjectProtocol {

  /*! @abstract Invoked when a script message is received from a webpage.
   @param userContentController The user content controller invoking the
   delegate method.
   @param message The script message received.
   */
  @available(OSX 10.10, *)
  func userContentController(userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}

/*! A WKSecurityOrigin object contains information about a security origin.
 @discussion An instance of this class is a transient, data-only object;
 it does not uniquely identify a security origin across multiple delegate method
 calls.
 */
@available(OSX 10.11, *)
class WKSecurityOrigin : NSObject {

  /*! @abstract The security origin's protocol.
   */
  var `protocol`: String { get }

  /*! @abstract The security origin's host.
   */
  var host: String { get }

  /*! @abstract The security origin's port.
   */
  var port: Int { get }
}

/*! A class conforming to the WKUIDelegate protocol provides methods for
 presenting native UI on behalf of a webpage.
 */
protocol WKUIDelegate : NSObjectProtocol {

  /*! @abstract Creates a new web view.
   @param webView The web view invoking the delegate method.
   @param configuration The configuration to use when creating the new web
   view.
   @param navigationAction The navigation action causing the new web view to
   be created.
   @param windowFeatures Window features requested by the webpage.
   @result A new web view or nil.
   @discussion The web view returned must be created with the specified configuration. WebKit will load the request in the returned web view.
  
   If you do not implement this method, the web view will cancel the navigation.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, forNavigationAction navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?

  /*! @abstract Notifies your app that the DOM window object's close() method completed successfully.
    @param webView The web view invoking the delegate method.
    @discussion Your app should remove the web view from the view hierarchy and update
    the UI as needed, such as by closing the containing browser tab or window.
    */
  @available(OSX 10.11, *)
  optional func webViewDidClose(webView: WKWebView)

  /*! @abstract Displays a JavaScript alert panel.
   @param webView The web view invoking the delegate method.
   @param message The message to display.
   @param frame Information about the frame whose JavaScript initiated this
   call.
   @param completionHandler The completion handler to call after the alert
   panel has been dismissed.
   @discussion For user security, your app should call attention to the fact
   that a specific website controls the content in this panel. A simple forumla
   for identifying the controlling website is frame.request.URL.host.
   The panel should have a single OK button.
  
   If you do not implement this method, the web view will behave as if the user selected the OK button.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void)

  /*! @abstract Displays a JavaScript confirm panel.
   @param webView The web view invoking the delegate method.
   @param message The message to display.
   @param frame Information about the frame whose JavaScript initiated this call.
   @param completionHandler The completion handler to call after the confirm
   panel has been dismissed. Pass YES if the user chose OK, NO if the user
   chose Cancel.
   @discussion For user security, your app should call attention to the fact
   that a specific website controls the content in this panel. A simple forumla
   for identifying the controlling website is frame.request.URL.host.
   The panel should have two buttons, such as OK and Cancel.
  
   If you do not implement this method, the web view will behave as if the user selected the Cancel button.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: (Bool) -> Void)

  /*! @abstract Displays a JavaScript text input panel.
   @param webView The web view invoking the delegate method.
   @param message The message to display.
   @param defaultText The initial text to display in the text entry field.
   @param frame Information about the frame whose JavaScript initiated this call.
   @param completionHandler The completion handler to call after the text
   input panel has been dismissed. Pass the entered text if the user chose
   OK, otherwise nil.
   @discussion For user security, your app should call attention to the fact
   that a specific website controls the content in this panel. A simple forumla
   for identifying the controlling website is frame.request.URL.host.
   The panel should have two buttons, such as OK and Cancel, and a field in
   which to enter text.
  
   If you do not implement this method, the web view will behave as if the user selected the Cancel button.
   */
  @available(OSX 10.10, *)
  optional func webView(webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: (String?) -> Void)
}

/*! A WKUserContentController object provides a way for JavaScript to post
 messages to a web view.
 The user content controller associated with a web view is specified by its
 web view configuration.
 */
@available(OSX 10.10, *)
class WKUserContentController : NSObject {

  /*! @abstract The user scripts associated with this user content
   controller.
  */
  var userScripts: [WKUserScript] { get }

  /*! @abstract Adds a user script.
   @param userScript The user script to add.
  */
  func addUserScript(userScript: WKUserScript)

  /*! @abstract Removes all associated user scripts.
  */
  func removeAllUserScripts()

  /*! @abstract Adds a script message handler.
   @param scriptMessageHandler The message handler to add.
   @param name The name of the message handler.
   @discussion Adding a scriptMessageHandler adds a function
   window.webkit.messageHandlers.<name>.postMessage(<messageBody>) for all
   frames.
   */
  func add(scriptMessageHandler: WKScriptMessageHandler, name: String)

  /*! @abstract Removes a script message handler.
   @param name The name of the message handler to remove.
   */
  func removeScriptMessageHandlerForName(name: String)
  init()
}

/*! @enum WKUserScriptInjectionTime
 @abstract when a user script should be injected into a webpage.
 @constant WKUserScriptInjectionTimeAtDocumentStart    Inject the script after the document element has been created, but before any other content has been loaded.
 @constant WKUserScriptInjectionTimeAtDocumentEnd      Inject the script after the document has finished loading, but before any subresources may have finished loading.
 */
@available(OSX 10.10, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AtDocumentStart
  case AtDocumentEnd
}

/*! A @link WKUserScript @/link object represents a script that can be injected into webpages.
 */
@available(OSX 10.10, *)
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var isForMainFrameOnly: Bool { get }

  /*! @abstract Returns an initialized user script that can be added to a @link WKUserContentController @/link.
   @param source The script source.
   @param injectionTime When the script should be injected.
   @param forMainFrameOnly Whether the script should be injected into all frames or just the main frame.
   */
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.10, *)
class WKWebView : NSView {

  /*! @abstract A copy of the configuration with which the web view was
   initialized. */
  @NSCopying var configuration: WKWebViewConfiguration { get }

  /*! @abstract The web view's navigation delegate. */
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?

  /*! @abstract The web view's user interface delegate. */
  weak var uiDelegate: @sil_weak WKUIDelegate?

  /*! @abstract The web view's back-forward list. */
  var backForwardList: WKBackForwardList { get }

  /*! @abstract Returns a web view initialized with a specified frame and
   configuration.
   @param frame The frame for the new web view.
   @param configuration The configuration for the new web view.
   @result An initialized web view, or nil if the object could not be
   initialized.
   @discussion This is a designated initializer. You can use
   @link -initWithFrame: @/link to initialize an instance with the default
   configuration. The initializer copies the specified configuration, so
   mutating the configuration after invoking the initializer has no effect
   on the web view.
   */
  init(frame: CGRect, configuration: WKWebViewConfiguration)

  /*! @abstract Navigates to a requested URL.
   @param request The request specifying the URL to which to navigate.
   @result A new navigation for the given request.
   */
  func load(request: NSURLRequest) -> WKNavigation?

  /*! @abstract Navigates to the requested file URL on the filesystem.
   @param URL The file URL to which to navigate.
   @param readAccessURL The URL to allow read access to.
   @discussion If readAccessURL references a single file, only that file may be loaded by WebKit.
   If readAccessURL references a directory, files inside that file may be loaded by WebKit.
   @result A new navigation for the given file URL.
   */
  @available(OSX 10.11, *)
  func loadFileURL(URL: NSURL, allowingReadAccessTo readAccessURL: NSURL) -> WKNavigation?

  /*! @abstract Sets the webpage contents and base URL.
   @param string The string to use as the contents of the webpage.
   @param baseURL A URL that is used to resolve relative URLs within the document.
   @result A new navigation.
   */
  func loadHTMLString(string: String, baseURL: NSURL?) -> WKNavigation?

  /*! @abstract Sets the webpage contents and base URL.
   @param data The data to use as the contents of the webpage.
   @param MIMEType The MIME type of the data.
   @param encodingName The data's character encoding name.
   @param baseURL A URL that is used to resolve relative URLs within the document.
   @result A new navigation.
   */
  @available(OSX 10.11, *)
  func load(data: NSData, mimeType MIMEType: String, characterEncodingName: String, baseURL: NSURL) -> WKNavigation?

  /*! @abstract Navigates to an item from the back-forward list and sets it
   as the current item.
   @param item The item to which to navigate. Must be one of the items in the
   web view's back-forward list.
   @result A new navigation to the requested item, or nil if it is already
   the current item or is not part of the web view's back-forward list.
   @seealso backForwardList
   */
  func goTo(item: WKBackForwardListItem) -> WKNavigation?

  /*! @abstract The page title.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   */
  var title: String? { get }

  /*! @abstract The active URL.
   @discussion This is the URL that should be reflected in the user
   interface.
   @link WKWebView @/link is key-value observing (KVO) compliant for this
   property.
   */
  @NSCopying var url: NSURL? { get }

  /*! @abstract A Boolean value indicating whether the view is currently
   loading content.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   */
  var isLoading: Bool { get }

  /*! @abstract An estimate of what fraction of the current navigation has been completed.
   @discussion This value ranges from 0.0 to 1.0 based on the total number of
   bytes expected to be received, including the main document and all of its
   potential subresources. After a navigation completes, the value remains at 1.0
   until a new navigation starts, at which point it is reset to 0.0.
   @link WKWebView @/link is key-value observing (KVO) compliant for this
   property.
   */
  var estimatedProgress: Double { get }

  /*! @abstract A Boolean value indicating whether all resources on the page
   have been loaded over securely encrypted connections.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   */
  var hasOnlySecureContent: Bool { get }

  /*! @abstract An array of SecCertificateRef objects forming the certificate
   chain for the currently committed navigation.
   @discussion The certificates are ordered from leaf (at index 0) to anchor.
   @link WKWebView @/link is key-value observing (KVO) compliant for this property.
   */
  @available(OSX 10.11, *)
  var certificateChain: [AnyObject] { get }

  /*! @abstract A Boolean value indicating whether there is a back item in
   the back-forward list that can be navigated to.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   @seealso backForwardList.
   */
  var canGoBack: Bool { get }

  /*! @abstract A Boolean value indicating whether there is a forward item in
   the back-forward list that can be navigated to.
   @discussion @link WKWebView @/link is key-value observing (KVO) compliant
   for this property.
   @seealso backForwardList.
   */
  var canGoForward: Bool { get }

  /*! @abstract Navigates to the back item in the back-forward list.
   @result A new navigation to the requested item, or nil if there is no back
   item in the back-forward list.
   */
  func goBack() -> WKNavigation?

  /*! @abstract Navigates to the forward item in the back-forward list.
   @result A new navigation to the requested item, or nil if there is no
   forward item in the back-forward list.
   */
  func goForward() -> WKNavigation?

  /*! @abstract Reloads the current page.
   @result A new navigation representing the reload.
   */
  func reload() -> WKNavigation?

  /*! @abstract Reloads the current page, performing end-to-end revalidation
   using cache-validating conditionals if possible.
   @result A new navigation representing the reload.
   */
  func reloadFromOrigin() -> WKNavigation?

  /*! @abstract Stops loading all resources on the current page.
   */
  func stopLoading()
  func evaluateJavaScript(javaScriptString: String, completionHandler: ((AnyObject?, NSError?) -> Void)? = nil)

  /*! @abstract A Boolean value indicating whether horizontal swipe gestures
   will trigger back-forward list navigations.
   @discussion The default value is NO.
   */
  var allowsBackForwardNavigationGestures: Bool

  /*! @abstract The custom user agent string or nil if no custom user agent string has been set.
  */
  @available(OSX 10.11, *)
  var customUserAgent: String?

  /*! @abstract A Boolean value indicating whether link preview is allowed for any
   links inside this WKWebView.
   @discussion The default value is NO on iOS and YES on Mac.
   */
  @available(OSX 10.11, *)
  var allowsLinkPreview: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  func setMagnification(magnification: CGFloat, centeredAt point: CGPoint)
  convenience init(frame frameRect: NSRect)
  convenience init()
}
extension WKWebView : NSUserInterfaceValidations {

  /*! @abstract Action method that navigates to the back item in the
   back-forward list.
   @param sender The object that sent this message.
   */
  @IBAction func goBack(sender: AnyObject?)

  /*! @abstract Action method that navigates to the forward item in the
   back-forward list.
   @param sender The object that sent this message.
   */
  @IBAction func goForward(sender: AnyObject?)

  /*! @abstract Action method that reloads the current page.
   @param sender The object that sent this message.
   */
  @IBAction func reload(sender: AnyObject?)

  /*! @abstract Action method that reloads the current page, performing
   end-to-end revalidation using cache-validating conditionals if possible.
   @param sender The object that sent this message.
   */
  @IBAction func reloadFromOrigin(sender: AnyObject?)

  /*! @abstract Action method that stops loading all resources on the current
   page.
   @param sender The object that sent this message.
   */
  @IBAction func stopLoading(sender: AnyObject?)
  @available(OSX 10.10, *)
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}

/*! A WKWebViewConfiguration object is a collection of properties with
 which to initialize a web view.
 @helps Contains properties used to configure a @link WKWebView @/link.
 */
@available(OSX 10.10, *)
class WKWebViewConfiguration : NSObject, NSCopying {

  /*! @abstract The process pool from which to obtain the view's web content
   process.
   @discussion When a web view is initialized, a new web content process
   will be created for it from the specified pool, or an existing process in
   that pool will be used.
  */
  var processPool: WKProcessPool

  /*! @abstract The preference settings to be used by the web view.
  */
  var preferences: WKPreferences

  /*! @abstract The user content controller to associate with the web view.
  */
  var userContentController: WKUserContentController

  /*! @abstract The website data store to be used by the web view.
   */
  @available(OSX 10.11, *)
  var websiteDataStore: WKWebsiteDataStore

  /*! @abstract A Boolean value indicating whether the web view suppresses
   content rendering until it is fully loaded into memory.
   @discussion The default value is NO.
   */
  var suppressesIncrementalRendering: Bool

  /*! @abstract The name of the application as used in the user agent string.
  */
  @available(OSX 10.11, *)
  var applicationNameForUserAgent: String?

  /*! @abstract A Boolean value indicating whether AirPlay is allowed.
   @discussion The default value is YES.
   */
  @available(OSX 10.11, *)
  var allowsAirPlayForMediaPlayback: Bool
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension WKWebViewConfiguration {
}

/*! @constant WKWebsiteDataTypeDiskCache On-disk caches. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeDiskCache: String

/*! @constant WKWebsiteDataTypeMemoryCache In-memory caches. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeMemoryCache: String

/*! @constant WKWebsiteDataTypeOfflineWebApplicationCache HTML offline web application caches. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeOfflineWebApplicationCache: String

/*! @constant WKWebsiteDataTypeCookies Cookies. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeCookies: String

/*! @constant WKWebsiteDataTypeSessionStorage HTML session storage. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeSessionStorage: String

/*! @constant WKWebsiteDataTypeLocalStorage HTML local storage. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeLocalStorage: String

/*! @constant WKWebsiteDataTypeWebSQLDatabases WebSQL databases. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeWebSQLDatabases: String

/*! @constant WKWebsiteDataTypeIndexedDBDatabases IndexedDB databases. */
@available(OSX 10.11, *)
let WKWebsiteDataTypeIndexedDBDatabases: String

/*! A WKWebsiteDataRecord represents website data, grouped by domain name using the public suffix list. */
@available(OSX 10.11, *)
class WKWebsiteDataRecord : NSObject {

  /*! @abstract The display name for the data record. This is usually the domain name. */
  var displayName: String { get }

  /*! @abstract The various types of website data that exist for this data record. */
  var dataTypes: Set<String> { get }
  init()
}

/*! A WKWebsiteDataStore represents various types of data that a website might
 make use of. This includes cookies, disk and memory caches, and persistent data such as WebSQL,
 IndexedDB databases, and local storage.
 */
@available(OSX 10.11, *)
class WKWebsiteDataStore : NSObject {
  class func defaultDataStore() -> WKWebsiteDataStore

  /** @abstract Returns a new non-persistent data store.
   @discussion If a WKWebView is associated with a non-persistent data store, no data will
   be written to the file system. This is useful for implementing "private browsing" in a web view.
  */
  class func nonPersistent() -> WKWebsiteDataStore

  /*! @abstract Whether the data store is persistent or not. */
  var isPersistent: Bool { get }

  /*! @abstract Returns a set of all available website data types. */
  class func allWebsiteDataTypes() -> Set<String>

  /*! @abstract Fetches data records containing the given website data types.
    @param dataTypes The website data types to fetch records for.
    @param completionHandler A block to invoke when the data records have been fetched.
  */
  func fetchDataRecordsOfTypes(dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)

  /*! @abstract Removes website data of the given types for the given data records.
   @param dataTypes The website data types that should be removed.
   @param dataRecords The website data records to delete website data for.
   @param completionHandler A block to invoke when the website data for the records has been removed.
  */
  func removeDataOfTypes(dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)

  /*! @abstract Removes all website data of the given types that has been modified since the given date.
   @param dataTypes The website data types that should be removed.
   @param date A date. All website data modified after this date will be removed.
   @param completionHandler A block to invoke when the website data has been removed.
  */
  func removeDataOfTypes(websiteDataTypes: Set<String>, modifiedSince date: NSDate, completionHandler: () -> Void)
}

/*! WKWindowFeatures specifies optional attributes for the containing window when a new WKWebView is requested.
 */
@available(OSX 10.10, *)
class WKWindowFeatures : NSObject {

  /*! @abstract BOOL. Whether the menu bar should be visible. nil if menu bar visibility was not specified.
   */
  var menuBarVisibility: NSNumber? { get }

  /*! @abstract BOOL. Whether the status bar should be visible. nil if status bar visibility was not specified.
   */
  var statusBarVisibility: NSNumber? { get }

  /*! @abstract BOOL. Whether toolbars should be visible. nil if toolbar visibility was not specified.
   */
  var toolbarsVisibility: NSNumber? { get }

  /*! @abstract BOOL. Whether the containing window should be resizable. nil if resizability was not specified.
   */
  var allowsResizing: NSNumber? { get }

  /*! @abstract CGFloat. The x coordinate of the containing window. nil if the x coordinate was not specified.
   */
  var x: NSNumber? { get }

  /*! @abstract CGFloat. The y coordinate of the containing window. nil if the y coordinate was not specified.
   */
  var y: NSNumber? { get }

  /*! @abstract CGFloat. The width coordinate of the containing window. nil if the width was not specified.
   */
  var width: NSNumber? { get }

  /*! @abstract CGFloat. The height coordinate of the containing window. nil if the height was not specified.
   */
  var height: NSNumber? { get }
  init()
}

/*!
    @const WebArchivePboardType
    @abstract The pasteboard type constant used when adding or accessing a WebArchive on the pasteboard.
*/
let WebArchivePboardType: String

/*!
    @class WebArchive
    @discussion WebArchive represents a main resource as well as all the subresources and subframes associated with the main resource.
    The main resource can be an entire web page, a portion of a web page, or some other kind of data such as an image.
    This class can be used for saving standalone web pages, representing portions of a web page on the pasteboard, or any other
    application where one class is needed to represent rich web content. 
*/
class WebArchive : NSObject, NSCoding, NSCopying {

  /*!
      @method initWithMainResource:subresources:subframeArchives:
      @abstract The initializer for WebArchive.
      @param mainResource The main resource of the archive.
      @param subresources The subresources of the archive (can be nil).
      @param subframeArchives The archives representing the subframes of the archive (can be nil).
      @result An initialized WebArchive.
  */
  init!(mainResource: WebResource!, subresources: [AnyObject]!, subframeArchives: [AnyObject]!)

  /*!
      @method initWithData:
      @abstract The initializer for creating a WebArchive from data.
      @param data The data representing the archive. This can be obtained using WebArchive's data method.
      @result An initialized WebArchive.
  */
  init!(data: NSData!)

  /*!
      @property mainResource
      @abstract The main resource of the archive.
  */
  var mainResource: WebResource! { get }

  /*!
      @property subresources
      @abstract The subresource of the archive (can be nil).
  */
  var subresources: [AnyObject]! { get }

  /*!
      @property subframeArchives
      @abstract The archives representing the subframes of the archive (can be nil).
  */
  var subframeArchives: [AnyObject]! { get }

  /*!
      @property data
      @abstract The data representation of the archive.
      @discussion The data returned by this method can be used to save a web archive to a file or to place a web archive on the pasteboard
      using WebArchivePboardType. To create a WebArchive using the returned data, call initWithData:.
  */
  @NSCopying var data: NSData! { get }
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @class WebBackForwardList
    WebBackForwardList holds an ordered list of WebHistoryItems that comprises the back and
    forward lists.
    
    Note that the methods which modify instances of this class do not cause
    navigation to happen in other layers of the stack;  they are only for maintaining this data
    structure.
*/
class WebBackForwardList : NSObject {

  /*!
      @method addItem:
      @abstract Adds an entry to the list.
      @param entry The entry to add.
      @discussion The added entry is inserted immediately after the current entry.
      If the current position in the list is not at the end of the list, elements in the
      forward list will be dropped at this point.  In addition, entries may be dropped to keep
      the size of the list within the maximum size.
  */
  func add(item: WebHistoryItem!)

  /*!
      @method goBack
      @abstract Move the current pointer back to the entry before the current entry.
  */
  func goBack()

  /*!
      @method goForward
      @abstract Move the current pointer ahead to the entry after the current entry.
  */
  func goForward()

  /*!
      @method goToItem:
      @abstract Move the current pointer to the given entry.
      @param item The history item to move the pointer to
  */
  func goTo(item: WebHistoryItem!)

  /*!
      @property backItem
      @abstract The entry right before the current entry, or nil if there isn't one.
  */
  var backItem: WebHistoryItem! { get }

  /*!
      @property currentItem
      @abstract Returns the current entry.
  */
  var currentItem: WebHistoryItem! { get }

  /*!
      @property forwardItem
      @abstract The entry right after the current entry, or nil if there isn't one.
  */
  var forwardItem: WebHistoryItem! { get }

  /*!
      @method backListWithLimit:
      @abstract Returns a portion of the list before the current entry.
      @param limit A cap on the size of the array returned.
      @result An array of items before the current entry, or nil if there are none.  The entries are in the order that they were originally visited.
  */
  func backListWithLimit(limit: Int32) -> [AnyObject]!

  /*!
      @method forwardListWithLimit:
      @abstract Returns a portion of the list after the current entry.
      @param limit A cap on the size of the array returned.
      @result An array of items after the current entry, or nil if there are none.  The entries are in the order that they were originally visited.
  */
  func forwardListWithLimit(limit: Int32) -> [AnyObject]!

  /*!
      @property capacity
      @abstract The list's maximum size.
  */
  var capacity: Int32

  /*!
      @property backListCount
      @abstract The number of items in the list.
  */
  var backListCount: Int32 { get }

  /*!
      @property forwardListCount
      @result The number of items in the list.
  */
  var forwardListCount: Int32 { get }

  /*!
      @method containsItem:
      @param item The item that will be checked for presence in the WebBackForwardList.
      @result Returns YES if the item is in the list. 
  */
  func contains(item: WebHistoryItem!) -> Bool

  /*!
      @method itemAtIndex:
      @abstract Returns an entry the given distance from the current entry.
      @param index Index of the desired list item relative to the current item; 0 is current item, -1 is back item, 1 is forward item, etc.
      @result The entry the given distance from the current entry. If index exceeds the limits of the list, nil is returned.
  */
  func itemAt(index: Int32) -> WebHistoryItem!
  init()
}
extension WebBackForwardList {

  /*!
      @method setPageCacheSize:
      @abstract The size passed to this method determines whether the WebView 
      associated with this WebBackForwardList will use the shared page cache.
      @param size If size is 0, the WebView associated with this WebBackForwardList
      will not use the shared page cache. Otherwise, it will.
  */
  func setPageCacheSize(size: Int)

  /*!
      @method pageCacheSize
      @abstract Returns the size of the shared page cache, or 0.
      @result The size of the shared page cache (in pages), or 0 if the WebView 
      associated with this WebBackForwardList will not use the shared page cache.
  */
  func pageCacheSize() -> Int
}
extension DOMNode {

  /*!
      @property webArchive
      @abstract A WebArchive representing the node and the children of the node.
  */
  var webArchive: WebArchive! { get }
}
extension DOMDocument {

  /*!
      @property webFrame
      @abstract The frame of the DOM document.
  */
  var webFrame: WebFrame! { get }

  /*!
      @method URLWithAttributeString:
      @abstract Constructs a URL given an attribute string.
      @discussion This method constructs a URL given an attribute string just as WebKit does. 
      An attribute string is the value of an attribute of an element such as the href attribute on 
      the DOMHTMLAnchorElement class. This method is only applicable to attributes that refer to URLs.
  */
  func urlWithAttributeString(string: String!) -> NSURL!
}
extension DOMRange {

  /*!
      @property webArchive
      @abstract A WebArchive representing the range.
  */
  var webArchive: WebArchive! { get }

  /*!
      @property markupString
      @abstract A markup string representing the range.
  */
  var markupString: String! { get }
}
extension DOMHTMLFrameElement {

  /*!
      @property contentFrame
      @abstract The content frame of the element.
  */
  var contentFrame: WebFrame! { get }
}
extension DOMHTMLIFrameElement {

  /*!
      @property contentFrame
      @abstract Returns the content frame of the element.
  */
  var contentFrame: WebFrame! { get }
}
extension DOMHTMLObjectElement {

  /*!
      @property contentFrame
      @abstract The content frame of the element.
      @discussion Returns non-nil only if the object represents a child frame
      such as if the data of the object is HTML content.
  */
  var contentFrame: WebFrame! { get }
}

/*!
    @class WebDataSource
    @discussion A WebDataSource represents the data associated with a web page.
    A datasource has a WebDocumentRepresentation which holds an appropriate
    representation of the data.  WebDataSources manage a hierarchy of WebFrames.
    WebDataSources are typically related to a view by their containing WebFrame.
*/
class WebDataSource : NSObject {

  /*!
      @method initWithRequest:
      @abstract The designated initializer for WebDataSource.
      @param request The request to use in creating a datasource.
      @result Returns an initialized WebDataSource.
  */
  init!(request: NSURLRequest!)

  /*!
      @property data
      @abstract Returns the raw data associated with the datasource.  Returns nil
      if the datasource hasn't loaded any data.
     @discussion The data will be incomplete until the datasource has completely loaded.
  */
  @NSCopying var data: NSData! { get }

  /*!
      @property representation
      @abstract The representation associated with this datasource.
      Returns nil if the datasource hasn't created its representation.
      @discussion A representation holds a type specific representation
      of the datasource's data.  The representation class is determined by mapping
      a MIME type to a class.  The representation is created once the MIME type
      of the datasource content has been determined.
  */
  var representation: WebDocumentRepresentation! { get }

  /*!
      @property webFrame
      @abstract The frame that represents this data source.
  */
  var webFrame: WebFrame! { get }

  /*!
      @property initialRequest
      @abstract A reference to the original request that created the
      datasource.  This request will be unmodified by WebKit. 
  */
  var initialRequest: NSURLRequest! { get }

  /*!
      @property request
      @abstract The request that was used to create this datasource.
  */
  var request: NSMutableURLRequest! { get }

  /*!
      @property response
      @abstract The NSURLResponse for the data source.
  */
  var response: NSURLResponse! { get }

  /*!
      @property textEncodingName
      @abstract Returns either the override encoding, as set on the WebView for this
      dataSource or the encoding from the response.
  */
  var textEncodingName: String! { get }

  /*!
      @property isLoading
      @abstract Returns YES if there are any pending loads.
  */
  var isLoading: Bool { get }

  /*!
      @property pageTitle
      @abstract The page title or nil.
  */
  var pageTitle: String! { get }

  /*!
      @property unreachableURL
      @abstract The unreachableURL for which this dataSource is showing alternate content, or nil.
      @discussion This will be non-nil only for dataSources created by calls to the 
      WebFrame method loadAlternateHTMLString:baseURL:forUnreachableURL:.
  */
  var unreachableURL: NSURL! { get }

  /*!
      @property webArchive
      @abstract A WebArchive representing the data source, its subresources and child frames.
      @description This method constructs a WebArchive using the original downloaded data.
      In the case of HTML, if the current state of the document is preferred, webArchive should be
      called on the DOM document instead.
  */
  var webArchive: WebArchive! { get }

  /*!
      @property mainResource
      @abstract A WebResource representing the data source.
      @description This method constructs a WebResource using the original downloaded data.
      This method can be used to construct a WebArchive in case the archive returned by
      WebDataSource's webArchive isn't sufficient.
  */
  var mainResource: WebResource! { get }

  /*!
      @property subresources
      @abstract All the subresources associated with the data source.
      @description The returned array only contains subresources that have fully downloaded.
  */
  var subresources: [AnyObject]! { get }

  /*!
      method subresourceForURL:
      @abstract Returns a subresource for a given URL.
      @param URL The URL of the subresource.
      @description Returns non-nil if the data source has fully downloaded a subresource with the given URL.
  */
  func subresourceFor(URL: NSURL!) -> WebResource!

  /*!
      @method addSubresource:
      @abstract Adds a subresource to the data source.
      @param subresource The subresource to be added.
      @description addSubresource: adds a subresource to the data source's list of subresources.
      Later, if something causes the data source to load the URL of the subresource, the data source
      will load the data from the subresource instead of from the network. For example, if one wants to add
      an image that is already downloaded to a web page, addSubresource: can be called so that the data source
      uses the downloaded image rather than accessing the network. NOTE: If the data source already has a
      subresource with the same URL, addSubresource: will replace it.
  */
  func addSubresource(subresource: WebResource!)
  init()
}

/*!
    @protocol WebDocumentView
    @discussion Protocol implemented by the document view of WebFrameView
*/
protocol WebDocumentView : NSObjectProtocol {

  /*!
      @method setDataSource:
      @abstract Called when the corresponding data source has been created.
      @param dataSource The corresponding data source.
  */
  func setDataSource(dataSource: WebDataSource!)

  /*!
      @method dataSourceUpdated:
      @abstract Called when the corresponding data source has received data.
      @param dataSource The corresponding data source.
  */
  func dataSourceUpdated(dataSource: WebDataSource!)

  /*!
      @method setNeedsLayout:
      @discussion Called when WebKit has determined that the document view needs to layout.
      This method should simply set a flag and call layout from drawRect if the flag is YES.
      @param flag YES to cause a layout, no to not cause a layout.
  */
  func setNeedsLayout(flag: Bool)

  /*!
      @method layout
      @discussion Called when the document view must immediately layout. For simple views,
      setting the frame is a sufficient implementation of this method.
  */
  func layout()

  /*!
      @method viewWillMoveToHostWindow:
      @param hostWindow The host window for the document view.
      @abstract Called before the host window is set on the parent web view.
  */
  func viewWillMoveToHostWindow(hostWindow: NSWindow!)

  /*!
      @method viewDidMoveToHostWindow
      @abstract Called after the host window is set on the parent web view.
  */
  func viewDidMoveToHostWindow()
}

/*!
    @protocol WebDocumentSearching
    @discussion Optional protocol for searching document view of WebFrameView. 
*/
protocol WebDocumentSearching : NSObjectProtocol {

  /*!
      @method searchFor:direction:caseSensitive:wrap:
      @abstract Searches a document view for a string and highlights the string if it is found.
      @param string The string to search for.
      @param forward YES to search forward, NO to seach backwards.
      @param caseFlag YES to for case-sensitive search, NO for case-insensitive search.
      @param wrapFlag YES to wrap around, NO to avoid wrapping.
      @result YES if found, NO if not found.
  */
  func searchFor(string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
}

/*!
    @protocol WebDocumentText
    @discussion Optional protocol for supporting text operations.
*/
protocol WebDocumentText : NSObjectProtocol {

  /*!
      @method supportsTextEncoding
      @result YES if the document view support text encoding, NO if it doesn't.
  */
  func supportsTextEncoding() -> Bool

  /*!
      @method string
      @result String that represents the entire document.
  */
  func string() -> String!

  /*!
      @method attributedString
      @result Attributed string that represents the entire document.
  */
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString!

  /*!
      @method selectedString
      @result String that represents the current selection.
  */
  func selectedString() -> String!

  /*!
      @method selectedAttributedString
      @result Attributed string that represents the current selection.
  */
  @available(OSX 10.0, *)
  func selectedAttributedString() -> NSAttributedString!

  /*!
      @method selectAll
      @abstract Selects all the text in the document.
  */
  func selectAll()

  /*!
      @method deselectText
      @abstract Causes a text selection to lose its selection.
  */
  func deselectAll()
}

/*!
    @protocol WebDocumentRepresentation
    @discussion Protocol implemented by the document representation of a data source.
*/
protocol WebDocumentRepresentation : NSObjectProtocol {

  /*!
      @method setDataSource:
      @abstract Called soon after the document representation is created.
      @param dataSource The data source that is set.
  */
  func setDataSource(dataSource: WebDataSource!)

  /*!
      @method receivedData:withDataSource:
      @abstract Called when the data source has received data.
      @param data The data that the data source has received.
      @param dataSource The data source that has received data.
  */
  func receivedData(data: NSData!, withDataSource dataSource: WebDataSource!)

  /*!
      @method receivedError:withDataSource:
      @abstract Called when the data source has received an error.
      @param error The error that the data source has received.
      @param dataSource The data source that has received the error.
  */
  func receivedError(error: NSError!, withDataSource dataSource: WebDataSource!)

  /*!
      @method finishedLoadingWithDataSource:
      @abstract Called when the data source has finished loading.
      @param dataSource The datasource that has finished loading.
  */
  func finishedLoadingWith(dataSource: WebDataSource!)

  /*!
      @method canProvideDocumentSource
      @result Returns true if the representation can provide document source.
  */
  func canProvideDocumentSource() -> Bool

  /*!
      @method documentSource
      @result Returns the textual source representation of the document.  For HTML documents
      this is the original HTML source.
  */
  func documentSource() -> String!

  /*!
      @method title
      @result Return the title for the document.
  */
  func title() -> String!
}

/*!
    @class WebDownload
    @discussion A WebDownload works just like an NSURLDownload, with
    one extra feature: if you do not implement the
    authentication-related delegate methods, it will automatically
    prompt for authentication using the standard WebKit authentication
    panel, as either a sheet or window. It provides no extra methods,
    but does have one additional delegate method.
*/
class WebDownload : NSURLDownload {

  /*!
      @method initWithRequest:delegate:
      @abstract Initializes a NSURLDownload object and starts the download.
      @param request The request to download. Must not be nil.
      @param delegate The delegate of the download.
      @result An initialized NSURLDownload object.
  */
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(request: NSURLRequest, delegate: NSURLDownloadDelegate?)

  /*!
      @method initWithResumeData:delegate:path:
      @abstract Initializes a NSURLDownload object for resuming a previous download.
      @param resumeData The resume data from the previous download.
      @param delegate The delegate of the download.
      @param path The path of the incomplete downloaded file.
      @result An initialized NSURLDownload object.
  */
  @available(OSX, introduced=10.3, deprecated=10.11, message="Use NSURLSession downloadTask (see NSURLSession.h)")
  init(resumeData: NSData, delegate: NSURLDownloadDelegate?, path: String)
  init()
}

/*!
    @protocol WebDownloadDelegate
    @discussion The WebDownloadDelegate delegate has one extra method used to choose
    the right window when automatically prompting with a sheet.
*/
protocol WebDownloadDelegate : NSURLDownloadDelegate {

  /*!
      @method downloadWindowForAuthenticationSheet:
      @abstract
      @param
      @result
  */
  optional func downloadWindowForAuthenticationSheet(download: WebDownload!) -> NSWindow!
}
enum WebViewInsertAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Typed
  case Pasted
  case Dropped
}
protocol WebEditingDelegate : NSObjectProtocol {
}
extension NSObject {
  class func webView(webView: WebView!, shouldBeginEditingIn range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldBeginEditingIn range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldEndEditingIn range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldEndEditingIn range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldInsert node: DOMNode!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsert node: DOMNode!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldInsertText text: String!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  func webView(webView: WebView!, shouldInsertText text: String!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  class func webView(webView: WebView!, shouldDelete range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldDelete range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, to proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  func webView(webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, to proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  class func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsIn range: DOMRange!) -> Bool
  func webView(webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsIn range: DOMRange!) -> Bool
  class func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  func webView(webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  class func webView(webView: WebView!, doCommandBy selector: Selector) -> Bool
  func webView(webView: WebView!, doCommandBy selector: Selector) -> Bool
  class func webViewDidBeginEditing(notification: NSNotification!)
  func webViewDidBeginEditing(notification: NSNotification!)
  class func webViewDidChange(notification: NSNotification!)
  func webViewDidChange(notification: NSNotification!)
  class func webViewDidEndEditing(notification: NSNotification!)
  func webViewDidEndEditing(notification: NSNotification!)
  class func webViewDidChangeTypingStyle(notification: NSNotification!)
  func webViewDidChangeTypingStyle(notification: NSNotification!)
  class func webViewDidChangeSelection(notification: NSNotification!)
  func webViewDidChangeSelection(notification: NSNotification!)
  class func undoManagerFor(webView: WebView!) -> NSUndoManager!
  func undoManagerFor(webView: WebView!) -> NSUndoManager!
}

/*!
    @class WebFrame
    @discussion Every web page is represented by at least one WebFrame.  A WebFrame
    has a WebFrameView and a WebDataSource.
*/
class WebFrame : NSObject {

  /*!
      @method initWithName:webFrameView:webView:
      @abstract The designated initializer of WebFrame.
      @discussion WebFrames are normally created for you by the WebView.  You should 
      not need to invoke this method directly.
      @param name The name of the frame.
      @param view The WebFrameView for the frame.
      @param webView The WebView that manages the frame.
      @result Returns an initialized WebFrame.
  */
  init!(name: String!, webFrameView view: WebFrameView!, webView: WebView!)

  /*!
      @property name
      @abstract The frame name.
  */
  var name: String! { get }

  /*!
      @property webView
      @abstract The WebView for the document that includes this frame.
  */
  var webView: WebView! { get }

  /*!
      @property frameView
      @abstract The WebFrameView for this frame.
  */
  var frameView: WebFrameView! { get }

  /*!
      @property DOMDocument
      @abstract The DOM document of the frame.
      @description Returns nil if the frame does not contain a DOM document such as a standalone image.
  */
  var domDocument: DOMDocument! { get }

  /*!
      @property frameElement
      @abstract The frame element of the frame.
      @description The class of the result is either DOMHTMLFrameElement, DOMHTMLIFrameElement or DOMHTMLObjectElement.
      Returns nil if the frame is the main frame since there is no frame element for the frame in this case.
  */
  var frameElement: DOMHTMLElement! { get }

  /*!
      @method loadRequest:
      @param request The web request to load.
  */
  func load(request: NSURLRequest!)

  /*!
      @method loadData:MIMEType:textEncodingName:baseURL:
      @param data The data to use for the main page of the document.
      @param MIMEType The MIME type of the data.
      @param encodingName The encoding of the data.
      @param URL The base URL to apply to relative URLs within the document.
  */
  func load(data: NSData!, mimeType MIMEType: String!, textEncodingName encodingName: String!, baseURL URL: NSURL!)

  /*!
      @method loadHTMLString:baseURL:
      @param string The string to use for the main page of the document.
      @param URL The base URL to apply to relative URLs within the document.
  */
  func loadHTMLString(string: String!, baseURL URL: NSURL!)

  /*!
      @method loadAlternateHTMLString:baseURL:forUnreachableURL:
      @abstract Loads a page to display as a substitute for a URL that could not be reached.
      @discussion This allows clients to display page-loading errors in the webview itself.
      This is typically called while processing the WebFrameLoadDelegate method
      -webView:didFailProvisionalLoadWithError:forFrame: or one of the the WebPolicyDelegate methods
      -webView:decidePolicyForMIMEType:request:frame:decisionListener: or
      -webView:unableToImplementPolicyWithError:frame:. If it is called from within one of those
      three delegate methods then the back/forward list will be maintained appropriately.
      @param string The string to use for the main page of the document.
      @param baseURL The baseURL to apply to relative URLs within the document.
      @param unreachableURL The URL for which this page will serve as alternate content.
  */
  func loadAlternateHTMLString(string: String!, baseURL: NSURL!, forUnreachableURL unreachableURL: NSURL!)

  /*!
      @method loadArchive:
      @abstract Causes WebFrame to load a WebArchive.
      @param archive The archive to be loaded.
  */
  func load(archive: WebArchive!)

  /*!
      @property dataSource
      @abstract The datasource for this frame.
      @discussion Returns the committed data source.  Will return nil if the
      provisional data source hasn't yet been loaded.
  */
  var dataSource: WebDataSource? { get }

  /*!
      @property provisionalDataSource
      @abstract The provisional datasource of this frame.
      @discussion Will return the provisional data source.  The provisional data source will
      be nil if no data source has been set on the frame, or the data source
      has successfully transitioned to the committed data source.
  */
  var provisionalDataSource: WebDataSource! { get }

  /*!
      @method stopLoading
      @discussion Stop any pending loads on the frame's data source,
      and its children.
  */
  func stopLoading()

  /*!
      @method reload
      @discussion Performs HTTP/1.1 end-to-end revalidation using cache-validating conditionals if possible.
  */
  func reload()

  /*!
      @method reloadFromOrigin
      @discussion Performs HTTP/1.1 end-to-end reload.
  */
  func reloadFromOrigin()

  /*!
      @method findFrameNamed:
      @discussion This method returns a frame with the given name. findFrameNamed returns self 
      for _self and _current, the parent frame for _parent and the main frame for _top. 
      findFrameNamed returns self for _parent and _top if the receiver is the mainFrame.
      findFrameNamed first searches from the current frame to all descending frames then the
      rest of the frames in the WebView. If still not found, findFrameNamed searches the
      frames of the other WebViews.
      @param name The name of the frame to find.
      @result The frame matching the provided name. nil if the frame is not found.
  */
  func findFrameNamed(name: String!) -> WebFrame!

  /*!
      @property parentFrame
      @abstract The frame containing this frame, or nil if this is a top level frame.
  */
  var parent: WebFrame! { get }

  /*!
      @property childFrames
      @abstract An array of WebFrame.
      @discussion The frames in the array are associated with a frame set or iframe.
  */
  var childFrames: [AnyObject]! { get }

  /*!
      @property windowObject
      @abstract The WebScriptObject representing the frame's JavaScript window object.
  */
  var windowObject: WebScriptObject! { get }

  /*!
      @property globalContext
      @abstract The frame's global JavaScript execution context.
      @discussion Use this method to bridge between the WebKit and JavaScriptCore APIs.
  */
  var globalContext: JSGlobalContextRef { get }

  /*!
      @property javaScriptContext
      @abstract The frame's global JavaScript execution context.
      @discussion Use this method to bridge between the WebKit and Objective-C JavaScriptCore API.
  */
  var javaScriptContext: JSContext! { get }
  init()
}

/*!
    @category WebFrameLoadDelegate
    @discussion A WebView's WebFrameLoadDelegate tracks the loading progress of its frames.
    When a data source of a frame starts to load, the data source is considered "provisional".
    Once at least one byte is received, the data source is considered "committed". This is done
    so the contents of the frame will not be lost if the new data source fails to successfully load.
*/
protocol WebFrameLoadDelegate : NSObjectProtocol {

  /*!
      @method webView:didStartProvisionalLoadForFrame:
      @abstract Notifies the delegate that the provisional load of a frame has started
      @param webView The WebView sending the message
      @param frame The frame for which the provisional load has started
      @discussion This method is called after the provisional data source of a frame
      has started to load.
  */
  optional func webView(sender: WebView!, didStartProvisionalLoadFor frame: WebFrame!)

  /*!
      @method webView:didReceiveServerRedirectForProvisionalLoadForFrame:
      @abstract Notifies the delegate that a server redirect occurred during the provisional load
      @param webView The WebView sending the message
      @param frame The frame for which the redirect occurred
  */
  optional func webView(sender: WebView!, didReceiveServerRedirectForProvisionalLoadFor frame: WebFrame!)

  /*!
      @method webView:didFailProvisionalLoadWithError:forFrame:
      @abstract Notifies the delegate that the provisional load has failed
      @param webView The WebView sending the message
      @param error The error that occurred
      @param frame The frame for which the error occurred
      @discussion This method is called after the provisional data source has failed to load.
      The frame will continue to display the contents of the committed data source if there is one.
  */
  optional func webView(sender: WebView!, didFailProvisionalLoadWith error: NSError!, forFrame frame: WebFrame!)

  /*!
      @method webView:didCommitLoadForFrame:
      @abstract Notifies the delegate that the load has changed from provisional to committed
      @param webView The WebView sending the message
      @param frame The frame for which the load has committed
      @discussion This method is called after the provisional data source has become the
      committed data source.
  
      In some cases, a single load may be committed more than once. This happens
      in the case of multipart/x-mixed-replace, also known as "server push". In this case,
      a single location change leads to multiple documents that are loaded in sequence. When
      this happens, a new commit will be sent for each document.
  */
  optional func webView(sender: WebView!, didCommitLoadFor frame: WebFrame!)

  /*!
      @method webView:didReceiveTitle:forFrame:
      @abstract Notifies the delegate that the page title for a frame has been received
      @param webView The WebView sending the message
      @param title The new page title
      @param frame The frame for which the title has been received
      @discussion The title may update during loading; clients should be prepared for this.
  */
  optional func webView(sender: WebView!, didReceiveTitle title: String!, forFrame frame: WebFrame!)

  /*!
      @method webView:didReceiveIcon:forFrame:
      @abstract Notifies the delegate that a page icon image for a frame has been received
      @param webView The WebView sending the message
      @param image The icon image. Also known as a "favicon".
      @param frame The frame for which a page icon has been received
  */
  optional func webView(sender: WebView!, didReceiveIcon image: NSImage!, forFrame frame: WebFrame!)

  /*!
      @method webView:didFinishLoadForFrame:
      @abstract Notifies the delegate that the committed load of a frame has completed
      @param webView The WebView sending the message
      @param frame The frame that finished loading
      @discussion This method is called after the committed data source of a frame has successfully loaded
      and will only be called when all subresources such as images and stylesheets are done loading.
      Plug-In content and JavaScript-requested loads may occur after this method is called.
  */
  optional func webView(sender: WebView!, didFinishLoadFor frame: WebFrame!)

  /*!
      @method webView:didFailLoadWithError:forFrame:
      @abstract Notifies the delegate that the committed load of a frame has failed
      @param webView The WebView sending the message
      @param error The error that occurred
      @param frame The frame that failed to load
      @discussion This method is called after a data source has committed but failed to completely load.
  */
  optional func webView(sender: WebView!, didFailLoadWith error: NSError!, forFrame frame: WebFrame!)

  /*!
      @method webView:didChangeLocationWithinPageForFrame:
      @abstract Notifies the delegate that the scroll position in a frame has changed
      @param webView The WebView sending the message
      @param frame The frame that scrolled
      @discussion This method is called when anchors within a page have been clicked.
  */
  optional func webView(sender: WebView!, didChangeLocationWithinPageFor frame: WebFrame!)

  /*!
      @method webView:willPerformClientRedirectToURL:delay:fireDate:forFrame:
      @abstract Notifies the delegate that a frame will perform a client-side redirect
      @param webView The WebView sending the message
      @param URL The URL to be redirected to
      @param seconds Seconds in which the redirect will happen
      @param date The fire date
      @param frame The frame on which the redirect will occur
      @discussion This method can be used to continue progress feedback while a client-side
      redirect is pending.
  */
  optional func webView(sender: WebView!, willPerformClientRedirectTo URL: NSURL!, delay seconds: NSTimeInterval, fire date: NSDate!, forFrame frame: WebFrame!)

  /*!
      @method webView:didCancelClientRedirectForFrame:
      @abstract Notifies the delegate that a pending client-side redirect has been cancelled
      @param webView The WebView sending the message
      @param frame The frame for which the pending redirect was cancelled
      @discussion A client-side redirect can be cancelled if a frame changes location before the timeout.
  */
  optional func webView(sender: WebView!, didCancelClientRedirectFor frame: WebFrame!)

  /*!
      @method webView:willCloseFrame:
      @abstract Notifies the delegate that a frame will be closed
      @param webView The WebView sending the message
      @param frame The frame that will be closed
      @discussion This method is called right before WebKit is done with the frame
      and the objects that it contains.
  */
  optional func webView(sender: WebView!, willClose frame: WebFrame!)

  /*!
      @method webView:didClearWindowObject:forFrame:
      @abstract Notifies the delegate that the JavaScript window object in a frame has 
      been cleared in preparation for a new load. This is the preferred place to set custom 
      properties on the window object using the WebScriptObject and JavaScriptCore APIs.
      @param webView The webView sending the message.
      @param windowObject The WebScriptObject representing the frame's JavaScript window object.
      @param frame The WebFrame to which windowObject belongs.
      @discussion If a delegate implements both webView:didClearWindowObject:forFrame:
      and webView:windowScriptObjectAvailable:, only webView:didClearWindowObject:forFrame: 
      will be invoked. This enables a delegate to implement both methods for backwards 
      compatibility with older versions of WebKit.
  */
  @available(OSX 10.4, *)
  optional func webView(webView: WebView!, didClearWindowObject windowObject: WebScriptObject!, forFrame frame: WebFrame!)

  /*!
      @method webView:didCreateJavaScriptContext:contextForFrame:
      @abstract Notifies the delegate that a new JavaScript context has been created created.
      @param webView The WebView sending the message.
      @param context The JSContext representing the frame's JavaScript window object.
      @param frame The WebFrame to which the context belongs.
      @discussion If a delegate implements webView:didCreateJavaScriptContext:forFrame: along with either 
      webView:didClearWindowObject:forFrame: or webView:windowScriptObjectAvailable:, only 
      webView:didCreateJavaScriptContext:forFrame will be invoked. This enables a delegate to implement 
      multiple versions to maintain backwards compatibility with older versions of WebKit.
  */
  @available(OSX 10.9, *)
  optional func webView(webView: WebView!, didCreateJavaScriptContext context: JSContext!, forFrame frame: WebFrame!)
}

/*!
    @class WebFrameView
*/
class WebFrameView : NSView {

  /*!
      @property webFrame
      @abstract The WebFrame associated with this WebFrameView
  */
  var webFrame: WebFrame! { get }

  /*!
      @property documentView
      @abstract The WebFrameView's document subview
      @discussion The subview that renders the WebFrameView's contents
  */
  var documentView: NSView! { get }

  /*!
      @property allowsScrolling
      @abstract Whether the WebFrameView allows its document to be scrolled
  */
  var allowsScrolling: Bool

  /*!
      @property canPrintHeadersAndFooters
      @abstract Whether this frame can print headers and footers
  */
  var canPrintHeadersAndFooters: Bool { get }

  /*!
      @method printOperationWithPrintInfo
      @abstract Creates a print operation set up to print this frame
      @result A newly created print operation object
  */
  func printOperationWith(printInfo: NSPrintInfo!) -> NSPrintOperation!

  /*!
      @property documentViewShouldHandlePrint
      @abstract Called by the host application before it initializes and runs a print operation.
      @discussion If NO is returned, the host application will abort its print operation and call -printDocumentView on the
      WebFrameView.  The document view is then expected to run its own print operation.  If YES is returned, the host 
      application's print operation will continue as normal.
  */
  var documentViewShouldHandlePrint: Bool { get }

  /*!
      @method printDocumentView
      @abstract Called by the host application when the WebFrameView returns YES from -documentViewShouldHandlePrint.
  */
  func printDocumentView()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
let WebHistoryItemsAddedNotification: String
let WebHistoryItemsRemovedNotification: String
let WebHistoryAllItemsRemovedNotification: String
let WebHistoryLoadedNotification: String
let WebHistorySavedNotification: String
let WebHistoryItemsKey: String

/*!
    @class WebHistory
    @discussion WebHistory is used to track pages that have been loaded
    by WebKit.
*/
class WebHistory : NSObject {

  /*!
      @method optionalSharedHistory
      @abstract Returns a shared WebHistory instance initialized with the default history file.
      @result A WebHistory object.
  */
  class func optionalShared() -> WebHistory!

  /*!
      @method setOptionalSharedHistory:
      @param history The history to use for the global WebHistory.
  */
  class func setOptionalSharedHistory(history: WebHistory!)

  /*!
      @method loadFromURL:error:
      @param URL The URL to use to initialize the WebHistory.
      @param error Set to nil or an NSError instance if an error occurred.
      @abstract The designated initializer for WebHistory.
      @result Returns YES if successful, NO otherwise.
  */
  func loadFrom(URL: NSURL!) throws

  /*!
      @method saveToURL:error:
      @discussion Save history to URL. It is the client's responsibility to call this at appropriate times.
      @param URL The URL to use to save the WebHistory.
      @param error Set to nil or an NSError instance if an error occurred.
      @result Returns YES if successful, NO otherwise.
  */
  func saveTo(URL: NSURL!) throws

  /*!
      @method addItems:
      @param newItems An array of WebHistoryItems to add to the WebHistory.
  */
  func addItems(newItems: [AnyObject]!)

  /*!
      @method removeItems:
      @param items An array of WebHistoryItems to remove from the WebHistory.
  */
  func removeItems(items: [AnyObject]!)

  /*!
      @method removeAllItems
  */
  func removeAllItems()

  /*!
      @property orderedLastVisitedDays
      @abstract An array of NSCalendarDates for which history items exist in the WebHistory.
      @discussion An array of NSCalendarDates, each one representing a unique day that contains one
      or more history items, ordered from most recent to oldest.
  */
  var orderedLastVisitedDays: [AnyObject]! { get }
  func orderedItemsLastVisitedOnDay(calendarDate: NSCalendarDate!) -> [AnyObject]!

  /*!
      @method itemForURL:
      @abstract Get an item for a specific URL
      @param URL The URL of the history item to search for
      @result Returns an item matching the URL
  */
  func itemFor(URL: NSURL!) -> WebHistoryItem!

  /*!
      @property historyItemLimit
      @abstract The maximum number of items that will be stored by the WebHistory.
  */
  var historyItemLimit: Int32

  /*!
      @property historyAgeInDaysLimit
      @abstract The maximum number of days to be read from stored history.
  */
  var historyAgeInDaysLimit: Int32
  init()
}
let WebHistoryItemChangedNotification: String

/*!
    @class WebHistoryItem
    @discussion  WebHistoryItems are created by WebKit to represent pages visited.
    The WebBackForwardList and WebHistory classes both use WebHistoryItems to represent
    pages visited.  With the exception of the displayTitle, the properties of 
    WebHistoryItems are set by WebKit.  WebHistoryItems are normally never created directly.
*/
class WebHistoryItem : NSObject, NSCopying {

  /*!
      @method initWithURLString:title:lastVisitedTimeInterval:
      @param URLString The URL string for the item.
      @param title The title to use for the item.  This is normally the <title> of a page.
      @param time The time used to indicate when the item was used.
      @abstract Initialize a new WebHistoryItem
      @discussion WebHistoryItems are normally created for you by the WebKit.
      You may use this method to prepopulate a WebBackForwardList, or create
      'artificial' items to add to a WebBackForwardList.  When first initialized
      the URLString and originalURLString will be the same.
  */
  init!(urlString URLString: String!, title: String!, lastVisitedTimeInterval time: NSTimeInterval)

  /*!
      @property originalURLString
      @abstract The string representation of the initial URL of this item.
      This value is normally set by the WebKit.
  */
  var originalURLString: String! { get }

  /*!
      @property URLString
      @abstract The string representation of the URL represented by this item.
      @discussion The URLString may be different than the originalURLString if the page
      redirected to a new location.  This value is normally set by the WebKit.
  */
  var urlString: String! { get }

  /*!
      @property title
      @abstract The title of the page represented by this item.
      @discussion This title cannot be changed by the client.  This value
      is normally set by the WebKit when a page title for the item is received.
  */
  var title: String! { get }

  /*!
      @property lastVisitedTimeInterval
      @abstract The last time the page represented by this item was visited. The interval
      is since the reference date as determined by NSDate.  This value is normally set by
      the WebKit.
  */
  var lastVisitedTimeInterval: NSTimeInterval { get }
  var alternateTitle: String!

  /*!
      @property icon
      @abstract The favorite icon of the page represented by this item.
      @discussion This icon returned will be determined by the WebKit.
  */
  var icon: NSImage! { get }
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
let WebKitErrorDomain: String
let WebKitErrorMIMETypeKey: String
let WebKitErrorPlugInNameKey: String
let WebKitErrorPlugInPageURLStringKey: String
var WebKitErrorCannotShowMIMEType: Int { get }
var WebKitErrorCannotShowURL: Int { get }
var WebKitErrorFrameLoadInterruptedByPolicyChange: Int { get }
var WebKitErrorCannotFindPlugIn: Int { get }
var WebKitErrorCannotLoadPlugIn: Int { get }
var WebKitErrorJavaUnavailable: Int { get }
var WebKitErrorBlockedPlugInVersion: Int { get }
extension NSObject {

  /*!
      @method webPlugInInitialize
      @abstract Tell the plug-in to perform one-time initialization.
      @discussion This method must be only called once per instance of the plug-in
      object and must be called before any other methods in this protocol.
  */
  class func webPlugInInitialize()

  /*!
      @method webPlugInInitialize
      @abstract Tell the plug-in to perform one-time initialization.
      @discussion This method must be only called once per instance of the plug-in
      object and must be called before any other methods in this protocol.
  */
  func webPlugInInitialize()

  /*!
      @method webPlugInStart
      @abstract Tell the plug-in to start normal operation.
      @discussion The plug-in usually begins drawing, playing sounds and/or
      animation in this method.  This method must be called before calling webPlugInStop.
      This method may called more than once, provided that the application has
      already called webPlugInInitialize and that each call to webPlugInStart is followed
      by a call to webPlugInStop.
  */
  class func webPlugInStart()

  /*!
      @method webPlugInStart
      @abstract Tell the plug-in to start normal operation.
      @discussion The plug-in usually begins drawing, playing sounds and/or
      animation in this method.  This method must be called before calling webPlugInStop.
      This method may called more than once, provided that the application has
      already called webPlugInInitialize and that each call to webPlugInStart is followed
      by a call to webPlugInStop.
  */
  func webPlugInStart()

  /*!
      @method webPlugInStop
      @abstract Tell the plug-in to stop normal operation.
      @discussion webPlugInStop must be called before this method.  This method may be
      called more than once, provided that the application has already called
      webPlugInInitialize and that each call to webPlugInStop is preceded by a call to
      webPlugInStart.
  */
  class func webPlugInStop()

  /*!
      @method webPlugInStop
      @abstract Tell the plug-in to stop normal operation.
      @discussion webPlugInStop must be called before this method.  This method may be
      called more than once, provided that the application has already called
      webPlugInInitialize and that each call to webPlugInStop is preceded by a call to
      webPlugInStart.
  */
  func webPlugInStop()

  /*!
      @method webPlugInDestroy
      @abstract Tell the plug-in perform cleanup and prepare to be deallocated.
      @discussion The plug-in typically releases memory and other resources in this
      method.  If the plug-in has retained the WebPlugInContainer, it must release
      it in this mehthod.  This method must be only called once per instance of the
      plug-in object.  No other methods in this interface may be called after the
      application has called webPlugInDestroy.
  */
  class func webPlugInDestroy()

  /*!
      @method webPlugInDestroy
      @abstract Tell the plug-in perform cleanup and prepare to be deallocated.
      @discussion The plug-in typically releases memory and other resources in this
      method.  If the plug-in has retained the WebPlugInContainer, it must release
      it in this mehthod.  This method must be only called once per instance of the
      plug-in object.  No other methods in this interface may be called after the
      application has called webPlugInDestroy.
  */
  func webPlugInDestroy()

  /*!
      @method webPlugInSetIsSelected:
      @discusssion Informs the plug-in whether or not it is selected.  This is typically
      used to allow the plug-in to alter it's appearance when selected.
  */
  class func webPlugInSetIsSelected(isSelected: Bool)

  /*!
      @method webPlugInSetIsSelected:
      @discusssion Informs the plug-in whether or not it is selected.  This is typically
      used to allow the plug-in to alter it's appearance when selected.
  */
  func webPlugInSetIsSelected(isSelected: Bool)

  /*!
      @property objectForWebScript
      @discussion objectForWebScript is used to expose a plug-in's scripting interface.  The 
      methods of the object are exposed to the script environment.  See the WebScripting
      informal protocol for more details.
      @result Returns the object that exposes the plug-in's interface.  The class of this
      object can implement methods from the WebScripting informal protocol.
  */
  var objectForWebScript: AnyObject! { get }

  /*!
      @method webPlugInMainResourceDidReceiveResponse:
      @abstract Called on the plug-in when WebKit receives -connection:didReceiveResponse:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  class func webPlugInMainResourceDidReceive(response: NSURLResponse!)

  /*!
      @method webPlugInMainResourceDidReceiveResponse:
      @abstract Called on the plug-in when WebKit receives -connection:didReceiveResponse:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidReceive(response: NSURLResponse!)

  /*!
      @method webPlugInMainResourceDidReceiveData:
      @abstract Called on the plug-in when WebKit recieves -connection:didReceiveData:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  class func webPlugInMainResourceDidReceive(data: NSData!)

  /*!
      @method webPlugInMainResourceDidReceiveData:
      @abstract Called on the plug-in when WebKit recieves -connection:didReceiveData:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidReceive(data: NSData!)

  /*!
      @method webPlugInMainResourceDidFailWithError:
      @abstract Called on the plug-in when WebKit receives -connection:didFailWithError:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  class func webPlugInMainResourceDidFailWith(error: NSError!)

  /*!
      @method webPlugInMainResourceDidFailWithError:
      @abstract Called on the plug-in when WebKit receives -connection:didFailWithError:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidFailWith(error: NSError!)

  /*!
      @method webPlugInMainResourceDidFinishLoading
      @abstract Called on the plug-in when WebKit receives -connectionDidFinishLoading:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  class func webPlugInMainResourceDidFinishLoading()

  /*!
      @method webPlugInMainResourceDidFinishLoading
      @abstract Called on the plug-in when WebKit receives -connectionDidFinishLoading:
      for the plug-in's main resource.
      @discussion This method is only sent to the plug-in if the
      WebPlugInShouldLoadMainResourceKey argument passed to the plug-in was NO.
  */
  @available(OSX 10.6, *)
  func webPlugInMainResourceDidFinishLoading()
  class func objectForWebScript() -> AnyObject!
}
extension NSObject {

  /*!
      @method webPlugInContainerLoadRequest:inFrame:
      @abstract Tell the application to show a URL in a target frame
      @param request The request to be loaded.
      @param target The target frame. If the frame with the specified target is not
      found, a new window is opened and the main frame of the new window is named
      with the specified target.  If nil is specified, the frame that contains
      the applet is targeted.
  */
  class func webPlugInContainerLoad(request: NSURLRequest!, inFrame target: String!)

  /*!
      @method webPlugInContainerLoadRequest:inFrame:
      @abstract Tell the application to show a URL in a target frame
      @param request The request to be loaded.
      @param target The target frame. If the frame with the specified target is not
      found, a new window is opened and the main frame of the new window is named
      with the specified target.  If nil is specified, the frame that contains
      the applet is targeted.
  */
  func webPlugInContainerLoad(request: NSURLRequest!, inFrame target: String!)

  /*!
      @method webPlugInContainerShowStatus:
      @abstract Tell the application to show the specified status message.
      @param message The string to be shown.
  */
  class func webPlugInContainerShowStatus(message: String!)

  /*!
      @method webPlugInContainerShowStatus:
      @abstract Tell the application to show the specified status message.
      @param message The string to be shown.
  */
  func webPlugInContainerShowStatus(message: String!)

  /*!
      @property webPlugInContainerSelectionColor
      @abstract The color that should be used for any special drawing when
      plug-in is selected.
  */
  var webPlugInContainerSelectionColor: NSColor! { get }

  /*!
      @property webFrame
      @abstract Allows the plug-in to access the WebFrame that
      contains the plug-in.  This method will not be implemented by containers that 
      are not WebKit based.
  */
  var webFrame: WebFrame! { get }
  class func webPlugInContainerSelectionColor() -> NSColor!
  class func webFrame() -> WebFrame!
}

/*!
    @constant WebPlugInBaseURLKey REQUIRED. The base URL of the document containing
    the plug-in's view.
*/
let WebPlugInBaseURLKey: String

/*!
    @constant WebPlugInAttributesKey REQUIRED. The dictionary containing the names
    and values of all attributes of the HTML element associated with the plug-in AND
    the names and values of all parameters to be passed to the plug-in (e.g. PARAM
    elements within an APPLET element). In the case of a conflict between names,
    the attributes of an element take precedence over any PARAMs.  All of the keys
    and values in this NSDictionary must be NSStrings.
*/
let WebPlugInAttributesKey: String

/*!
    @constant WebPlugInContainer OPTIONAL. An object that conforms to the
    WebPlugInContainer informal protocol. This object is used for
    callbacks from the plug-in to the app. if this argument is nil, no callbacks will
    occur.
*/
let WebPlugInContainerKey: String

/*!
    @constant WebPlugInContainingElementKey The DOMElement that was used to specify
    the plug-in.  May be nil.
*/
let WebPlugInContainingElementKey: String

/*!
 @constant WebPlugInShouldLoadMainResourceKey REQUIRED. NSNumber (BOOL) indicating whether the plug-in should load its
 own main resource (the "src" URL, in most cases). If YES, the plug-in should load its own main resource. If NO, the
 plug-in should use the data provided by WebKit. See -webPlugInMainResourceReceivedData: in WebPluginPrivate.h.
 For compatibility with older versions of WebKit, the plug-in should assume that the value for
 WebPlugInShouldLoadMainResourceKey is NO if it is absent from the arguments dictionary.
 */
@available(OSX 10.6, *)
let WebPlugInShouldLoadMainResourceKey: String

/*!
    @protocol WebPlugInViewFactory
    @discussion WebPlugInViewFactory are used to create the NSView for a plug-in.
    The principal class of the plug-in bundle must implement this protocol.
*/
protocol WebPlugInViewFactory : NSObjectProtocol {

  /*!
      @method plugInViewWithArguments: 
      @param arguments The arguments dictionary with the mentioned keys and objects. This method is required to implement.
      @result Returns an NSView object that conforms to the WebPlugIn informal protocol.
  */
  @available(OSX 10.0, *)
  static func plugInViewWithArguments(arguments: [NSObject : AnyObject]!) -> NSView!
}

/*!
    @enum WebNavigationType
    @abstract The type of action that triggered a possible navigation.
    @constant WebNavigationTypeLinkClicked A link with an href was clicked.
    @constant WebNavigationTypeFormSubmitted A form was submitted.
    @constant WebNavigationTypeBackForward The user chose back or forward.
    @constant WebNavigationTypeReload The User hit the reload button.
    @constant WebNavigationTypeFormResubmitted A form was resubmitted (by virtue of doing back, forward or reload).
    @constant WebNavigationTypeOther Navigation is taking place for some other reason.
*/
enum WebNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LinkClicked
  case FormSubmitted
  case BackForward
  case Reload
  case FormResubmitted
  case Other
}
let WebActionNavigationTypeKey: String
let WebActionElementKey: String
let WebActionButtonKey: String
let WebActionModifierFlagsKey: String
let WebActionOriginalURLKey: String

/*!
    @protocol WebPolicyDecisionListener
    @discussion This protocol is used to call back with the results of a
    policy decision. This provides the ability to make these decisions
    asyncrhonously, which means the decision can be made by prompting
    with a sheet, for example.
*/
protocol WebPolicyDecisionListener : NSObjectProtocol {

  /*!
      @method use
      @abstract Use the resource
      @discussion If there remain more policy decisions to be made, then
      the next policy delegate method gets to decide. This will be
      either the next navigation policy delegate if there is a redirect,
      or the content policy delegate. If there are no more policy
      decisions to be made, the resource will be displayed inline if
      possible. If there is no view available to display the resource
      inline, then unableToImplementPolicyWithError:frame: will be
      called with an appropriate error. 
  
      <p>If a new window is going to be created for this navigation as a
      result of frame targeting, then it will be created once you call
      this method.
  */
  func use()

  /*!
      @method download
      @abstract Download the resource instead of displaying it.
      @discussion This method is more than just a convenience because it
      allows an in-progress navigation to be converted to a download
      based on content type, without having to stop and restart the
      load.
  */
  func download()

  /*!
      @method ignore
      @abstract Do nothing (but the client may choose to handle the request itself)
      @discussion A policy of ignore prevents WebKit from doing anything
      further with the load, however, the client is still free to handle
      the request in some other way, such as opening a new window,
      opening a new window behind the current one, opening the URL in an
      external app, revealing the location in Finder if a file URL, etc.
  */
  func ignore()
}

/*!
    @category WebPolicyDelegate
    @discussion While loading a URL, WebKit asks the WebPolicyDelegate for
    policies that determine the action of what to do with the URL or the data that
    the URL represents. Typically, the policy handler methods are called in this order:

    decidePolicyForNewWindowAction:request:newFrameName:decisionListener: (at most once)<BR>
    decidePolicyForNavigationAction:request:frame:decisionListener: (zero or more times)<BR>
    decidePolicyForMIMEType:request:frame: (zero or more times)<BR>

    New window policy is always checked. Navigation policy is checked
    for the initial load and every redirect unless blocked by an
    earlier policy. Content policy is checked once the content type is
    known, unless an earlier policy prevented it.

    In rare cases, content policy might be checked more than
    once. This occurs when loading a "multipart/x-mixed-replace"
    document, also known as "server push". In this case, multiple
    documents come in one navigation, with each replacing the last. In
    this case, conent policy will be checked for each one.
*/
protocol WebPolicyDelegate : NSObjectProtocol {

  /*!
     @method webView:decidePolicyForNavigationAction:request:frame:decisionListener:
     @abstract This method is called to decide what to do with a proposed navigation.
     @param actionInformation Dictionary that describes the action that triggered this navigation.
     @param request The request for the proposed navigation
     @param frame The WebFrame in which the navigation is happening
     @param listener The object to call when the decision is made
     @discussion This method will be called before loading starts, and
     on every redirect.
  */
  @available(OSX 10.0, *)
  optional func webView(webView: WebView!, decidePolicyForNavigationAction actionInformation: [NSObject : AnyObject]!, request: NSURLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)

  /*!
      @method webView:decidePolicyForNewWindowAction:request:newFrameName:decisionListener:
      @discussion This method is called to decide what to do with an targetted nagivation that would open a new window.
      @param actionInformation Dictionary that describes the action that triggered this navigation.
      @param request The request for the proposed navigation
      @param frame The frame in which the navigation is taking place
      @param listener The object to call when the decision is made
      @discussion This method is provided so that modified clicks on a targetted link which
      opens a new frame can prevent the new window from being opened if they decide to
      do something else, like download or present the new frame in a specialized way. 
  
      <p>If this method picks a policy of Use, the new window will be
      opened, and decidePolicyForNavigationAction:request:frame:decisionListner:
      will be called with a WebNavigationType of WebNavigationTypeOther
      in its action. This is to avoid possible confusion about the modifiers.
  */
  @available(OSX 10.0, *)
  optional func webView(webView: WebView!, decidePolicyForNewWindowAction actionInformation: [NSObject : AnyObject]!, request: NSURLRequest!, newFrameName frameName: String!, decisionListener listener: WebPolicyDecisionListener!)

  /*!
      @method webView:decidePolicyForMIMEType:request:frame:
      @discussion Returns the policy for content which has been partially loaded.
      Sent after webView:didStartProvisionalLoadForFrame: is sent on the WebFrameLoadDelegate.
      @param type MIME type for the resource.
      @param request A NSURLRequest for the partially loaded content.
      @param frame The frame which is loading the URL.
      @param listener The object to call when the decision is made
  */
  optional func webView(webView: WebView!, decidePolicyForMIMEType type: String!, request: NSURLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)

  /*!
      @method webView:unableToImplementPolicy:error:forURL:inFrame:
      @discussion Called when a WebPolicy could not be implemented. It is up to the client to display appropriate feedback.
      @param policy The policy that could not be implemented.
      @param error The error that caused the policy to not be implemented.
      @param URL The URL of the resource for which a particular action was requested but failed.
      @param frame The frame in which the policy could not be implemented.
  */
  optional func webView(webView: WebView!, unableToImplementPolicyWith error: NSError!, frame: WebFrame!)
}

/*!
@enum WebCacheModel

@abstract Specifies a usage model for a WebView, which WebKit will use to 
determine its caching behavior.

@constant WebCacheModelDocumentViewer Appropriate for a WebView displaying 
a fixed document -- like a splash screen, a chat document, or a word processing 
document -- with no UI for navigation. The WebView will behave like any other 
view, releasing resources when they are no longer referenced. Remote resources, 
if any, will be cached to disk. This is the most memory-efficient setting.

Examples: iChat, Mail, TextMate, Growl.

@constant WebCacheModelDocumentBrowser Appropriate for a WebView displaying 
a browsable series of documents with a UI for navigating between them -- for 
example, a reference materials browser or a website designer. The WebView will 
cache a reasonable number of resources and previously viewed documents in 
memory and/or on disk.

Examples: Dictionary, Help Viewer, Coda.

@constant WebCacheModelPrimaryWebBrowser Appropriate for a WebView in the 
application that acts as the user's primary web browser. The WebView will cache
a very large number of resources and previously viewed documents in memory 
and/or on disk.

Examples: Safari, OmniWeb, Shiira.
*/
enum WebCacheModel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DocumentViewer
  case DocumentBrowser
  case PrimaryWebBrowser
}
let WebPreferencesChangedNotification: String

/*!
    @class WebPreferences
*/
class WebPreferences : NSObject, NSCoding {

  /*!
      @method standardPreferences
  */
  class func standard() -> WebPreferences!

  /*!
      @method initWithIdentifier:
      @param anIdentifier A string used to identify the WebPreferences.
      @discussion WebViews can share instances of WebPreferences by using an instance of WebPreferences with
      the same identifier.  Typically, instance are not created directly.  Instead you set the preferences
      identifier on a WebView.  The identifier is used as a prefix that is added to the user defaults keys
      for the WebPreferences.
      @result Returns a new instance of WebPreferences or a previously allocated instance with the same identifier.
  */
  init!(identifier anIdentifier: String!)

  /*!
      @method identifier
      @result Returns the identifier for this WebPreferences.
  */
  var identifier: String! { get }

  /*!
      @property standardFontFamily
  */
  var standardFontFamily: String!

  /*!
      @property fixedFontFamily
  */
  var fixedFontFamily: String!

  /*!
      @property serifFontFamily
  */
  var serifFontFamily: String!

  /*!
      @property sansSerifFontFamily
  */
  var sansSerifFontFamily: String!

  /*!
      @property cursiveFontFamily
  */
  var cursiveFontFamily: String!

  /*!
      @property fantasyFontFamily
  */
  var fantasyFontFamily: String!

  /*!
      @property defaultFontSize
  */
  var defaultFontSize: Int32

  /*!
      @property defaultFixedFontSize
  */
  var defaultFixedFontSize: Int32

  /*!
      @property minimumFontSize
  */
  var minimumFontSize: Int32

  /*!
      @method minimumLogicalFontSize
  */
  var minimumLogicalFontSize: Int32

  /*!
      @property defaultTextEncodingName
  */
  var defaultTextEncodingName: String!

  /*!
      @property userStyleSheetEnabled
  */
  var isUserStyleSheetEnabled: Bool

  /*!
      @property userStyleSheetLocation
      @abstract The location of the user style sheet.
  */
  var userStyleSheetLocation: NSURL!

  /*!
      @property javaEnabled
  */
  var isJavaEnabled: Bool

  /*!
      @property javaScriptEnabled
  */
  var isJavaScriptEnabled: Bool

  /*!
      @property javaScriptCanOpenWindowsAutomatically
  */
  var javaScriptCanOpenWindowsAutomatically: Bool

  /*!
      @property plugInsEnabled
  */
  var plugInsEnabled: Bool

  /*!
      @property allowsAnimatedImages
  */
  var allowsAnimatedImages: Bool

  /*!
      @property allowsAnimatedImageLooping
  */
  var allowsAnimatedImageLooping: Bool

  /*!
      @property willLoadImagesAutomatically
  */
  var loadsImagesAutomatically: Bool

  /*!
      @property autosaves
      @discussion If autosaves is YES the settings represented by
      WebPreferences will be stored in the user defaults database.
  */
  var autosaves: Bool

  /*!
      @property shouldPrintBackgrounds
  */
  var shouldPrintBackgrounds: Bool

  /*!
      @property privateBrowsingEnabled:
      @abstract If private browsing is enabled, WebKit will not store information
      about sites the user visits.
   */
  var isPrivateBrowsingEnabled: Bool

  /*!
      @property tabsToLinks
      @abstract If tabsToLinks is YES, the tab key will focus links and form controls.
      The option key temporarily reverses this preference.
  */
  var tabsToLinks: Bool

  /*!
      @property usesPageCache
      @abstract Whether the receiver's associated WebViews use the shared
      page cache.
      @discussion Pages are cached as they are added to a WebBackForwardList, and
      removed from the cache as they are removed from a WebBackForwardList. Because 
      the page cache is global, caching a page in one WebBackForwardList may cause
      a page in another WebBackForwardList to be evicted from the cache.
  */
  var usesPageCache: Bool

  /*!
      @property cacheModel
      @abstract Specifies a usage model for a WebView, which WebKit will use to
      determine its caching behavior. If necessary, WebKit
      will prune its caches to match cacheModel when set.
  
      @discussion Research indicates that users tend to browse within clusters of
      documents that hold resources in common, and to revisit previously visited
      documents. WebKit and the frameworks below it include built-in caches that take
      advantage of these patterns, substantially improving document load speed in
      browsing situations. The WebKit cache model controls the behaviors of all of
      these caches, including NSURLCache and the various WebCore caches.
  
      Applications with a browsing interface can improve document load speed
      substantially by specifying WebCacheModelDocumentBrowser. Applications without
      a browsing interface can reduce memory usage substantially by specifying
      WebCacheModelDocumentViewer.
  
      If cacheModel is not set, WebKit will select a cache model automatically.
  */
  var cacheModel: WebCacheModel

  /*!
      @property suppressesIncrementalRendering
  */
  var suppressesIncrementalRendering: Bool

  /*!
      @property allowsAirPlayForMediaPlayback
   */
  var allowsAirPlayForMediaPlayback: Bool
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
    @class WebResource
    @discussion A WebResource represents a fully downloaded URL. 
    It includes the data of the resource as well as the metadata associated with the resource.
*/
class WebResource : NSObject, NSCoding, NSCopying {

  /*!
      @method initWithData:URL:MIMEType:textEncodingName:frameName
      @abstract The initializer for WebResource.
      @param data The data of the resource.
      @param URL The URL of the resource.
      @param MIMEType The MIME type of the resource.
      @param textEncodingName The text encoding name of the resource (can be nil).
      @param frameName The frame name of the resource if the resource represents the contents of an entire HTML frame (can be nil).
      @result An initialized WebResource.
  */
  init!(data: NSData!, url URL: NSURL!, mimeType MIMEType: String!, textEncodingName: String!, frameName: String!)

  /*!
      @property data
      @abstract The data of the resource.
  */
  @NSCopying var data: NSData! { get }

  /*!
      @property URL
      @abstract The URL of the resource.
  */
  var url: NSURL! { get }

  /*!
      @property MIMEType
      @abstract The MIME type of the resource.
  */
  var mimeType: String! { get }

  /*!
      @property textEncodingName
      @abstract The text encoding name of the resource (can be nil).
  */
  var textEncodingName: String! { get }

  /*!
      @property frameName
      @abstract The frame name of the resource if the resource represents the contents of an entire HTML frame (can be nil).
  */
  var frameName: String! { get }
  init()
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @category  WebResourceLoadDelegate
    @discussion Implementors of this protocol will receive messages indicating
    that a resource is about to be loaded, data has been received for a resource,
    an error has been received for a resource, and completion of a resource load.
    Implementors are also given the opportunity to mutate requests before they are sent.
    The various progress methods of this protocol all receive an identifier as the
    parameter.  This identifier can be used to track messages associated with a single
    resource.  For example, a single resource may generate multiple 
    resource:willSendRequest:redirectResponse:fromDataSource: messages as it's URL is redirected.
*/
protocol WebResourceLoadDelegate : NSObjectProtocol {

  /*!
      @method webView:identifierForInitialRequest:fromDataSource:
      @param webView The WebView sending the message.
      @param request The request about to be sent.
      @param dataSource The datasource that initiated the load.
      @discussion An implementor of WebResourceLoadDelegate should provide an identifier
      that can be used to track the load of a single resource.  This identifier will be
      passed as the first argument for all of the other WebResourceLoadDelegate methods.  The
      identifier is useful to track changes to a resources request, which will be
      provided by one or more calls to resource:willSendRequest:redirectResponse:fromDataSource:.
      @result An identifier that will be passed back to the implementor for each callback.
      The identifier will be retained.
  */
  optional func webView(sender: WebView!, identifierForInitialRequest request: NSURLRequest!, from dataSource: WebDataSource!) -> AnyObject!

  /*!
      @method webView:resource:willSendRequest:redirectResponse:fromDataSource:
      @discussion This message is sent before a load is initiated.  The request may be modified
      as necessary by the receiver.
      @param webView The WebView sending the message.
      @param identifier An identifier that can be used to track the progress of a resource load across
      multiple call backs.
      @param request The request about to be sent.
      @param redirectResponse If the request is being made in response to a redirect we received,
      the response that conveyed that redirect.
      @param dataSource The dataSource that initiated the load.
      @result Returns the request, which may be mutated by the implementor, although typically
      will be request.
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, willSend request: NSURLRequest!, redirectResponse: NSURLResponse!, from dataSource: WebDataSource!) -> NSURLRequest!

  /*!
      @method webView:resource:didReceiveAuthenticationChallenge:fromDataSource:
      @abstract Start authentication for the resource, providing a challenge
      @discussion Call useCredential::, continueWithoutCredential or
      cancel on the challenge when done.
      @param challenge The NSURLAuthenticationChallenge to start authentication for
      @discussion If you do not implement this delegate method, WebKit will handle authentication
      automatically by prompting with a sheet on the window that the WebView is associated with.
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceive challenge: NSURLAuthenticationChallenge!, from dataSource: WebDataSource!)

  /*!
      @method webView:resource:didCancelAuthenticationChallenge:fromDataSource:
      @abstract Cancel authentication for a given request
      @param challenge The NSURLAuthenticationChallenge for which to cancel authentication
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didCancel challenge: NSURLAuthenticationChallenge!, from dataSource: WebDataSource!)

  /*!
      @method webView:resource:didReceiveResponse:fromDataSource:
      @abstract This message is sent after a response has been received for this load.
      @param webView The WebView sending the message.
      @param identifier An identifier that can be used to track the progress of a resource load across
      multiple call backs.
      @param response The response for the request.
      @param dataSource The dataSource that initiated the load.
      @discussion In some rare cases, multiple responses may be received for a single load.
      This occurs with multipart/x-mixed-replace, or "server push". In this case, the client
      should assume that each new response resets progress so far for the resource back to 0,
      and should check the new response for the expected content length.
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceive response: NSURLResponse!, from dataSource: WebDataSource!)

  /*!
      @method webView:resource:didReceiveContentLength:fromDataSource:
      @discussion Multiple of these messages may be sent as data arrives.
      @param webView The WebView sending the message.
      @param identifier An identifier that can be used to track the progress of a resource load across
      multiple call backs.
      @param length The amount of new data received.  This is not the total amount, just the new amount received.
      @param dataSource The dataSource that initiated the load.
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didReceiveContentLength length: Int, from dataSource: WebDataSource!)

  /*!
      @method webView:resource:didFinishLoadingFromDataSource:
      @discussion This message is sent after a load has successfully completed.
      @param webView The WebView sending the message.
      @param identifier An identifier that can be used to track the progress of a resource load across
      multiple call backs.
      @param dataSource The dataSource that initiated the load.
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFinishLoadingFrom dataSource: WebDataSource!)

  /*!
      @method webView:resource:didFailLoadingWithError:fromDataSource:
      @discussion This message is sent after a load has failed to load due to an error.
      @param webView The WebView sending the message.
      @param identifier An identifier that can be used to track the progress of a resource load across
      multiple call backs.
      @param error The error associated with this load.
      @param dataSource The dataSource that initiated the load.
  */
  optional func webView(sender: WebView!, resource identifier: AnyObject!, didFailLoadingWith error: NSError!, from dataSource: WebDataSource!)

  /*!
      @method webView:plugInFailedWithError:dataSource:
      @discussion Called when a plug-in is not found, fails to load or is not available for some reason.
      @param webView The WebView sending the message.
      @param error The plug-in error. In the userInfo dictionary of the error, the object for the
      NSErrorFailingURLKey key is a URL string of the SRC attribute, the object for the WebKitErrorPlugInNameKey
      key is a string of the plug-in's name, the object for the WebKitErrorPlugInPageURLStringKey key is a URL string
      of the PLUGINSPAGE attribute and the object for the WebKitErrorMIMETypeKey key is a string of the TYPE attribute.
      Some, none or all of the mentioned attributes can be present in the userInfo. The error returns nil for userInfo
      when none are present.
      @param dataSource The dataSource that contains the plug-in.
  */
  optional func webView(sender: WebView!, plugInFailedWith error: NSError!, dataSource: WebDataSource!)
}
extension NSObject {

  /*!
      @method webScriptNameForSelector:
      @param selector The selector that will be exposed to the script environment.
      @discussion Use the returned string as the exported name for the selector
      in the script environment. It is the responsibility of the class to ensure
      uniqueness of the returned name. If nil is returned or this
      method is not implemented the default name for the selector will
      be used. The default name concatenates the components of the
      Objective-C selector name and replaces ':' with '_'.  '_' characters
      are escaped with an additional '$', i.e. '_' becomes "$_". '$' are
      also escaped, i.e.
          Objective-C name        Default script name
          moveTo::                move__
          moveTo_                 moveTo$_
          moveTo$_                moveTo$$$_
      @result Returns the name to be used to represent the specified selector in the
      scripting environment.
  */
  @available(OSX 10.4, *)
  class func webScriptNameFor(selector: Selector) -> String!

  /*!
      @method isSelectorExcludedFromWebScript:
      @param selector The selector the will be exposed to the script environment.
      @discussion Return NO to export the selector to the script environment.
      Return YES to prevent the selector from being exported to the script environment. 
      If this method is not implemented on the class no selectors will be exported.
      @result Returns YES to hide the selector, NO to export the selector.
  */
  @available(OSX 10.4, *)
  class func isSelectorExcludedFromWebScript(selector: Selector) -> Bool

  /*!
      @method webScriptNameForKey:
      @param name The name of the instance variable that will be exposed to the
      script environment. Only instance variables that meet the export criteria will
      be exposed.
      @discussion Provide an alternate name for a property.
      @result Returns the name to be used to represent the specified property in the
      scripting environment.
  */
  @available(OSX 10.4, *)
  class func webScriptNameForKey(name: UnsafePointer<Int8>) -> String!

  /*!
      @method isKeyExcludedFromWebScript:
      @param name The name of the instance variable that will be exposed to the
      script environment.
      @discussion Return NO to export the property to the script environment.
      Return YES to prevent the property from being exported to the script environment.
      @result Returns YES to hide the property, NO to export the property.
  */
  @available(OSX 10.4, *)
  class func isKeyExcludedFromWebScript(name: UnsafePointer<Int8>) -> Bool

  /*!
      @method invokeUndefinedMethodFromWebScript:withArguments:
      @param name The name of the method to invoke.
      @param arguments The arguments to pass the method.
      @discussion If a script attempts to invoke a method that is not exported, 
      invokeUndefinedMethodFromWebScript:withArguments: will be called.
      @result The return value of the invocation. The value will be converted as appropriate
      for the script environment.
  */
  class func invokeUndefinedMethodFromWebScript(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!

  /*!
      @method invokeUndefinedMethodFromWebScript:withArguments:
      @param name The name of the method to invoke.
      @param arguments The arguments to pass the method.
      @discussion If a script attempts to invoke a method that is not exported, 
      invokeUndefinedMethodFromWebScript:withArguments: will be called.
      @result The return value of the invocation. The value will be converted as appropriate
      for the script environment.
  */
  @available(OSX 10.4, *)
  func invokeUndefinedMethodFromWebScript(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!

  /*!
      @method invokeDefaultMethodWithArguments:
      @param arguments The arguments to pass the method.
      @discussion If a script attempts to call an exposed object as a function, 
      this method will be called.
      @result The return value of the call. The value will be converted as appropriate
      for the script environment.
  */
  class func invokeDefaultMethodWithArguments(arguments: [AnyObject]!) -> AnyObject!

  /*!
      @method invokeDefaultMethodWithArguments:
      @param arguments The arguments to pass the method.
      @discussion If a script attempts to call an exposed object as a function, 
      this method will be called.
      @result The return value of the call. The value will be converted as appropriate
      for the script environment.
  */
  @available(OSX 10.4, *)
  func invokeDefaultMethodWithArguments(arguments: [AnyObject]!) -> AnyObject!

  /*!
      @method finalizeForWebScript
      @discussion finalizeForScript is called on objects exposed to the script
      environment just before the script environment garbage collects the object.
      Subsequently, any references to WebScriptObjects made by the exposed object will
      be invalid and have undefined consequences.
  */
  class func finalizeForWebScript()

  /*!
      @method finalizeForWebScript
      @discussion finalizeForScript is called on objects exposed to the script
      environment just before the script environment garbage collects the object.
      Subsequently, any references to WebScriptObjects made by the exposed object will
      be invalid and have undefined consequences.
  */
  @available(OSX 10.4, *)
  func finalizeForWebScript()
}

/*!
    @class WebScriptObject
    @discussion WebScriptObjects are used to wrap script objects passed from
    script environments to Objective-C. WebScriptObjects cannot be created
    directly. In normal uses of WebKit, you gain access to the script
    environment using the "windowScriptObject" method on WebView.

    The following KVC methods are commonly used to access properties of the
    WebScriptObject:

        - (void)setValue:(id)value forKey:(NSString *)key
        - (id)valueForKey:(NSString *)key

    As it possible to remove attributes from web script objects, the following
    additional method augments the basic KVC methods:

        - (void)removeWebScriptKey:(NSString *)name;

    Also, since the sparse array access allowed in script objects doesn't map well
    to NSArray, the following methods can be used to access index based properties:

        - (id)webScriptValueAtIndex:(unsigned)index;
        - (void)setWebScriptValueAtIndex:(unsigned)index value:(id)value;
*/
@available(OSX 10.4, *)
class WebScriptObject : NSObject {

  /*!
      @method throwException:
      @discussion Throws an exception in the current script execution context.
      @result Either NO if an exception could not be raised, YES otherwise.
  */
  class func throwException(exceptionMessage: String!) -> Bool

  /*!
      @method JSObject
      @result The equivalent JSObjectRef for this WebScriptObject.
      @discussion Use this method to bridge between the WebScriptObject and 
      JavaScriptCore APIs.
  */
  @available(OSX 10.5, *)
  func jsObject() -> JSObjectRef

  /*!
      @method callWebScriptMethod:withArguments:
      @param name The name of the method to call in the script environment.
      @param arguments The arguments to pass to the script environment.
      @discussion Calls the specified method in the script environment using the
      specified arguments.
      @result Returns the result of calling the script method.
      Returns WebUndefined when an exception is thrown in the script environment.
  */
  func callWebScriptMethod(name: String!, withArguments arguments: [AnyObject]!) -> AnyObject!

  /*!
      @method evaluateWebScript:
      @param script The script to execute in the target script environment.
      @discussion The script will be executed in the target script environment. The format
      of the script is dependent of the target script environment.
      @result Returns the result of evaluating the script in the script environment.
      Returns WebUndefined when an exception is thrown in the script environment.
  */
  func evaluateWebScript(script: String!) -> AnyObject!

  /*!
      @method removeWebScriptKey:
      @param name The name of the property to remove.
      @discussion Removes the property from the object in the script environment.
  */
  func removeWebScriptKey(name: String!)

  /*!
      @method stringRepresentation
      @discussion Converts the target object to a string representation. The coercion
      of non string objects type is dependent on the script environment.
      @result Returns the string representation of the object.
  */
  func stringRepresentation() -> String!

  /*!
      @method webScriptValueAtIndex:
      @param index The index of the property to return.
      @discussion Gets the value of the property at the specified index.
      @result The value of the property. Returns WebUndefined when an exception is
      thrown in the script environment.
  */
  func webScriptValueAt(index: UInt32) -> AnyObject!

  /*!
      @method setWebScriptValueAtIndex:value:
      @param index The index of the property to set.
      @param value The value of the property to set.
      @discussion Sets the property value at the specified index.
  */
  func setWebScriptValueAt(index: UInt32, value: AnyObject!)

  /*!
      @method setException:
      @param description The description of the exception.
      @discussion Raises an exception in the script environment in the context of the
      current object.
  */
  func setException(description: String!)

  /*!
      @method JSValue
      @result The equivalent Objective-C JSValue for this WebScriptObject.
      @discussion Use this method to bridge between the WebScriptObject and 
      JavaScriptCore Objective-C APIs.
  */
  func jsValue() -> JSValue!
  init()
}

/*!
    @class WebUndefined
*/
@available(OSX 10.4, *)
class WebUndefined : NSObject, NSCoding, NSCopying {
  init()
  @available(OSX 10.4, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.4, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
var WebMenuItemTagOpenLinkInNewWindow: Int { get }
var WebMenuItemTagDownloadLinkToDisk: Int { get }
var WebMenuItemTagCopyLinkToClipboard: Int { get }
var WebMenuItemTagOpenImageInNewWindow: Int { get }
var WebMenuItemTagDownloadImageToDisk: Int { get }
var WebMenuItemTagCopyImageToClipboard: Int { get }
var WebMenuItemTagOpenFrameInNewWindow: Int { get }
var WebMenuItemTagCopy: Int { get }
var WebMenuItemTagGoBack: Int { get }
var WebMenuItemTagGoForward: Int { get }
var WebMenuItemTagStop: Int { get }
var WebMenuItemTagReload: Int { get }
var WebMenuItemTagCut: Int { get }
var WebMenuItemTagPaste: Int { get }
var WebMenuItemTagSpellingGuess: Int { get }
var WebMenuItemTagNoGuessesFound: Int { get }
var WebMenuItemTagIgnoreSpelling: Int { get }
var WebMenuItemTagLearnSpelling: Int { get }
var WebMenuItemTagOther: Int { get }
var WebMenuItemTagSearchInSpotlight: Int { get }
var WebMenuItemTagSearchWeb: Int { get }
var WebMenuItemTagLookUpInDictionary: Int { get }
var WebMenuItemTagOpenWithDefaultApplication: Int { get }
var WebMenuItemPDFActualSize: Int { get }
var WebMenuItemPDFZoomIn: Int { get }
var WebMenuItemPDFZoomOut: Int { get }
var WebMenuItemPDFAutoSize: Int { get }
var WebMenuItemPDFSinglePage: Int { get }
var WebMenuItemPDFFacingPages: Int { get }
var WebMenuItemPDFContinuous: Int { get }
var WebMenuItemPDFNextPage: Int { get }
var WebMenuItemPDFPreviousPage: Int { get }

/*!
    @enum WebDragDestinationAction
    @abstract Actions that the destination of a drag can perform.
    @constant WebDragDestinationActionNone No action
    @constant WebDragDestinationActionDHTML Allows DHTML (such as JavaScript) to handle the drag
    @constant WebDragDestinationActionEdit Allows editable documents to be edited from the drag
    @constant WebDragDestinationActionLoad Allows a location change from the drag
    @constant WebDragDestinationActionAny Allows any of the above to occur
*/
struct WebDragDestinationAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragDestinationAction { get }
  static var DHTML: WebDragDestinationAction { get }
  static var Edit: WebDragDestinationAction { get }
  static var Load: WebDragDestinationAction { get }
  static var Any: WebDragDestinationAction { get }
}

/*!
    @enum WebDragSourceAction
    @abstract Actions that the source of a drag can perform.
    @constant WebDragSourceActionNone No action
    @constant WebDragSourceActionDHTML Allows DHTML (such as JavaScript) to start a drag
    @constant WebDragSourceActionImage Allows an image drag to occur
    @constant WebDragSourceActionLink Allows a link drag to occur
    @constant WebDragSourceActionSelection Allows a selection drag to occur
    @constant WebDragSourceActionAny Allows any of the above to occur
*/
struct WebDragSourceAction : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: WebDragSourceAction { get }
  static var DHTML: WebDragSourceAction { get }
  static var Image: WebDragSourceAction { get }
  static var Link: WebDragSourceAction { get }
  static var Selection: WebDragSourceAction { get }
  static var Any: WebDragSourceAction { get }
}

/*!
    @protocol WebOpenPanelResultListener
    @discussion This protocol is used to call back with the results of
    the file open panel requested by runOpenPanelForFileButtonWithResultListener:
*/
protocol WebOpenPanelResultListener : NSObjectProtocol {

  /*!
      @method chooseFilename:
      @abstract Call this method to return a filename from the file open panel.
      @param fileName
  */
  func chooseFilename(fileName: String!)

  /*!
      @method chooseFilenames:
      @abstract Call this method to return an array of filenames from the file open panel.
      @param fileNames
  */
  @available(OSX 10.6, *)
  func chooseFilenames(fileNames: [AnyObject]!)

  /*!
      @method cancel
      @abstract Call this method to indicate that the file open panel was cancelled.
  */
  func cancel()
}

/*!
    @category WebUIDelegate
    @discussion A class that implements WebUIDelegate provides
    window-related methods that may be used by Javascript, plugins and
    other aspects of web pages. These methods are used to open new
    windows and control aspects of existing windows.
*/
protocol WebUIDelegate : NSObjectProtocol {

  /*!
      @method webView:createWebViewWithRequest:
      @abstract Create a new window and begin to load the specified request.
      @discussion The newly created window is hidden, and the window operations delegate on the
      new WebViews will get a webViewShow: call.
      @param sender The WebView sending the delegate method.
      @param request The request to load.
      @result The WebView for the new window.
  */
  optional func webView(sender: WebView!, createWebViewWith request: NSURLRequest!) -> WebView!

  /*!
      @method webViewShow:
      @param sender The WebView sending the delegate method.
      @abstract Show the window that contains the top level view of the WebView,
      ordering it frontmost.
      @discussion This will only be called just after createWindowWithRequest:
      is used to create a new window.
  */
  optional func webViewShow(sender: WebView!)

  /*!
      @method webView:createWebViewModalDialogWithRequest:
      @abstract Create a new window and begin to load the specified request.
      @discussion The newly created window is hidden, and the window operations delegate on the
      new WebViews will get a webViewShow: call.
      @param sender The WebView sending the delegate method.
      @param request The request to load.
      @result The WebView for the new window.
  */
  optional func webView(sender: WebView!, createWebViewModalDialogWith request: NSURLRequest!) -> WebView!

  /*!
      @method webViewRunModal:
      @param sender The WebView sending the delegate method.
      @abstract Show the window that contains the top level view of the WebView,
      ordering it frontmost. The window should be run modal in the application.
      @discussion This will only be called just after createWebViewModalDialogWithRequest:
      is used to create a new window.
  */
  optional func webViewRunModal(sender: WebView!)

  /*!
      @method webViewClose:
      @abstract Close the current window. 
      @param sender The WebView sending the delegate method.
      @discussion Clients showing multiple views in one window may
      choose to close only the one corresponding to this
      WebView. Other clients may choose to ignore this method
      entirely.
  */
  optional func webViewClose(sender: WebView!)

  /*!
      @method webViewFocus:
      @abstract Focus the current window (i.e. makeKeyAndOrderFront:).
      @param The WebView sending the delegate method.
      @discussion Clients showing multiple views in one window may want to
      also do something to focus the one corresponding to this WebView.
  */
  optional func webViewFocus(sender: WebView!)

  /*!
      @method webViewUnfocus:
      @abstract Unfocus the current window.
      @param sender The WebView sending the delegate method.
      @discussion Clients showing multiple views in one window may want to
      also do something to unfocus the one corresponding to this WebView.
  */
  optional func webViewUnfocus(sender: WebView!)

  /*!
      @method webViewFirstResponder:
      @abstract Get the first responder for this window.
      @param sender The WebView sending the delegate method.
      @discussion This method should return the focused control in the
      WebView's view, if any. If the view is out of the window
      hierarchy, this might return something than calling firstResponder
      on the real NSWindow would. It's OK to return either nil or the
      real first responder if some control not in the window has focus.
  */
  optional func webViewFirstResponder(sender: WebView!) -> NSResponder!

  /*!
      @method webView:makeFirstResponder:
      @abstract Set the first responder for this window.
      @param sender The WebView sending the delegate method.
      @param responder The responder to make first (will always be a view)
      @discussion responder will always be a view that is in the view
      subhierarchy of the top-level web view for this WebView. If the
      WebView's top level view is currently out of the view
      hierarchy, it may be desirable to save the first responder
      elsewhere, or possibly ignore this call.
  */
  optional func webView(sender: WebView!, makeFirstResponder responder: NSResponder!)

  /*!
      @method webView:setStatusText:
      @abstract Set the window's status display, if any, to the specified string.
      @param sender The WebView sending the delegate method.
      @param text The status text to set
  */
  optional func webView(sender: WebView!, setStatusText text: String!)

  /*!
      @method webViewStatusText:
      @abstract Get the currently displayed status text.
      @param sender The WebView sending the delegate method.
      @result The status text
  */
  optional func webViewStatusText(sender: WebView!) -> String!

  /*!
      @method webViewAreToolbarsVisible:
      @abstract Determine whether the window's toolbars are currently visible
      @param sender The WebView sending the delegate method.
      @discussion This method should return YES if the window has any
      toolbars that are currently on, besides the status bar. If the app
      has more than one toolbar per window, for example a regular
      command toolbar and a favorites bar, it should return YES from
      this method if at least one is on.
      @result YES if at least one toolbar is visible, otherwise NO.
  */
  optional func webViewAreToolbarsVisible(sender: WebView!) -> Bool

  /*!
      @method webView:setToolbarsVisible:
      @param sender The WebView sending the delegate method.
      @abstract Set whether the window's toolbars are currently visible.
      @param visible New value for toolbar visibility
      @discussion Setting this to YES should turn on all toolbars
      (except for a possible status bar). Setting it to NO should turn
      off all toolbars (with the same exception).
  */
  optional func webView(sender: WebView!, setToolbarsVisible visible: Bool)

  /*!
      @method webViewIsStatusBarVisible:
      @abstract Determine whether the status bar is visible.
      @param sender The WebView sending the delegate method.
      @result YES if the status bar is visible, otherwise NO.
  */
  optional func webViewIsStatusBarVisible(sender: WebView!) -> Bool

  /*!
      @method webView:setStatusBarVisible:
      @abstract Set whether the status bar is currently visible.
      @param visible The new visibility value
      @discussion Setting this to YES should show the status bar,
      setting it to NO should hide it.
  */
  optional func webView(sender: WebView!, setStatusBarVisible visible: Bool)

  /*!
      @method webViewIsResizable:
      @abstract Determine whether the window is resizable or not.
      @param sender The WebView sending the delegate method.
      @result YES if resizable, NO if not.
      @discussion If there are multiple views in the same window, they
      have have their own separate resize controls and this may need to
      be handled specially.
  */
  optional func webViewIsResizable(sender: WebView!) -> Bool

  /*!
      @method webView:setResizable:
      @abstract Set the window to resizable or not
      @param sender The WebView sending the delegate method.
      @param resizable YES if the window should be made resizable, NO if not.
      @discussion If there are multiple views in the same window, they
      have have their own separate resize controls and this may need to
      be handled specially.
  */
  optional func webView(sender: WebView!, setResizable resizable: Bool)

  /*!
      @method webView:setFrame:
      @abstract Set the window's frame rect
      @param sender The WebView sending the delegate method.
      @param frame The new window frame size
      @discussion Even though a caller could set the frame directly using the NSWindow,
      this method is provided so implementors of this protocol can do special
      things on programmatic move/resize, like avoiding autosaving of the size.
  */
  optional func webView(sender: WebView!, setFrame frame: NSRect)

  /*!
      @method webViewFrame:
      @param sender The WebView sending the delegate method.
      @abstract REturn the window's frame rect
      @discussion 
  */
  optional func webViewFrame(sender: WebView!) -> NSRect

  /*!
      @method webView:runJavaScriptAlertPanelWithMessage:initiatedByFrame:
      @abstract Display a JavaScript alert panel.
      @param sender The WebView sending the delegate method.
      @param message The message to display.
      @param frame The WebFrame whose JavaScript initiated this call.
      @discussion Clients should visually indicate that this panel comes
      from JavaScript initiated by the specified frame. The panel should have 
      a single OK button.
  */
  optional func webView(sender: WebView!, runJavaScriptAlertPanelWithMessage message: String!, initiatedBy frame: WebFrame!)

  /*!
      @method webView:runJavaScriptConfirmPanelWithMessage:initiatedByFrame:
      @abstract Display a JavaScript confirm panel.
      @param sender The WebView sending the delegate method.
      @param message The message to display.
      @param frame The WebFrame whose JavaScript initiated this call.
      @result YES if the user hit OK, NO if the user chose Cancel.
      @discussion Clients should visually indicate that this panel comes
      from JavaScript initiated by the specified frame. The panel should have 
      two buttons, e.g. "OK" and "Cancel".
  */
  optional func webView(sender: WebView!, runJavaScriptConfirmPanelWithMessage message: String!, initiatedBy frame: WebFrame!) -> Bool

  /*!
      @method webView:runJavaScriptTextInputPanelWithPrompt:defaultText:initiatedByFrame:
      @abstract Display a JavaScript text input panel.
      @param sender The WebView sending the delegate method.
      @param message The message to display.
      @param defaultText The initial text for the text entry area.
      @param frame The WebFrame whose JavaScript initiated this call.
      @result The typed text if the user hit OK, otherwise nil.
      @discussion Clients should visually indicate that this panel comes
      from JavaScript initiated by the specified frame. The panel should have 
      two buttons, e.g. "OK" and "Cancel", and an area to type text.
  */
  optional func webView(sender: WebView!, runJavaScriptTextInputPanelWithPrompt prompt: String!, defaultText: String!, initiatedBy frame: WebFrame!) -> String!

  /*!
      @method webView:runBeforeUnloadConfirmPanelWithMessage:initiatedByFrame:
      @abstract Display a confirm panel by an "before unload" event handler.
      @param sender The WebView sending the delegate method.
      @param message The message to display.
      @param frame The WebFrame whose JavaScript initiated this call.
      @result YES if the user hit OK, NO if the user chose Cancel.
      @discussion Clients should include a message in addition to the one
      supplied by the web page that indicates. The panel should have 
      two buttons, e.g. "OK" and "Cancel".
  */
  optional func webView(sender: WebView!, runBeforeUnloadConfirmPanelWithMessage message: String!, initiatedBy frame: WebFrame!) -> Bool

  /*!
      @method webView:runOpenPanelForFileButtonWithResultListener:
      @abstract Display a file open panel for a file input control.
      @param sender The WebView sending the delegate method.
      @param resultListener The object to call back with the results.
      @discussion This method is passed a callback object instead of giving a return
      value so that it can be handled with a sheet.
  */
  optional func webView(sender: WebView!, runOpenPanelForFileButtonWith resultListener: WebOpenPanelResultListener!)

  /*!
      @method webView:runOpenPanelForFileButtonWithResultListener:allowMultipleFiles
      @abstract Display a file open panel for a file input control that may allow multiple files to be selected.
      @param sender The WebView sending the delegate method.
      @param resultListener The object to call back with the results.
      @param allowMultipleFiles YES if the open panel should allow myltiple files to be selected, NO if not.
      @discussion This method is passed a callback object instead of giving a return
      value so that it can be handled with a sheet.
  */
  @available(OSX 10.6, *)
  optional func webView(sender: WebView!, runOpenPanelForFileButtonWith resultListener: WebOpenPanelResultListener!, allowMultipleFiles: Bool)

  /*!
      @method webView:mouseDidMoveOverElement:modifierFlags:
      @abstract Update the window's feedback for mousing over links to reflect a new item the mouse is over
      or new modifier flags.
      @param sender The WebView sending the delegate method.
      @param elementInformation Dictionary that describes the element that the mouse is over, or nil.
      @param modifierFlags The modifier flags as in NSEvent.
  */
  @available(OSX 10.0, *)
  optional func webView(sender: WebView!, mouseDidMoveOverElement elementInformation: [NSObject : AnyObject]!, modifierFlags: Int)

  /*!
      @method webView:contextMenuItemsForElement:defaultMenuItems:
      @abstract Returns the menu items to display in an element's contextual menu.
      @param sender The WebView sending the delegate method.
      @param element A dictionary representation of the clicked element.
      @param defaultMenuItems An array of default NSMenuItems to include in all contextual menus.
      @result An array of NSMenuItems to include in the contextual menu.
  */
  @available(OSX 10.0, *)
  optional func webView(sender: WebView!, contextMenuItemsForElement element: [NSObject : AnyObject]!, defaultMenuItems: [AnyObject]!) -> [AnyObject]!

  /*!
      @method webView:validateUserInterfaceItem:defaultValidation:
      @abstract Controls UI validation
      @param webView The WebView sending the delegate method
      @param item The user interface item being validated
      @pararm defaultValidation Whether or not the WebView thinks the item is valid
      @discussion This method allows the UI delegate to control WebView's validation of user interface items.
      See WebView.h to see the methods to that WebView can currently validate. See NSUserInterfaceValidations and
      NSValidatedUserInterfaceItem for information about UI validation.
  */
  optional func webView(webView: WebView!, validate item: NSValidatedUserInterfaceItem!, defaultValidation: Bool) -> Bool

  /*!
      @method webView:shouldPerformAction:fromSender:
      @abstract Controls actions
      @param webView The WebView sending the delegate method
      @param action The action being sent
      @param sender The sender of the action
      @discussion This method allows the UI delegate to control WebView's behavior when an action is being sent.
      For example, if the action is copy:, the delegate can return YES to allow WebView to perform its default
      copy behavior or return NO and perform copy: in some other way. See WebView.h to see the actions that
      WebView can perform.
  */
  optional func webView(webView: WebView!, shouldPerformAction action: Selector, fromSender sender: AnyObject!) -> Bool

  /*!
      @method webView:dragDestinationActionMaskForDraggingInfo:
      @abstract Controls behavior when dragging to a WebView
      @param webView The WebView sending the delegate method
      @param draggingInfo The dragging info of the drag
      @discussion This method is called periodically as something is dragged over a WebView. The UI delegate can return a mask
      indicating which drag destination actions can occur, WebDragDestinationActionAny to allow any kind of action or
      WebDragDestinationActionNone to not accept the drag.
  */
  optional func webView(webView: WebView!, dragDestinationActionMaskFor draggingInfo: NSDraggingInfo!) -> Int

  /*!
      @method webView:willPerformDragDestinationAction:forDraggingInfo:
      @abstract Informs that WebView will perform a drag destination action
      @param webView The WebView sending the delegate method
      @param action The drag destination action
      @param draggingInfo The dragging info of the drag
      @discussion This method is called after the last call to webView:dragDestinationActionMaskForDraggingInfo: after something is dropped on a WebView.
      This method informs the UI delegate of the drag destination action that WebView will perform.
  */
  optional func webView(webView: WebView!, willPerform action: WebDragDestinationAction, forDraggingInfo draggingInfo: NSDraggingInfo!)

  /*!
      @method webView:dragSourceActionMaskForPoint:
      @abstract Controls behavior when dragging from a WebView
      @param webView The WebView sending the delegate method
      @param point The point where the drag started in the coordinates of the WebView
      @discussion This method is called after the user has begun a drag from a WebView. The UI delegate can return a mask indicating
      which drag source actions can occur, WebDragSourceActionAny to allow any kind of action or WebDragSourceActionNone to not begin a drag.
  */
  optional func webView(webView: WebView!, dragSourceActionMaskFor point: NSPoint) -> Int

  /*!
      @method webView:willPerformDragSourceAction:fromPoint:withPasteboard:
      @abstract Informs that a drag a has begun from a WebView
      @param webView The WebView sending the delegate method
      @param action The drag source action
      @param point The point where the drag started in the coordinates of the WebView
      @param pasteboard The drag pasteboard
      @discussion This method is called after webView:dragSourceActionMaskForPoint: is called after the user has begun a drag from a WebView.
      This method informs the UI delegate of the drag source action that will be performed and gives the delegate an opportunity to modify
      the contents of the dragging pasteboard.
  */
  optional func webView(webView: WebView!, willPerform action: WebDragSourceAction, from point: NSPoint, withPasteboard pasteboard: NSPasteboard!)

  /*!
      @method webView:printFrameView:
      @abstract Informs that a WebFrameView needs to be printed
      @param webView The WebView sending the delegate method
      @param frameView The WebFrameView needing to be printed
      @discussion This method is called when a script or user requests the page to be printed.
      In this method the delegate can prepare the WebFrameView to be printed. Some content that WebKit
      displays can be printed directly by the WebFrameView, other content will need to be handled by
      the delegate. To determine if the WebFrameView can handle printing the delegate should check
      WebFrameView's documentViewShouldHandlePrint, if YES then the delegate can call printDocumentView
      on the WebFrameView. Otherwise the delegate will need to request a NSPrintOperation from
      the WebFrameView's printOperationWithPrintInfo to handle the printing.
  */
  optional func webView(sender: WebView!, print frameView: WebFrameView!)

  /*!
      @method webViewHeaderHeight:
      @param webView The WebView sending the delegate method
      @abstract Reserve a height for the printed page header.
      @result The height to reserve for the printed page header, return 0.0 to not reserve any space for a header.
      @discussion The height returned will be used to calculate the rect passed to webView:drawHeaderInRect:.
  */
  optional func webViewHeaderHeight(sender: WebView!) -> Float

  /*!
      @method webViewFooterHeight:
      @param webView The WebView sending the delegate method
      @abstract Reserve a height for the printed page footer.
      @result The height to reserve for the printed page footer, return 0.0 to not reserve any space for a footer.
      @discussion The height returned will be used to calculate the rect passed to webView:drawFooterInRect:.
  */
  optional func webViewFooterHeight(sender: WebView!) -> Float

  /*!
      @method webView:drawHeaderInRect:
      @param webView The WebView sending the delegate method
      @param rect The NSRect reserved for the header of the page
      @abstract The delegate should draw a header for the sender in the supplied rect.
  */
  optional func webView(sender: WebView!, drawHeaderIn rect: NSRect)

  /*!
      @method webView:drawFooterInRect:
      @param webView The WebView sending the delegate method
      @param rect The NSRect reserved for the footer of the page
      @abstract The delegate should draw a footer for the sender in the supplied rect.
  */
  optional func webView(sender: WebView!, drawFooterIn rect: NSRect)
}
let WebElementDOMNodeKey: String
let WebElementFrameKey: String
let WebElementImageAltStringKey: String
let WebElementImageKey: String
let WebElementImageRectKey: String
let WebElementImageURLKey: String
let WebElementIsSelectedKey: String
let WebElementLinkURLKey: String
let WebElementLinkTargetFrameKey: String
let WebElementLinkTitleKey: String
let WebElementLinkLabelKey: String
let WebViewProgressStartedNotification: String
let WebViewProgressEstimateChangedNotification: String
let WebViewProgressFinishedNotification: String

/*!
    @class WebView
    WebView manages the interaction between WebFrameViews and WebDataSources.  Modification
    of the policies and behavior of the WebKit is largely managed by WebViews and their
    delegates.
    
    <p>
    Typical usage:
    </p>
    <pre>
    WebView *webView;
    WebFrame *mainFrame;
    
    webView  = [[WebView alloc] initWithFrame: NSMakeRect (0,0,640,480)];
    mainFrame = [webView mainFrame];
    [mainFrame loadRequest:request];
    </pre>
    
    WebViews have the following delegates:  WebUIDelegate, WebResourceLoadDelegate,
    WebFrameLoadDelegate, and WebPolicyDelegate.
    
    WebKit depends on the WebView's WebUIDelegate for all window
    related management, including opening new windows and controlling the user interface
    elements in those windows.
    
    WebResourceLoadDelegate is used to monitor the progress of resources as they are
    loaded.  This delegate may be used to present users with a progress monitor.
    
    The WebFrameLoadDelegate receives messages when the URL in a WebFrame is
    changed.
    
    WebView's WebPolicyDelegate can make determinations about how
    content should be handled, based on the resource's URL and MIME type.
*/
class WebView : NSView {

  /*!
      @method canShowMIMEType:
      @abstract Checks if the WebKit can show content of a certain MIME type.
      @param MIMEType The MIME type to check.
      @result YES if the WebKit can show content with MIMEtype.
  */
  class func canShowMIMEType(MIMEType: String!) -> Bool

  /*!
       @method canShowMIMETypeAsHTML:
       @abstract Checks if the the MIME type is a type that the WebKit will interpret as HTML.
       @param MIMEType The MIME type to check.
       @result YES if the MIMEtype in an HTML type.
  */
  class func canShowMIMETypeAsHTML(MIMEType: String!) -> Bool

  /*!
      @method MIMETypesShownAsHTML
      @result Returns an array of NSStrings that describe the MIME types
      WebKit will attempt to render as HTML.
  */
  class func mimeTypesShownAsHTML() -> [AnyObject]!

  /*!
      @method setMIMETypesShownAsHTML:
      @discussion Sets the array of NSString MIME types that WebKit will
      attempt to render as HTML.  Typically you will retrieve the built-in
      array using MIMETypesShownAsHTML and add additional MIME types to that
      array.
  */
  class func setMIMETypesShownAsHTML(MIMETypes: [AnyObject]!)

  /*!
      @method URLFromPasteboard:
      @abstract Returns a URL from a pasteboard
      @param pasteboard The pasteboard with a URL
      @result A URL if the pasteboard has one. Nil if it does not.
      @discussion This method differs than NSURL's URLFromPasteboard method in that it tries multiple pasteboard types
      including NSURLPboardType to find a URL on the pasteboard.
  */
  class func urlFrom(pasteboard: NSPasteboard!) -> NSURL!

  /*!
      @method URLTitleFromPasteboard:
      @abstract Returns a URL title from a pasteboard
      @param pasteboard The pasteboard with a URL title
      @result A URL title if the pasteboard has one. Nil if it does not.
      @discussion This method returns a title that refers a URL on the pasteboard. An example of this is the link label
      which is the text inside the anchor tag.
  */
  class func urlTitleFrom(pasteboard: NSPasteboard!) -> String!

  /*!
      @method registerURLSchemeAsLocal:
      @abstract Adds the scheme to the list of schemes to be treated as local.
      @param scheme The scheme to register
  */
  class func registerURLSchemeAsLocal(scheme: String!)

  /*!
      @method initWithFrame:frameName:groupName:
      @abstract The designated initializer for WebView.
      @discussion Initialize a WebView with the supplied parameters. This method will 
      create a main WebFrame with the view. Passing a top level frame name is useful if you
      handle a targetted frame navigation that would normally open a window in some other 
      way that still ends up creating a new WebView.
      @param frame The frame used to create the view.
      @param frameName The name to use for the top level frame. May be nil.
      @param groupName The name of the webView set to which this webView will be added.  May be nil.
      @result Returns an initialized WebView.
  */
  init!(frame: NSRect, frameName: String!, groupName: String!)

  /*!
      @method close
      @abstract Closes the receiver, unloading its web page and canceling any pending loads.
      Once the receiver has closed, it will no longer respond to requests or fire delegate methods.
      (However, the -close method itself may fire delegate methods.)
      @discussion A garbage collected application is required to call close when the receiver is no longer needed.
      The close method will be called automatically when the window or hostWindow closes and shouldCloseWithWindow returns YES.
      A non-garbage collected application can still call close, providing a convenient way to prevent receiver
      from doing any more loading and firing any future delegate methods.
  */
  func close()

  /*!
      @property shouldCloseWithWindow
      @abstract Whether the receiver closes when either it's window or hostWindow closes.
      @discussion Defaults to YES in garbage collected applications, otherwise NO to maintain backwards compatibility.
  */
  var shouldCloseWithWindow: Bool

  /*!
      @property UIDelegate
      @abstract The WebView's WebUIDelegate.
  */
  unowned(unsafe) var uiDelegate: @sil_unmanaged WebUIDelegate!

  /*!
      @property resourceLoadDelegate
      @abstract The WebView's WebResourceLoadDelegate.
  */
  unowned(unsafe) var resourceLoadDelegate: @sil_unmanaged WebResourceLoadDelegate!

  /*!
      @property downloadDelegate
      @abstract The WebView's WebDownloadDelegate.
  */
  unowned(unsafe) var downloadDelegate: @sil_unmanaged WebDownloadDelegate!

  /*!
      @property frameLoadDelegate
      @abstract The WebView's WebFrameLoadDelegate delegate.
  */
  unowned(unsafe) var frameLoadDelegate: @sil_unmanaged WebFrameLoadDelegate!

  /*!
      @property policyDelegate
      @abstract The WebView's WebPolicyDelegate.
  */
  unowned(unsafe) var policyDelegate: @sil_unmanaged WebPolicyDelegate!

  /*!
      @property mainFrame
      @abstract The top level frame.
      @discussion Note that even documents that are not framesets will have a mainFrame.
  */
  var mainFrame: WebFrame! { get }

  /*!
      @property selectedFrame
      @abstract The frame that has the active selection.
      @discussion Returns the frame that contains the first responder, if any. Otherwise returns the
      frame that contains a non-zero-length selection, if any. Returns nil if no frame meets these criteria.
  */
  var selectedFrame: WebFrame! { get }

  /*!
      @property backForwardList
      @abstract The backforward list for this WebView.
  */
  var backForwardList: WebBackForwardList! { get }

  /*!
      @method setMaintainsBackForwardList:
      @abstract Enable or disable the use of a backforward list for this webView.
      @param flag Turns use of the back forward list on or off
  */
  func setMaintainsBackForwardList(flag: Bool)

  /*!
      @method goBack
      @abstract Go back to the previous URL in the backforward list.
      @result YES if able to go back in the backforward list, NO otherwise.
  */
  func goBack() -> Bool

  /*!
      @method goForward
      @abstract Go forward to the next URL in the backforward list.
      @result YES if able to go forward in the backforward list, NO otherwise.
  */
  func goForward() -> Bool

  /*!
      @method goToBackForwardItem:
      @abstract Go back or forward to an item in the backforward list.
      @result YES if able to go to the item, NO otherwise.
  */
  func goToBackForwardItem(item: WebHistoryItem!) -> Bool

  /*!
      @property textSizeMultiplier
      @abstract The text size multipler.
  */
  var textSizeMultiplier: Float

  /*!
      @property applicationNameForUserAgent
      @abstract The name of the application as used in the user-agent string.
  */
  var applicationNameForUserAgent: String!

  /*!
      @property customUserAgent
      @abstract The custom user-agent string or nil if no custom user-agent string has been set.
      @discussion Setting this means that the webView should use this user-agent string
   instead of constructing a user-agent string for each URL. Setting it to nil
   causes the webView to construct the user-agent string for each URL
   for best results rendering web pages
  */
  var customUserAgent: String!

  /*!
      @method userAgentForURL:
      @abstract Get the appropriate user-agent string for a particular URL.
      @param URL The URL.
      @result The user-agent string for the supplied URL.
  */
  func userAgentFor(URL: NSURL!) -> String!

  /*!
      @property supportsTextEncoding
      @abstract If the document view of the current web page can support different text encodings.
  */
  var supportsTextEncoding: Bool { get }

  /*!
      @property customTextEncodingName
      @abstract The custom text encoding name or nil if no custom text encoding name has been set.
      @discussion Make the page display with a different text encoding; stops any load in progress.
      The text encoding passed in overrides the normal text encoding smarts including
      what's specified in a web page's header or HTTP response.
      The text encoding automatically goes back to the default when the top level frame
      changes to a new location.
      Setting the text encoding name to nil makes the webView use default encoding rules.
  
  */
  var customTextEncodingName: String!

  /*!
      @method mediaStyle
      @abstract The media style for the WebView.
      @discussion The mediaStyle will override the normal value
      of the CSS media property. Setting the value to nil will restore the normal value. The value will be nil unless explicitly set.
  */
  var mediaStyle: String!

  /*!
      @method stringByEvaluatingJavaScriptFromString:
      @param script The text of the JavaScript.
      @result The result of the script, converted to a string, or nil for failure.
  */
  func stringByEvaluatingJavaScriptFrom(script: String!) -> String!

  /*!
      @property windowScriptObject
      @abstract A WebScriptObject that represents the
      window object from the script environment.
  */
  var windowScriptObject: WebScriptObject! { get }

  /*!
      @property preferences
      @abstract The preferences used by this WebView.
      @discussion This method will return [WebPreferences standardPreferences] if no
      other instance of WebPreferences has been set.
  */
  var preferences: WebPreferences!

  /*!
      @property preferencesIdentifier
      @abstract The WebPreferences key prefix.
      @discussion If the WebPreferences for this WebView are stored in the user defaults database, this string will be used as a key prefix.
  */
  var preferencesIdentifier: String!

  /*!
      @property hostWindow
      @abstract The host window for the web view.
      @discussion Parts of WebKit (such as plug-ins and JavaScript) depend on a window to function
      properly. Set a host window so these parts continue to function even when the web view is
      not in an actual window.
  */
  var hostWindow: NSWindow!

  /*!
      @method searchFor:direction:caseSensitive:
      @abstract Searches a document view for a string and highlights the string if it is found.
      Starts the search from the current selection.  Will search across all frames.
      @param string The string to search for.
      @param forward YES to search forward, NO to seach backwards.
      @param caseFlag YES to for case-sensitive search, NO for case-insensitive search.
      @result YES if found, NO if not found.
  */
  func searchFor(string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool

  /*!
      @method registerViewClass:representationClass:forMIMEType:
      @discussion Register classes that implement WebDocumentView and WebDocumentRepresentation respectively.
      A document class may register for a primary MIME type by excluding
      a subtype, i.e. "video/" will match the document class with
      all video types.  More specific matching takes precedence
      over general matching.
      @param viewClass The WebDocumentView class to use to render data for a given MIME type.
      @param representationClass The WebDocumentRepresentation class to use to represent data of the given MIME type.
      @param MIMEType The MIME type to represent with an object of the given class.
  */
  class func registerViewClass(viewClass: AnyClass!, representationClass: AnyClass!, forMIMEType MIMEType: String!)

  /*!
      @property groupName
      @abstract The group name for this WebView.
      @discussion JavaScript may access named frames within the same group.
  */
  var groupName: String!

  /*!
      @property estimatedProgress
      @discussion An estimate of the percent complete for a document load.  This
      value will range from 0 to 1.0 and, once a load completes, will remain at 1.0 
      until a new load starts, at which point it will be reset to 0.  The value is an
      estimate based on the total number of bytes expected to be received
      for a document, including all it's possible subresources.  For more accurate progress
      indication it is recommended that you implement a WebFrameLoadDelegate and a
      WebResourceLoadDelegate.
  */
  var estimatedProgress: Double { get }

  /*!
      @property loading
      @abstract Whether there are any pending loads in this WebView.
  */
  var isLoading: Bool { get }

  /*!
      @method elementAtPoint:
      @param point A point in the coordinates of the WebView
      @result An element dictionary describing the point
  */
  func elementAt(point: NSPoint) -> [NSObject : AnyObject]!

  /*!
      @property pasteboardTypesForSelection
      @abstract The pasteboard types that the WebView can use for the current selection
  */
  var pasteboardTypesForSelection: [AnyObject]! { get }

  /*!
      @method writeSelectionWithPasteboardTypes:toPasteboard:
      @abstract Writes the current selection to the pasteboard
      @param types The types that WebView will write to the pasteboard
      @param pasteboard The pasteboard to write to
  */
  func writeSelectionWithPasteboardTypes(types: [AnyObject]!, to pasteboard: NSPasteboard!)

  /*!
      @method pasteboardTypesForElement:
      @abstract Returns the pasteboard types that WebView can use for an element
      @param element The element
  */
  func pasteboardTypesForElement(element: [NSObject : AnyObject]!) -> [AnyObject]!

  /*!
      @method writeElement:withPasteboardTypes:toPasteboard:
      @abstract Writes an element to the pasteboard
      @param element The element to write to the pasteboard
      @param types The types that WebView will write to the pasteboard
      @param pasteboard The pasteboard to write to
  */
  func writeElement(element: [NSObject : AnyObject]!, withPasteboardTypes types: [AnyObject]!, to pasteboard: NSPasteboard!)

  /*!
      @method moveDragCaretToPoint:
      @param point A point in the coordinates of the WebView
      @discussion This method moves the caret that shows where something being dragged will be dropped. It may cause the WebView to scroll
      to make the new position of the drag caret visible.
  */
  func moveDragCaretTo(point: NSPoint)

  /*!
      @method removeDragCaret
      @abstract Removes the drag caret from the WebView
  */
  func removeDragCaret()

  /*!
      @property drawsBackground
      @abstract Whether the receiver draws a default white background when the loaded page has no background specified.
  */
  var drawsBackground: Bool

  /*!
      @method shouldUpdateWhileOffscreen
      @abstract Whether the WebView is always updated even when it is not in a window that is currently visible.
      @discussion If set to NO, then whenever the web view is not in a visible window, updates to the web page will not necessarily be rendered in the view.
      However, when the window is made visible, the view will be updated automatically. Not updating while hidden can improve performance. If set to is YES,
      hidden web views are always updated. This is the default.
  */
  var shouldUpdateWhileOffscreen: Bool

  /*!
      @property mainFrameURL
      @abstract The main frame's current URL.
  */
  var mainFrameURL: String!

  /*!
      @property mainFrameDocument
      @abstract The main frame's DOMDocument.
  */
  var mainFrameDocument: DOMDocument! { get }

  /*!
      @property mainFrameTitle
      @abstract The main frame's title if any, otherwise an empty string.
  */
  var mainFrameTitle: String! { get }

  /*!
      @property mainFrameIcon
      @abstract The site icon for the current page loaded in the mainFrame, or nil.
  */
  var mainFrameIcon: NSImage! { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension WebView : NSUserInterfaceValidations {
  @IBAction func takeStringURLFrom(sender: AnyObject?)
  @IBAction func stopLoading(sender: AnyObject?)
  @IBAction func reload(sender: AnyObject?)
  @IBAction func reloadFromOrigin(sender: AnyObject?)
  var canGoBack: Bool { get }
  @IBAction func goBack(sender: AnyObject?)
  var canGoForward: Bool { get }
  @IBAction func goForward(sender: AnyObject?)
  var canMakeTextLarger: Bool { get }
  @IBAction func makeTextLarger(sender: AnyObject?)
  var canMakeTextSmaller: Bool { get }
  @IBAction func makeTextSmaller(sender: AnyObject?)
  var canMakeTextStandardSize: Bool { get }
  @IBAction func makeTextStandardSize(sender: AnyObject?)
  @IBAction func toggleContinuousSpellChecking(sender: AnyObject?)
  @IBAction func toggleSmartInsertDelete(sender: AnyObject?)
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
}
let WebViewDidBeginEditingNotification: String
let WebViewDidChangeNotification: String
let WebViewDidEndEditingNotification: String
let WebViewDidChangeTypingStyleNotification: String
let WebViewDidChangeSelectionNotification: String
extension WebView {
  func computedStyleFor(element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func editableDOMRangeFor(point: NSPoint) -> DOMRange!
  func setSelectedDOMRange(range: DOMRange!, affinity selectionAffinity: NSSelectionAffinity)
  var selectedDOMRange: DOMRange! { get }
  var selectionAffinity: NSSelectionAffinity { get }
  var maintainsInactiveSelection: Bool { get }
  var isEditable: Bool
  var typingStyle: DOMCSSStyleDeclaration!
  var isSmartInsertDeleteEnabled: Bool
  var continuousSpellCheckingEnabled: Bool
  var spellCheckerDocumentTag: Int { get }
  var undoManager: NSUndoManager! { get }
  var editingDelegate: AnyObject!
  func styleDeclarationWithText(text: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func replaceSelectionWith(node: DOMNode!)
  func replaceSelectionWithText(text: String!)
  func replaceSelectionWithMarkupString(markupString: String!)
  func replaceSelectionWith(archive: WebArchive!)
  func deleteSelection()
  func applyStyle(style: DOMCSSStyleDeclaration!)
}
extension WebView {
  func copy(sender: AnyObject?)
  func cut(sender: AnyObject?)
  func paste(sender: AnyObject?)
  func copyFont(sender: AnyObject?)
  func pasteFont(sender: AnyObject?)
  func delete(sender: AnyObject?)
  func pasteAsPlainText(sender: AnyObject?)
  func pasteAsRichText(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
  func changeAttributes(sender: AnyObject?)
  func changeDocumentBackgroundColor(sender: AnyObject?)
  func changeColor(sender: AnyObject?)
  func alignCenter(sender: AnyObject?)
  func alignJustified(sender: AnyObject?)
  func alignLeft(sender: AnyObject?)
  func alignRight(sender: AnyObject?)
  func checkSpelling(sender: AnyObject?)
  func showGuessPanel(sender: AnyObject?)
  func performFindPanelAction(sender: AnyObject?)
  func startSpeaking(sender: AnyObject?)
  func stopSpeaking(sender: AnyObject?)
  func moveToBeginningOfSentence(sender: AnyObject?)
  func moveToBeginningOfSentenceAndModifySelection(sender: AnyObject?)
  func moveToEndOfSentence(sender: AnyObject?)
  func moveToEndOfSentenceAndModifySelection(sender: AnyObject?)
  func selectSentence(sender: AnyObject?)
  func overWrite(sender: AnyObject?)
}
