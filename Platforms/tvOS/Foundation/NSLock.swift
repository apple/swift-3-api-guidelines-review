
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lock(before limit: NSDate) -> Bool
  @available(tvOS 2.0, *)
  var name: String?
  func lock()
  func unlock()
}
class NSConditionLock : NSObject, NSLocking {
  init(condition condition: Int)
  var condition: Int { get }
  func lock(whenCondition condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(_ condition: Int) -> Bool
  func unlock(withCondition condition: Int)
  func lock(before limit: NSDate) -> Bool
  func lock(whenCondition condition: Int, before limit: NSDate) -> Bool
  @available(tvOS 2.0, *)
  var name: String?
  func lock()
  func unlock()
}
class NSRecursiveLock : NSObject, NSLocking {
  func tryLock() -> Bool
  func lock(before limit: NSDate) -> Bool
  @available(tvOS 2.0, *)
  var name: String?
  func lock()
  func unlock()
}
@available(tvOS 2.0, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func wait(until limit: NSDate) -> Bool
  func signal()
  func broadcast()
  @available(tvOS 2.0, *)
  var name: String?
  @available(tvOS 2.0, *)
  func lock()
  @available(tvOS 2.0, *)
  func unlock()
}
