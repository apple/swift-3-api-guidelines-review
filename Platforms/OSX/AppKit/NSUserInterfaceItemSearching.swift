
protocol NSUserInterfaceItemSearching : NSObjectProtocol {
  func searchForItems(search searchString: String, resultLimit: Int, matchedItemHandler handleMatchedItems: ([AnyObject]) -> Void)
  func localizedTitles(forItem item: AnyObject) -> [String]
  optional func performAction(forItem item: AnyObject)
  optional func showAllHelpTopics(forSearch searchString: String)
}
extension NSApplication {
  @available(OSX 10.6, *)
  func registerUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func unregisterUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func search(searchString: String, inUserInterfaceItemString stringToSearch: String, search searchRange: NSRange, found foundRange: UnsafeMutablePointer<NSRange>) -> Bool
}
