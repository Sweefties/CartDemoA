//
//  ViewController.swift
//  DemoExample
//
//  Created by Wlad Dicario on 20/01/2018.
//  Copyright © 2018 socle. All rights reserved.
//

import UIKit
import CartDemoA
//import ObjectMapper

class ViewController: UIViewController {

    //var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FakeManager().shared.doIt()
        MapperManager().shared.doIt()
        print(MapperManager().shared.mapTest(value: ["username": "jane"])?.username as Any)
        //let user = User(JSON: ["username": "rob"])
        //print(user?.username as Any)
        print("bundle: \(String(describing: FakeManager().shared.bundleId()))")
        
        print("IN APP bundle key value: \(String(describing: FakeManager().shared.infoForKey("ProjectEnvironmentTest")))")
        /*
        for i in 0...10 {
            guard let new = User(JSON: ["username": "user_\(i)"])
            else { return }
            users.append(new)
        }
        print(users.count)
        print(users.toJSON())*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

