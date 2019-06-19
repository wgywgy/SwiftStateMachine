//
//  SelectAvatarViewController.swift
//  StateMachineRegistration
//
//  Created by Jessica Ip on 2016-04-18.
//  Copyright © 2016 theScore. All rights reserved.
//

import UIKit

class SelectAvatarViewController: UIViewController {
	
	var delegate: RegistrationActionProtocol?
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.title = "Profile"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(didTapNextButton(sender:)))
	}
	
	// Tracks when back button is pushed
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
		
		if parent == nil {
            delegate?.notifyStateMachine(source: self, .Back)
		}
	}
	
	@objc func didTapNextButton(sender: AnyObject?) {
        delegate?.notifyStateMachine(source: self, .Next)
	}
}
