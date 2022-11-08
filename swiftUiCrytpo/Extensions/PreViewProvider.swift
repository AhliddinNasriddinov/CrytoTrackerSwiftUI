//
//  PreViewProvider.swift
//  swiftUiCrytpo
//
//  Created by pc on 25/10/22.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}



class DeveloperPreview {
    
    static let  instance  = DeveloperPreview()
     private init()  {}

    
    let homeVM = HomeViewModel()
    
    let state1 = StatisticModel(title: "Market Cap", value: "$10.2Bn", percentageChange: 25.34)
    let state2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    
    let coin = CoinModel(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 19355.29, marketCap: 371375050347, marketCapRank: 1, fullyDilutedValuation: 406442714889, totalVolume: 29075274661, high24H: 19634.72, low24H: 19136.44, priceChange24H: 218.85, priceChangePercentage24H: 1.14364, marketCapChange24H: 4325777522, marketCapChangePercentage24H: 1.17853, circulatingSupply: 19188131, totalSupply: 21000000, maxSupply: 21000000, ath: 69045, athChangePercentage: -71.95089, athDate: "2021-11-10T14:24:11.849Z", atl: 67.81, atlChangePercentage: 28460.28956, atlDate: "2013-07-06T00:00:00.000Z", lastUpdated: "2022-10-24T12:53:33.601Z", sparklineIn7D: SparklineIn7D(price: [19454.14655117412,19515.480952537582]), priceChangePercentage24HInCurrency: 1.1436405610119726, currentHoldings: 1.5)
}

