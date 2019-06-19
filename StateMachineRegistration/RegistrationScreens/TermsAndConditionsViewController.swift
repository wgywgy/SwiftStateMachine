//
//  TermsAndConditionsViewController.swift
//  StateMachineRegistration
//
//  Created by Jessica Ip on 2016-04-18.
//  Copyright © 2016 theScore. All rights reserved.
//

import UIKit

class TermsAndConditionsViewController: UIViewController {
	
	var delegate: RegistrationActionProtocol?
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.title = "Terms and Conditions"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDoneButton(sender:)))
		self.navigationItem.setHidesBackButton(true, animated: false)
	}
	
	// Tracks when back button is pushed
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
		
		if parent == nil {
            delegate?.notifyStateMachine(source: self, .Back)
		}
	}
	
    @objc func didTapDoneButton(sender: AnyObject?) {
        delegate?.notifyStateMachine(source: self, .Next)
	}
}
