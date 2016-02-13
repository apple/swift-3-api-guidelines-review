
@available(tvOS 9.0, *)
class UIBarButtonItemGroup : Object, Coding {
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: Coder)
  var barButtonItems: [UIBarButtonItem]
  var representativeItem: UIBarButtonItem?
  var isDisplayingRepresentativeItem: Bool { get }
  convenience init()
  @available(tvOS 9.0, *)
  func encode(aCoder: Coder)
}
extension UIBarButtonItem {
  @available(tvOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
