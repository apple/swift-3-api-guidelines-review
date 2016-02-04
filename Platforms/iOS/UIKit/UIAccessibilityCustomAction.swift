
@available(iOS 8.0, *)
class UIAccessibilityCustomAction : NSObject {
  init(name: String, target: AnyObject?, selector: Selector)
  var name: String
  weak var target: @sil_weak AnyObject?
  var selector: Selector
  init()
}
