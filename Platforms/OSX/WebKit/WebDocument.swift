
protocol WebDocumentView : NSObjectProtocol {
  func setDataSource(dataSource: WebDataSource!)
  func dataSourceUpdated(dataSource: WebDataSource!)
  func setNeedsLayout(flag: Bool)
  func layout()
  func viewWillMove(toHostWindow hostWindow: NSWindow!)
  func viewDidMoveToHostWindow()
}
protocol WebDocumentSearching : NSObjectProtocol {
  func search(for string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
}
protocol WebDocumentText : NSObjectProtocol {
  func supportsTextEncoding() -> Bool
  func string() -> String!
  @available(OSX 10.0, *)
  func attributedString() -> NSAttributedString!
  func selectedString() -> String!
  @available(OSX 10.0, *)
  func selectedAttributedString() -> NSAttributedString!
  func selectAll()
  func deselectAll()
}
protocol WebDocumentRepresentation : NSObjectProtocol {
  func setDataSource(dataSource: WebDataSource!)
  func receivedData(data: NSData!, with dataSource: WebDataSource!)
  func receivedError(error: NSError!, with dataSource: WebDataSource!)
  func finishedLoading(with dataSource: WebDataSource!)
  func canProvideDocumentSource() -> Bool
  func documentSource() -> String!
  func title() -> String!
}
