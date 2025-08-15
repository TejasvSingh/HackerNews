//
//  IntToString.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//
struct IntToString{
    func NumToString(_ a: Int) -> String{
        if(a%15 == 0){
            return "FizzBuzz"
        }
        else if(a%3 == 0){
            return "Fizz"
        }
        else if(a%5 == 0){
            return "Buzz"
        }
        else{
            return "\(a)"
        }
    }
}

