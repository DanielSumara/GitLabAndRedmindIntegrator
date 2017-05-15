import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

let handler = GitLabMessageReceiver()

let server = HTTPServer()
server.serverPort = 8181
 
var routes = Routes()

routes.add(method: .get, uri: "/", handler: handler.handle)
routes.add(method: .post, uri: "/", handler: handler.handle)

server.addRoutes(routes)

do {
    try server.start()
} catch PerfectError.networkError(let err, let msg) {
    print("Network error thrown: \(err) \(msg)")
}
