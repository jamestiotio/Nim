discard """
  matrix: "--hint:all:off --hint:XDeclaredButNotUsed"
  nimoutFull: true
  nimout: '''
treportunused.nim(21, 10) Hint: 's1' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(22, 10) Hint: 's2' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(23, 10) Hint: 's3' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(24, 6) Hint: 's4' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(25, 6) Hint: 's5' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(26, 7) Hint: 's6' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(27, 7) Hint: 's7' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(28, 5) Hint: 's8' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(29, 5) Hint: 's9' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(30, 6) Hint: 's10' is declared but not used [XDeclaredButNotUsed]
treportunused.nim(31, 6) Hint: 's11' is declared but not used [XDeclaredButNotUsed]
'''
action: compile
"""

# bug #9764
iterator s1(a:string): int = discard
iterator s2(): int = discard
template s3(): untyped = 123
proc s4(): int = 123
proc s5[T](a: T): int = 123
macro s6(a: int): untyped = discard
const s7 = 0
let s8 = 0
var s9: int
type s10 = object
type s11 = type(1.2)
