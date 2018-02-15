//
//  ViewController.swift
//  swipe_menu_test
//
//  Created by OUSSSAMA OULIDI on 15/02/2018.
//  Copyright © 2018 OUSSSAMA OULIDI. All rights reserved.
//

import UIKit
import SwipeMenuViewController


class ViewController: UIViewController {
     private var datas: [String] = ["Tous les produit","Pizza", "Viande", "dessert", "caffe", "plat", "poisson", "pastille","nzw category","category luxe"]

    @IBOutlet weak var swipeMenu: SwipeMenuView!
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeMenu.dataSource = self
        swipeMenu.delegate = self
        
        let options: SwipeMenuViewOptions = .init()
        
        swipeMenu.reloadData(options: options)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: SwipeMenuViewDelegate {
    
    // MARK - SwipeMenuViewDelegate
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewWillSetupAt currentIndex: Int) {
        // Codes
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewDidSetupAt currentIndex: Int) {
        // Codes
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, willChangeIndexFrom fromIndex: Int, to toIndex: Int) {
        // Codes
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, didChangeIndexFrom fromIndex: Int, to toIndex: Int) {
        // Codes
    }
}
extension ViewController: SwipeMenuViewDataSource {
    
    
    //MARK - SwipeMenuViewDataSource
    func numberOfPages(in swipeMenuView: SwipeMenuView) -> Int {
        return datas.count
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, titleForPageAt index: Int) -> String {
        return datas[index]
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewControllerForPageAt index: Int) -> UIViewController {
        let vc = ContentViewController()
        
        //vc.content = datas[index]
        
        
        return vc
    }
}

