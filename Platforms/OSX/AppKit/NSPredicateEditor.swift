
@available(OSX 10.5, *)
class NSPredicateEditor : NSRuleEditor {
  var rowTemplates: [NSPredicateEditorRowTemplate]
  init(frame frameRect: NSRect)
  init?(coder coder: NSCoder)
  convenience init()
}
