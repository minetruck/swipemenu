//
//  ContentViewController.swift
//  swipe_menu_test
//
//  Created by OUSSSAMA OULIDI on 15/02/2018.
//  Copyright © 2018 OUSSSAMA OULIDI. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    var content: String! = ""
     @IBOutlet weak var contenttxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(content)
     //contenttxt.text = content
        // based on content vzlue a i will generate the tabviewcell
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
