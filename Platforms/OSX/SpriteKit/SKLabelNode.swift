
@available(OSX 10.9, *)
enum SKLabelVerticalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case baseline
  case center
  case top
  case bottom
}
@available(OSX 10.9, *)
enum SKLabelHorizontalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case center
  case left
  case right
}
class SKLabelNode : SKNode {
  convenience init(text: String?)
  init(fontNamed fontName: String?)
  var verticalAlignmentMode: SKLabelVerticalAlignmentMode
  var horizontalAlignmentMode: SKLabelHorizontalAlignmentMode
  var fontName: String?
  var text: String?
  var fontSize: CGFloat
  var fontColor: NSColor?
  var colorBlendFactor: CGFloat
  var color: NSColor?
  var blendMode: SKBlendMode
  init()
  init?(coder aDecoder: NSCoder)
  convenience init?(fileNamed filename: String)
}
