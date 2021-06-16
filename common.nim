import random, sequtils, math, strutils


randomize()


type
    Vector* = ref object
        data*: seq[float]
        len*: int
    Matrix* = ref object
        data*: seq[seq[float]]
        rows*, cols*: int
    
proc vector*(s: seq[float]): Vector =
    new result
    result.data = s
    result.len = s.len

proc vector*(data: varargs[float]): Vector =
    new result
    result.data = @data
    result.len = data.len

proc randomVector*(len: int, max: float = 1.0): Vector =
    new result
    result.data = newSeqWith(len, rand(max))
    result.len = len

proc matrix*(s: seq[seq[float]]): Matrix =
    new result
    result.data = s
    result.rows = s.len
    result.cols = s[0].len

proc randomMatrix*(rows, cols: int, max: float = 1.0): Matrix =
    new result
    result.data = newSeqWith(rows, newSeqWith(cols, rand(max)))
    result.rows = rows
    result.cols = cols

proc zeros*(len: int): Vector =
    new result
    result.data = newSeqWith(len, 0.0)
    result.len = len

proc zeros*(rows, cols: int): Matrix =
    new result
    result.data = newSeqWith(rows, newSeqWith(cols, 0.0))
    result.rows = rows
    result.cols = cols


# Vector indexing/slicing
proc `[]`*(v: Vector, i: int): float =
    return v.data[i]

proc `[]`*(v: Vector, s: Slice[int]): Vector =
    return vector(v.data[s])

proc `[]=`*(v: Vector, i: int, val: float) =
    v.data[i] = val

proc `[]=`*(v: Vector, s: Slice[int], val: seq[float]) =
    v.data[s] = val

proc `[]=`*(v: Vector, s: Slice[int], val: Vector) =
    v.data[s] = val.data

# Matrices indexing/slicing
proc `[]`*(m: Matrix, r, c: int): float =
    return m.data[r][c]

proc `[]`*(m: Matrix, r: int): Vector =
    return vector(m.data[r])

proc `[]=`*(m: Matrix, r, c: int, val: float) =
    m.data[r][c] = val

proc `[]=`*(m: Matrix, r: int, val: seq[float]) =
    m.data[r] = val

proc `[]=`*(m: Matrix, r: int, val: Vector) =
    m.data[r] = val.data

proc `[]`*(m: Matrix, rows: Slice[int]): Matrix =
    return matrix(m.data[rows])


# accessors
proc column*(m: Matrix, col: int): Vector = # return column of index `col` in Matrix
    var s: seq[float]
    for i in 0 ..< m.rows:
        s.add m.data[i][col]
    return vector(s)


# math operations
proc `*`*(v1, v2: Vector): float =
    var s: seq[float]
    for i,val in v1.data:
        s.add val * v2[i]
    return s.foldl(a + b)

proc `*`*(m: Matrix, v: Vector): Vector =
    var vec: seq[float]
    for s in m.data:
        vec.add vector(s) * v
    result = vector(vec)

proc `*`*(m1, m2: Matrix): Matrix =
    echo "---- new M * M call ----"

    var X = m2.data
    var
        s: seq[seq[float]]
        tmp: seq[float]

    for r in 0 ..< m1.rows:
        echo "var X data (per row loop)"
        echo X

        for c in 0 ..< m2.cols:
            tmp.add m1[r] * m2.column(c)

        s.add tmp
        tmp.delete(0,tmp.high)

    echo "------------------------"
    return matrix(s)




proc `+`*(v1, v2: Vector): Vector =
    var vec: seq[float]
    for i,val in v1.data:
        vec.add val + v2[i]
    return vector(vec)

proc `+`*(m: Matrix, v: Vector): Matrix =
    new result
    var s: seq[Vector]
    for i in 0 ..< m.rows:
        s.add m[i] + v
    for vec in s:
        result.data.add vec.data


# misc (organize later)
proc t*(m: Matrix) = # transpose Matrix
    var s: seq[seq[float]]
    for i in 0 ..< m.cols:
        s.add m.column(i).data
    m.data = s
    m.rows = m.data.len
    m.cols = m.data[0].len


# helper procs
proc echo*(data: Vector) =
    var output = $data.data
    output = output.multiReplace((","," "),("@",""))
    echo output
    echo "----------\n"

proc echo*(data: Matrix) =
    var output: string
    echo "["
    for vec in data.data:
        output = $vec
        output = output.multiReplace((","," "),("@",""))
        echo "  ", output
    echo "]"
    echo "----------\n"