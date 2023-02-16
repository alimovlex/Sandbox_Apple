import Foundation;
import CoreFoundation;
import Dispatch;
import NIO;
import NIOHTTP1;
import KituraWebSocketClient;
import SwiftProtobuf;
import HeliumLogger;
import LoggerAPI;

class WebSocketCommunicator: WebSocketClientDelegate {

    weak var client: WebSocketClient?

    init(client: WebSocketClient?) {
    self.client = client;

    }

    func onText(text: String) {
        Log.info("Received text: \(text)");
        
    }
    
    func onBinary(data: Data) {

        client?.sendBinary(data);
    }
    
    func onPing(data: Data) {
        client?.ping(data: data);
    }
    
    func onPong(data: Data) {
        //
    }
    
    func onClose(channel: Channel, data: Data) {
        client?.close(data: data);
    }
    
    func onError(error: Error?, status: HTTPResponseStatus?) {
        //
    }

    func connect() {
        Log.info("Establishing a websocket connection.");
        if let validClient = client, let validConnection = try? validClient.connect() {
            Log.info("The websocket connection has been established!");
        } else {
            Log.error("""
                      Failed to establish the websocket connection to the server. 
                      Please check server URL and try again.
                      """);

        } 
        client?.sendText("Hello from M1T!");
    }

    func disconnect() {
        
    }


}

