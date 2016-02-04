
enum NSTextBlockValueType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AbsoluteValueType
  case PercentageValueType
}
enum NSTextBlockDimension : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Width
  case MinimumWidth
  case MaximumWidth
  case Height
  case MinimumHeight
  case MaximumHeight
}
enum NSTextBlockLayer : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Padding
  case Border
  case Margin
}
enum NSTextBlockVerticalAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TopAlignment
  case MiddleAlignment
  case BottomAlignment
  case BaselineAlignment
}
enum NSTextTableLayoutAlgorithm : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AutomaticLayoutAlgorithm
  case FixedLayoutAlgorithm
}
class NSTextBlock : NSObject, NSCoding, NSCopying {
  init()
  func setValue(val: CGFloat, type: NSTextBlockValueType, forDimension dimension: NSTextBlockDimension)
  func valueForDimension(dimension: NSTextBlockDimension) -> CGFloat
  func valueTypeForDimension(dimension: NSTextBlockDimension) -> NSTextBlockValueType
  func setContentWidth(val: CGFloat, type: NSTextBlockValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlockValueType { get }
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer, edge: NSRectEdge)
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer)
  func widthForLayer(layer: NSTextBlockLayer, edge: NSRectEdge) -> CGFloat
  func widthValueTypeForLayer(layer: NSTextBlockLayer, edge: NSRectEdge) -> NSTextBlockValueType
  var verticalAlignment: NSTextBlockVerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(color: NSColor?, forEdge edge: NSRectEdge)
  func setBorderColor(color: NSColor?)
  func borderColorForEdge(edge: NSRectEdge) -> NSColor?
  func rectForLayoutAtPoint(startingPoint: NSPoint, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForContentRect(contentRect: NSRect, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundWithFrame(frameRect: NSRect, inView controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
}
class NSTextTableBlock : NSTextBlock {
  init(table: NSTextTable, startingRow row: Int, rowSpan: Int, startingColumn col: Int, columnSpan colSpan: Int)
  var table: NSTextTable { get }
  var startingRow: Int { get }
  var rowSpan: Int { get }
  var startingColumn: Int { get }
  var columnSpan: Int { get }
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class NSTextTable : NSTextBlock {
  var numberOfColumns: Int
  var layoutAlgorithm: NSTextTableLayoutAlgorithm
  var collapsesBorders: Bool
  var hidesEmptyCells: Bool
  func rectForBlock(block: NSTextTableBlock, layoutAtPoint startingPoint: NSPoint, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForBlock(block: NSTextTableBlock, contentRect: NSRect, inRect rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundForBlock(block: NSTextTableBlock, withFrame frameRect: NSRect, inView controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  init()
  init?(coder aDecoder: NSCoder)
}
