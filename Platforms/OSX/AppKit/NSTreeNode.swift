
@available(OSX 10.5, *)
class NSTreeNode : Object {
  init(representedObject modelObject: AnyObject?)
  var representedObject: AnyObject? { get }
  var indexPath: IndexPath { get }
  var isLeaf: Bool { get }
  var childNodes: [NSTreeNode]? { get }
  var mutableChildNodes: MutableArray { get }
  func descendantNode(at indexPath: IndexPath) -> NSTreeNode?
  unowned(unsafe) var parent: @sil_unmanaged NSTreeNode? { get }
  func sort(sortDescriptors: [SortDescriptor], recursively: Bool)
  init()
}
struct __NSTreeNodeFlags {
  var ignoreObserving: UInt32
  var reserved: UInt32
  init()
  init(ignoreObserving: UInt32, reserved: UInt32)
}
