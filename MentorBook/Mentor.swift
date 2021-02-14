//
//  Mentor.swift
//  MentorBook
//
//  Created by 八幡尚希 on 2021/02/05.
//

import UIKit

class Mentor{
    //メンターにはこのような属性がありますね
    var name: String!
    var course: String!
    var imageName: String!
    
    //initメソッドを使います。引数としてname,image,courseを使いmentor.nameに代入しましょう(self.nameにするのはこのクラス外でも使いたいため)
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    
    //ImageNameにStringで.jpg入れて、UIImage関数で写真そのものを探してくる。
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
