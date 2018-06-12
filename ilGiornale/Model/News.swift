//
//  Article.swift
//  ilGiornale
//
//  Created by Yessine Kebir on 09/06/18.
//  Copyright © 2018 YSN. All rights reserved.
//

import UIKit

class News: NSObject {

    var title : String
    var author : String
    var city : String
    var contentDescription: String
    var imageLink : String?
    init(title : String, author : String, city : String, imageLink : String?, contentDescription : String){
        self.title = title
        self.author = author
        self.city = city
        self.contentDescription = contentDescription
        
        if let image = imageLink {
            self.imageLink = image
        }
    }
}

// Estensione della classe Array --> Torno un elemento casuale dell'array
extension Array
{
    func random() -> Element
    {
        return self[Int(arc4random_uniform(UInt32(self.count)))]
    }
}

