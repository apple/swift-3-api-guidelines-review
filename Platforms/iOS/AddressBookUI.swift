
@available(iOS, introduced=2.0, deprecated=9.0, message="Use CNPostalAddressFormatter from Contacts.framework instead")
func ABCreateStringWithAddressDictionary(address: [NSObject : AnyObject], _ addCountryName: Bool) -> String
@available(iOS, introduced=2.0, deprecated=9.0, message="Use +[CNContactViewController viewControllerForNewContact:] from ContactsUI.framework instead")
class ABNewPersonViewController : UIViewController {
  unowned(unsafe) var newPersonViewDelegate: @sil_unmanaged ABNewPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord?
  var parentGroup: ABRecord?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol ABNewPersonViewControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  func newPersonViewController(newPersonView: ABNewPersonViewController, didCompleteWithNewPerson person: ABRecord?)
}
@available(iOS, introduced=2.0, deprecated=9.0, message="Use CNContactPickerViewController from ContactsUI.framework instead")
class ABPeoplePickerNavigationController : UINavigationController {
  unowned(unsafe) var peoplePickerDelegate: @sil_unmanaged ABPeoplePickerNavigationControllerDelegate?
  var displayedProperties: [NSNumber]?
  var addressBook: ABAddressBook?
  @available(iOS 8.0, *)
  @NSCopying var predicateForEnablingPerson: NSPredicate?
  @available(iOS 8.0, *)
  @NSCopying var predicateForSelectionOfPerson: NSPredicate?
  @available(iOS 8.0, *)
  @NSCopying var predicateForSelectionOfProperty: NSPredicate?
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 8.0, *)
let ABPersonNamePrefixProperty: String
@available(iOS 8.0, *)
let ABPersonGivenNameProperty: String
@available(iOS 8.0, *)
let ABPersonMiddleNameProperty: String
@available(iOS 8.0, *)
let ABPersonFamilyNameProperty: String
@available(iOS 8.0, *)
let ABPersonNameSuffixProperty: String
@available(iOS 8.0, *)
let ABPersonPreviousFamilyNameProperty: String
@available(iOS 8.0, *)
let ABPersonNicknameProperty: String
@available(iOS 8.0, *)
let ABPersonPhoneticGivenNameProperty: String
@available(iOS 8.0, *)
let ABPersonPhoneticMiddleNameProperty: String
@available(iOS 8.0, *)
let ABPersonPhoneticFamilyNameProperty: String
@available(iOS 8.0, *)
let ABPersonOrganizationNameProperty: String
@available(iOS 8.0, *)
let ABPersonDepartmentNameProperty: String
@available(iOS 8.0, *)
let ABPersonJobTitleProperty: String
@available(iOS 8.0, *)
let ABPersonBirthdayProperty: String
@available(iOS 8.0, *)
let ABPersonNoteProperty: String
@available(iOS 8.0, *)
let ABPersonPhoneNumbersProperty: String
@available(iOS 8.0, *)
let ABPersonEmailAddressesProperty: String
@available(iOS 8.0, *)
let ABPersonUrlAddressesProperty: String
@available(iOS 8.0, *)
let ABPersonDatesProperty: String
@available(iOS 8.0, *)
let ABPersonInstantMessageAddressesProperty: String
@available(iOS 8.0, *)
let ABPersonRelatedNamesProperty: String
@available(iOS 8.0, *)
let ABPersonSocialProfilesProperty: String
@available(iOS 8.0, *)
let ABPersonPostalAddressesProperty: String
protocol ABPeoplePickerNavigationControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, didSelectPerson person: ABRecord)
  @available(iOS 8.0, *)
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, didSelectPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier)
  @available(iOS 2.0, *)
  optional func peoplePickerNavigationControllerDidCancel(peoplePicker: ABPeoplePickerNavigationController)
  @available(iOS, introduced=2.0, deprecated=8.0)
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, shouldContinueAfterSelectingPerson person: ABRecord) -> Bool
  @available(iOS, introduced=2.0, deprecated=8.0)
  optional func peoplePickerNavigationController(peoplePicker: ABPeoplePickerNavigationController, shouldContinueAfterSelectingPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
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
  class func viewControllerWithRestorationIdentifierPath(identifierComponents: [AnyObject], coder: NSCoder) -> UIViewController?
}
protocol ABPersonViewControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  func personViewController(personViewController: ABPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
@available(iOS, introduced=2.0, deprecated=9.0, message="Use +[CNContactViewController viewControllerForUnknownContact:] from ContactsUI.framework instead")
class ABUnknownPersonViewController : UIViewController {
  unowned(unsafe) var unknownPersonViewDelegate: @sil_unmanaged ABUnknownPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord
  var alternateName: String?
  var message: String?
  var allowsActions: Bool
  var allowsAddingToAddressBook: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol ABUnknownPersonViewControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  func unknownPersonViewController(unknownCardViewController: ABUnknownPersonViewController, didResolveToPerson person: ABRecord?)
  @available(iOS 3.0, *)
  optional func unknownPersonViewController(personViewController: ABUnknownPersonViewController, shouldPerformDefaultActionForPerson person: ABRecord, property: ABPropertyID, identifier: ABMultiValueIdentifier) -> Bool
}
