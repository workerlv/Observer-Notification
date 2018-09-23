//
//  ViewController.swift
//  Observer-Notification
//
//  Created by Arturs Vitins on 23/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let notificationName = Notification.Name(CustomNotificationKeys.customKey)
    
    @IBOutlet weak var notifLblOutlet: UILabel!
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObservers()
    }

    func createObservers () {
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateLabel(notification:)), name: notificationName, object: nil)
    }
    
    @objc func updateLabel (notification: NSNotification) {
        notifLblOutlet.text = "\(notification.object ?? "didn't receive")"
    }
    
}
