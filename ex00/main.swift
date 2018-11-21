var values : [Value] = Value.allValues
var colors : [Color] = Color.allColors

print("::::::::::: Colors :::::::::::::")
for color in colors{
    print("::::   \(color) =  \(color.rawValue)")
}

print("::::::::::: Values ::::::::::::")
for value in values{
    print("::::   \(value) =  \(value.rawValue) ")
}
print(":::::::::::::::::::::::::::::::")

