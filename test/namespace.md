# builtin.io table of contents

## Types

+ [builtin.io.BufferMode](#6un2h33oy6qhinpgpxa3mwbrw4)
+ [builtin.io.EpochTime](#6oixfqlyjemavsg6skuzjarvyq)
+ [builtin.io.Error](#uermdn3lvcg35ibrcb4yklmp7y)
+ [builtin.io.ErrorDescription](#y76fv4jgawmnnzxq3bcknlv6su)
+ [builtin.io.ErrorLocation](#hheh3cwsychsmuhslaqtbv7i4a)
+ [builtin.io.ErrorType](#l5y3obnoooxx2vs7wygsex3ypu)
+ [builtin.io.FilePath](#yqk5q4wtwkbmpfpxc7a5pkmbae)
+ [builtin.io.Handle](#daizk3nwe4mdhbwfitufujb4wq)
+ [builtin.io.HostName](#fwlsqgi3s655duzanzgk3gnfeu)
+ [builtin.io.IO](#wfvrhht3dbexc47ytfpufrm23m)
+ [builtin.io.Mode](#cnr7zvu3qhqv6fd7g5thu7xw4m)
+ [builtin.io.SeekMode](#2hupcpprdmvqcrlaavm2ujzw3y)
+ [builtin.io.ServiceName](#pmf2taqtjab5ezvsf4d5zgtvhy)
+ [builtin.io.Socket](#qef2a2ahsgx5ko5yt6ktd32uyu)
+ [builtin.io.ThreadId](#tqdsdwgxebjhavmak5sfy3f32y)

## Terms

+ [builtin.io.accept](#vjowrufdrhhfcqmks4qrijcihu)
+ [builtin.io.bracket](#axg4elk2s36qy7ysrq5c5n6k7a)
+ [builtin.io.clientSocket](#xw2enc22omwrchuoyvejt5febq)
+ [builtin.io.closeFile](#mqt7fexqkqlxdbptojybjifiqq)
+ [builtin.io.closeSocket](#qmzv4efab5psm2shi2bn6a5bcq)
+ [builtin.io.createDirectory](#fhk5ydc4b6xqd7pbjjarbck2hi)
+ [builtin.io.delay](#q7fgaals2lds5fstf2t2yvnyae)
+ [builtin.io.directoryContents](#hy637equk55yelj35hwja6m6ee)
+ [builtin.io.fileExists](#s7md4m2n7t52afwk2nwanmjpqe)
+ [builtin.io.fork](#h2gzuarwmmdnz4kd6oo5df4bae)
+ [builtin.io.getBuffering](#3fbwle3ipcnmlw4ult22gbxg7y)
+ [builtin.io.getCurrentDirectory](#rqm43xxg6b3ddn36ayenm35fxa)
+ [builtin.io.getFileSize](#hhz6ibvhdq4pys4j7wvex2przm)
+ [builtin.io.getFileTimestamp](#o6hweauasqwk5cjqkyvsugvhty)
+ [builtin.io.getLine](#mk4ndgj2d6eodhqrpqe65fhy5u)
+ [builtin.io.getTemporaryDirectory](#vwu6eccqsejthycgdky4kxpjge)
+ [builtin.io.getText](#fa4dqqjm2itqynoyaquveu7i3a)
+ [builtin.io.isDirectory](#jqttqucnfrfrycaabiulpfuw3e)
+ [builtin.io.isFileEOF](#jjtvnolpzz65oezz227kpimslq)
+ [builtin.io.isFileOpen](#ozkk6h4j6ozpixtwy5zkz2kuv4)
+ [builtin.io.isSeekable](#lo7p36lxc23wkwz6c6pgms5mcq)
+ [builtin.io.kill](#nfrgo6jof2izj3u3ncaelmrwzu)
+ [builtin.io.listen](#ndu7b5vin5q37fozed62mbz2wu)
+ [builtin.io.openFile](#tsuovfpui5e7vydv2un33b4zoq)
+ [builtin.io.position](#lhu7yb5u75thm2wyqcir5nuf3m)
+ [builtin.io.printLine](#l2us7xaoviro6qrkzdmqvv37ne)
+ [builtin.io.putText](#w7kske4o54rqkuuze4auz5h2uq)
+ [builtin.io.readLine](#r4ebki4zllpvmsok2vt3szghhy)
+ [builtin.io.receive](#ts6sa2kqm5shswselxksgpuxta)
+ [builtin.io.removeDirectory](#4msgotybpm445d7rompcaakdzq)
+ [builtin.io.removeFile](#fyrsdbzku2qsc56wra4qgqga5m)
+ [builtin.io.renameDirectory](#odycxdcvpceuvxb25pue2zas3i)
+ [builtin.io.renameFile](#y6isaaqg27geqskyd7q5tdf6uy)
+ [builtin.io.rethrow](#ubmisop4fjpfuds7cdbwxvexye)
+ [builtin.io.seek](#uzt2hfwtc6gva24fzejrm2czdu)
+ [builtin.io.send](#qqd4fpu3nzzthutde3cnoxvwzm)
+ [builtin.io.serverSocket](#h2jfs264soohpxw7tdrisbxvdm)
+ [builtin.io.setBuffering](#wapnynywrltx2lfajci3ka2s5m)
+ [builtin.io.setCurrentDirectory](#rr5bz3opnmpty4fjd22mjc5osa)
+ [builtin.io.stderr](#imqrap5ol6y3xmteqnyqmuvvpm)
+ [builtin.io.stdin](#v4licm4fuvnpceiw6fpk6t4xyu)
+ [builtin.io.stdout](#hiigled2r57v37kt72fxgkotly)
+ [builtin.io.systemTime](#3fcsrmet7pejps5cbwy23um54m)

# Types

<a name='6un2h33oy6qhinpgpxa3mwbrw4'/>

### builtin.io.BufferMode

```unison
unique type builtin.io.BufferMode = Line | Block (builtin.Optional builtin.Nat)
```

<a name='6oixfqlyjemavsg6skuzjarvyq'/>

### builtin.io.EpochTime

```unison
unique type builtin.io.EpochTime = EpochTime builtin.Nat
```

<a name='uermdn3lvcg35ibrcb4yklmp7y'/>

### builtin.io.Error

```unison
type builtin.io.Error = Error builtin.io.ErrorType builtin.Text
```

<a name='y76fv4jgawmnnzxq3bcknlv6su'/>

### builtin.io.ErrorDescription

```unison
unique type builtin.io.ErrorDescription = ErrorDescription builtin.Text
```

<a name='hheh3cwsychsmuhslaqtbv7i4a'/>

### builtin.io.ErrorLocation

```unison
unique type builtin.io.ErrorLocation = ErrorLocation builtin.Text
```

<a name='l5y3obnoooxx2vs7wygsex3ypu'/>

### builtin.io.ErrorType

```unison
unique type builtin.io.ErrorType
  = AlreadyExists
  | NoSuchThing
  | ResourceBusy
  | ResourceExhausted
  | EOF
  | IllegalOperation
  | PermissionDenied
  | UserError
```

<a name='yqk5q4wtwkbmpfpxc7a5pkmbae'/>

### builtin.io.FilePath

```unison
unique type builtin.io.FilePath = FilePath builtin.Text
```

<a name='daizk3nwe4mdhbwfitufujb4wq'/>

### builtin.io.Handle

```unison
unique type builtin.io.Handle = Handle builtin.Text
```

<a name='fwlsqgi3s655duzanzgk3gnfeu'/>

### builtin.io.HostName

```unison
unique type builtin.io.HostName = HostName builtin.Text
```

<a name='wfvrhht3dbexc47ytfpufrm23m'/>

### builtin.io.IO

```unison
ability builtin.io.IO where
  getFileSize_ :
    builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Nat
  kill_ :
    builtin.io.ThreadId ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  send_ :
    builtin.io.Socket
    -> builtin.Bytes
    ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  bracket_ :
    '{builtin.io.IO} a
    -> (a ->{builtin.io.IO} b)
    -> (a ->{builtin.io.IO} c)
    ->{builtin.io.IO} builtin.Either builtin.io.Error c
  getLine_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Text
  getText_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Text
  getFileTimestamp_ :
    builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.io.EpochTime
  closeFile_ :
    builtin.io.Handle ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  getTemporaryDirectory_ :
    {builtin.io.IO} (builtin.Either builtin.io.Error builtin.io.FilePath)
  getCurrentDirectory_ :
    {builtin.io.IO} (builtin.Either builtin.io.Error builtin.io.FilePath)
  renameDirectory_ :
    builtin.io.FilePath
    -> builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  renameFile_ :
    builtin.io.FilePath
    -> builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  receive_ :
    builtin.io.Socket
    -> builtin.Nat
    ->{builtin.io.IO} builtin.Either
      builtin.io.Error (builtin.Optional builtin.Bytes)
  fileExists_ :
    builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Boolean
  isDirectory_ :
    builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Boolean
  directoryContents_ :
    builtin.io.FilePath
    ->{builtin.io.IO} builtin.Either builtin.io.Error [builtin.io.FilePath]
  listen_ :
    builtin.io.Socket ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  closeSocket_ :
    builtin.io.Socket ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  clientSocket_ :
    builtin.io.HostName
    -> builtin.io.ServiceName
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.io.Socket
  delay_ : builtin.Nat ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  seek_ :
    builtin.io.Handle
    -> builtin.io.SeekMode
    -> builtin.Int
    ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  serverSocket_ :
    builtin.Optional builtin.io.HostName
    -> builtin.io.ServiceName
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.io.Socket
  accept_ :
    builtin.io.Socket
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.io.Socket
  setBuffering_ :
    builtin.io.Handle
    -> builtin.Optional builtin.io.BufferMode
    ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  openFile_ :
    builtin.io.FilePath
    -> builtin.io.Mode
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.io.Handle
  throw : builtin.io.Error ->{builtin.io.IO} a
  fork_ :
    '{builtin.io.IO} a
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.io.ThreadId
  getBuffering_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either
      builtin.io.Error (builtin.Optional builtin.io.BufferMode)
  position_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Int
  setCurrentDirectory_ :
    builtin.io.FilePath ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  createDirectory_ :
    builtin.io.FilePath ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  removeDirectory_ :
    builtin.io.FilePath ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  removeFile_ :
    builtin.io.FilePath ->{builtin.io.IO} builtin.Either builtin.io.Error ()
  systemTime_ :
    {builtin.io.IO} (builtin.Either builtin.io.Error builtin.io.EpochTime)
  isFileEOF_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Boolean
  isFileOpen_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Boolean
  isSeekable_ :
    builtin.io.Handle
    ->{builtin.io.IO} builtin.Either builtin.io.Error builtin.Boolean
  putText_ :
    builtin.io.Handle
    -> builtin.Text
    ->{builtin.io.IO} builtin.Either builtin.io.Error ()
```

<a name='cnr7zvu3qhqv6fd7g5thu7xw4m'/>

### builtin.io.Mode

```unison
type builtin.io.Mode = Read | Write | Append | ReadWrite
```

<a name='2hupcpprdmvqcrlaavm2ujzw3y'/>

### builtin.io.SeekMode

```unison
unique type builtin.io.SeekMode = Absolute | Relative | FromEnd
```

<a name='pmf2taqtjab5ezvsf4d5zgtvhy'/>

### builtin.io.ServiceName

```unison
unique type builtin.io.ServiceName = ServiceName builtin.Text
```

<a name='qef2a2ahsgx5ko5yt6ktd32uyu'/>

### builtin.io.Socket

```unison
unique type builtin.io.Socket = Socket builtin.Text
```

<a name='tqdsdwgxebjhavmak5sfy3f32y'/>

### builtin.io.ThreadId

```unison
unique type builtin.io.ThreadId = ThreadId builtin.Text
```


# Terms

<a name='vjowrufdrhhfcqmks4qrijcihu'/>

### builtin.io.accept

```unison
builtin.io.accept s = builtin.io.rethrow (builtin.io.IO.accept_ s)
```

<a name='axg4elk2s36qy7ysrq5c5n6k7a'/>

### builtin.io.bracket

```unison
builtin.io.bracket acquire release what =
  builtin.io.rethrow (builtin.io.IO.bracket_ acquire release what)
```

<a name='xw2enc22omwrchuoyvejt5febq'/>

### builtin.io.clientSocket

```unison
builtin.io.clientSocket host service =
  builtin.io.rethrow (builtin.io.IO.clientSocket_ host service)
```

<a name='mqt7fexqkqlxdbptojybjifiqq'/>

### builtin.io.closeFile

```unison
builtin.io.closeFile f = builtin.io.rethrow (builtin.io.IO.closeFile_ f)
```

<a name='qmzv4efab5psm2shi2bn6a5bcq'/>

### builtin.io.closeSocket

```unison
builtin.io.closeSocket s = builtin.io.rethrow (builtin.io.IO.closeSocket_ s)
```

<a name='fhk5ydc4b6xqd7pbjjarbck2hi'/>

### builtin.io.createDirectory

```unison
builtin.io.createDirectory d =
  builtin.io.rethrow (builtin.io.IO.createDirectory_ d)
```

<a name='q7fgaals2lds5fstf2t2yvnyae'/>

### builtin.io.delay

```unison
builtin.io.delay n = builtin.io.rethrow (builtin.io.IO.delay_ n)
```

<a name='hy637equk55yelj35hwja6m6ee'/>

### builtin.io.directoryContents

```unison
builtin.io.directoryContents d =
  builtin.io.rethrow (builtin.io.IO.directoryContents_ d)
```

<a name='s7md4m2n7t52afwk2nwanmjpqe'/>

### builtin.io.fileExists

```unison
builtin.io.fileExists d = builtin.io.rethrow (builtin.io.IO.fileExists_ d)
```

<a name='h2gzuarwmmdnz4kd6oo5df4bae'/>

### builtin.io.fork

```unison
builtin.io.fork a = builtin.io.rethrow (builtin.io.IO.fork_ a)
```

<a name='3fbwle3ipcnmlw4ult22gbxg7y'/>

### builtin.io.getBuffering

```unison
builtin.io.getBuffering h = builtin.io.rethrow (builtin.io.IO.getBuffering_ h)
```

<a name='rqm43xxg6b3ddn36ayenm35fxa'/>

### builtin.io.getCurrentDirectory

```unison
builtin.io.getCurrentDirectory : '{builtin.io.IO} builtin.io.FilePath
builtin.io.getCurrentDirectory () =
  builtin.io.rethrow builtin.io.IO.getCurrentDirectory_
```

<a name='hhz6ibvhdq4pys4j7wvex2przm'/>

### builtin.io.getFileSize

```unison
builtin.io.getFileSize d = builtin.io.rethrow (builtin.io.IO.getFileSize_ d)
```

<a name='o6hweauasqwk5cjqkyvsugvhty'/>

### builtin.io.getFileTimestamp

```unison
builtin.io.getFileTimestamp d =
  builtin.io.rethrow (builtin.io.IO.getFileTimestamp_ d)
```

<a name='mk4ndgj2d6eodhqrpqe65fhy5u'/>

### builtin.io.getLine

```unison
builtin.io.getLine h = builtin.io.rethrow (builtin.io.IO.getLine_ h)
```

<a name='vwu6eccqsejthycgdky4kxpjge'/>

### builtin.io.getTemporaryDirectory

```unison
builtin.io.getTemporaryDirectory : '{builtin.io.IO} builtin.io.FilePath
builtin.io.getTemporaryDirectory () =
  builtin.io.rethrow builtin.io.IO.getTemporaryDirectory_
```

<a name='fa4dqqjm2itqynoyaquveu7i3a'/>

### builtin.io.getText

```unison
builtin.io.getText h = builtin.io.rethrow (builtin.io.IO.getText_ h)
```

<a name='jqttqucnfrfrycaabiulpfuw3e'/>

### builtin.io.isDirectory

```unison
builtin.io.isDirectory d = builtin.io.rethrow (builtin.io.IO.isDirectory_ d)
```

<a name='jjtvnolpzz65oezz227kpimslq'/>

### builtin.io.isFileEOF

```unison
builtin.io.isFileEOF h = builtin.io.rethrow (builtin.io.IO.isFileEOF_ h)
```

<a name='ozkk6h4j6ozpixtwy5zkz2kuv4'/>

### builtin.io.isFileOpen

```unison
builtin.io.isFileOpen h = builtin.io.rethrow (builtin.io.IO.isFileOpen_ h)
```

<a name='lo7p36lxc23wkwz6c6pgms5mcq'/>

### builtin.io.isSeekable

```unison
builtin.io.isSeekable h = builtin.io.rethrow (builtin.io.IO.isSeekable_ h)
```

<a name='nfrgo6jof2izj3u3ncaelmrwzu'/>

### builtin.io.kill

```unison
builtin.io.kill t = builtin.io.rethrow (builtin.io.IO.kill_ t)
```

<a name='ndu7b5vin5q37fozed62mbz2wu'/>

### builtin.io.listen

```unison
builtin.io.listen s = builtin.io.rethrow (builtin.io.IO.listen_ s)
```

<a name='tsuovfpui5e7vydv2un33b4zoq'/>

### builtin.io.openFile

```unison
builtin.io.openFile f m = builtin.io.rethrow (builtin.io.IO.openFile_ f m)
```

<a name='lhu7yb5u75thm2wyqcir5nuf3m'/>

### builtin.io.position

```unison
builtin.io.position h = builtin.io.rethrow (builtin.io.IO.position_ h)
```

<a name='l2us7xaoviro6qrkzdmqvv37ne'/>

### builtin.io.printLine

```unison
builtin.io.printLine t =
  use builtin.io putText stdout
  putText stdout t
  putText stdout "\n"
```

<a name='w7kske4o54rqkuuze4auz5h2uq'/>

### builtin.io.putText

```unison
builtin.io.putText h t = builtin.io.rethrow (builtin.io.IO.putText_ h t)
```

<a name='r4ebki4zllpvmsok2vt3szghhy'/>

### builtin.io.readLine

```unison
builtin.io.readLine : '{builtin.io.IO} builtin.Text
builtin.io.readLine () = builtin.io.getLine builtin.io.stdin
```

<a name='ts6sa2kqm5shswselxksgpuxta'/>

### builtin.io.receive

```unison
builtin.io.receive s n = builtin.io.rethrow (builtin.io.IO.receive_ s n)
```

<a name='4msgotybpm445d7rompcaakdzq'/>

### builtin.io.removeDirectory

```unison
builtin.io.removeDirectory d =
  builtin.io.rethrow (builtin.io.IO.removeDirectory_ d)
```

<a name='fyrsdbzku2qsc56wra4qgqga5m'/>

### builtin.io.removeFile

```unison
builtin.io.removeFile d = builtin.io.rethrow (builtin.io.IO.removeFile_ d)
```

<a name='odycxdcvpceuvxb25pue2zas3i'/>

### builtin.io.renameDirectory

```unison
builtin.io.renameDirectory from to =
  builtin.io.rethrow (builtin.io.IO.renameDirectory_ from to)
```

<a name='y6isaaqg27geqskyd7q5tdf6uy'/>

### builtin.io.renameFile

```unison
builtin.io.renameFile from to =
  builtin.io.rethrow (builtin.io.IO.renameFile_ from to)
```

<a name='ubmisop4fjpfuds7cdbwxvexye'/>

### builtin.io.rethrow

```unison
builtin.io.rethrow x =
  case x of
    builtin.Either.Left e -> builtin.io.IO.throw e
    builtin.Either.Right a -> a
```

<a name='uzt2hfwtc6gva24fzejrm2czdu'/>

### builtin.io.seek

```unison
builtin.io.seek h m i = builtin.io.rethrow (builtin.io.IO.seek_ h m i)
```

<a name='qqd4fpu3nzzthutde3cnoxvwzm'/>

### builtin.io.send

```unison
builtin.io.send s bs = builtin.io.rethrow (builtin.io.IO.send_ s bs)
```

<a name='h2jfs264soohpxw7tdrisbxvdm'/>

### builtin.io.serverSocket

```unison
builtin.io.serverSocket host service =
  builtin.io.rethrow (builtin.io.IO.serverSocket_ host service)
```

<a name='wapnynywrltx2lfajci3ka2s5m'/>

### builtin.io.setBuffering

```unison
builtin.io.setBuffering h bm =
  builtin.io.rethrow (builtin.io.IO.setBuffering_ h bm)
```

<a name='rr5bz3opnmpty4fjd22mjc5osa'/>

### builtin.io.setCurrentDirectory

```unison
builtin.io.setCurrentDirectory d =
  builtin.io.rethrow (builtin.io.IO.setCurrentDirectory_ d)
```

<a name='imqrap5ol6y3xmteqnyqmuvvpm'/>

### builtin.io.stderr

```unison
builtin.io.stderr = builtin.io.Handle.Handle "stderr"
```

<a name='v4licm4fuvnpceiw6fpk6t4xyu'/>

### builtin.io.stdin

```unison
builtin.io.stdin = builtin.io.Handle.Handle "stdin"
```

<a name='hiigled2r57v37kt72fxgkotly'/>

### builtin.io.stdout

```unison
builtin.io.stdout = builtin.io.Handle.Handle "stdout"
```

<a name='3fcsrmet7pejps5cbwy23um54m'/>

### builtin.io.systemTime

```unison
builtin.io.systemTime : '{builtin.io.IO} builtin.io.EpochTime
builtin.io.systemTime () = builtin.io.rethrow builtin.io.IO.systemTime_
```

