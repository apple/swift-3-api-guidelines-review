
class EKObject : Object {
  var hasChanges: Bool { get }
  var isNew: Bool { get }
  func reset()
  func rollback()
  func refresh() -> Bool
  init()
}
