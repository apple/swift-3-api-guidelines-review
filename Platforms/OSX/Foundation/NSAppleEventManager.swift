
typealias NSAppleEventManagerSuspensionID = COpaquePointer
let NSAppleEventTimeOutDefault: Double
let NSAppleEventTimeOutNone: Double
let NSAppleEventManagerWillProcessFirstEventNotification: String
class NSAppleEventManager : NSObject {
  class func sharedAppleEventManager() -> NSAppleEventManager
  func setEventHandler(handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandlerForEventClass(eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: NSAppleEventDescriptor? { get }
  var currentReplyAppleEvent: NSAppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> NSAppleEventManagerSuspensionID
  func appleEventForSuspensionID(suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func replyAppleEventForSuspensionID(suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(suspensionID: NSAppleEventManagerSuspensionID)
  func resumeWithSuspensionID(suspensionID: NSAppleEventManagerSuspensionID)
  init()
}
