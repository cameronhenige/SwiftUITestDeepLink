

import SwiftUI

@main
struct ContentView: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate


    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(ViewRouter())

        }
        
    
        
}
    
}
