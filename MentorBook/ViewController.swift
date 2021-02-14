//
//  ViewController.swift
//  MentorBook
//
//  Created by 八幡尚希 on 2021/02/05.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mentorArray.append(Mentor(name: "永田",imageName: "nagata.jpg",course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう",imageName: "ryo.jpg",course: "Unity"))
        mentorArray.append(Mentor(name: "たいティ",imageName: "taithi.jpg",course: "Webs,Webd"))
        
        setUI()
    }
    
    //パーツに得た情報を表示
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        setUI()
    }
    
    @IBAction func tugi(){
        if index == 2{
            index = index - 2
        }else{
            index = index + 1
        }
        setUI()
    }

}

