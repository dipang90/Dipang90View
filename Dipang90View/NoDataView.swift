//
//  NoDataView.swift
//  Abenviro
//
//  Created by Dipang Sheth on 25/09/18.
//  Copyright © 2018 Erdos Technologies. All rights reserved.
//

import UIKit

class NoDataView: UIView {

    @IBOutlet weak var lblTitle: UILabel!
    var message = ""
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initView()
    }
    
    init(frame: CGRect ,message : String) {
        super.init(frame: frame)
        self.message = message
        self.initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initView()
    }
    
     fileprivate func initView() {
        if let nibsView = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil) as? [UIView] {
            let nibRoot = nibsView[0]
            self.addSubview(nibRoot)
            nibRoot.frame = self.bounds
            self.setLabel()
        }
    }
    
//    override func awakeFromNib() {
//        if let nibsView = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil) as? [UIView] {
//            let nibRoot = nibsView[0]
//            self.addSubview(nibRoot)
//            nibRoot.frame = self.bounds
//            self.setLabel()
//        }
//    }
    
    func setLabel()  {
        self.lblTitle.text = self.message
    }
    
    deinit {
        self.removeFromSuperview()
    }
    
    func animateView() {
        layoutIfNeeded()
        UIView.animate(withDuration: 1.0, animations: {
            self.layoutIfNeeded()
        })
    }
    
    @objc func removeView() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0
        }, completion: { _ in
            self.removeFromSuperview()
        })
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
