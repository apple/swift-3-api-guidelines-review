
protocol WebDocumentView : NSObjectProtocol {
  func setDataSource(_ dataSource: WebDataSource!)
  func dataSourceUpdated(_ dataSource: WebDataSource!)
  func setNeedsLayout(_ flag: Bool)
  func layout()
  func viewWillMoveToHostWindow(_ hostWindow: NSWindow!)
  func viewDidMoveToHostWindow()
}
protocol WebDocumentSearching : NSObjectProtocol {
  func searchFor(_ string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
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
  func setDataSource(_ dataSource: WebDataSource!)
  func receivedData(_ data: NSData!, withDataSource dataSource: WebDataSource!)
  func receivedError(_ error: NSError!, withDataSource dataSource: WebDataSource!)
  func finishedLoadingWithDataSource(_ dataSource: WebDataSource!)
  func canProvideDocumentSource() -> Bool
  func documentSource() -> String!
  func title() -> String!
}
