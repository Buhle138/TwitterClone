//
//  ImageUploader.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/08/02.
//

import Firebase
import UIKit

struct ImageUploader {
    
    
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void ) {
        guard let imageDate = image.jpegData(compressionQuality: 0.5) else { return } //compressing the image to half  in order to keep the quality of the image.
        
        
    }
    
}


