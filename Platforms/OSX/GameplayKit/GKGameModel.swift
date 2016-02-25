
let GKGameModelMaxScore: Int
let GKGameModelMinScore: Int
protocol GKGameModelUpdate : NSObjectProtocol {
  var value: Int { get set }
}
protocol GKGameModelPlayer : NSObjectProtocol {
  var playerId: Int { get }
}
protocol GKGameModel : NSObjectProtocol, NSCopying {
  var players: [GKGameModelPlayer]? { get }
  var activePlayer: GKGameModelPlayer? { get }
  func setGameModel(_ gameModel: GKGameModel)
  func gameModelUpdatesForPlayer(_ player: GKGameModelPlayer) -> [GKGameModelUpdate]?
  func applyGameModelUpdate(_ gameModelUpdate: GKGameModelUpdate)
  optional func scoreForPlayer(_ player: GKGameModelPlayer) -> Int
  optional func isWinForPlayer(_ player: GKGameModelPlayer) -> Bool
  optional func isLossForPlayer(_ player: GKGameModelPlayer) -> Bool
  optional func unapplyGameModelUpdate(_ gameModelUpdate: GKGameModelUpdate)
}
