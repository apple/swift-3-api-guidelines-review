
class OSAScriptView : NSTextView {
  var source: String?
  var usesScriptAssistant: Bool
  var usesTabs: Bool
  var tabWidth: Int
  var wrapsLines: Bool
  var indentsWrappedLines: Bool
  var indentWidth: Int
  init(frame frameRect: NSRect, textContainer container: NSTextContainer?)
  init?(coder: NSCoder)
  init(frame frameRect: NSRect)
  convenience init()
}
