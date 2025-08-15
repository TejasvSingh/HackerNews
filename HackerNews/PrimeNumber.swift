//
//  PrimeNumber.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//

struct PrimeNumber {
     func isPrime(_ number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
   return true }
}
