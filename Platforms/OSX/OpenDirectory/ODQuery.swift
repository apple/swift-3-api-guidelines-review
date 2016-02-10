
protocol ODQueryDelegate : ObjectProtocol {
  @available(OSX 10.6, *)
  func query(inQuery: ODQuery!, foundResults inResults: [AnyObject]!, error inError: Error!)
}
class ODQuery : Object, Copying {
  @available(OSX 10.6, *)
  init(node inNode: ODNode!, forRecordTypes inRecordTypeOrList: AnyObject!, attribute inAttribute: String!, matchType inMatchType: ODMatchType, queryValues inQueryValueOrList: AnyObject!, returnAttributes inReturnAttributeOrList: AnyObject!, maximumResults inMaximumResults: Int) throws
  @available(OSX 10.6, *)
  func resultsAllowingPartial(inAllowPartialResults: Bool) throws -> [AnyObject]
  @available(OSX 10.6, *)
  unowned(unsafe) var delegate: @sil_unmanaged ODQueryDelegate!
  @available(OSX 10.6, *)
  func scheduleIn(inRunLoop: RunLoop!, forMode inMode: String!)
  @available(OSX 10.6, *)
  func removeFrom(inRunLoop: RunLoop!, forMode inMode: String!)
  @available(OSX 10.6, *)
  func synchronize()
  @available(OSX 10.6, *)
  var operationQueue: OperationQueue!
  init()
  func copy(with zone: Zone = nil) -> AnyObject
}
