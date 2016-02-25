
class NSDistributedLock : NSObject {
  init?(path path: String)
  func tryLock() -> Bool
  func unlock()
  func breakLock()
  @NSCopying var lockDate: NSDate { get }
}
