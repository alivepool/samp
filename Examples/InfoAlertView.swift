//
//  InfoAlertView.swift
//  Examples
//
//  Created by Ameya on 13/07/20.
//  Copyright © 2020 ameya. All rights reserved.
//

import UIKit

extension UIView {
    class func initFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
}

class InfoAlertView: UIView {

    @IBAction func closeAction(_ sender: Any) {
        self.removeFromSuperview()
    }
    @IBOutlet public weak var bodyLabel: UILabel!
    @IBOutlet public weak var headingLabel: UILabel!
    @IBOutlet public weak var closeButton: UIButton!
    @IBOutlet public weak var containerView: UIView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
