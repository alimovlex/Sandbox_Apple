import Foundation;
import CoreFoundation;
import Dispatch;
import KituraWebSocketClient;
import SwiftProtobuf;
import LoggerAPI;
import HeliumLogger;
import Glibc

let INPUT_NOTIFICATION = Notification.Name("InputNotification");

func main()
{    
    HeliumLogger.use();
    let SERVER_URL = "ws://localhost:8080";  
    let client = WebSocketClient(SERVER_URL);
    let ws = WebSocketCommunicator(client: client);
    ws.connect(); 

    //NotificationCenter.default.post(name: INPUT_NOTIFICATION, object:nil)

}

main();

/*
    NotificationCenter.default.addObserver(forName: INPUT_NOTIFICATION, object:nil, queue: .current) {
    notification in
    Log.info(notification);
    }
*/