
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  @available(watchOS 2.0, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
class NSConditionLock : NSObject, NSLocking {
  init(condition: Int)
  var condition: Int { get }
  func lockWhenCondition(condition: Int)
  func tryLock() -> Bool
  func tryLockWhenCondition(condition: Int) -> Bool
  func unlockWithCondition(condition: Int)
  func lockBeforeDate(limit: NSDate) -> Bool
  func lockWhenCondition(condition: Int, beforeDate limit: NSDate) -> Bool
  @available(watchOS 2.0, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  @available(watchOS 2.0, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(watchOS 2.0, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func waitUntilDate(limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(watchOS 2.0, *)
  var name: String?
  init()
  @available(watchOS 2.0, *)
  func lock()
  @available(watchOS 2.0, *)
  func unlock()
}
