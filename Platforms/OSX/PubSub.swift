
extension Object {
  class func feedDidBeginRefresh(feed: PSFeed!)
  func feedDidBeginRefresh(feed: PSFeed!)
  class func feedDidEndRefresh(feed: PSFeed!)
  func feedDidEndRefresh(feed: PSFeed!)
  class func feed(feed: PSFeed!, didAddEntries entries: [AnyObject]!)
  func feed(feed: PSFeed!, didAddEntries entries: [AnyObject]!)
  class func feed(feed: PSFeed!, didRemoveEntriesWithIdentifiers identifiers: [AnyObject]!)
  func feed(feed: PSFeed!, didRemoveEntriesWithIdentifiers identifiers: [AnyObject]!)
  class func feed(feed: PSFeed!, didUpdateEntries entries: [AnyObject]!)
  func feed(feed: PSFeed!, didUpdateEntries entries: [AnyObject]!)
  class func feed(feed: PSFeed!, didChangeFlagsInEntries entries: [AnyObject]!)
  func feed(feed: PSFeed!, didChangeFlagsInEntries entries: [AnyObject]!)
  class func enclosure(enclosure: PSEnclosure!, downloadStateDidChange state: PSEnclosureDownloadState)
  func enclosure(enclosure: PSEnclosure!, downloadStateDidChange state: PSEnclosureDownloadState)
}
var PSFeedSettingsIntervalDefault: Double { get }
var PSFeedSettingsIntervalNever: Double { get }
var PSFeedSettingsUnlimitedSize: Int32 { get }
