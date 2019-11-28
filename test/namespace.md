# builtin.io table of contents

## Types

+ [builtin.io.BufferMode](#7639649842682908765)
+ [builtin.io.EpochTime](#4800730452074110371)
+ [builtin.io.Error](#6881305932018128677)
+ [builtin.io.ErrorDescription](#631802764988078740)
+ [builtin.io.ErrorLocation](#400363865334050740)
+ [builtin.io.ErrorType](#8823105272910210663)
+ [builtin.io.FilePath](#8011563717472886547)
+ [builtin.io.Handle](#7000936550009132492)
+ [builtin.io.HostName](#7685462072081011933)
+ [builtin.io.IO](#4716768780565495378)
+ [builtin.io.Mode](#1315077711476797533)
+ [builtin.io.SeekMode](#4064744426201103269)
+ [builtin.io.ServiceName](#6391572444526865715)
+ [builtin.io.Socket](#5549792368903176339)
+ [builtin.io.ThreadId](#1674608298260786667)

## Terms

+ [builtin.io.accept](#5780356249220838646)
+ [builtin.io.bracket](#273197597288505377)
+ [builtin.io.clientSocket](#6484715477443538158)
+ [builtin.io.closeFile](#7633658582192098709)
+ [builtin.io.closeSocket](#1042192607371576594)
+ [builtin.io.createDirectory](#4578011639312698856)
+ [builtin.io.delay](#1967752300612507102)
+ [builtin.io.directoryContents](#6300643757891534980)
+ [builtin.io.fileExists](#3919592830815168480)
+ [builtin.io.fork](#8198052712314241032)
+ [builtin.io.getBuffering](#2997889282840951358)
+ [builtin.io.getCurrentDirectory](#5217576300315404991)
+ [builtin.io.getFileSize](#4343364927382523748)
+ [builtin.io.getFileTimestamp](#2872064474408582958)
+ [builtin.io.getLine](#2718061682066118451)
+ [builtin.io.getTemporaryDirectory](#8848707940208832145)
+ [builtin.io.getText](#28040709108292580)
+ [builtin.io.isDirectory](#3312000152029229256)
+ [builtin.io.isFileEOF](#8041870458305717153)
+ [builtin.io.isFileOpen](#3971139512072931200)
+ [builtin.io.isSeekable](#3828147807648221978)
+ [builtin.io.kill](#6020908985915756148)
+ [builtin.io.listen](#6549848982735788701)
+ [builtin.io.openFile](#495323509234122002)
+ [builtin.io.position](#840268562146786627)
+ [builtin.io.printLine](#8364409705726615100)
+ [builtin.io.putText](#2373629799488520059)
+ [builtin.io.readLine](#9047492431551584650)
+ [builtin.io.receive](#7641686498086925666)
+ [builtin.io.removeDirectory](#8303178682758799108)
+ [builtin.io.removeFile](#2467524584460185396)
+ [builtin.io.renameDirectory](#5361785741542466158)
+ [builtin.io.renameFile](#2810195704643154762)
+ [builtin.io.rethrow](#5814593162789285776)
+ [builtin.io.seek](#6181260182412569664)
+ [builtin.io.send](#6183793577614475430)
+ [builtin.io.serverSocket](#5076587535912172962)
+ [builtin.io.setBuffering](#6887921679790598122)
+ [builtin.io.setCurrentDirectory](#8557332659964056293)
+ [builtin.io.stderr](#1137895461247182454)
+ [builtin.io.stdin](#3244480646677181479)
+ [builtin.io.stdout](#913825163455496275)
+ [builtin.io.systemTime](#1891380862370288542)

# Types

<a name='7639649842682908765'/>

### builtin.io.BufferMode

```unison
unique type builtin.io.BufferMode = Line | Block (builtin.Optional builtin.Nat)
```

<a name='4800730452074110371'/>

### builtin.io.EpochTime

```unison
unique type builtin.io.EpochTime = EpochTime builtin.Nat
```

<a name='6881305932018128677'/>

### builtin.io.Error

```unison
type builtin.io.Error = Error builtin.io.ErrorType builtin.Text
```

<a name='631802764988078740'/>

### builtin.io.ErrorDescription

```unison
unique type builtin.io.ErrorDescription = ErrorDescription builtin.Text
```

<a name='400363865334050740'/>

### builtin.io.ErrorLocation

```unison
unique type builtin.io.ErrorLocation = ErrorLocation builtin.Text
```

<a name='8823105272910210663'/>

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

<a name='8011563717472886547'/>

### builtin.io.FilePath

```unison
unique type builtin.io.FilePath = FilePath builtin.Text
```

<a name='7000936550009132492'/>

### builtin.io.Handle

```unison
unique type builtin.io.Handle = Handle builtin.Text
```

<a name='7685462072081011933'/>

### builtin.io.HostName

```unison
unique type builtin.io.HostName = HostName builtin.Text
```

<a name='4716768780565495378'/>

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

<a name='1315077711476797533'/>

### builtin.io.Mode

```unison
type builtin.io.Mode = Read | Write | Append | ReadWrite
```

<a name='4064744426201103269'/>

### builtin.io.SeekMode

```unison
unique type builtin.io.SeekMode = Absolute | Relative | FromEnd
```

<a name='6391572444526865715'/>

### builtin.io.ServiceName

```unison
unique type builtin.io.ServiceName = ServiceName builtin.Text
```

<a name='5549792368903176339'/>

### builtin.io.Socket

```unison
unique type builtin.io.Socket = Socket builtin.Text
```

<a name='1674608298260786667'/>

### builtin.io.ThreadId

```unison
unique type builtin.io.ThreadId = ThreadId builtin.Text
```


# Terms

<a name='5780356249220838646'/>

### builtin.io.accept

```unison
builtin.io.accept s = builtin.io.rethrow (builtin.io.IO.accept_ s)
```

<a name='273197597288505377'/>

### builtin.io.bracket

```unison
builtin.io.bracket acquire release what =
  builtin.io.rethrow (builtin.io.IO.bracket_ acquire release what)
```

<a name='6484715477443538158'/>

### builtin.io.clientSocket

```unison
builtin.io.clientSocket host service =
  builtin.io.rethrow (builtin.io.IO.clientSocket_ host service)
```

<a name='7633658582192098709'/>

### builtin.io.closeFile

```unison
builtin.io.closeFile f = builtin.io.rethrow (builtin.io.IO.closeFile_ f)
```

<a name='1042192607371576594'/>

### builtin.io.closeSocket

```unison
builtin.io.closeSocket s = builtin.io.rethrow (builtin.io.IO.closeSocket_ s)
```

<a name='4578011639312698856'/>

### builtin.io.createDirectory

```unison
builtin.io.createDirectory d =
  builtin.io.rethrow (builtin.io.IO.createDirectory_ d)
```

<a name='1967752300612507102'/>

### builtin.io.delay

```unison
builtin.io.delay n = builtin.io.rethrow (builtin.io.IO.delay_ n)
```

<a name='6300643757891534980'/>

### builtin.io.directoryContents

```unison
builtin.io.directoryContents d =
  builtin.io.rethrow (builtin.io.IO.directoryContents_ d)
```

<a name='3919592830815168480'/>

### builtin.io.fileExists

```unison
builtin.io.fileExists d = builtin.io.rethrow (builtin.io.IO.fileExists_ d)
```

<a name='8198052712314241032'/>

### builtin.io.fork

```unison
builtin.io.fork a = builtin.io.rethrow (builtin.io.IO.fork_ a)
```

<a name='2997889282840951358'/>

### builtin.io.getBuffering

```unison
builtin.io.getBuffering h = builtin.io.rethrow (builtin.io.IO.getBuffering_ h)
```

<a name='5217576300315404991'/>

### builtin.io.getCurrentDirectory

```unison
builtin.io.getCurrentDirectory : '{builtin.io.IO} builtin.io.FilePath
builtin.io.getCurrentDirectory () =
  builtin.io.rethrow builtin.io.IO.getCurrentDirectory_
```

<a name='4343364927382523748'/>

### builtin.io.getFileSize

```unison
builtin.io.getFileSize d = builtin.io.rethrow (builtin.io.IO.getFileSize_ d)
```

<a name='2872064474408582958'/>

### builtin.io.getFileTimestamp

```unison
builtin.io.getFileTimestamp d =
  builtin.io.rethrow (builtin.io.IO.getFileTimestamp_ d)
```

<a name='2718061682066118451'/>

### builtin.io.getLine

```unison
builtin.io.getLine h = builtin.io.rethrow (builtin.io.IO.getLine_ h)
```

<a name='8848707940208832145'/>

### builtin.io.getTemporaryDirectory

```unison
builtin.io.getTemporaryDirectory : '{builtin.io.IO} builtin.io.FilePath
builtin.io.getTemporaryDirectory () =
  builtin.io.rethrow builtin.io.IO.getTemporaryDirectory_
```

<a name='28040709108292580'/>

### builtin.io.getText

```unison
builtin.io.getText h = builtin.io.rethrow (builtin.io.IO.getText_ h)
```

<a name='3312000152029229256'/>

### builtin.io.isDirectory

```unison
builtin.io.isDirectory d = builtin.io.rethrow (builtin.io.IO.isDirectory_ d)
```

<a name='8041870458305717153'/>

### builtin.io.isFileEOF

```unison
builtin.io.isFileEOF h = builtin.io.rethrow (builtin.io.IO.isFileEOF_ h)
```

<a name='3971139512072931200'/>

### builtin.io.isFileOpen

```unison
builtin.io.isFileOpen h = builtin.io.rethrow (builtin.io.IO.isFileOpen_ h)
```

<a name='3828147807648221978'/>

### builtin.io.isSeekable

```unison
builtin.io.isSeekable h = builtin.io.rethrow (builtin.io.IO.isSeekable_ h)
```

<a name='6020908985915756148'/>

### builtin.io.kill

```unison
builtin.io.kill t = builtin.io.rethrow (builtin.io.IO.kill_ t)
```

<a name='6549848982735788701'/>

### builtin.io.listen

```unison
builtin.io.listen s = builtin.io.rethrow (builtin.io.IO.listen_ s)
```

<a name='495323509234122002'/>

### builtin.io.openFile

```unison
builtin.io.openFile f m = builtin.io.rethrow (builtin.io.IO.openFile_ f m)
```

<a name='840268562146786627'/>

### builtin.io.position

```unison
builtin.io.position h = builtin.io.rethrow (builtin.io.IO.position_ h)
```

<a name='8364409705726615100'/>

### builtin.io.printLine

```unison
builtin.io.printLine t =
  use builtin.io putText stdout
  putText stdout t
  putText stdout "\n"
```

<a name='2373629799488520059'/>

### builtin.io.putText

```unison
builtin.io.putText h t = builtin.io.rethrow (builtin.io.IO.putText_ h t)
```

<a name='9047492431551584650'/>

### builtin.io.readLine

```unison
builtin.io.readLine : '{builtin.io.IO} builtin.Text
builtin.io.readLine () = builtin.io.getLine builtin.io.stdin
```

<a name='7641686498086925666'/>

### builtin.io.receive

```unison
builtin.io.receive s n = builtin.io.rethrow (builtin.io.IO.receive_ s n)
```

<a name='8303178682758799108'/>

### builtin.io.removeDirectory

```unison
builtin.io.removeDirectory d =
  builtin.io.rethrow (builtin.io.IO.removeDirectory_ d)
```

<a name='2467524584460185396'/>

### builtin.io.removeFile

```unison
builtin.io.removeFile d = builtin.io.rethrow (builtin.io.IO.removeFile_ d)
```

<a name='5361785741542466158'/>

### builtin.io.renameDirectory

```unison
builtin.io.renameDirectory from to =
  builtin.io.rethrow (builtin.io.IO.renameDirectory_ from to)
```

<a name='2810195704643154762'/>

### builtin.io.renameFile

```unison
builtin.io.renameFile from to =
  builtin.io.rethrow (builtin.io.IO.renameFile_ from to)
```

<a name='5814593162789285776'/>

### builtin.io.rethrow

```unison
builtin.io.rethrow x =
  case x of
    builtin.Either.Left e -> builtin.io.IO.throw e
    builtin.Either.Right a -> a
```

<a name='6181260182412569664'/>

### builtin.io.seek

```unison
builtin.io.seek h m i = builtin.io.rethrow (builtin.io.IO.seek_ h m i)
```

<a name='6183793577614475430'/>

### builtin.io.send

```unison
builtin.io.send s bs = builtin.io.rethrow (builtin.io.IO.send_ s bs)
```

<a name='5076587535912172962'/>

### builtin.io.serverSocket

```unison
builtin.io.serverSocket host service =
  builtin.io.rethrow (builtin.io.IO.serverSocket_ host service)
```

<a name='6887921679790598122'/>

### builtin.io.setBuffering

```unison
builtin.io.setBuffering h bm =
  builtin.io.rethrow (builtin.io.IO.setBuffering_ h bm)
```

<a name='8557332659964056293'/>

### builtin.io.setCurrentDirectory

```unison
builtin.io.setCurrentDirectory d =
  builtin.io.rethrow (builtin.io.IO.setCurrentDirectory_ d)
```

<a name='1137895461247182454'/>

### builtin.io.stderr

```unison
builtin.io.stderr = builtin.io.Handle.Handle "stderr"
```

<a name='3244480646677181479'/>

### builtin.io.stdin

```unison
builtin.io.stdin = builtin.io.Handle.Handle "stdin"
```

<a name='913825163455496275'/>

### builtin.io.stdout

```unison
builtin.io.stdout = builtin.io.Handle.Handle "stdout"
```

<a name='1891380862370288542'/>

### builtin.io.systemTime

```unison
builtin.io.systemTime : '{builtin.io.IO} builtin.io.EpochTime
builtin.io.systemTime () = builtin.io.rethrow builtin.io.IO.systemTime_
```

# Dependency types


# Dependency terms

