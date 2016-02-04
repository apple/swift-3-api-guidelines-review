
@available(iOS 8.0, *)
class PHChange : NSObject {
  func changeDetailsForObject(object: PHObject) -> PHObjectChangeDetails?
  func changeDetailsForFetchResult(object: PHFetchResult) -> PHFetchResultChangeDetails?
  init()
}
@available(iOS 8.0, *)
class PHObjectChangeDetails : NSObject {
  var objectBeforeChanges: PHObject { get }
  var objectAfterChanges: PHObject? { get }
  var assetContentChanged: Bool { get }
  var objectWasDeleted: Bool { get }
  init()
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
  func enumerateMovesWithBlock(handler: (Int, Int) -> Void)
  var hasMoves: Bool { get }
  convenience init(fromFetchResult fromResult: PHFetchResult, toFetchResult toResult: PHFetchResult, changedObjects: [PHObject])
  init()
}
