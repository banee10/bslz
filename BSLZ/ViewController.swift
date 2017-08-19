//
//  ViewController.swift
//  BSLZ
//
//  Created by Branko on 15/08/2017.
//  Copyright © 2017 MacPro. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var metaTitleLbl: UILabel!
    
    @IBOutlet weak var metaKeywordsLbl: UILabel!
    
    @IBOutlet weak var metaDescriptionLbl: UILabel!
    
       
 
    override func viewDidLoad() {
        super.viewDidLoad()
        print("load")
        Alamofire.request("http://ekonferencije.com/json/conference_page?id=595").responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }            }
    
    }
        /*if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }*/
    
}

