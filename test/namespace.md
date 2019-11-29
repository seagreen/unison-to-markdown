# builtin.io table of contents

## Types

+ [BufferMode](#xr5i5nborq73zsiokfhgywaqy4)
+ [EpochTime](#wvij3in2yibyzuagdsxyr6ta4q)
+ [Error](#savq2vp5333prvsr7yidln6uxu)
+ [ErrorDescription](#3ju4xl7u2ofyon3wm7xmkso6li)
+ [ErrorLocation](#keeohehapp72m7webexsaez7am)
+ [ErrorType](#qrth4bo7uoawwemthy5o7ggmcu)
+ [FilePath](#f62ahzy5rlpcxj426p3mi2k5be)
+ [Handle](#ydvliyu64i5gixkhi4dugnn2ma)
+ [HostName](#psxnctjnua76lfxynyrgywtwyq)
+ [IO](#z44if4oehkzcx7yl3hmc3azfdm)
+ [Mode](#muf6mgesx5uqajqisvckxpm5ey)
+ [SeekMode](#unsc2lquicg5ja577ocu7wc2fq)
+ [ServiceName](#hrqyqh3ut74m3w7uvvctpvw55a)
+ [Socket](#nh3jwwnk432o4gshxpaqq3wnwq)
+ [ThreadId](#ne7hlcmhf55m2ptj3ay5aiww5i)

## Terms

+ [accept](#jk7hpqqb74iwmpgn6ux5n3hkqy)
+ [bracket](#iwz27lvluzykhrt5zlq4rzpyv4)
+ [clientSocket](#7yjme2wgwhwlwdlyire34gm2ju)
+ [closeFile](#7ydby326mfwqjtzieg2o5me4su)
+ [closeSocket](#fy3q2a5a7v4w66lhdh522iflgy)
+ [createDirectory](#hqf5ocrbzbc6czojanbjsfhwhu)
+ [delay](#ojb7rptveu5pxlpxi54goaq7rm)
+ [directoryContents](#lcjwgxpizngho6arei3b2z3woa)
+ [fileExists](#3ba3rnhtx4zrwmixmd7e732nam)
+ [fork](#wl6ljoujr5dzpeahnw6v3kqth4)
+ [getBuffering](#ryvrqnnxnohatbqj2q4ov2jqgy)
+ [getCurrentDirectory](#migjtjevvco32womnkfoft2o6m)
+ [getFileSize](#4sytumptsatoex2mpko47jvivi)
+ [getFileTimestamp](#mgjlglhas4noibvruexw62ckuy)
+ [getLine](#zd7zzxivocprd5uqasa3fdlj5a)
+ [getTemporaryDirectory](#popnvibf6w7qcz7gzgaipmqvxq)
+ [getText](#aca6zt73kcgb2rlyevvwen5ndu)
+ [isDirectory](#obcrzyptn6a5qjdcni5ycljpmu)
+ [isFileEOF](#33tc266p4kbctmt6ndj3bxg2wu)
+ [isFileOpen](#2kat7kirwielrg43slkqb3kgha)
+ [isSeekable](#5afoeo4s74ix7xxsnbrjgmhz7y)
+ [kill](#kndtlccngqihc5ro3z5pahct5a)
+ [listen](#qooxekfvztda4vcfkcj2szvyyi)
+ [openFile](#42c7vd2atngrsqffllgrq7zibm)
+ [position](#i5l74b75jevixyhknj3a22b5ny)
+ [printLine](#b23e7gkllx3ajtm2aqipidrnye)
+ [putText](#x3v2x2ffyd5dzl2p52nbmkiv3i)
+ [readLine](#axta3a2tj7liiaridtolyt6l6a)
+ [receive](#zplr6djrcqjz2ofi2canmehf7u)
+ [removeDirectory](#rovrs7rvceppmsq4lwuaejj4hi)
+ [removeFile](#zhtkykzz2msualiczsuptpnn7e)
+ [renameDirectory](#zx4dc3eg3373ffx7kpyfjmza24)
+ [renameFile](#vsvfiga7qmje77icofcvo552va)
+ [rethrow](#veqqo52zox3twi7frt6ky5gpzq)
+ [seek](#433dmisiqbndnrq5ebo3y32aoy)
+ [send](#eva5sofquweumcinpk654djysa)
+ [serverSocket](#kga2fwt7o5mk6taklnjmlfjdxe)
+ [setBuffering](#kcazgnusxfvjprympf6thazegq)
+ [setCurrentDirectory](#qwcjwvyraiayr5feacur7lsboq)
+ [stderr](#ig7fguktys2tlpe5bjqq2o6wnm)
+ [stdin](#hrwck7wssyrfac5n63ghoqjxlq)
+ [stdout](#mqzc6xz76747ofzhtynqc6uzpy)
+ [systemTime](#awjs6jig6g5uqdfiko7hqi2sm4)

# Types

<a name='xr5i5nborq73zsiokfhgywaqy4'/>

### BufferMode

```unison
unique type builtin.io.BufferMode = Line | Block (builtin.Optional builtin.Nat)
```

<a name='wvij3in2yibyzuagdsxyr6ta4q'/>

### EpochTime

```unison
unique type builtin.io.EpochTime = EpochTime builtin.Nat
```

<a name='savq2vp5333prvsr7yidln6uxu'/>

### Error

```unison
type builtin.io.Error = Error builtin.io.ErrorType builtin.Text
```

<a name='3ju4xl7u2ofyon3wm7xmkso6li'/>

### ErrorDescription

```unison
unique type builtin.io.ErrorDescription = ErrorDescription builtin.Text
```

<a name='keeohehapp72m7webexsaez7am'/>

### ErrorLocation

```unison
unique type builtin.io.ErrorLocation = ErrorLocation builtin.Text
```

<a name='qrth4bo7uoawwemthy5o7ggmcu'/>

### ErrorType

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

<a name='f62ahzy5rlpcxj426p3mi2k5be'/>

### FilePath

```unison
unique type builtin.io.FilePath = FilePath builtin.Text
```

<a name='ydvliyu64i5gixkhi4dugnn2ma'/>

### Handle

```unison
unique type builtin.io.Handle = Handle builtin.Text
```

<a name='psxnctjnua76lfxynyrgywtwyq'/>

### HostName

```unison
unique type builtin.io.HostName = HostName builtin.Text
```

<a name='z44if4oehkzcx7yl3hmc3azfdm'/>

### IO

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

<a name='muf6mgesx5uqajqisvckxpm5ey'/>

### Mode

```unison
type builtin.io.Mode = Read | Write | Append | ReadWrite
```

<a name='unsc2lquicg5ja577ocu7wc2fq'/>

### SeekMode

```unison
unique type builtin.io.SeekMode = Absolute | Relative | FromEnd
```

<a name='hrqyqh3ut74m3w7uvvctpvw55a'/>

### ServiceName

```unison
unique type builtin.io.ServiceName = ServiceName builtin.Text
```

<a name='nh3jwwnk432o4gshxpaqq3wnwq'/>

### Socket

```unison
unique type builtin.io.Socket = Socket builtin.Text
```

<a name='ne7hlcmhf55m2ptj3ay5aiww5i'/>

### ThreadId

```unison
unique type builtin.io.ThreadId = ThreadId builtin.Text
```


# Terms

<a name='jk7hpqqb74iwmpgn6ux5n3hkqy'/>

### accept

```unison
builtin.io.accept s = builtin.io.rethrow (builtin.io.IO.accept_ s)
```

<a name='iwz27lvluzykhrt5zlq4rzpyv4'/>

### bracket

```unison
builtin.io.bracket acquire release what =
  builtin.io.rethrow (builtin.io.IO.bracket_ acquire release what)
```

<a name='7yjme2wgwhwlwdlyire34gm2ju'/>

### clientSocket

```unison
builtin.io.clientSocket host service =
  builtin.io.rethrow (builtin.io.IO.clientSocket_ host service)
```

<a name='7ydby326mfwqjtzieg2o5me4su'/>

### closeFile

```unison
builtin.io.closeFile f = builtin.io.rethrow (builtin.io.IO.closeFile_ f)
```

<a name='fy3q2a5a7v4w66lhdh522iflgy'/>

### closeSocket

```unison
builtin.io.closeSocket s = builtin.io.rethrow (builtin.io.IO.closeSocket_ s)
```

<a name='hqf5ocrbzbc6czojanbjsfhwhu'/>

### createDirectory

```unison
builtin.io.createDirectory d =
  builtin.io.rethrow (builtin.io.IO.createDirectory_ d)
```

<a name='ojb7rptveu5pxlpxi54goaq7rm'/>

### delay

```unison
builtin.io.delay n = builtin.io.rethrow (builtin.io.IO.delay_ n)
```

<a name='lcjwgxpizngho6arei3b2z3woa'/>

### directoryContents

```unison
builtin.io.directoryContents d =
  builtin.io.rethrow (builtin.io.IO.directoryContents_ d)
```

<a name='3ba3rnhtx4zrwmixmd7e732nam'/>

### fileExists

```unison
builtin.io.fileExists d = builtin.io.rethrow (builtin.io.IO.fileExists_ d)
```

<a name='wl6ljoujr5dzpeahnw6v3kqth4'/>

### fork

```unison
builtin.io.fork a = builtin.io.rethrow (builtin.io.IO.fork_ a)
```

<a name='ryvrqnnxnohatbqj2q4ov2jqgy'/>

### getBuffering

```unison
builtin.io.getBuffering h = builtin.io.rethrow (builtin.io.IO.getBuffering_ h)
```

<a name='migjtjevvco32womnkfoft2o6m'/>

### getCurrentDirectory

```unison
builtin.io.getCurrentDirectory : '{builtin.io.IO} builtin.io.FilePath
builtin.io.getCurrentDirectory () =
  builtin.io.rethrow builtin.io.IO.getCurrentDirectory_
```

<a name='4sytumptsatoex2mpko47jvivi'/>

### getFileSize

```unison
builtin.io.getFileSize d = builtin.io.rethrow (builtin.io.IO.getFileSize_ d)
```

<a name='mgjlglhas4noibvruexw62ckuy'/>

### getFileTimestamp

```unison
builtin.io.getFileTimestamp d =
  builtin.io.rethrow (builtin.io.IO.getFileTimestamp_ d)
```

<a name='zd7zzxivocprd5uqasa3fdlj5a'/>

### getLine

```unison
builtin.io.getLine h = builtin.io.rethrow (builtin.io.IO.getLine_ h)
```

<a name='popnvibf6w7qcz7gzgaipmqvxq'/>

### getTemporaryDirectory

```unison
builtin.io.getTemporaryDirectory : '{builtin.io.IO} builtin.io.FilePath
builtin.io.getTemporaryDirectory () =
  builtin.io.rethrow builtin.io.IO.getTemporaryDirectory_
```

<a name='aca6zt73kcgb2rlyevvwen5ndu'/>

### getText

```unison
builtin.io.getText h = builtin.io.rethrow (builtin.io.IO.getText_ h)
```

<a name='obcrzyptn6a5qjdcni5ycljpmu'/>

### isDirectory

```unison
builtin.io.isDirectory d = builtin.io.rethrow (builtin.io.IO.isDirectory_ d)
```

<a name='33tc266p4kbctmt6ndj3bxg2wu'/>

### isFileEOF

```unison
builtin.io.isFileEOF h = builtin.io.rethrow (builtin.io.IO.isFileEOF_ h)
```

<a name='2kat7kirwielrg43slkqb3kgha'/>

### isFileOpen

```unison
builtin.io.isFileOpen h = builtin.io.rethrow (builtin.io.IO.isFileOpen_ h)
```

<a name='5afoeo4s74ix7xxsnbrjgmhz7y'/>

### isSeekable

```unison
builtin.io.isSeekable h = builtin.io.rethrow (builtin.io.IO.isSeekable_ h)
```

<a name='kndtlccngqihc5ro3z5pahct5a'/>

### kill

```unison
builtin.io.kill t = builtin.io.rethrow (builtin.io.IO.kill_ t)
```

<a name='qooxekfvztda4vcfkcj2szvyyi'/>

### listen

```unison
builtin.io.listen s = builtin.io.rethrow (builtin.io.IO.listen_ s)
```

<a name='42c7vd2atngrsqffllgrq7zibm'/>

### openFile

```unison
builtin.io.openFile f m = builtin.io.rethrow (builtin.io.IO.openFile_ f m)
```

<a name='i5l74b75jevixyhknj3a22b5ny'/>

### position

```unison
builtin.io.position h = builtin.io.rethrow (builtin.io.IO.position_ h)
```

<a name='b23e7gkllx3ajtm2aqipidrnye'/>

### printLine

```unison
builtin.io.printLine t =
  use builtin.io putText stdout
  putText stdout t
  putText stdout "\n"
```

<a name='x3v2x2ffyd5dzl2p52nbmkiv3i'/>

### putText

```unison
builtin.io.putText h t = builtin.io.rethrow (builtin.io.IO.putText_ h t)
```

<a name='axta3a2tj7liiaridtolyt6l6a'/>

### readLine

```unison
builtin.io.readLine : '{builtin.io.IO} builtin.Text
builtin.io.readLine () = builtin.io.getLine builtin.io.stdin
```

<a name='zplr6djrcqjz2ofi2canmehf7u'/>

### receive

```unison
builtin.io.receive s n = builtin.io.rethrow (builtin.io.IO.receive_ s n)
```

<a name='rovrs7rvceppmsq4lwuaejj4hi'/>

### removeDirectory

```unison
builtin.io.removeDirectory d =
  builtin.io.rethrow (builtin.io.IO.removeDirectory_ d)
```

<a name='zhtkykzz2msualiczsuptpnn7e'/>

### removeFile

```unison
builtin.io.removeFile d = builtin.io.rethrow (builtin.io.IO.removeFile_ d)
```

<a name='zx4dc3eg3373ffx7kpyfjmza24'/>

### renameDirectory

```unison
builtin.io.renameDirectory from to =
  builtin.io.rethrow (builtin.io.IO.renameDirectory_ from to)
```

<a name='vsvfiga7qmje77icofcvo552va'/>

### renameFile

```unison
builtin.io.renameFile from to =
  builtin.io.rethrow (builtin.io.IO.renameFile_ from to)
```

<a name='veqqo52zox3twi7frt6ky5gpzq'/>

### rethrow

```unison
builtin.io.rethrow x =
  case x of
    builtin.Either.Left e -> builtin.io.IO.throw e
    builtin.Either.Right a -> a
```

<a name='433dmisiqbndnrq5ebo3y32aoy'/>

### seek

```unison
builtin.io.seek h m i = builtin.io.rethrow (builtin.io.IO.seek_ h m i)
```

<a name='eva5sofquweumcinpk654djysa'/>

### send

```unison
builtin.io.send s bs = builtin.io.rethrow (builtin.io.IO.send_ s bs)
```

<a name='kga2fwt7o5mk6taklnjmlfjdxe'/>

### serverSocket

```unison
builtin.io.serverSocket host service =
  builtin.io.rethrow (builtin.io.IO.serverSocket_ host service)
```

<a name='kcazgnusxfvjprympf6thazegq'/>

### setBuffering

```unison
builtin.io.setBuffering h bm =
  builtin.io.rethrow (builtin.io.IO.setBuffering_ h bm)
```

<a name='qwcjwvyraiayr5feacur7lsboq'/>

### setCurrentDirectory

```unison
builtin.io.setCurrentDirectory d =
  builtin.io.rethrow (builtin.io.IO.setCurrentDirectory_ d)
```

<a name='ig7fguktys2tlpe5bjqq2o6wnm'/>

### stderr

```unison
builtin.io.stderr = builtin.io.Handle.Handle "stderr"
```

<a name='hrwck7wssyrfac5n63ghoqjxlq'/>

### stdin

```unison
builtin.io.stdin = builtin.io.Handle.Handle "stdin"
```

<a name='mqzc6xz76747ofzhtynqc6uzpy'/>

### stdout

```unison
builtin.io.stdout = builtin.io.Handle.Handle "stdout"
```

<a name='awjs6jig6g5uqdfiko7hqi2sm4'/>

### systemTime

```unison
builtin.io.systemTime : '{builtin.io.IO} builtin.io.EpochTime
builtin.io.systemTime () = builtin.io.rethrow builtin.io.IO.systemTime_
```

