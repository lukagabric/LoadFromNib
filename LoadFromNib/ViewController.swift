//
//  ViewController.swift
//  LoadFromNib
//
//  Created by Luka Gabric on 06/01/2017.
//  Copyright © 2017 lukagabric.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var footerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headerMessageView: MessageView = lg_loadFromNib()
        headerMessageView.messageLabel.text = "Header Message!"
        self.addMessageView(headerMessageView, to: self.headerView)
        
        let footerMessageView: MessageView = lg_loadFromNib(name: "MessageView2")
        footerMessageView.messageLabel.text = "Footer Message!"
        self.addMessageView(footerMessageView, to: self.footerView)
        
    }
    
    func addMessageView(_ messageView: MessageView, to view: UIView) {
        messageView.frame = view.bounds
        messageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(messageView)
    }
    
}
