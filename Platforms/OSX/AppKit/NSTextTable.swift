
enum NSTextBlockValueType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case AbsoluteValueType
  case PercentageValueType
}
enum NSTextBlockDimension : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Width
  case MinimumWidth
  case MaximumWidth
  case Height
  case MinimumHeight
  case MaximumHeight
}
enum NSTextBlockLayer : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Padding
  case Border
  case Margin
}
enum NSTextBlockVerticalAlignment : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case TopAlignment
  case MiddleAlignment
  case BottomAlignment
  case BaselineAlignment
}
enum NSTextTableLayoutAlgorithm : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case AutomaticLayoutAlgorithm
  case FixedLayoutAlgorithm
}
class NSTextBlock : NSObject, NSCoding, NSCopying {
  func setValue(_ val: CGFloat, type type: NSTextBlockValueType, forDimension dimension: NSTextBlockDimension)
  func valueForDimension(_ dimension: NSTextBlockDimension) -> CGFloat
  func valueTypeForDimension(_ dimension: NSTextBlockDimension) -> NSTextBlockValueType
  func setContentWidth(_ val: CGFloat, type type: NSTextBlockValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlockValueType { get }
  func setWidth(_ val: CGFloat, type type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer, edge edge: NSRectEdge)
  func setWidth(_ val: CGFloat, type type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer)
  func widthForLayer(_ layer: NSTextBlockLayer, edge edge: NSRectEdge) -> CGFloat
  func widthValueTypeForLayer(_ layer: NSTextBlockLayer, edge edge: NSRectEdge) -> NSTextBlockValueType
  var verticalAlignment: NSTextBlockVerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(_ color: NSColor?, forEdge edge: NSRectEdge)
  func setBorderColor(_ color: NSColor?)
  func borderColorForEdge(_ edge: NSRectEdge) -> NSColor?
  func rectForLayoutAtPoint(_ startingPoint: NSPoint, inRect rect: NSRect, textContainer textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForContentRect(_ contentRect: NSRect, inRect rect: NSRect, textContainer textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundWithFrame(_ frameRect: NSRect, inView controlView: NSView, characterRange charRange: NSRange, layoutManager layoutManager: NSLayoutManager)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
class NSTextTableBlock : NSTextBlock {
  init(table table: NSTextTable, startingRow row: Int, rowSpan rowSpan: Int, startingColumn col: Int, columnSpan colSpan: Int)
  var table: NSTextTable { get }
  var startingRow: Int { get }
  var rowSpan: Int { get }
  var startingColumn: Int { get }
  var columnSpan: Int { get }
}
class NSTextTable : NSTextBlock {
  var numberOfColumns: Int
  var layoutAlgorithm: NSTextTableLayoutAlgorithm
  var collapsesBorders: Bool
  var hidesEmptyCells: Bool
  func rectForBlock(_ block: NSTextTableBlock, layoutAtPoint startingPoint: NSPoint, inRect rect: NSRect, textContainer textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRectForBlock(_ block: NSTextTableBlock, contentRect contentRect: NSRect, inRect rect: NSRect, textContainer textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackgroundForBlock(_ block: NSTextTableBlock, withFrame frameRect: NSRect, inView controlView: NSView, characterRange charRange: NSRange, layoutManager layoutManager: NSLayoutManager)
}
