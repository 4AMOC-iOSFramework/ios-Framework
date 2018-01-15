//
//  ViewController.swift
//  InAppNotification
//
//  Created by Henri Gil on 05/01/2018.
//  Copyright © 2018 Henri Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var  but1: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints=false
        but.backgroundColor = .clear
        but.setTitle("Add 1 notification: Url image anim: left", for: .normal)
//        but.setTitleColor(.black, for: .normal)
        but.addTarget(self, action: #selector(addNotif), for: .touchUpInside)
        return but
    }()
    
    lazy var  but2: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints=false
        but.backgroundColor = .clear
        but.setTitle("Add a notification array: Url image", for: .normal)
        //        but.setTitleColor(.black, for: .normal)
        but.addTarget(self, action: #selector(addNotifs), for: .touchUpInside)
        return but
    }()
    
    lazy var  but3: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints=false
        but.backgroundColor = .clear
        but.setTitle("Add a notification: Local image", for: .normal)
        //        but.setTitleColor(.black, for: .normal)
        but.addTarget(self, action: #selector(addNotifLocal), for: .touchUpInside)
        return but
    }()
    
    lazy var  but4: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints=false
        but.backgroundColor = .clear
        but.setTitle("Add a notification: Timer 5sec", for: .normal)
        //        but.setTitleColor(.black, for: .normal)
        but.addTarget(self, action: #selector(addNotifSecond), for: .touchUpInside)
        return but
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(notificationsHandler), name: Notification.Name("notificationTapped") , object: nil)

        
        view.backgroundColor = UIColor(white: 0.1, alpha: 1)
        
        view.addSubview(but1)
        view.addSubview(but2)
        view.addSubview(but3)
        view.addSubview(but4)
        but1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        but1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive=true
        but1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive=true
        but1.heightAnchor.constraint(lessThanOrEqualToConstant: 100).isActive=true
        
        but2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        but2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive=true
        but2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive=true
        but2.heightAnchor.constraint(lessThanOrEqualToConstant: 100).isActive=true
        
        but3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        but3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive=true
        but3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive=true
        but3.heightAnchor.constraint(lessThanOrEqualToConstant: 100).isActive=true
        
        but4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        but4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive=true
        but4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive=true
        but4.heightAnchor.constraint(lessThanOrEqualToConstant: 100).isActive=true
        
    }
    
    @objc func addNotifSecond(){
        let notif1 = NotificationData()
        notif1.id = "id4342"
        notif1.delay = 5
        notif1.title = "New message from Henri GIL"
        notif1.message = "Le Lorem Ipsum est simplement du faux texte employé dans la"
        notif1.thumbnailUrl = "thumb"
        notif1.contentImage = "rotortrade_logo4"
        notif1.animationStyle = .top
        
        InAppNotification.shared.addNotification(notification: notif1)
        
    }
    
    @objc func addNotifLocal(){
        let notif1 = NotificationData()
        notif1.id = "id4342"
        notif1.title = "New message from Henri GIL"
        notif1.message = "Le Lorem Ipsum est simplement du faux texte employé dans la"
        notif1.thumbnailUrl = "thumb"
        notif1.contentImage = "rotortrade_logo4"
        notif1.animationStyle = .top
        
        InAppNotification.shared.addNotification(notification: notif1)
        
        
    }
    
    @objc func addNotif(){
        
        let notif1 = NotificationData()
        notif1.id = "id4342"
        notif1.animationStyle = .left
        notif1.title = "New message from Henri GIL"
        notif1.message = "Le Lorem Ipsum est simplement du faux texte employé dans la"
        notif1.thumbnailUrl = "thumb"
        notif1.contentImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1200px-Google_Images_2015_logo.svg.png"
    
        
        InAppNotification.shared.addNotification(notification: notif1)
    
        
    }
    
    @objc func addNotifs(){
        
        let notif1 = NotificationData()
        notif1.id = "id4342"
        notif1.title = "New message from Henri GIL"
        notif1.message = "Le Lorem Ipsum est simplement du faux texte employé dans la"
        notif1.thumbnailUrl = "thumb"
        notif1.contentImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1200px-Google_Images_2015_logo.svg.png"
        notif1.animationStyle = .top
        
        let notif2 = NotificationData()
        notif2.id = "id4344"
        notif2.title = "New message from Henri GIL"
        notif2.message = "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le. Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le. Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le. Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le. Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le. Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le. Le Lorem Ipsum est simplement du faux texte employé"
        notif2.thumbnailUrl = "thumb"
        notif2.contentImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1200px-Google_Images_2015_logo.svg.png"
        notif2.animationStyle = .top
        
        let notif3 = NotificationData()
        notif3.id = "id4349"
        notif3.title = "New message from Henri GIL"
        notif3.message = "Le Lorem Ipsum est simplement du faux texte employé dans la"
        notif3.thumbnailUrl = "thumb"
        notif3.animationStyle = .top
        
        InAppNotification.shared.addNotifications(notifications: [notif1,notif2, notif3])
    }
    
    @objc func notificationsHandler(notif: Notification) {
        
        if let notification = notif.object as? NotificationData {
            print(notification)
            let alert = UIAlertController(title: "CallBack", message: "Click on notification id = \(notification.id)", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

