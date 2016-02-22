
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
  func gameModelUpdates(for player: GKGameModelPlayer) -> [GKGameModelUpdate]?
  func apply(gameModelUpdate: GKGameModelUpdate)
  optional func score(for player: GKGameModelPlayer) -> Int
  optional func isWin(for player: GKGameModelPlayer) -> Bool
  optional func isLoss(for player: GKGameModelPlayer) -> Bool
  optional func unapplyGameModelUpdate(gameModelUpdate: GKGameModelUpdate)
}
