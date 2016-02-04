
@available(OSX 10.5, *)
class NSPredicateEditor : NSRuleEditor {
  var rowTemplates: [NSPredicateEditorRowTemplate]
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
