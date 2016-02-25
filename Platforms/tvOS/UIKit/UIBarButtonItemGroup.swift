
@available(tvOS 9.0, *)
class UIBarButtonItemGroup : NSObject, NSCoding {
  init(barButtonItems barButtonItems: [UIBarButtonItem], representativeItem representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: NSCoder)
  var barButtonItems: [UIBarButtonItem]
  var representativeItem: UIBarButtonItem?
  var isDisplayingRepresentativeItem: Bool { get }
  @available(tvOS 9.0, *)
  func encode(with aCoder: NSCoder)
}
extension UIBarButtonItem {
  @available(tvOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
