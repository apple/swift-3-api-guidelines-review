
@available(OSX 10.5, *)
class NSTreeNode : NSObject {
  init(representedObject modelObject: AnyObject?)
  var representedObject: AnyObject? { get }
  var indexPath: NSIndexPath { get }
  var leaf: Bool { get }
  var childNodes: [NSTreeNode]? { get }
  var mutableChildNodes: NSMutableArray { get }
  func descendantNodeAtIndexPath(indexPath: NSIndexPath) -> NSTreeNode?
  unowned(unsafe) var parentNode: @sil_unmanaged NSTreeNode? { get }
  func sortWithSortDescriptors(sortDescriptors: [NSSortDescriptor], recursively: Bool)
  init()
}
struct __NSTreeNodeFlags {
  var ignoreObserving: UInt32
  var reserved: UInt32
  init()
  init(ignoreObserving: UInt32, reserved: UInt32)
}
