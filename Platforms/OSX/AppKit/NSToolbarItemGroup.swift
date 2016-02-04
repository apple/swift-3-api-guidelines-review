
@available(OSX 10.5, *)
class NSToolbarItemGroup : NSToolbarItem {
  var subitems: [NSToolbarItem]
  init(itemIdentifier: String)
  convenience init()
}
