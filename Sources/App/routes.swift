import Vapor
import NIOWebSocket
import NIO
import NIOHTTP1
import WebSocketKit

import WebSocketKit

func routes(_ app: Application) throws {
  
  app.webSocket("") { request, ws in
    
    ws.onText { ws, text in
      ws.send(text)
    }
    
    ws.onClose.whenComplete { result in
      switch result {
      case .success():
        print("Closed")
      case .failure(let error):
        print("Failed to close connection \(error)")
      }
    }
  }
}
