
@available(OSX 10.5, *)
class NSToolbarItemGroup : NSToolbarItem {
  var subitems: [NSToolbarItem]
  init(itemIdentifier itemIdentifier: String)
  convenience init()
}
