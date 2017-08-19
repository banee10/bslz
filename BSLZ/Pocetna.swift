//
//  Pocetna.swift
//  BSLZ
//
//  Created by Branko on 15/08/2017.
//  Copyright © 2017 MacPro. All rights reserved.
//

import Foundation
struct Pocetna {
    
    
    let metaTitle: String
    let metaKeywords: String
    let metaDescription: String
    
    init?(json: [String: Any]) {
        guard let metaTitle = json["meta_title"] as? String,
            let metaKeywords = json["meta_keywords"] as? String,
            let metaDescription = json["meta_description"] as? String
            else {return nil
        }
        
        
        self.metaTitle = metaTitle
        self.metaKeywords = metaKeywords
        self.metaDescription = metaDescription
        
        
    }
}
