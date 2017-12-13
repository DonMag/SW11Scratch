//
//  ViewController.swift
//  SW11Scratch
//
//  Created by Don Mag on 12/12/17.
//  Copyright © 2017 Don Mag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var theStackView: UIStackView!
	
	// number of label/field pairs for the top view
	var numFields = 8
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// clear out "placeholder" labels and fields from Stack View
		for v in theStackView.arrangedSubviews {
			v.removeFromSuperview()
		}

		for i in 1...numFields {
			
			let lb = UILabel()
			lb.translatesAutoresizingMaskIntoConstraints = false
			lb.text = "Label \(i)"
			
			let tf = UITextField()
			tf.backgroundColor = .white
			tf.borderStyle = .roundedRect
			tf.translatesAutoresizingMaskIntoConstraints = false
			
			theStackView.addArrangedSubview(lb)
			theStackView.addArrangedSubview(tf)
			
		}
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

