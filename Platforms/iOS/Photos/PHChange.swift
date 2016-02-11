
@available(iOS 8.0, *)
class PHChange : Object {
  func changeDetails(for object: PHObject) -> PHObjectChangeDetails?
  func changeDetails(for object: PHFetchResult) -> PHFetchResultChangeDetails?
  init()
}
@available(iOS 8.0, *)
class PHObjectChangeDetails : Object {
  var objectBeforeChanges: PHObject { get }
  var objectAfterChanges: PHObject? { get }
  var assetContentChanged: Bool { get }
  var objectWasDeleted: Bool { get }
  init()
}
@available(iOS 8.0, *)
class PHFetchResultChangeDetails : Object {
  var fetchResultBeforeChanges: PHFetchResult { get }
  var fetchResultAfterChanges: PHFetchResult { get }
  var hasIncrementalChanges: Bool { get }
  var removedIndexes: IndexSet? { get }
  var removedObjects: [PHObject] { get }
  var insertedIndexes: IndexSet? { get }
  var insertedObjects: [PHObject] { get }
  var changedIndexes: IndexSet? { get }
  var changedObjects: [PHObject] { get }
  func enumerateMoves(handler: (Int, Int) -> Void)
  var hasMoves: Bool { get }
  convenience init(from fromResult: PHFetchResult, to toResult: PHFetchResult, changedObjects: [PHObject])
  init()
}
