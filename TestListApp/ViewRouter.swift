

import Foundation
import UserNotifications

class ViewRouter: ObservableObject {
    @Published var selectedPet: Pet? = nil
    @Published var pets: [Pet] = [Pet(name: "Louie"), Pet(name: "Fred"), Pet(name: "Stanley")]
    
    
    func goToFred() {
        self.selectedPet = pets[1]
    }
    
    func sendNotification() {
        let content = UNMutableNotificationContent()
        let categoryIdentifire = "Notification Type"
        
        content.title = "Go To Fred"
        content.body = "Click me to go to Fred."
        content.sound = UNNotificationSound.default
        content.badge = 1
        content.categoryIdentifier = categoryIdentifire
        
        let request = UNNotificationRequest(identifier: "identifier", content: content, trigger: nil)
        UNUserNotificationCenter.current().add(request) { (error) in
            if let error = error {
                print("Error \(error.localizedDescription)")
            }
        }
        
    }
    
}
