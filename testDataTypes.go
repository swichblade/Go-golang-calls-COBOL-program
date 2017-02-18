package main
import "fmt"
// #cgo CFLAGS: -I.
// #cgo LDFLAGS: -L. -lgbc -L/usr/lib -lcob -lm -lgmp -lncurses -ldb -ldl 
// #include <libcob.h>
//extern int datatyp(char *arg1, char *arg2,float *arg4,double *arg5, signed int *arg6);
import "C"

func main() {
  C.cob_init(0,nil)

  arg1 := C.CString("Hello")
  arg2 := C.CString("Cobol!")
  arg4 := C.float(-123.22) 
  arg5 := C.double(234.3333)
  arg6 := C.int(-3)
  C.datatyp(arg1,arg2, &arg4,&arg5,&arg6)
  fmt.Println("Back in go")
  fmt.Println(arg4)
  fmt.Println(arg5)
  fmt.Println(arg6)
  fmt.Println(C.GoString(arg1) + " " + C.GoString(arg2))



}

