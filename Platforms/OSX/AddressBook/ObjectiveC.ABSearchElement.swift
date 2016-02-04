
class ABSearchElement : Object {
  /*not inherited*/ init!(forConjunction conjuction: ABSearchConjunction, children: [AnyObject]!)
  func matchesRecord(record: ABRecord!) -> Bool
  init()
}
