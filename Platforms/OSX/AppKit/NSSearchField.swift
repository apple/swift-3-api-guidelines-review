
protocol NSSearchFieldDelegate : NSTextFieldDelegate {
  @available(OSX 10.11, *)
  optional func searchFieldDidStartSearching(sender: NSSearchField)
  @available(OSX 10.11, *)
  optional func searchFieldDidEndSearching(sender: NSSearchField)
}
class NSSearchField : NSTextField {
  @available(OSX 10.11, *)
  func rectForSearchText(whenCentered isCentered: Bool) -> Rect
  @available(OSX 10.11, *)
  func rectForSearchButton(whenCentered isCentered: Bool) -> Rect
  @available(OSX 10.11, *)
  func rectForCancelButton(whenCentered isCentered: Bool) -> Rect
  var recentSearches: [String]
  var recentsAutosaveName: String?
  @available(OSX 10.10, *)
  var searchMenuTemplate: NSMenu?
  @available(OSX 10.10, *)
  var sendsWholeSearchString: Bool
  @available(OSX 10.10, *)
  var maximumRecents: Int
  @available(OSX 10.10, *)
  var sendsSearchStringImmediately: Bool
  @available(OSX 10.11, *)
  unowned(unsafe) var delegate: @sil_unmanaged NSSearchFieldDelegate?
  @available(OSX 10.11, *)
  var centersPlaceholder: Bool
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
