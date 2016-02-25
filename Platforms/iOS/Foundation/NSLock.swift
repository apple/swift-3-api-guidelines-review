
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(_ limit: NSDate) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  func lock()
  func unlock()
}
class NSConditionLock : NSObject, NSLocking {
  init(condition condition: Int)
  var condition: Int { get }
  func lockWhenCondition(_ condition: Int)
  func tryLock() -> Bool
  func tryLockWhenCondition(_ condition: Int) -> Bool
  func unlockWithCondition(_ condition: Int)
  func lockBeforeDate(_ limit: NSDate) -> Bool
  func lockWhenCondition(_ condition: Int, beforeDate limit: NSDate) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(_ limit: NSDate) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  func lock()
  func unlock()
}
@available(iOS 2.0, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func waitUntilDate(_ limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(iOS 2.0, *)
  var name: String?
  @available(iOS 2.0, *)
  func lock()
  @available(iOS 2.0, *)
  func unlock()
}
