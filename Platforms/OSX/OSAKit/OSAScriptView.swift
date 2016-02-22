
class OSAScriptView : NSTextView {
  var source: String?
  var usesScriptAssistant: Bool
  var usesTabs: Bool
  var tabWidth: Int
  var wrapsLines: Bool
  var indentsWrappedLines: Bool
  var indentWidth: Int
  init(frame frameRect: Rect, textContainer container: NSTextContainer?)
  init?(coder: Coder)
  init(frame frameRect: Rect)
  convenience init()
}
