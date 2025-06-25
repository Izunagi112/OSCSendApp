import SwiftUI
import OSCKit

let oscaddr = "/sample"
let daddr = "192.168.1.129"
let dport: UInt16 = 12000

let oscClient = OSCClient()

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button("Button0") {
                let msg = OSCMessage(oscaddr, values: [Float(0)])
                do {
                    try oscClient.send(msg, to: daddr, port: dport)
                } catch {
                    print("error")
                }
            }
            
            Button("Button1") {
                let msg = OSCMessage(oscaddr, values: [Float(1)])
                do {
                   try oscClient.send(msg, to: daddr, port: dport)
                } catch {
                    print("error")
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
