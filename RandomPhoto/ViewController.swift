//
//  ViewController.swift
//  RandomPhoto
//
//  Created by provility on 03/08/23.
//

import UIKit

class ViewController: UIViewController {
//    IMAGE
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
//    BUTTON
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Click for Random photo", for: .normal)
        button.setTitleColor(.black, for:.normal)
        button.layer.cornerRadius = 20
        return button
    }()
//    LABEL
    private let label: UILabel = {
        let label = UILabel()
        label.text = "HELLO, WELCOME TO MY RANDOM PHOTO CHANGER"
        return label
    }()
//    COLOR ARRAY
    let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .systemCyan,
        .systemBlue,
        .systemFill,
        .systemGray,
        .systemMint,
        .systemTeal,
        .systemGray2,
        .systemIndigo,
        .systemGreen,
        .systemPurple,
        .systemYellow,
        .systemOrange,
        .systemBrown
    ]
    
//LIFECYCLE FUCTION
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)

        getRamdomPhoto()
        view.addSubview(button)
//        selector is used like eventhandeler
        button.addTarget(self, action: #selector(onclick), for: .touchUpInside)
        
        view.addSubview(label)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = view.center
        button.frame = CGRect(x: 50, y: 650, width: 300, height: 70)
        label.frame = CGRect(x: 50, y: 150, width: 300, height: 100)
        label.numberOfLines = 2
        

    }
//    @objc IS USED FOR USING SELECTOR FROM C PROGRAMMING (it invokes the selctor string function)
    @objc func onclick(){
        getRamdomPhoto()
        view.backgroundColor = colors.randomElement()
    }
    
    func getRamdomPhoto(){
        let urlstring = "https://source.unsplash.com/random/600x600"
        let url = URL(string:urlstring)!
        guard let data = try? Data(contentsOf: url) else { return }
        imageView.image = UIImage(data: data)
    }
}

