
protocol NSUserInterfaceItemSearching : NSObjectProtocol {
  func searchForItemsWithSearchString(searchString: String, resultLimit: Int, matchedItemHandler handleMatchedItems: ([AnyObject]) -> Void)
  func localizedTitlesForItem(item: AnyObject) -> [String]
  optional func performActionForItem(item: AnyObject)
  optional func showAllHelpTopicsForSearchString(searchString: String)
}
extension NSApplication {
  @available(OSX 10.6, *)
  func registerUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func unregisterUserInterfaceItemSearchHandler(handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func searchString(searchString: String, inUserInterfaceItemString stringToSearch: String, searchRange: NSRange, foundRange: UnsafeMutablePointer<NSRange>) -> Bool
}
