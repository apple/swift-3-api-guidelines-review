
typealias AppleEventManagerSuspensionID = COpaquePointer
let appleEventTimeOutDefault: Double
let appleEventTimeOutNone: Double
let appleEventManagerWillProcessFirstEventNotification: String
class AppleEventManager : Object {
  class func shared() -> AppleEventManager
  func setEventHandler(handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandlerForEventClass(eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: AppleEventDescriptor? { get }
  var currentReplyAppleEvent: AppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> AppleEventManagerSuspensionID
  func appleEventForSuspensionID(suspensionID: AppleEventManagerSuspensionID) -> AppleEventDescriptor
  func replyAppleEventForSuspensionID(suspensionID: AppleEventManagerSuspensionID) -> AppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(suspensionID: AppleEventManagerSuspensionID)
  func resumeWithSuspensionID(suspensionID: AppleEventManagerSuspensionID)
  init()
}
