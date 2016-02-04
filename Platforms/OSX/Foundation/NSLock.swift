
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  @available(OSX 10.5, *)
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
  @available(OSX 10.5, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lockBeforeDate(limit: NSDate) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(OSX 10.5, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func waitUntilDate(limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(OSX 10.5, *)
  var name: String?
  init()
  @available(OSX 10.5, *)
  func lock()
  @available(OSX 10.5, *)
  func unlock()
}
