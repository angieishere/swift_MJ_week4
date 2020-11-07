//
//  pickerViewController.swift
//  week4
//
//  Created by Angie Kim on 2020/11/07.
//  Copyright © 2020 Angie Kim. All rights reserved.
//

import UIKit


//delegate pattern
//class struct enum

protocol Tell {
    func tell()
        
}

//
//class Cat:Tell {
//    func tell(){
//        print("야옹야옹")
//    }
//
//}
//
//
//class Person:Tell {
//    func tell() {
//        print("멍멍")
//    }
//}



class pickerViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
 
    @IBOutlet weak var albumNameLabel: UILabel!
    
    @IBOutlet weak var albumPickerView: UIPickerView!
    
    var albums:[album] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumPickerView.dataSource = self
        albumPickerView.delegate = self

        
        setdata()
        initPickerView()
        // Do any additional setup after loading the view.
    }
    
    func initPickerView() {
        let firstIndex = albums[0]
        
        imageView.image = firstIndex.makeImage()
        albumNameLabel.text = firstIndex.albumName
        
    }
    
    func setdata() {
        albums.append(contentsOf:
            [
                album(albumName: "트와이스 정규2집", imageName: "twice"),
                
             album(albumName: "블랙핑크", imageName: "blackpink"),
                
            album(albumName: "rm made this", imageName: "bts"),
            
             album(albumName: "idontknowthis", imageName: "crush")
            ]
      )
    }
    
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension pickerViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return albums.count
    }
    
    
  }
  
  extension pickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return albums[row].albumName
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.imageView.image = albums[row].makeImage()
        self.albumNameLabel.text = albums[row].albumName
    }
    
  }
