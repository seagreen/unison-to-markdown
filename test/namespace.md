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

<a name='6306107192279472826'/>

### builtin.Boolean

```unison
<builtin>
```

<a name='3897716605628038017'/>

### builtin.Bytes

```unison
<builtin>
```

<a name='5245241711139589005'/>

### builtin.Char

```unison
<builtin>
```

<a name='5572193597304070436'/>

### builtin.Either

```unison
type builtin.Either a b = Left a | Right b
```

<a name='617572644675272590'/>

### builtin.Float

```unison
<builtin>
```

<a name='3832676917859339683'/>

### builtin.Int

```unison
<builtin>
```

<a name='4432933224895344673'/>

### builtin.IsTest

```unison
unique type builtin.IsTest = IsTest
```

<a name='1424777922347868611'/>

### builtin.List

```unison
<builtin>
```

<a name='2186573045580090773'/>

### builtin.Nat

```unison
<builtin>
```

<a name='5220643134797035825'/>

### builtin.Optional

```unison
type builtin.Optional a = None | Some a
```

<a name='1267204749295824727'/>

### builtin.Request

```unison
<builtin>
```

<a name='8738896027400783533'/>

### builtin.Test.Result

```unison
unique type builtin.Test.Result = Fail builtin.Text | Ok builtin.Text
```

<a name='4156348005617393268'/>

### builtin.Text

```unison
<builtin>
```

<a name='5573141728625805998'/>

### builtin.Tuple

```unison
type builtin.Tuple a b = Cons a b
```

<a name='1276183637339978185'/>

### builtin.Unit

```unison
type builtin.Unit = Unit
```


# Dependency terms

<a name='7303144659369981397'/>

### builtin.Boolean.not

```unison
<builtin>
```

<a name='1439477776726142242'/>

### builtin.Bytes.++

```unison
<builtin>
```

<a name='1418647627022271505'/>

### builtin.Bytes.at

```unison
<builtin>
```

<a name='3187582489422264371'/>

### builtin.Bytes.drop

```unison
<builtin>
```

<a name='8951136362131366022'/>

### builtin.Bytes.empty

```unison
<builtin>
```

<a name='1101531528408829737'/>

### builtin.Bytes.flatten

```unison
<builtin>
```

<a name='2202563138110542798'/>

### builtin.Bytes.fromList

```unison
<builtin>
```

<a name='3587442715395550367'/>

### builtin.Bytes.size

```unison
<builtin>
```

<a name='33427196685056485'/>

### builtin.Bytes.take

```unison
<builtin>
```

<a name='4306366734554417779'/>

### builtin.Bytes.toList

```unison
<builtin>
```

<a name='1587873577456361474'/>

### builtin.Char.fromNat

```unison
<builtin>
```

<a name='5339163095314859991'/>

### builtin.Char.toNat

```unison
<builtin>
```

<a name='5132912380557838624'/>

### builtin.Debug.watch

```unison
<builtin>
```

<a name='7583365280543984584'/>

### builtin.Float.*

```unison
<builtin>
```

<a name='7583365280527206971'/>

### builtin.Float.+

```unison
<builtin>
```

<a name='7583365280493651713'/>

### builtin.Float.-

```unison
<builtin>
```

<a name='7583365280460096487'/>

### builtin.Float./

```unison
<builtin>
```

<a name='5517456903114460232'/>

### builtin.Float.abs

```unison
<builtin>
```

<a name='6279795193250302089'/>

### builtin.Float.acos

```unison
<builtin>
```

<a name='6472644911537236324'/>

### builtin.Float.acosh

```unison
<builtin>
```

<a name='871405957563439646'/>

### builtin.Float.asin

```unison
<builtin>
```

<a name='2560758465141952933'/>

### builtin.Float.asinh

```unison
<builtin>
```

<a name='846477482777860551'/>

### builtin.Float.atan

```unison
<builtin>
```

<a name='5136938128350807734'/>

### builtin.Float.atan2

```unison
<builtin>
```

<a name='5136938127646147732'/>

### builtin.Float.atanh

```unison
<builtin>
```

<a name='1551121269929607209'/>

### builtin.Float.ceiling

```unison
<builtin>
```

<a name='6236080694071027745'/>

### builtin.Float.cos

```unison
<builtin>
```

<a name='7587023971936746048'/>

### builtin.Float.cosh

```unison
<builtin>
```

<a name='3955470224344811605'/>

### builtin.Float.eq

```unison
<builtin>
```

<a name='6898406784075217825'/>

### builtin.Float.exp

```unison
<builtin>
```

<a name='2692965503719562280'/>

### builtin.Float.floor

```unison
<builtin>
```

<a name='6953279692335390454'/>

### builtin.Float.fromText

```unison
<builtin>
```

<a name='3954907248470293756'/>

### builtin.Float.gt

```unison
<builtin>
```

<a name='4411481543035234364'/>

### builtin.Float.gteq

```unison
<builtin>
```

<a name='3865723260580586234'/>

### builtin.Float.log

```unison
<builtin>
```

<a name='4530143819663988751'/>

### builtin.Float.logBase

```unison
<builtin>
```

<a name='3958003619278275487'/>

### builtin.Float.lt

```unison
<builtin>
```

<a name='2733756467380513553'/>

### builtin.Float.lteq

```unison
<builtin>
```

<a name='4191397283512062386'/>

### builtin.Float.max

```unison
<builtin>
```

<a name='4193649191003207104'/>

### builtin.Float.min

```unison
<builtin>
```

<a name='7772540479232982394'/>

### builtin.Float.pow

```unison
<builtin>
```

<a name='5164601550643769386'/>

### builtin.Float.round

```unison
<builtin>
```

<a name='6784258882680294130'/>

### builtin.Float.sin

```unison
<builtin>
```

<a name='5114465450460178237'/>

### builtin.Float.sinh

```unison
<builtin>
```

<a name='3006844548251627827'/>

### builtin.Float.sqrt

```unison
<builtin>
```

<a name='6463651653390709987'/>

### builtin.Float.tan

```unison
<builtin>
```

<a name='2622273824455577212'/>

### builtin.Float.tanh

```unison
<builtin>
```

<a name='5472733845676345443'/>

### builtin.Float.toText

```unison
<builtin>
```

<a name='6620249028290991765'/>

### builtin.Float.truncate

```unison
<builtin>
```

<a name='7678513412945837829'/>

### builtin.Int.*

```unison
<builtin>
```

<a name='7678513412962615446'/>

### builtin.Int.+

```unison
<builtin>
```

<a name='7678513413063281152'/>

### builtin.Int.-

```unison
<builtin>
```

<a name='7678513413029725930'/>

### builtin.Int./

```unison
<builtin>
```

<a name='286890207122685058'/>

### builtin.Int.eq

```unison
<builtin>
```

<a name='2605328266357214385'/>

### builtin.Int.fromText

```unison
<builtin>
```

<a name='286327231684385327'/>

### builtin.Int.gt

```unison
<builtin>
```

<a name='4443646003836706775'/>

### builtin.Int.gteq

```unison
<builtin>
```

<a name='4492545159745488926'/>

### builtin.Int.increment

```unison
<builtin>
```

<a name='5860354258759007472'/>

### builtin.Int.isEven

```unison
<builtin>
```

<a name='2004749947467123878'/>

### builtin.Int.isOdd

```unison
<builtin>
```

<a name='288860626701737284'/>

### builtin.Int.lt

```unison
<builtin>
```

<a name='8107854729627495540'/>

### builtin.Int.lteq

```unison
<builtin>
```

<a name='8528540646040731703'/>

### builtin.Int.mod

```unison
<builtin>
```

<a name='3427349749575356326'/>

### builtin.Int.negate

```unison
<builtin>
```

<a name='271321534207884539'/>

### builtin.Int.signum

```unison
<builtin>
```

<a name='8824157032649362736'/>

### builtin.Int.toFloat

```unison
<builtin>
```

<a name='4010181899793056558'/>

### builtin.Int.toText

```unison
<builtin>
```

<a name='6677640345051763925'/>

### builtin.Int.truncate0

```unison
<builtin>
```

<a name='5236575217993875114'/>

### builtin.List.++

```unison
<builtin>
```

<a name='5236575217742210823'/>

### builtin.List.+:

```unison
<builtin>
```

<a name='5240797546657945841'/>

### builtin.List.:+

```unison
<builtin>
```

<a name='5220248884211840439'/>

### builtin.List.at

```unison
<builtin>
```

<a name='3218215275841582641'/>

### builtin.List.cons

```unison
<builtin>
```

<a name='6960031958305802619'/>

### builtin.List.drop

```unison
<builtin>
```

<a name='3759466093183593714'/>

### builtin.List.empty

```unison
<builtin>
```

<a name='182222036945436445'/>

### builtin.List.size

```unison
<builtin>
```

<a name='1462192904774175589'/>

### builtin.List.snoc

```unison
<builtin>
```

<a name='2046166363049315087'/>

### builtin.List.take

```unison
<builtin>
```

<a name='8233780913006739267'/>

### builtin.Nat.*

```unison
<builtin>
```

<a name='8233780913023516908'/>

### builtin.Nat.+

```unison
<builtin>
```

<a name='8233780913090627360'/>

### builtin.Nat./

```unison
<builtin>
```

<a name='6666954009483670701'/>

### builtin.Nat.drop

```unison
<builtin>
```

<a name='44926103473428492'/>

### builtin.Nat.eq

```unison
<builtin>
```

<a name='3793588829404969923'/>

### builtin.Nat.fromText

```unison
<builtin>
```

<a name='44363128135794435'/>

### builtin.Nat.gt

```unison
<builtin>
```

<a name='9134621787487553209'/>

### builtin.Nat.gteq

```unison
<builtin>
```

<a name='4236930810192511992'/>

### builtin.Nat.increment

```unison
<builtin>
```

<a name='3900520292502394906'/>

### builtin.Nat.isEven

```unison
<builtin>
```

<a name='758114094913232116'/>

### builtin.Nat.isOdd

```unison
<builtin>
```

<a name='42955684565481010'/>

### builtin.Nat.lt

```unison
<builtin>
```

<a name='424627947256327770'/>

### builtin.Nat.lteq

```unison
<builtin>
```

<a name='2062899351507102747'/>

### builtin.Nat.mod

```unison
<builtin>
```

<a name='6789138438195616163'/>

### builtin.Nat.sub

```unison
<builtin>
```

<a name='259798862059743502'/>

### builtin.Nat.toFloat

```unison
<builtin>
```

<a name='150239851535598533'/>

### builtin.Nat.toInt

```unison
<builtin>
```

<a name='4259136486915088056'/>

### builtin.Nat.toText

```unison
<builtin>
```

<a name='2119487978337574965'/>

### builtin.Text.!=

```unison
<builtin>
```

<a name='2122302863162890393'/>

### builtin.Text.++

```unison
<builtin>
```

<a name='8695965007450597314'/>

### builtin.Text.drop

```unison
<builtin>
```

<a name='8791395855004492749'/>

### builtin.Text.empty

```unison
<builtin>
```

<a name='2136377287423688437'/>

### builtin.Text.eq

```unison
<builtin>
```

<a name='2048127043727128039'/>

### builtin.Text.fromCharList

```unison
<builtin>
```

<a name='2136940267693942474'/>

### builtin.Text.gt

```unison
<builtin>
```

<a name='9076882437348111534'/>

### builtin.Text.gteq

```unison
<builtin>
```

<a name='2138910687054885635'/>

### builtin.Text.lt

```unison
<builtin>
```

<a name='8243119339081451619'/>

### builtin.Text.lteq

```unison
<builtin>
```

<a name='5648358163568095426'/>

### builtin.Text.size

```unison
<builtin>
```

<a name='310233313770299440'/>

### builtin.Text.take

```unison
<builtin>
```

<a name='6276639646555068952'/>

### builtin.Text.toCharList

```unison
<builtin>
```

<a name='4194242515504973073'/>

### builtin.Text.uncons

```unison
<builtin>
```

<a name='8969379615124675737'/>

### builtin.Text.unsnoc

```unison
<builtin>
```

<a name='3386236405620793265'/>

### builtin.Universal.<

```unison
<builtin>
```

<a name='882949649546020697'/>

### builtin.Universal.<=

```unison
<builtin>
```

<a name='883231137340669836'/>

### builtin.Universal.==

```unison
<builtin>
```

<a name='3386236405587237999'/>

### builtin.Universal.>

```unison
<builtin>
```

<a name='882386671607855687'/>

### builtin.Universal.>=

```unison
<builtin>
```

<a name='6047211208908913000'/>

### builtin.Universal.compare

```unison
<builtin>
```

<a name='9109026890699064102'/>

### builtin.links.isTest

```unison
builtin.links.isTest = builtin.IsTest.IsTest
```

<a name='4094206991234043373'/>

### exampleAdd

```unison
exampleAdd a b =
  use builtin.Nat +
  a + b
```

