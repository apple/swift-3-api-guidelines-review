
@available(iOS 8.0, *)
class PHChange : NSObject {
  func changeDetailsForObject(_ object: PHObject) -> PHObjectChangeDetails?
  func changeDetailsForFetchResult(_ object: PHFetchResult) -> PHFetchResultChangeDetails?
}
@available(iOS 8.0, *)
class PHObjectChangeDetails : NSObject {
  var objectBeforeChanges: PHObject { get }
  var objectAfterChanges: PHObject? { get }
  var assetContentChanged: Bool { get }
  var objectWasDeleted: Bool { get }
}
@available(iOS 8.0, *)
class PHFetchResultChangeDetails : NSObject {
  var fetchResultBeforeChanges: PHFetchResult { get }
  var fetchResultAfterChanges: PHFetchResult { get }
  var hasIncrementalChanges: Bool { get }
  var removedIndexes: NSIndexSet? { get }
  var removedObjects: [PHObject] { get }
  var insertedIndexes: NSIndexSet? { get }
  var insertedObjects: [PHObject] { get }
  var changedIndexes: NSIndexSet? { get }
  var changedObjects: [PHObject] { get }
  func enumerateMovesWithBlock(_ handler: (Int, Int) -> Void)
  var hasMoves: Bool { get }
  convenience init(fromFetchResult fromResult: PHFetchResult, toFetchResult toResult: PHFetchResult, changedObjects changedObjects: [PHObject])
}
