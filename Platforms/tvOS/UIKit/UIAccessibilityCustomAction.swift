
@available(tvOS 8.0, *)
class UIAccessibilityCustomAction : Object {
  init(name: String, target: AnyObject?, selector: Selector)
  var name: String
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  init()
}
