
class DistributedLock : Object {
  init?(path: String)
  func tryLock() -> Bool
  func unlock()
  func breakLock()
  @NSCopying var lockDate: Date { get }
}
