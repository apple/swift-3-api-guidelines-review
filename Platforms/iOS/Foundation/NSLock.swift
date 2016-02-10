
protocol Locking {
  func lock()
  func unlock()
}
class Lock : Object, Locking {
  func tryLock() -> Bool
  func lockBefore(limit: Date) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
class ConditionLock : Object, Locking {
  init(condition: Int)
  var condition: Int { get }
  func lockWhenCondition(condition: Int)
  func tryLock() -> Bool
  func tryWhenCondition(condition: Int) -> Bool
  func unlock(condition condition: Int)
  func lockBefore(limit: Date) -> Bool
  func lockWhenCondition(condition: Int, before limit: Date) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  convenience init()
  func lock()
  func unlock()
}
class RecursiveLock : Object, Locking {
  func tryLock() -> Bool
  func lockBefore(limit: Date) -> Bool
  @available(iOS 2.0, *)
  var name: String?
  init()
  func lock()
  func unlock()
}
@available(iOS 2.0, *)
class Condition : Object, Locking {
  func wait()
  func waitUntil(limit: Date) -> Bool
  func signal()
  func broadcast()
  @available(iOS 2.0, *)
  var name: String?
  init()
  @available(iOS 2.0, *)
  func lock()
  @available(iOS 2.0, *)
  func unlock()
}
