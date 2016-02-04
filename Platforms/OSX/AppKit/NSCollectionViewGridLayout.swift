
@available(OSX 10.11, *)
class NSCollectionViewGridLayout : NSCollectionViewLayout {
  var margins: EdgeInsets
  var minimumInteritemSpacing: CGFloat
  var minimumLineSpacing: CGFloat
  var maximumNumberOfRows: Int
  var maximumNumberOfColumns: Int
  var minimumItemSize: Size
  var maximumItemSize: Size
  var backgroundColors: [NSColor]!
  init()
  init?(coder aDecoder: Coder)
}
