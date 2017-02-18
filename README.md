# Go-golang-calls-COBOL-program
Demonstration how Go (golang) calls an existing COBOL program with input data

$ cobc -c -static say2.cob

$ cobc -c -static datatype.cob

$ ar q libgbc.a say2.o datatype.o

$ go run testDataTypes.go
