//
//  ViewController.swift
//  ios-challenges-justin
//
//  Created by 曾柏瑒 on 2023/12/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Example usage
        let emailNotifier = EmailNotifier()
        let smsNotifier = SMSNotifier()

        let emailNotificationService = NotificationService(notifier: emailNotifier)
        let smsNotificationService = NotificationService(notifier: smsNotifier)

        emailNotificationService.notifyUser()
        smsNotificationService.notifyUser()
    }


}

// Abstraction: Notifier protocol
protocol Notifier {
    func sendNotification()
}

// Details: EmailNotifier, a concrete implementation of Notifier
class EmailNotifier: Notifier {
    func sendNotification() {
        print("Sending notification via email")
        // Actual email sending implementation
    }
}

// Details: SMSNotifier, another concrete implementation of Notifier
class SMSNotifier: Notifier {
    func sendNotification() {
        print("Sending notification via SMS")
        // Actual SMS sending implementation
    }
}

// High-level module: NotificationService, depending on Notifier abstraction
class NotificationService {
    private let notifier: Notifier
    
    init(notifier: Notifier) {
        self.notifier = notifier
    }
    
    func notifyUser() {
        // High-level logic for notifying user
        // ...
        
        // Use the injected notifier to send the notification
        notifier.sendNotification()
    }
}
