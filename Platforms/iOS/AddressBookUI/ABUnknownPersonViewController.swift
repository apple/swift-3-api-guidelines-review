
@available(iOS, introduced=2.0, deprecated=9.0, message="Use +[CNContactViewController viewControllerForUnknownContact:] from ContactsUI.framework instead")
class ABUnknownPersonViewController : UIViewController {
  unowned(unsafe) var unknownPersonViewDelegate: @sil_unmanaged ABUnknownPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord
  var alternateName: String?
  var message: String?
  var allowsActions: Bool
  var allowsAddingToAddressBook: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol ABUnknownPersonViewControllerDelegate : ObjectProtocol {
  @available(iOS 2.0, *)
  func unknownPersonViewController(unknownCardViewController: ABUnknownPersonViewController, didResolveToPerson person: ABRecord?)
  @available(iOS 3.0, *)
  optional func unknownPersonViewController(personViewController: ABUnknownPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
