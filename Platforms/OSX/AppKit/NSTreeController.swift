
class NSTreeController : NSObjectController {
  func rearrangeObjects()
  var arrangedObjects: AnyObject { get }
  var childrenKeyPath: String?
  var countKeyPath: String?
  var leafKeyPath: String?
  var sortDescriptors: [SortDescriptor]
  var content: AnyObject?
  func add(sender: AnyObject?)
  func remove(sender: AnyObject?)
  func addChild(sender: AnyObject?)
  func insert(sender: AnyObject?)
  func insertChild(sender: AnyObject?)
  var canInsert: Bool { get }
  var canInsertChild: Bool { get }
  var canAddChild: Bool { get }
  func insert(object: AnyObject?, atArrangedObjectIndexPath indexPath: IndexPath)
  func insert(objects: [AnyObject], atArrangedObjectIndexPaths indexPaths: [IndexPath])
  func removeObject(atArrangedObjectIndexPath indexPath: IndexPath)
  func removeObjects(atArrangedObjectIndexPaths indexPaths: [IndexPath])
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  var selectedObjects: [AnyObject] { get }
  func setSelectionIndexPaths(indexPaths: [IndexPath]) -> Bool
  var selectionIndexPaths: [IndexPath] { get }
  func setSelectionIndexPath(indexPath: IndexPath?) -> Bool
  @NSCopying var selectionIndexPath: IndexPath? { get }
  func addSelectionIndexPaths(indexPaths: [IndexPath]) -> Bool
  func removeSelectionIndexPaths(indexPaths: [IndexPath]) -> Bool
  @available(OSX 10.5, *)
  var selectedNodes: [NSTreeNode] { get }
  @available(OSX 10.5, *)
  func move(node: NSTreeNode, to indexPath: IndexPath)
  @available(OSX 10.5, *)
  func move(nodes: [NSTreeNode], to startingIndexPath: IndexPath)
  @available(OSX 10.5, *)
  func childrenKeyPath(for node: NSTreeNode) -> String?
  @available(OSX 10.5, *)
  func countKeyPath(for node: NSTreeNode) -> String?
  @available(OSX 10.5, *)
  func leafKeyPath(for node: NSTreeNode) -> String?
  init(content: AnyObject?)
  init?(coder: Coder)
  convenience init()
}
struct __treeControllerFlags {
  var _avoidsEmptySelection: UInt32
  var _preservesSelection: UInt32
  var _selectsInsertedObjects: UInt32
  var _explicitlyCannotInsert: UInt32
  var _explicitlyCannotInsertChild: UInt32
  var _explicitlyCannotAddChild: UInt32
  var _alwaysUsesMultipleValuesMarker: UInt32
  var _observingThroughArrangedObjects: UInt32
  var _mutatingNodes: UInt32
  var _performingFetch: UInt32
  var _skipSortingAfterFetch: UInt32
  var _usesIdenticalComparisonOfModelObjects: UInt32
  var _reservedTreeController: UInt32
  init()
  init(_avoidsEmptySelection: UInt32, _preservesSelection: UInt32, _selectsInsertedObjects: UInt32, _explicitlyCannotInsert: UInt32, _explicitlyCannotInsertChild: UInt32, _explicitlyCannotAddChild: UInt32, _alwaysUsesMultipleValuesMarker: UInt32, _observingThroughArrangedObjects: UInt32, _mutatingNodes: UInt32, _performingFetch: UInt32, _skipSortingAfterFetch: UInt32, _usesIdenticalComparisonOfModelObjects: UInt32, _reservedTreeController: UInt32)
}
