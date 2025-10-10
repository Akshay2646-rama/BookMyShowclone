//
//  BMSappApp.swift
//  BMSapp
//
//  Created by Nxtwave on 19/08/25.
//

import SwiftUI
import GoogleSignIn
import UIKit



@main
struct BMSappApp: App {
    var body: some Scene {
        WindowGroup {
            SigninPage()
                .onAppear{
                    GIDSignIn.sharedInstance.restorePreviousSignIn { _,_ in  }
                }
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)      
                }
        }
    }
}


extension UIApplication {
  static var topViewController: UIViewController? {
    guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
          let root = scene.windows.first(where: { $0.isKeyWindow })?.rootViewController
    else { return nil }
    var top = root
    while let presented = top.presentedViewController {
      top = presented
    }
    return top
  }
}
