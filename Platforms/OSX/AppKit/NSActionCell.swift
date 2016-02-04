
class NSActionCell : NSCell {
  weak var target: @sil_weak AnyObject?
  var action: Selector
  var tag: Int
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
