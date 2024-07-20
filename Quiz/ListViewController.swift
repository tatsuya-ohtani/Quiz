//
//  ViewController.swift
//  Organization Identifier
//
//  Created by 大谷竜也 on 2024/06/22.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var detailsLabel: UILabel!
    @IBOutlet var imageview: UIImageView!
    
    class Animal {
        var name: String
        var details: String
        var imageName: String
        
        init(name: String, details: String, imageName: String) {
            self.name = name
            self.details = details
            self.imageName = imageName
        }
        
        func getImage() -> UIImage? {
            return UIImage(named: imageName)
        }
    }
    
    var animalArrey: [Animal] = [
        Animal(name:"xcode", details: " iOSアプリケーションを開発するアプリケーションの名前", imageName: "kirin.jpg"),
        Animal(name: "Swift", details: "iOSアプリケーションを開発する言語の名前", imageName: "penguin.jpg"),
        Animal(name: "String",details: "文字列をあつかいたいときに使う型",imageName: "kangaroo.jpg"),
        Animal(name: "Int",details: "整数をあつかいたいときに使う型",imageName: "kangaroo.jpg"),
        Animal(name: "Bool",details: "条件判定や制御に使用される",imageName: "kangaroo.jpg"),
        Animal(name: "＋ - * / %",details: "左から、足し算をする、引き算をする、掛け算をする、割り算をする、割った余りを求める",imageName: "kangaroo.jpg"),
        Animal(name: "配列(リスト)の中身[]の呼び出し方",details: "数字や単語などの要素をを並べたとき、最初の要素はarrey[0]で最初の要素を呼び出し、arrey[１]で次の要素を呼び出す",imageName: "kangaroo.jpg"),
        
        
        
    
    ]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    @IBAction func next() {
        if index == animalArrey.count - 1 {
            index = 0
        }else {
            index += 1
        }
        setUI()
        
    }
    
    @IBAction func back() {
        if index == 0 {
            index = animalArrey.count - 1
        }else {
            index -= 1
        }
        setUI()
    }
    
    func setUI() {
       // imageview.image = animalArrey[index].getImage()
        nameLabel.text = animalArrey[index].name
        detailsLabel.text = animalArrey[index].details
    }


}

