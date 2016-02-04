
protocol GKSessionDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func session(session: GKSession, peer peerID: String, didChangeState state: GKPeerConnectionState)
  optional func session(session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(session: GKSession, connectionWithPeerFailed peerID: String, withError error: NSError)
  optional func session(session: GKSession, didFailWithError error: NSError)
}
protocol GKVoiceChatClient : NSObjectProtocol {
  func voiceChatService(voiceChatService: GKVoiceChatService, sendData data: NSData, toParticipantID participantID: String)
  func participantID() -> String
  optional func voiceChatService(voiceChatService: GKVoiceChatService, sendRealTimeData data: NSData, toParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: NSError?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: NSError?)
  optional func voiceChatService(voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
