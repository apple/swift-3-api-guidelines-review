
class EKObject : NSObject {
  var hasChanges: Bool { get }
  var new: Bool { get }
  func reset()
  func rollback()
  func refresh() -> Bool
}
