//
//  ViewController.swift
//  pnhaison
//
//  Created by CheapGo02 on 24/10/2016.
//  Copyright © 2016 CheapGo02. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate {

    @IBOutlet weak var barButton: UIBarButtonItem!

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var scrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.scrollview.minimumZoomScale = 1.0
        self.scrollview.maximumZoomScale = 6.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // FIXME: Remove code below if u're using your own menu
        setupNavforDefaultMenu()
    }
    
    //slide menu
    private func setupNavforDefaultMenu() {
        barButton.image = UIImage(named: "burger")?.withRenderingMode(.alwaysOriginal)
        // Set navigation bar translucent style
        self.navigationBarTranslucentStyle()
        // Update side menu
        sideMenuManager?.sideMenuController()?.sideMenu?.isNavbarHiddenOrTransparent = true
        // Re-enable sidemenu
        sideMenuManager?.sideMenuController()?.sideMenu?.disabled = false
    }
    
    @IBAction func toogleSideMenu(_ sender: AnyObject) {
        sideMenuManager?.toggleSideMenuView()    }
    
    //zoom img
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageview
    }
}

