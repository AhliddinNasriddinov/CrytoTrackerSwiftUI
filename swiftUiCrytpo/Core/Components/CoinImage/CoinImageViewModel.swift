//
//  CoinImageViewModel.swift
//  swiftUiCrytpo
//
//  Created by pc on 27/10/22.
//

import Foundation
import SwiftUI
import Combine


class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage?  = nil
    @Published var isLoading: Bool = false
    
    
    private let coin: CoinModel
    private let dataService: CoinImageServices
    private var calcelabels = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageServices(coin: coin)
        addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        
        dataService.$image
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &calcelabels)
    }
    
    
}


