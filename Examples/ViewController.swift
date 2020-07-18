//
//  ViewController.swift
//  Examples
//
//  Created by Ameya on 13/07/20.
//  Copyright © 2020 ameya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        
        let alert = InfoAlertView.initFromNib() as! InfoAlertView
        alert.translatesAutoresizingMaskIntoConstraints = false
        alert.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.3)
        alert.containerView.backgroundColor = .white
        alert.headingLabel.text = "What to do?"
        alert.bodyLabel.text = """
        Auto Layout in Swift: Writing constraints programmatically. Auto Layout constraints allow us to create views that dynamically adjust to different size classes and positions. The constraints will make sure that your views adjust to any size changes without having to manually update frames or positions.
"""
        view.addSubview(alert)
        NSLayoutConstraint.activate([
            alert.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            alert.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),

            alert.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            alert.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0),

            ])
        
        alert.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {() -> Void in
            alert.transform = .identity
        }, completion: {(finished: Bool) -> Void in
            // do something once the animation finishes, put it here
        })
        
    }
    
}


func showBannerView(bannerView:UIView){
     let window = UIApplication.shared.keyWindow!
    window.addSubview(bannerView)
    window.windowLevel = UIWindow.Level.statusBar+1
}
func removeBannerView(bannerView:UIView){
    bannerView.removeFromSuperview()
    let window = UIApplication.shared.keyWindow!
    window.windowLevel = UIWindow.Level.statusBar - 1

}
