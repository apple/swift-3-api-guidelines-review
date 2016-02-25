
typealias NSAppleEventManagerSuspensionID = COpaquePointer
let NSAppleEventTimeOutDefault: Double
let NSAppleEventTimeOutNone: Double
let NSAppleEventManagerWillProcessFirstEventNotification: String
class NSAppleEventManager : NSObject {
  class func sharedAppleEventManager() -> NSAppleEventManager
  func setEventHandler(_ handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandlerForEventClass(_ eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(_ theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: NSAppleEventDescriptor? { get }
  var currentReplyAppleEvent: NSAppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> NSAppleEventManagerSuspensionID
  func appleEventForSuspensionID(_ suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func replyAppleEventForSuspensionID(_ suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(_ suspensionID: NSAppleEventManagerSuspensionID)
  func resumeWithSuspensionID(_ suspensionID: NSAppleEventManagerSuspensionID)
}
