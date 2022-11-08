//
//  MarketDataModel.swift
//  swiftUiCrytpo
//
//  Created by pc on 01/11/22.
//

import Foundation

//JsonData

/*
 
 URL: - https://api.coingecko.com/api/v3/global
 
 JsonResponse:
 
 {
   "data": {
     "active_cryptocurrencies": 13263,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 605,
     "total_market_cap": {
       "btc": 51786995.821590036,
       "eth": 668893004.4125743,
       "ltc": 19329387613.83411,
       "bch": 9227688970.079014,
       "bnb": 3257594738.934909,
       "eos": 917422393428.608,
       "xrp": 2314810997354.4863,
       "xlm": 9551729099851.045,
       "link": 136908531806.60194,
       "dot": 160040869395.91373,
       "yfi": 130086739.41056621,
       "usd": 1063038887070.9905,
       "aed": 3904547147406.18,
       "ars": 166784609179921.2,
       "aud": 1654307494293.1953,
       "bdt": 107747662412846.8,
       "bhd": 400777353853.5206,
       "bmd": 1063038887070.9905,
       "brl": 5506966650582.566,
       "cad": 1442123869394.938,
       "chf": 1062293696811.1527,
       "clp": 1002977189951480.8,
       "cny": 7744769811755.703,
       "czk": 26217555859532.12,
       "dkk": 7976017976054.667,
       "eur": 1071058452435.0531,
       "gbp": 922520028744.6241,
       "hkd": 8344132397064.051,
       "huf": 437768307079162.75,
       "idr": 16592866119609146,
       "ils": 3738548309995.6074,
       "inr": 87829874849408.1,
       "jpy": 157444917829062.3,
       "krw": 1506090514427517,
       "kwd": 329163613148.20953,
       "lkr": 390201747628817.44,
       "mmk": 2233612087839308.5,
       "mxn": 21024634283045.832,
       "myr": 5030300013619.924,
       "ngn": 465983096147568.1,
       "nok": 10975833987452.469,
       "nzd": 1813987628559.0156,
       "php": 61725881308103.86,
       "pkr": 235513073124799.9,
       "pln": 5050131004058.232,
       "rub": 65403468590081.47,
       "sar": 3994432400502.467,
       "sek": 11663592508376.371,
       "sgd": 1500475136945.1545,
       "thb": 40234073325356.95,
       "try": 19787679044933.387,
       "twd": 34194240360968.973,
       "uah": 39280192586404.85,
       "vef": 106442083762.41809,
       "vnd": 26407627243368556,
       "zar": 19392313622053.957,
       "xdr": 793582979092.894,
       "xag": 54443207059.285576,
       "xau": 647560768.4481635,
       "bits": 51786995821590.04,
       "sats": 5178699582159004
     },
     "total_volume": {
       "btc": 4297770.168088068,
       "eth": 55511009.171315506,
       "ltc": 1604133704.5373452,
       "bch": 765800096.0825622,
       "bnb": 270345735.77018183,
       "eos": 76136306643.40721,
       "xrp": 192104706816.0836,
       "xlm": 792691982373.7732,
       "link": 11361952830.440983,
       "dot": 13281690958.36767,
       "yfi": 10795816.575818747,
       "usd": 88220927742.3764,
       "aed": 324035908702.387,
       "ars": 13841349675874.756,
       "aud": 137289937078.25243,
       "bdt": 8941910644797.45,
       "bhd": 33260260189.081028,
       "bmd": 88220927742.3764,
       "brl": 457019694076.60736,
       "cad": 119680951679.94629,
       "chf": 88159084872.02893,
       "clp": 83236445324932.25,
       "cny": 642733569067.0835,
       "czk": 2175778449119.934,
       "dkk": 661924708583.5193,
       "eur": 88886466421.26483,
       "gbp": 76559356187.82262,
       "hkd": 692474292546.7887,
       "huf": 36330116100592.07,
       "idr": 1377031509176774,
       "ils": 310259769730.77606,
       "inr": 7288945999013.251,
       "jpy": 13066254572749.715,
       "krw": 124989503265382.84,
       "kwd": 27317080949.860382,
       "lkr": 32382597288947.57,
       "mmk": 185366060454015.1,
       "mxn": 1744821157958.8345,
       "myr": 417461430076.92487,
       "ngn": 38671643675870.66,
       "nok": 910877550102.9247,
       "nzd": 150541690855.3625,
       "php": 5122592015162.168,
       "pkr": 19545081613877.47,
       "pln": 419107191483.95886,
       "rub": 5427792667570.628,
       "sar": 331495429247.64355,
       "sek": 967954196608.1239,
       "sgd": 124523486624.65332,
       "thb": 3339000406088.3926,
       "try": 1642167021775.0237,
       "twd": 2837758472225.1475,
       "uah": 3259838444311.242,
       "vef": 8833561494.844135,
       "vnd": 2191552353558679.2,
       "zar": 1609355894329.08,
       "xdr": 65858951641.02182,
       "xag": 4518207465.83819,
       "xau": 53740660.34354593,
       "bits": 4297770168088.0684,
       "sats": 429777016808806.8
     },
     "market_cap_percentage": {
       "btc": 37.06540936672284,
       "eth": 18.0289873888286,
       "usdt": 6.531849925951279,
       "bnb": 5.038485701600096,
       "usdc": 4.089713446850883,
       "xrp": 2.1592844110796863,
       "busd": 1.9886460255653364,
       "doge": 1.87094095486929,
       "ada": 1.3437429467372415,
       "sol": 1.108715328486853
     },
     "market_cap_change_percentage_24h_usd": 0.54467788706382,
     "updated_at": 1667282715
   }
 }
 
 */


// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd" }) {
            return item.value.formattedWithAbbreviations(currency: "$")
        }
            
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd" }) {
            return item.value.formattedWithAbbreviations(currency: "$")
        }
            
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc" }) {
            return item.value.asPercentString()
        }
            
        return ""
    }
    
}
