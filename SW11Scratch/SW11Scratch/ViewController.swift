//
//  ViewController.swift
//  SW11Scratch
//
//  Created by Don Mini on 12/12/17.
//  Copyright © 2017 Don Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var theStackView: UIStackView!
	
	var numFields = 8
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// clear out "placeholder" labels and fields from Stack View
		for v in theStackView.arrangedSubviews {
			v.removeFromSuperview()
		}

		for i in 1...8 {
			
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

