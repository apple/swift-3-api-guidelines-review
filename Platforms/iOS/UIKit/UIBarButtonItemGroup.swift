
@available(iOS 9.0, *)
class UIBarButtonItemGroup : NSObject, NSCoding {
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  init?(coder aDecoder: NSCoder)
  var barButtonItems: [UIBarButtonItem]
  var representativeItem: UIBarButtonItem?
  var displayingRepresentativeItem: Bool { get }
  convenience init()
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
extension UIBarButtonItem {
  @available(iOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
