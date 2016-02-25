
typealias NSAppleEventManagerSuspensionID = COpaquePointer
let NSAppleEventTimeOutDefault: Double
let NSAppleEventTimeOutNone: Double
let NSAppleEventManagerWillProcessFirstEventNotification: String
class NSAppleEventManager : NSObject {
  class func shared() -> NSAppleEventManager
  func setEventHandler(_ handler: AnyObject, andSelector handleEventSelector: Selector, forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func removeEventHandler(forEventClass eventClass: AEEventClass, andEventID eventID: AEEventID)
  func dispatchRawAppleEvent(_ theAppleEvent: UnsafePointer<AppleEvent>, withRawReply theReply: UnsafeMutablePointer<AppleEvent>, handlerRefCon handlerRefCon: SRefCon) -> OSErr
  var currentAppleEvent: NSAppleEventDescriptor? { get }
  var currentReplyAppleEvent: NSAppleEventDescriptor? { get }
  func suspendCurrentAppleEvent() -> NSAppleEventManagerSuspensionID
  func appleEvent(forSuspensionID suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func replyAppleEvent(forSuspensionID suspensionID: NSAppleEventManagerSuspensionID) -> NSAppleEventDescriptor
  func setCurrentAppleEventAndReplyEventWithSuspensionID(_ suspensionID: NSAppleEventManagerSuspensionID)
  func resume(withSuspensionID suspensionID: NSAppleEventManagerSuspensionID)
}
