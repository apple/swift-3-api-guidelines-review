
@available(iOS, introduced=2.0, deprecated=9.0, message="Use +[CNContactViewController viewControllerForContact:] from ContactsUI.framework instead")
class ABPersonViewController : UIViewController, UIViewControllerRestoration {
  unowned(unsafe) var personViewDelegate: @sil_unmanaged ABPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord
  var displayedProperties: [NSNumber]?
  var allowsEditing: Bool
  @available(iOS 4.0, *)
  var allowsActions: Bool
  @available(iOS 4.0, *)
  var shouldShowLinkedPeople: Bool
  func setHighlightedItemForProperty(_ property: ABPropertyID, withIdentifier identifier: ABMultiValueIdentifier)
  @available(iOS 2.0, *)
  class func viewController(withRestorationIdentifierPath identifierComponents: [AnyObject], coder coder: NSCoder) -> UIViewController?
}
protocol ABPersonViewControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  func personViewController(_ personViewController: ABPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property property: ABPropertyID, identifier identifier: ABMultiValueIdentifier) -> Bool
}
