//
//  CoinImageServices.swift
//  swiftUiCrytpo
//
//  Created by pc on 27/10/22.
//

import Foundation
import SwiftUI
import Combine

class CoinImageServices {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscrition: AnyCancellable?
    private var coin: CoinModel
    private let fileManager = LocalFileManager.instace
    private let folderName = "coin_images"
    private let imageName: String
    
    init(coin: CoinModel) {
        self.coin = coin
        self.imageName = coin.id
        getCoinImage()
    }
    
    private func getCoinImage() {
        if let savedImage =  fileManager.getImage(imageName: imageName, folderName: folderName) {
            image = savedImage
        } else {
            downloadCoinImage()
        }
    }
    
    
    private func downloadCoinImage() {
        
        guard let url = URL(string: coin.image) else { return }
        
        imageSubscrition =  NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (retunedImage) in
                guard let self = self, let downloadImage = retunedImage else { return }
                self.image = downloadImage
                self.imageSubscrition?.cancel()
                self.fileManager.saveImage(image: downloadImage, imageName: self.imageName, folderName: self.folderName )
            })
        
        
        
    }
    
    
}
