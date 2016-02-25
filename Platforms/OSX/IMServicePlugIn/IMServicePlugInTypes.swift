
let IMAccountSettingServerHost: String
let IMAccountSettingServerPort: String
let IMAccountSettingLoginHandle: String
let IMAccountSettingPassword: String
let IMAccountSettingUsesSSL: String
enum IMSessionAvailability : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Away
  case Available
}
let IMSessionPropertyAvailability: String
let IMSessionPropertyStatusMessage: String
let IMSessionPropertyPictureData: String
let IMSessionPropertyIdleDate: String
let IMSessionPropertyIsInvisible: String
enum IMGroupListPermissions : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case CanReorderGroup
  case CanRenameGroup
  case CanAddNewMembers
  case CanRemoveMembers
  case CanReorderMembers
}
let IMGroupListDefaultGroup: String
let IMGroupListNameKey: String
let IMGroupListPermissionsKey: String
let IMGroupListHandlesKey: String
enum IMHandleAvailability : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Offline
  case Away
  case Available
}
enum IMHandleAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Accepted
  case Pending
  case Declined
}
let IMHandlePropertyAvailability: String
let IMHandlePropertyStatusMessage: String
let IMHandlePropertyAuthorizationStatus: String
let IMHandlePropertyIdleDate: String
let IMHandlePropertyAlias: String
let IMHandlePropertyFirstName: String
let IMHandlePropertyLastName: String
let IMHandlePropertyEmailAddress: String
let IMHandlePropertyPictureIdentifier: String
let IMHandlePropertyPictureData: String
let IMHandlePropertyCapabilities: String
let IMHandleCapabilityMessaging: String
let IMHandleCapabilityOfflineMessaging: String
let IMHandleCapabilityChatRoom: String
let IMHandleCapabilityHandlePicture: String
let IMHandleCapabilityFileTransfer: String
let IMAttributeFontFamily: String
let IMAttributeFontSize: String
let IMAttributeItalic: String
let IMAttributeBold: String
let IMAttributeUnderline: String
let IMAttributeStrikethrough: String
let IMAttributeLink: String
let IMAttributePreformatted: String
let IMAttributeBaseWritingDirection: String
let IMAttributeForegroundColor: String
let IMAttributeBackgroundColor: String
let IMAttributeMessageBackgroundColor: String
