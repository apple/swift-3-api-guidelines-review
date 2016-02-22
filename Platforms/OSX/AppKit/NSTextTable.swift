
enum NSTextBlockValueType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case absoluteValueType
  case percentageValueType
}
enum NSTextBlockDimension : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case width
  case minimumWidth
  case maximumWidth
  case height
  case minimumHeight
  case maximumHeight
}
enum NSTextBlockLayer : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case padding
  case border
  case margin
}
enum NSTextBlockVerticalAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case topAlignment
  case middleAlignment
  case bottomAlignment
  case baselineAlignment
}
enum NSTextTableLayoutAlgorithm : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case automaticLayoutAlgorithm
  case fixedLayoutAlgorithm
}
class NSTextBlock : NSObject, NSCoding, NSCopying {
  init()
  func setValue(val: CGFloat, type: NSTextBlockValueType, for dimension: NSTextBlockDimension)
  func value(for dimension: NSTextBlockDimension) -> CGFloat
  func valueType(for dimension: NSTextBlockDimension) -> NSTextBlockValueType
  func setContentWidth(val: CGFloat, type: NSTextBlockValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlockValueType { get }
  func setWidth(val: CGFloat, type: NSTextBlockValueType, for layer: NSTextBlockLayer, edge: NSRectEdge)
  func setWidth(val: CGFloat, type: NSTextBlockValueType, for layer: NSTextBlockLayer)
  func width(for layer: NSTextBlockLayer, edge: NSRectEdge) -> CGFloat
  func widthValueType(for layer: NSTextBlockLayer, edge: NSRectEdge) -> NSTextBlockValueType
  var verticalAlignment: NSTextBlockVerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(color: NSColor?, for edge: NSRectEdge)
  func setBorderColor(color: NSColor?)
  func borderColor(for edge: NSRectEdge) -> NSColor?
  func rectForLayout(at startingPoint: NSPoint, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRect(forContentRect contentRect: NSRect, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackground(frame frameRect: NSRect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
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
  func rect(for block: NSTextTableBlock, layoutAt startingPoint: NSPoint, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRect(for block: NSTextTableBlock, contentRect: NSRect, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackground(for block: NSTextTableBlock, withFrame frameRect: NSRect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  init()
  init?(coder aDecoder: NSCoder)
}
