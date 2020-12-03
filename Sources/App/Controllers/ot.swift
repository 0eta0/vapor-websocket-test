// import Vapor

// public class ChatRoom {
//   var clients = [WebSocket]()

//   func handler() -> ((WebSocket, Request) throws -> ()) {
//     return { ws, req in
//       self.clients.append(ws)
//       ws.onText(self.onText)
//       ws.onClose.always { _ in
//         self.clients = self.clients.filter { $0 === ws }
//       }
//     }
//   }

//   private func onText(sender: WebSocket, text: String) -> () {
//     self.clients.forEach{ ws in
//       if ws !== sender {
//         ws.send("> \(text)")
//       }
//     }
//   }
// }