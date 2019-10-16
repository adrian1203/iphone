//
//  ViewController.swift
//  weather
//
//  Created by Guest User on 16.10.2019.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let task = session.dataTask(with: url) { data, response, error in
        
        guard error == nil else {
            print ("error: \(error!)")
            return
        }
        
        // ensure there is data returned from this HTTP response
        guard let content = data else {
            print("No data")
            return
        }
        
        // serialise the data / NSData object into Dictionary [String : Any]
        guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
            print("Not containing JSON")
            return
        }
        
        print("gotten json response dictionary is \n \(json)")
        print("gotten json response dictionary is \n \(json)")
        
        

        // update UI using the response here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        task.resume();
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}


