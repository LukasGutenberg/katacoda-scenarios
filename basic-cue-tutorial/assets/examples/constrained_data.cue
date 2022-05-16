package examples

import "list"

#Schema: {
    text: string
    integer: int 
    decimals: float
    listWithNums: [...float]
    struct: {...}
}

#Constraints: #Schema & {
    text: =~"[a-z]+"
    decimals: >5
    listWithNums: list.MaxItems(3)
}

Value: #Constraints & {
    text: "Hello World"
    integer: 34
    decimals: 3.4 
    listWithNums: [1.1, 2.2, 3.3,]
    struct: {
        no: "constraints"
        declared: "here"
    }
}