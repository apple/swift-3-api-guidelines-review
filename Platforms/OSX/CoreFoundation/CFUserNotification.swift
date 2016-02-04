
class CFUserNotification {
}
@available(*, deprecated, renamed="CFUserNotification")
typealias CFUserNotificationRef = CFUserNotification
typealias CFUserNotificationCallBack = @convention(c) (CFUserNotification!, CFOptionFlags) -> Void
func CFUserNotificationGetTypeID() -> CFTypeID
func CFUserNotificationCreate(allocator: CFAllocator!, _ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ error: UnsafeMutablePointer<Int32>, _ dictionary: CFDictionary!) -> CFUserNotification!
func CFUserNotificationReceiveResponse(userNotification: CFUserNotification!, _ timeout: CFTimeInterval, _ responseFlags: UnsafeMutablePointer<CFOptionFlags>) -> Int32
func CFUserNotificationGetResponseValue(userNotification: CFUserNotification!, _ key: CFString!, _ idx: CFIndex) -> CFString!
func CFUserNotificationGetResponseDictionary(userNotification: CFUserNotification!) -> CFDictionary!
func CFUserNotificationUpdate(userNotification: CFUserNotification!, _ timeout: CFTimeInterval, _ flags: CFOptionFlags, _ dictionary: CFDictionary!) -> Int32
func CFUserNotificationCancel(userNotification: CFUserNotification!) -> Int32
func CFUserNotificationCreateRunLoopSource(allocator: CFAllocator!, _ userNotification: CFUserNotification!, _ callout: CFUserNotificationCallBack!, _ order: CFIndex) -> CFRunLoopSource!
func CFUserNotificationDisplayNotice(timeout: CFTimeInterval, _ flags: CFOptionFlags, _ iconURL: CFURL!, _ soundURL: CFURL!, _ localizationURL: CFURL!, _ alertHeader: CFString!, _ alertMessage: CFString!, _ defaultButtonTitle: CFString!) -> Int32
func CFUserNotificationDisplayAlert(timeout: CFTimeInterval, _ flags: CFOptionFlags, _ iconURL: CFURL!, _ soundURL: CFURL!, _ localizationURL: CFURL!, _ alertHeader: CFString!, _ alertMessage: CFString!, _ defaultButtonTitle: CFString!, _ alternateButtonTitle: CFString!, _ otherButtonTitle: CFString!, _ responseFlags: UnsafeMutablePointer<CFOptionFlags>) -> Int32
var kCFUserNotificationStopAlertLevel: CFOptionFlags { get }
var kCFUserNotificationNoteAlertLevel: CFOptionFlags { get }
var kCFUserNotificationCautionAlertLevel: CFOptionFlags { get }
var kCFUserNotificationPlainAlertLevel: CFOptionFlags { get }
var kCFUserNotificationDefaultResponse: CFOptionFlags { get }
var kCFUserNotificationAlternateResponse: CFOptionFlags { get }
var kCFUserNotificationOtherResponse: CFOptionFlags { get }
var kCFUserNotificationCancelResponse: CFOptionFlags { get }
var kCFUserNotificationNoDefaultButtonFlag: CFOptionFlags { get }
var kCFUserNotificationUseRadioButtonsFlag: CFOptionFlags { get }
func CFUserNotificationCheckBoxChecked(i: CFIndex) -> CFOptionFlags
func CFUserNotificationSecureTextField(i: CFIndex) -> CFOptionFlags
func CFUserNotificationPopUpSelection(n: CFIndex) -> CFOptionFlags
let kCFUserNotificationIconURLKey: CFString!
let kCFUserNotificationSoundURLKey: CFString!
let kCFUserNotificationLocalizationURLKey: CFString!
let kCFUserNotificationAlertHeaderKey: CFString!
let kCFUserNotificationAlertMessageKey: CFString!
let kCFUserNotificationDefaultButtonTitleKey: CFString!
let kCFUserNotificationAlternateButtonTitleKey: CFString!
let kCFUserNotificationOtherButtonTitleKey: CFString!
let kCFUserNotificationProgressIndicatorValueKey: CFString!
let kCFUserNotificationPopUpTitlesKey: CFString!
let kCFUserNotificationTextFieldTitlesKey: CFString!
let kCFUserNotificationCheckBoxTitlesKey: CFString!
let kCFUserNotificationTextFieldValuesKey: CFString!
@available(OSX 10.3, *)
let kCFUserNotificationPopUpSelectionKey: CFString!
