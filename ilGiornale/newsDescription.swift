//
//  newsDescription.swift
//  ilGiornale
//
//  Created by Yessine Kebir on 09/06/18.
//  Copyright © 2018 YSN. All rights reserved.
//

import UIKit

class newsDescription: UIViewController {
    @IBOutlet weak var newsDesc: UILabel!
    
    
    var newsDescription : String?

    func optNewsDesc(){
        if let myDescription = newsDescription {
            self.newsDesc.text = myDescription
        }
    }

    
    @IBAction func closeDescription(_ sender: Any) {
           self.dismiss(animated: true, completion: nil) // serve per killare la view stessa (Si usa per chiudere la view aperta precedentemente con un "Next" dalla prima view
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.optNewsDesc()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
