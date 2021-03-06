//
//  SocialViewController.swift
//  ArcticRun-iPad
//
//  Created by Anson Ciurcovich on 2016-02-09.
//  Copyright © 2016 COMP 4977. All rights reserved.
//

import UIKit
import GameKit

class SocialViewController: UIViewController, GKGameCenterControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //toggle the menu bar
        if self.revealViewController() != nil {
            self.revealViewController().revealToggleAnimated(true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func authenticateLocalPlayer(sender: AnyObject) {
        let localPlayer = GKLocalPlayer()
        
        localPlayer.authenticateHandler = {(viewController, error) -> Void in
            if (viewController != nil) {
                self.presentViewController(viewController!, animated: true, completion: nil)
            } else {
                print((GKLocalPlayer().authenticated))
            }
            
        }
    }
    
    func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController) {
        
        //code to dismiss your gameCenterViewController
        
        // for example:
        
        gameCenterViewController.dismissViewControllerAnimated(true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}