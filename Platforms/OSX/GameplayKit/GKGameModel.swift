
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
  func setGameModel(gameModel: GKGameModel)
  func gameModelUpdatesForPlayer(player: GKGameModelPlayer) -> [GKGameModelUpdate]?
  func applyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
  optional func scoreForPlayer(player: GKGameModelPlayer) -> Int
  optional func isWinForPlayer(player: GKGameModelPlayer) -> Bool
  optional func isLossForPlayer(player: GKGameModelPlayer) -> Bool
  optional func unapplyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
}
