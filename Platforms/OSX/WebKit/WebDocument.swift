
protocol WebDocumentView : ObjectProtocol {
  func setDataSource(dataSource: WebDataSource!)
  func dataSourceUpdated(dataSource: WebDataSource!)
  func setNeedsLayout(flag: Bool)
  func layout()
  func viewWillMove(toHostWindow hostWindow: NSWindow!)
  func viewDidMoveToHostWindow()
}
protocol WebDocumentSearching : ObjectProtocol {
  func search(for string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
}
protocol WebDocumentText : ObjectProtocol {
  func supportsTextEncoding() -> Bool
  func string() -> String!
  @available(OSX 10.0, *)
  func attributedString() -> AttributedString!
  func selectedString() -> String!
  @available(OSX 10.0, *)
  func selectedAttributedString() -> AttributedString!
  func selectAll()
  func deselectAll()
}
protocol WebDocumentRepresentation : ObjectProtocol {
  func setDataSource(dataSource: WebDataSource!)
  func receivedData(data: Data!, with dataSource: WebDataSource!)
  func receivedError(error: Error!, with dataSource: WebDataSource!)
  func finishedLoading(dataSource: WebDataSource!)
  func canProvideDocumentSource() -> Bool
  func documentSource() -> String!
  func title() -> String!
}
