
protocol Locking {
  func lock()
  func unlock()
}
class Lock : Object, Locking {
  func tryLock() -> Bool
  func lock(before limit: Date) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
class ConditionLock : Object, Locking {
  init(condition: Int)
  var condition: Int { get }
  func lock(whenCondition condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(condition: Int) -> Bool
  func unlock(withCondition condition: Int)
  func lock(before limit: Date) -> Bool
  func lock(whenCondition condition: Int, before limit: Date) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class RecursiveLock : Object, Locking {
  func tryLock() -> Bool
  func lock(before limit: Date) -> Bool
  @available(OSX 10.5, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(OSX 10.5, *)
class Condition : Object, Locking {
  func wait()
  func wait(until limit: Date) -> Bool
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
