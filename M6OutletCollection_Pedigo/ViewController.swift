//
//  ViewController.swift
//  M6OutletCollection_Pedigo
//
//  Created by Pedigo, Charles L. on 2/24/26.
//

import UIKit

class ViewController: UIViewController {

    
    let titles = ["first", "second", "third", "fourth"]
    @IBOutlet var testButtons: [UIButton]!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet var actionButtons: [UIButton]!
    
    var count = 0
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        count += sender.tag
        countLabel.text = "\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in testButtons{
            button.backgroundColor = .orange
            button.setTitleColor(.black, for: .normal)
            button.layer.cornerRadius = 10
            
            if button.tag < titles.count{
                button.setTitle(titles[button.tag], for: .normal)
            }
            
        }
        if let buttons = actionButtons{
            buttons[0].tag = -1
            buttons[1].tag = 1
            buttons[0].setTitle("-", for: .normal)
            buttons[1].setTitle("+", for: .normal)
        }
        countLabel.text = "\(count)"
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Tapped tag: \(sender.tag)")
        
        guard sender.tag < titles.count else {
            return
        }
        let originalTitle = titles[sender.tag]
        let currentTitle = sender.title(for: .normal)
        
        if currentTitle == originalTitle{
            sender.setTitle("Checked", for: .normal)
            sender.setTitleColor(.yellow, for: .normal)
        }else{
            sender.setTitle(originalTitle, for: .normal)
            sender.setTitleColor(.black, for: .normal)
        }
    }
    

}

