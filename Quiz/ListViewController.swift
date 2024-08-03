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
    
    class Xcode {
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
    
    var listArrey: [Xcode] = [
        Xcode(name: "xcode", details: " iOSアプリケーションを開発するアプリケーションの名前", imageName: "kirin.jpg"),
        Xcode(name: "Swift", details: "iOSアプリケーションを開発する言語の名前", imageName: "penguin.jpg"),
        Xcode(name: "変数の宣言① var 変数名:型(= 値)", details:"基本的的な変数を宣言する時の書き方。変数には型があり、その種類によって入れられる値が変わる", imageName: "penguin.jpg"),
        Xcode(name: "String",details: "文字列をあつかいたいときに使う型",imageName: "kangaroo.jpg"),
        Xcode(name: "Int",details: "整数をあつかいたいときに使う型",imageName: "kangaroo.jpg"),
        Xcode(name: "Bool",details: "条件判定や制御に使用される",imageName: "kangaroo.jpg"),
        Xcode(name: "＋ - * / %",details: "左から、足し算をする、引き算をする、掛け算をする、割り算をする、割った余りを求める",imageName: "kangaroo.jpg"),
        Xcode(name: "変数の宣言②　@IBOutlet var 変数名:　型!", details: "Main.storyboard上のパーツをコードと関連付けるための差し込み口。そのパーツの名前が変数の型となり、それにより関連付けできるパーツが変わる。！を忘れずに。", imageName: "kangaroo.jpg"),
        Xcode(name: "UILabel型、UIImageView型、UIButton型", details: "代表的な@IBOutlet変数の型。関連づけるパーツが左からLabel、ImageView、Buttonの時に使う。", imageName: "kangaroo.jpg"),
        Xcode(name: "配列(リスト)の中身[]の呼び出し方",details: "数字や単語などの要素をを並べたとき、最初の要素はarrey[0]で最初の要素を呼び出し、arrey[１]で次の要素を呼び出す",imageName: "kangaroo.jpg"),
        
        
        
    
    ]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    @IBAction func next() {
        if index == listArrey.count - 1 {
            index = 0
        }else {
            index += 1
        }
        setUI()
        
    }
    
    @IBAction func back() {
        if index == 0 {
            index = listArrey.count - 1
        }else {
            index -= 1
        }
        setUI()
    }
    
    func setUI() {
       // imageview.image = listArrey[index].getImage()
        nameLabel.text = listArrey[index].name
        detailsLabel.text = listArrey[index].details
    }


}

