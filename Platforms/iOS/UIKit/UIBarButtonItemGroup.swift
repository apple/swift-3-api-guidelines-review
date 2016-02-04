
@available(iOS 9.0, *)
class UIBarButtonItemGroup : Object, Coding {
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: Coder)
  var barButtonItems: [UIBarButtonItem]
  var representativeItem: UIBarButtonItem?
  var isDisplayingRepresentativeItem: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
}
extension UIBarButtonItem {
  @available(iOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
