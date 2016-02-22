
class NSArrayController : NSObjectController {
  func rearrangeObjects()
  @available(OSX 10.5, *)
  var automaticallyRearrangesObjects: Bool
  @available(OSX 10.5, *)
  var automaticRearrangementKeyPaths: [String]? { get }
  @available(OSX 10.5, *)
  func didChangeArrangementCriteria()
  var sortDescriptors: [NSSortDescriptor]
  var filterPredicate: NSPredicate?
  var clearsFilterPredicateOnInsertion: Bool
  func arrange(objects: [AnyObject]) -> [AnyObject]
  var arrangedObjects: AnyObject { get }
  var avoidsEmptySelection: Bool
  var preservesSelection: Bool
  var selectsInsertedObjects: Bool
  var alwaysUsesMultipleValuesMarker: Bool
  func setSelectionIndexes(indexes: NSIndexSet) -> Bool
  @NSCopying var selectionIndexes: NSIndexSet { get }
  func setSelectionIndex(index: Int) -> Bool
  var selectionIndex: Int { get }
  func addSelectionIndexes(indexes: NSIndexSet) -> Bool
  func removeSelectionIndexes(indexes: NSIndexSet) -> Bool
  func setSelectedObjects(objects: [AnyObject]) -> Bool
  var selectedObjects: [AnyObject]! { get }
  func addSelectedObjects(objects: [AnyObject]) -> Bool
  func removeSelectedObjects(objects: [AnyObject]) -> Bool
  func add(sender: AnyObject?)
  func remove(sender: AnyObject?)
  func insert(sender: AnyObject?)
  var canInsert: Bool { get }
  func selectNext(sender: AnyObject?)
  func selectPrevious(sender: AnyObject?)
  var canSelectNext: Bool { get }
  var canSelectPrevious: Bool { get }
  func add(object: AnyObject)
  func add(objects: [AnyObject])
  func insert(object: AnyObject, atArrangedObjectIndex index: Int)
  func insert(objects: [AnyObject], atArrangedObjectIndexes indexes: NSIndexSet)
  func removeObject(atArrangedObjectIndex index: Int)
  func removeObjects(atArrangedObjectIndexes indexes: NSIndexSet)
  func remove(object: AnyObject)
  func remove(objects: [AnyObject])
  init(content: AnyObject?)
  init?(coder: NSCoder)
  convenience init()
}
struct __arrayControllerFlags {
  var _avoidsEmptySelection: UInt32
  var _preservesSelection: UInt32
  var _selectsInsertedObjects: UInt32
  var _alwaysUsesMultipleValuesMarker: UInt32
  var _refreshesAllModelObjects: UInt32
  var _filterRestrictsInsertion: UInt32
  var _overridesArrangeObjects: UInt32
  var _overridesDidChangeArrangementCriteria: UInt32
  var _explicitlyCannotInsert: UInt32
  var _generatedEmptyArray: UInt32
  var _isObservingKeyPathsThroughArrangedObjects: UInt32
  var _arrangedObjectsIsMutable: UInt32
  var _clearsFilterPredicateOnInsertion: UInt32
  var _skipSortingAfterFetch: UInt32
  var _automaticallyRearrangesObjects: UInt32
  var _reservedArrayController: UInt32
  init()
  init(_avoidsEmptySelection: UInt32, _preservesSelection: UInt32, _selectsInsertedObjects: UInt32, _alwaysUsesMultipleValuesMarker: UInt32, _refreshesAllModelObjects: UInt32, _filterRestrictsInsertion: UInt32, _overridesArrangeObjects: UInt32, _overridesDidChangeArrangementCriteria: UInt32, _explicitlyCannotInsert: UInt32, _generatedEmptyArray: UInt32, _isObservingKeyPathsThroughArrangedObjects: UInt32, _arrangedObjectsIsMutable: UInt32, _clearsFilterPredicateOnInsertion: UInt32, _skipSortingAfterFetch: UInt32, _automaticallyRearrangesObjects: UInt32, _reservedArrayController: UInt32)
}
