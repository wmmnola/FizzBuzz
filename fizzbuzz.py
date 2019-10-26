import sys

passArg = False if len(sys.argv) < 2 is "" else True

n = int(sys.argv[1]) if passArg else 15  


for i in range(0, n):
  s = "%d : " % i
  s += "fizz" if i % 3 == 0 else ""
  s += "buzz" if i % 5 == 0 else ""
  print(s)




