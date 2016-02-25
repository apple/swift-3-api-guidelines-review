
protocol NSUserInterfaceItemSearching : NSObjectProtocol {
  func searchForItemsWithSearchString(_ searchString: String, resultLimit resultLimit: Int, matchedItemHandler handleMatchedItems: ([AnyObject]) -> Void)
  func localizedTitlesForItem(_ item: AnyObject) -> [String]
  optional func performActionForItem(_ item: AnyObject)
  optional func showAllHelpTopicsForSearchString(_ searchString: String)
}
extension NSApplication {
  @available(OSX 10.6, *)
  func registerUserInterfaceItemSearchHandler(_ handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func unregisterUserInterfaceItemSearchHandler(_ handler: NSUserInterfaceItemSearching)
  @available(OSX 10.6, *)
  func searchString(_ searchString: String, inUserInterfaceItemString stringToSearch: String, searchRange searchRange: NSRange, foundRange foundRange: UnsafeMutablePointer<NSRange>) -> Bool
}
