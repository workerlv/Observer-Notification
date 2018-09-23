//
//  SecondViewController.swift
//  Observer-Notification
//
//  Created by Arturs Vitins on 23/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtFieldOutlet: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnAction(_ sender: Any) {
        
        let name = Notification.Name(rawValue: CustomNotificationKeys.customKey)
        NotificationCenter.default.post(name: name, object: txtFieldOutlet.text)
        dismiss(animated: true, completion: nil)
        
    }
    
}
