//
//  SceneDelegate.swift
//  Geofences-App
//
//  Created by RajeshKumar on 11/04/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    let options: UNAuthorizationOptions = [.badge, .sound, .alert]
    UNUserNotificationCenter.current().requestAuthorization(options: options) { _, error in
      if let error = error {
        print("Error: \(error)")
      }
    }
    return true
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    application.applicationIconBadgeNumber = 0
    UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    UNUserNotificationCenter.current().removeAllDeliveredNotifications()
  }
}
