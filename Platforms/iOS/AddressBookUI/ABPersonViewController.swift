
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
  func setHighlightedItemForProperty(property: ABPropertyID, withIdentifier identifier: ABMultiValueIdentifier)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 2.0, *)
  class func viewController(withRestorationIdentifierPath identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
}
protocol ABPersonViewControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  func personViewController(personViewController: ABPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
