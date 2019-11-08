# Table of Contents

## Types

+ [builtin.Boolean](#builtin.Boolean)
+ [builtin.Bytes](#builtin.Bytes)
+ [builtin.Char](#builtin.Char)
+ [builtin.Either](#builtin.Either)
+ [builtin.Float](#builtin.Float)
+ [builtin.Int](#builtin.Int)
+ [builtin.IsTest](#builtin.IsTest)
+ [builtin.List](#builtin.List)
+ [builtin.Nat](#builtin.Nat)
+ [builtin.Optional](#builtin.Optional)
+ [builtin.Request](#builtin.Request)
+ [builtin.Test.Result](#builtin.Test.Result)
+ [builtin.Text](#builtin.Text)
+ [builtin.Tuple](#builtin.Tuple)
+ [builtin.Unit](#builtin.Unit)
+ [builtin.io.BufferMode](#builtin.io.BufferMode)
+ [builtin.io.EpochTime](#builtin.io.EpochTime)
+ [builtin.io.Error](#builtin.io.Error)
+ [builtin.io.ErrorDescription](#builtin.io.ErrorDescription)
+ [builtin.io.ErrorLocation](#builtin.io.ErrorLocation)
+ [builtin.io.ErrorType](#builtin.io.ErrorType)
+ [builtin.io.FilePath](#builtin.io.FilePath)
+ [builtin.io.Handle](#builtin.io.Handle)
+ [builtin.io.HostName](#builtin.io.HostName)
+ [builtin.io.IO](#builtin.io.IO)
+ [builtin.io.Mode](#builtin.io.Mode)
+ [builtin.io.SeekMode](#builtin.io.SeekMode)
+ [builtin.io.ServiceName](#builtin.io.ServiceName)
+ [builtin.io.Socket](#builtin.io.Socket)
+ [builtin.io.ThreadId](#builtin.io.ThreadId)

## Terms

+ [builtin.Boolean.not](#builtin.Boolean.not)
+ [builtin.Bytes.++](#builtin.Bytes.%2B%2B)
+ [builtin.Bytes.at](#builtin.Bytes.at)
+ [builtin.Bytes.drop](#builtin.Bytes.drop)
+ [builtin.Bytes.empty](#builtin.Bytes.empty)
+ [builtin.Bytes.flatten](#builtin.Bytes.flatten)
+ [builtin.Bytes.fromList](#builtin.Bytes.fromList)
+ [builtin.Bytes.size](#builtin.Bytes.size)
+ [builtin.Bytes.take](#builtin.Bytes.take)
+ [builtin.Bytes.toList](#builtin.Bytes.toList)
+ [builtin.Char.fromNat](#builtin.Char.fromNat)
+ [builtin.Char.toNat](#builtin.Char.toNat)
+ [builtin.Debug.watch](#builtin.Debug.watch)
+ [builtin.Float.*](#builtin.Float.%2A)
+ [builtin.Float.+](#builtin.Float.%2B)
+ [builtin.Float.-](#builtin.Float.-)
+ [builtin.Float./](#builtin.Float.%2F)
+ [builtin.Float.abs](#builtin.Float.abs)
+ [builtin.Float.acos](#builtin.Float.acos)
+ [builtin.Float.acosh](#builtin.Float.acosh)
+ [builtin.Float.asin](#builtin.Float.asin)
+ [builtin.Float.asinh](#builtin.Float.asinh)
+ [builtin.Float.atan](#builtin.Float.atan)
+ [builtin.Float.atan2](#builtin.Float.atan2)
+ [builtin.Float.atanh](#builtin.Float.atanh)
+ [builtin.Float.ceiling](#builtin.Float.ceiling)
+ [builtin.Float.cos](#builtin.Float.cos)
+ [builtin.Float.cosh](#builtin.Float.cosh)
+ [builtin.Float.eq](#builtin.Float.eq)
+ [builtin.Float.exp](#builtin.Float.exp)
+ [builtin.Float.floor](#builtin.Float.floor)
+ [builtin.Float.fromText](#builtin.Float.fromText)
+ [builtin.Float.gt](#builtin.Float.gt)
+ [builtin.Float.gteq](#builtin.Float.gteq)
+ [builtin.Float.log](#builtin.Float.log)
+ [builtin.Float.logBase](#builtin.Float.logBase)
+ [builtin.Float.lt](#builtin.Float.lt)
+ [builtin.Float.lteq](#builtin.Float.lteq)
+ [builtin.Float.max](#builtin.Float.max)
+ [builtin.Float.min](#builtin.Float.min)
+ [builtin.Float.pow](#builtin.Float.pow)
+ [builtin.Float.round](#builtin.Float.round)
+ [builtin.Float.sin](#builtin.Float.sin)
+ [builtin.Float.sinh](#builtin.Float.sinh)
+ [builtin.Float.sqrt](#builtin.Float.sqrt)
+ [builtin.Float.tan](#builtin.Float.tan)
+ [builtin.Float.tanh](#builtin.Float.tanh)
+ [builtin.Float.toText](#builtin.Float.toText)
+ [builtin.Float.truncate](#builtin.Float.truncate)
+ [builtin.Int.*](#builtin.Int.%2A)
+ [builtin.Int.+](#builtin.Int.%2B)
+ [builtin.Int.-](#builtin.Int.-)
+ [builtin.Int./](#builtin.Int.%2F)
+ [builtin.Int.eq](#builtin.Int.eq)
+ [builtin.Int.fromText](#builtin.Int.fromText)
+ [builtin.Int.gt](#builtin.Int.gt)
+ [builtin.Int.gteq](#builtin.Int.gteq)
+ [builtin.Int.increment](#builtin.Int.increment)
+ [builtin.Int.isEven](#builtin.Int.isEven)
+ [builtin.Int.isOdd](#builtin.Int.isOdd)
+ [builtin.Int.lt](#builtin.Int.lt)
+ [builtin.Int.lteq](#builtin.Int.lteq)
+ [builtin.Int.mod](#builtin.Int.mod)
+ [builtin.Int.negate](#builtin.Int.negate)
+ [builtin.Int.signum](#builtin.Int.signum)
+ [builtin.Int.toFloat](#builtin.Int.toFloat)
+ [builtin.Int.toText](#builtin.Int.toText)
+ [builtin.Int.truncate0](#builtin.Int.truncate0)
+ [builtin.List.++](#builtin.List.%2B%2B)
+ [builtin.List.+:](#builtin.List.%2B%3A)
+ [builtin.List.:+](#builtin.List.%3A%2B)
+ [builtin.List.at](#builtin.List.at)
+ [builtin.List.cons](#builtin.List.cons)
+ [builtin.List.drop](#builtin.List.drop)
+ [builtin.List.empty](#builtin.List.empty)
+ [builtin.List.size](#builtin.List.size)
+ [builtin.List.snoc](#builtin.List.snoc)
+ [builtin.List.take](#builtin.List.take)
+ [builtin.Nat.*](#builtin.Nat.%2A)
+ [builtin.Nat.+](#builtin.Nat.%2B)
+ [builtin.Nat./](#builtin.Nat.%2F)
+ [builtin.Nat.drop](#builtin.Nat.drop)
+ [builtin.Nat.eq](#builtin.Nat.eq)
+ [builtin.Nat.fromText](#builtin.Nat.fromText)
+ [builtin.Nat.gt](#builtin.Nat.gt)
+ [builtin.Nat.gteq](#builtin.Nat.gteq)
+ [builtin.Nat.increment](#builtin.Nat.increment)
+ [builtin.Nat.isEven](#builtin.Nat.isEven)
+ [builtin.Nat.isOdd](#builtin.Nat.isOdd)
+ [builtin.Nat.lt](#builtin.Nat.lt)
+ [builtin.Nat.lteq](#builtin.Nat.lteq)
+ [builtin.Nat.mod](#builtin.Nat.mod)
+ [builtin.Nat.sub](#builtin.Nat.sub)
+ [builtin.Nat.toFloat](#builtin.Nat.toFloat)
+ [builtin.Nat.toInt](#builtin.Nat.toInt)
+ [builtin.Nat.toText](#builtin.Nat.toText)
+ [builtin.Text.!=](#builtin.Text.%21%3D)
+ [builtin.Text.++](#builtin.Text.%2B%2B)
+ [builtin.Text.drop](#builtin.Text.drop)
+ [builtin.Text.empty](#builtin.Text.empty)
+ [builtin.Text.eq](#builtin.Text.eq)
+ [builtin.Text.fromCharList](#builtin.Text.fromCharList)
+ [builtin.Text.gt](#builtin.Text.gt)
+ [builtin.Text.gteq](#builtin.Text.gteq)
+ [builtin.Text.lt](#builtin.Text.lt)
+ [builtin.Text.lteq](#builtin.Text.lteq)
+ [builtin.Text.size](#builtin.Text.size)
+ [builtin.Text.take](#builtin.Text.take)
+ [builtin.Text.toCharList](#builtin.Text.toCharList)
+ [builtin.Text.uncons](#builtin.Text.uncons)
+ [builtin.Text.unsnoc](#builtin.Text.unsnoc)
+ [builtin.Universal.<](#builtin.Universal.%3C)
+ [builtin.Universal.<=](#builtin.Universal.%3C%3D)
+ [builtin.Universal.==](#builtin.Universal.%3D%3D)
+ [builtin.Universal.>](#builtin.Universal.%3E)
+ [builtin.Universal.>=](#builtin.Universal.%3E%3D)
+ [builtin.Universal.compare](#builtin.Universal.compare)
+ [builtin.io.accept](#builtin.io.accept)
+ [builtin.io.bracket](#builtin.io.bracket)
+ [builtin.io.clientSocket](#builtin.io.clientSocket)
+ [builtin.io.closeFile](#builtin.io.closeFile)
+ [builtin.io.closeSocket](#builtin.io.closeSocket)
+ [builtin.io.createDirectory](#builtin.io.createDirectory)
+ [builtin.io.delay](#builtin.io.delay)
+ [builtin.io.directoryContents](#builtin.io.directoryContents)
+ [builtin.io.fileExists](#builtin.io.fileExists)
+ [builtin.io.fork](#builtin.io.fork)
+ [builtin.io.getBuffering](#builtin.io.getBuffering)
+ [builtin.io.getCurrentDirectory](#builtin.io.getCurrentDirectory)
+ [builtin.io.getFileSize](#builtin.io.getFileSize)
+ [builtin.io.getFileTimestamp](#builtin.io.getFileTimestamp)
+ [builtin.io.getLine](#builtin.io.getLine)
+ [builtin.io.getTemporaryDirectory](#builtin.io.getTemporaryDirectory)
+ [builtin.io.getText](#builtin.io.getText)
+ [builtin.io.isDirectory](#builtin.io.isDirectory)
+ [builtin.io.isFileEOF](#builtin.io.isFileEOF)
+ [builtin.io.isFileOpen](#builtin.io.isFileOpen)
+ [builtin.io.isSeekable](#builtin.io.isSeekable)
+ [builtin.io.kill](#builtin.io.kill)
+ [builtin.io.listen](#builtin.io.listen)
+ [builtin.io.openFile](#builtin.io.openFile)
+ [builtin.io.position](#builtin.io.position)
+ [builtin.io.printLine](#builtin.io.printLine)
+ [builtin.io.putText](#builtin.io.putText)
+ [builtin.io.readLine](#builtin.io.readLine)
+ [builtin.io.receive](#builtin.io.receive)
+ [builtin.io.removeDirectory](#builtin.io.removeDirectory)
+ [builtin.io.removeFile](#builtin.io.removeFile)
+ [builtin.io.renameDirectory](#builtin.io.renameDirectory)
+ [builtin.io.renameFile](#builtin.io.renameFile)
+ [builtin.io.rethrow](#builtin.io.rethrow)
+ [builtin.io.seek](#builtin.io.seek)
+ [builtin.io.send](#builtin.io.send)
+ [builtin.io.serverSocket](#builtin.io.serverSocket)
+ [builtin.io.setBuffering](#builtin.io.setBuffering)
+ [builtin.io.setCurrentDirectory](#builtin.io.setCurrentDirectory)
+ [builtin.io.stderr](#builtin.io.stderr)
+ [builtin.io.stdin](#builtin.io.stdin)
+ [builtin.io.stdout](#builtin.io.stdout)
+ [builtin.io.systemTime](#builtin.io.systemTime)
+ [builtin.links.isTest](#builtin.links.isTest)
+ [exampleAdd](#exampleAdd)

# Types

<a name='builtin.Boolean'/>

### builtin.Boolean

```
lorem ipsum
```

<a name='builtin.Bytes'/>

### builtin.Bytes

```
lorem ipsum
```

<a name='builtin.Char'/>

### builtin.Char

```
lorem ipsum
```

<a name='builtin.Either'/>

### builtin.Either

```
lorem ipsum
```

<a name='builtin.Float'/>

### builtin.Float

```
lorem ipsum
```

<a name='builtin.Int'/>

### builtin.Int

```
lorem ipsum
```

<a name='builtin.IsTest'/>

### builtin.IsTest

```
lorem ipsum
```

<a name='builtin.List'/>

### builtin.List

```
lorem ipsum
```

<a name='builtin.Nat'/>

### builtin.Nat

```
lorem ipsum
```

<a name='builtin.Optional'/>

### builtin.Optional

```
lorem ipsum
```

<a name='builtin.Request'/>

### builtin.Request

```
lorem ipsum
```

<a name='builtin.Test.Result'/>

### builtin.Test.Result

```
lorem ipsum
```

<a name='builtin.Text'/>

### builtin.Text

```
lorem ipsum
```

<a name='builtin.Tuple'/>

### builtin.Tuple

```
lorem ipsum
```

<a name='builtin.Unit'/>

### builtin.Unit

```
lorem ipsum
```

<a name='builtin.io.BufferMode'/>

### builtin.io.BufferMode

```
lorem ipsum
```

<a name='builtin.io.EpochTime'/>

### builtin.io.EpochTime

```
lorem ipsum
```

<a name='builtin.io.Error'/>

### builtin.io.Error

```
lorem ipsum
```

<a name='builtin.io.ErrorDescription'/>

### builtin.io.ErrorDescription

```
lorem ipsum
```

<a name='builtin.io.ErrorLocation'/>

### builtin.io.ErrorLocation

```
lorem ipsum
```

<a name='builtin.io.ErrorType'/>

### builtin.io.ErrorType

```
lorem ipsum
```

<a name='builtin.io.FilePath'/>

### builtin.io.FilePath

```
lorem ipsum
```

<a name='builtin.io.Handle'/>

### builtin.io.Handle

```
lorem ipsum
```

<a name='builtin.io.HostName'/>

### builtin.io.HostName

```
lorem ipsum
```

<a name='builtin.io.IO'/>

### builtin.io.IO

```
lorem ipsum
```

<a name='builtin.io.Mode'/>

### builtin.io.Mode

```
lorem ipsum
```

<a name='builtin.io.SeekMode'/>

### builtin.io.SeekMode

```
lorem ipsum
```

<a name='builtin.io.ServiceName'/>

### builtin.io.ServiceName

```
lorem ipsum
```

<a name='builtin.io.Socket'/>

### builtin.io.Socket

```
lorem ipsum
```

<a name='builtin.io.ThreadId'/>

### builtin.io.ThreadId

```
lorem ipsum
```


# Terms

<a name='builtin.Boolean.not'/>

### builtin.Boolean.not

```
lorem ipsum
```

<a name='builtin.Bytes.%2B%2B'/>

### builtin.Bytes.++

```
lorem ipsum
```

<a name='builtin.Bytes.at'/>

### builtin.Bytes.at

```
lorem ipsum
```

<a name='builtin.Bytes.drop'/>

### builtin.Bytes.drop

```
lorem ipsum
```

<a name='builtin.Bytes.empty'/>

### builtin.Bytes.empty

```
lorem ipsum
```

<a name='builtin.Bytes.flatten'/>

### builtin.Bytes.flatten

```
lorem ipsum
```

<a name='builtin.Bytes.fromList'/>

### builtin.Bytes.fromList

```
lorem ipsum
```

<a name='builtin.Bytes.size'/>

### builtin.Bytes.size

```
lorem ipsum
```

<a name='builtin.Bytes.take'/>

### builtin.Bytes.take

```
lorem ipsum
```

<a name='builtin.Bytes.toList'/>

### builtin.Bytes.toList

```
lorem ipsum
```

<a name='builtin.Char.fromNat'/>

### builtin.Char.fromNat

```
lorem ipsum
```

<a name='builtin.Char.toNat'/>

### builtin.Char.toNat

```
lorem ipsum
```

<a name='builtin.Debug.watch'/>

### builtin.Debug.watch

```
lorem ipsum
```

<a name='builtin.Float.%2A'/>

### builtin.Float.*

```
lorem ipsum
```

<a name='builtin.Float.%2B'/>

### builtin.Float.+

```
lorem ipsum
```

<a name='builtin.Float.-'/>

### builtin.Float.-

```
lorem ipsum
```

<a name='builtin.Float.%2F'/>

### builtin.Float./

```
lorem ipsum
```

<a name='builtin.Float.abs'/>

### builtin.Float.abs

```
lorem ipsum
```

<a name='builtin.Float.acos'/>

### builtin.Float.acos

```
lorem ipsum
```

<a name='builtin.Float.acosh'/>

### builtin.Float.acosh

```
lorem ipsum
```

<a name='builtin.Float.asin'/>

### builtin.Float.asin

```
lorem ipsum
```

<a name='builtin.Float.asinh'/>

### builtin.Float.asinh

```
lorem ipsum
```

<a name='builtin.Float.atan'/>

### builtin.Float.atan

```
lorem ipsum
```

<a name='builtin.Float.atan2'/>

### builtin.Float.atan2

```
lorem ipsum
```

<a name='builtin.Float.atanh'/>

### builtin.Float.atanh

```
lorem ipsum
```

<a name='builtin.Float.ceiling'/>

### builtin.Float.ceiling

```
lorem ipsum
```

<a name='builtin.Float.cos'/>

### builtin.Float.cos

```
lorem ipsum
```

<a name='builtin.Float.cosh'/>

### builtin.Float.cosh

```
lorem ipsum
```

<a name='builtin.Float.eq'/>

### builtin.Float.eq

```
lorem ipsum
```

<a name='builtin.Float.exp'/>

### builtin.Float.exp

```
lorem ipsum
```

<a name='builtin.Float.floor'/>

### builtin.Float.floor

```
lorem ipsum
```

<a name='builtin.Float.fromText'/>

### builtin.Float.fromText

```
lorem ipsum
```

<a name='builtin.Float.gt'/>

### builtin.Float.gt

```
lorem ipsum
```

<a name='builtin.Float.gteq'/>

### builtin.Float.gteq

```
lorem ipsum
```

<a name='builtin.Float.log'/>

### builtin.Float.log

```
lorem ipsum
```

<a name='builtin.Float.logBase'/>

### builtin.Float.logBase

```
lorem ipsum
```

<a name='builtin.Float.lt'/>

### builtin.Float.lt

```
lorem ipsum
```

<a name='builtin.Float.lteq'/>

### builtin.Float.lteq

```
lorem ipsum
```

<a name='builtin.Float.max'/>

### builtin.Float.max

```
lorem ipsum
```

<a name='builtin.Float.min'/>

### builtin.Float.min

```
lorem ipsum
```

<a name='builtin.Float.pow'/>

### builtin.Float.pow

```
lorem ipsum
```

<a name='builtin.Float.round'/>

### builtin.Float.round

```
lorem ipsum
```

<a name='builtin.Float.sin'/>

### builtin.Float.sin

```
lorem ipsum
```

<a name='builtin.Float.sinh'/>

### builtin.Float.sinh

```
lorem ipsum
```

<a name='builtin.Float.sqrt'/>

### builtin.Float.sqrt

```
lorem ipsum
```

<a name='builtin.Float.tan'/>

### builtin.Float.tan

```
lorem ipsum
```

<a name='builtin.Float.tanh'/>

### builtin.Float.tanh

```
lorem ipsum
```

<a name='builtin.Float.toText'/>

### builtin.Float.toText

```
lorem ipsum
```

<a name='builtin.Float.truncate'/>

### builtin.Float.truncate

```
lorem ipsum
```

<a name='builtin.Int.%2A'/>

### builtin.Int.*

```
lorem ipsum
```

<a name='builtin.Int.%2B'/>

### builtin.Int.+

```
lorem ipsum
```

<a name='builtin.Int.-'/>

### builtin.Int.-

```
lorem ipsum
```

<a name='builtin.Int.%2F'/>

### builtin.Int./

```
lorem ipsum
```

<a name='builtin.Int.eq'/>

### builtin.Int.eq

```
lorem ipsum
```

<a name='builtin.Int.fromText'/>

### builtin.Int.fromText

```
lorem ipsum
```

<a name='builtin.Int.gt'/>

### builtin.Int.gt

```
lorem ipsum
```

<a name='builtin.Int.gteq'/>

### builtin.Int.gteq

```
lorem ipsum
```

<a name='builtin.Int.increment'/>

### builtin.Int.increment

```
lorem ipsum
```

<a name='builtin.Int.isEven'/>

### builtin.Int.isEven

```
lorem ipsum
```

<a name='builtin.Int.isOdd'/>

### builtin.Int.isOdd

```
lorem ipsum
```

<a name='builtin.Int.lt'/>

### builtin.Int.lt

```
lorem ipsum
```

<a name='builtin.Int.lteq'/>

### builtin.Int.lteq

```
lorem ipsum
```

<a name='builtin.Int.mod'/>

### builtin.Int.mod

```
lorem ipsum
```

<a name='builtin.Int.negate'/>

### builtin.Int.negate

```
lorem ipsum
```

<a name='builtin.Int.signum'/>

### builtin.Int.signum

```
lorem ipsum
```

<a name='builtin.Int.toFloat'/>

### builtin.Int.toFloat

```
lorem ipsum
```

<a name='builtin.Int.toText'/>

### builtin.Int.toText

```
lorem ipsum
```

<a name='builtin.Int.truncate0'/>

### builtin.Int.truncate0

```
lorem ipsum
```

<a name='builtin.List.%2B%2B'/>

### builtin.List.++

```
lorem ipsum
```

<a name='builtin.List.%2B%3A'/>

### builtin.List.+:

```
lorem ipsum
```

<a name='builtin.List.%3A%2B'/>

### builtin.List.:+

```
lorem ipsum
```

<a name='builtin.List.at'/>

### builtin.List.at

```
lorem ipsum
```

<a name='builtin.List.cons'/>

### builtin.List.cons

```
lorem ipsum
```

<a name='builtin.List.drop'/>

### builtin.List.drop

```
lorem ipsum
```

<a name='builtin.List.empty'/>

### builtin.List.empty

```
lorem ipsum
```

<a name='builtin.List.size'/>

### builtin.List.size

```
lorem ipsum
```

<a name='builtin.List.snoc'/>

### builtin.List.snoc

```
lorem ipsum
```

<a name='builtin.List.take'/>

### builtin.List.take

```
lorem ipsum
```

<a name='builtin.Nat.%2A'/>

### builtin.Nat.*

```
lorem ipsum
```

<a name='builtin.Nat.%2B'/>

### builtin.Nat.+

```
lorem ipsum
```

<a name='builtin.Nat.%2F'/>

### builtin.Nat./

```
lorem ipsum
```

<a name='builtin.Nat.drop'/>

### builtin.Nat.drop

```
lorem ipsum
```

<a name='builtin.Nat.eq'/>

### builtin.Nat.eq

```
lorem ipsum
```

<a name='builtin.Nat.fromText'/>

### builtin.Nat.fromText

```
lorem ipsum
```

<a name='builtin.Nat.gt'/>

### builtin.Nat.gt

```
lorem ipsum
```

<a name='builtin.Nat.gteq'/>

### builtin.Nat.gteq

```
lorem ipsum
```

<a name='builtin.Nat.increment'/>

### builtin.Nat.increment

```
lorem ipsum
```

<a name='builtin.Nat.isEven'/>

### builtin.Nat.isEven

```
lorem ipsum
```

<a name='builtin.Nat.isOdd'/>

### builtin.Nat.isOdd

```
lorem ipsum
```

<a name='builtin.Nat.lt'/>

### builtin.Nat.lt

```
lorem ipsum
```

<a name='builtin.Nat.lteq'/>

### builtin.Nat.lteq

```
lorem ipsum
```

<a name='builtin.Nat.mod'/>

### builtin.Nat.mod

```
lorem ipsum
```

<a name='builtin.Nat.sub'/>

### builtin.Nat.sub

```
lorem ipsum
```

<a name='builtin.Nat.toFloat'/>

### builtin.Nat.toFloat

```
lorem ipsum
```

<a name='builtin.Nat.toInt'/>

### builtin.Nat.toInt

```
lorem ipsum
```

<a name='builtin.Nat.toText'/>

### builtin.Nat.toText

```
lorem ipsum
```

<a name='builtin.Text.%21%3D'/>

### builtin.Text.!=

```
lorem ipsum
```

<a name='builtin.Text.%2B%2B'/>

### builtin.Text.++

```
lorem ipsum
```

<a name='builtin.Text.drop'/>

### builtin.Text.drop

```
lorem ipsum
```

<a name='builtin.Text.empty'/>

### builtin.Text.empty

```
lorem ipsum
```

<a name='builtin.Text.eq'/>

### builtin.Text.eq

```
lorem ipsum
```

<a name='builtin.Text.fromCharList'/>

### builtin.Text.fromCharList

```
lorem ipsum
```

<a name='builtin.Text.gt'/>

### builtin.Text.gt

```
lorem ipsum
```

<a name='builtin.Text.gteq'/>

### builtin.Text.gteq

```
lorem ipsum
```

<a name='builtin.Text.lt'/>

### builtin.Text.lt

```
lorem ipsum
```

<a name='builtin.Text.lteq'/>

### builtin.Text.lteq

```
lorem ipsum
```

<a name='builtin.Text.size'/>

### builtin.Text.size

```
lorem ipsum
```

<a name='builtin.Text.take'/>

### builtin.Text.take

```
lorem ipsum
```

<a name='builtin.Text.toCharList'/>

### builtin.Text.toCharList

```
lorem ipsum
```

<a name='builtin.Text.uncons'/>

### builtin.Text.uncons

```
lorem ipsum
```

<a name='builtin.Text.unsnoc'/>

### builtin.Text.unsnoc

```
lorem ipsum
```

<a name='builtin.Universal.%3C'/>

### builtin.Universal.<

```
lorem ipsum
```

<a name='builtin.Universal.%3C%3D'/>

### builtin.Universal.<=

```
lorem ipsum
```

<a name='builtin.Universal.%3D%3D'/>

### builtin.Universal.==

```
lorem ipsum
```

<a name='builtin.Universal.%3E'/>

### builtin.Universal.>

```
lorem ipsum
```

<a name='builtin.Universal.%3E%3D'/>

### builtin.Universal.>=

```
lorem ipsum
```

<a name='builtin.Universal.compare'/>

### builtin.Universal.compare

```
lorem ipsum
```

<a name='builtin.io.accept'/>

### builtin.io.accept

```
lorem ipsum
```

<a name='builtin.io.bracket'/>

### builtin.io.bracket

```
lorem ipsum
```

<a name='builtin.io.clientSocket'/>

### builtin.io.clientSocket

```
lorem ipsum
```

<a name='builtin.io.closeFile'/>

### builtin.io.closeFile

```
lorem ipsum
```

<a name='builtin.io.closeSocket'/>

### builtin.io.closeSocket

```
lorem ipsum
```

<a name='builtin.io.createDirectory'/>

### builtin.io.createDirectory

```
lorem ipsum
```

<a name='builtin.io.delay'/>

### builtin.io.delay

```
lorem ipsum
```

<a name='builtin.io.directoryContents'/>

### builtin.io.directoryContents

```
lorem ipsum
```

<a name='builtin.io.fileExists'/>

### builtin.io.fileExists

```
lorem ipsum
```

<a name='builtin.io.fork'/>

### builtin.io.fork

```
lorem ipsum
```

<a name='builtin.io.getBuffering'/>

### builtin.io.getBuffering

```
lorem ipsum
```

<a name='builtin.io.getCurrentDirectory'/>

### builtin.io.getCurrentDirectory

```
lorem ipsum
```

<a name='builtin.io.getFileSize'/>

### builtin.io.getFileSize

```
lorem ipsum
```

<a name='builtin.io.getFileTimestamp'/>

### builtin.io.getFileTimestamp

```
lorem ipsum
```

<a name='builtin.io.getLine'/>

### builtin.io.getLine

```
lorem ipsum
```

<a name='builtin.io.getTemporaryDirectory'/>

### builtin.io.getTemporaryDirectory

```
lorem ipsum
```

<a name='builtin.io.getText'/>

### builtin.io.getText

```
lorem ipsum
```

<a name='builtin.io.isDirectory'/>

### builtin.io.isDirectory

```
lorem ipsum
```

<a name='builtin.io.isFileEOF'/>

### builtin.io.isFileEOF

```
lorem ipsum
```

<a name='builtin.io.isFileOpen'/>

### builtin.io.isFileOpen

```
lorem ipsum
```

<a name='builtin.io.isSeekable'/>

### builtin.io.isSeekable

```
lorem ipsum
```

<a name='builtin.io.kill'/>

### builtin.io.kill

```
lorem ipsum
```

<a name='builtin.io.listen'/>

### builtin.io.listen

```
lorem ipsum
```

<a name='builtin.io.openFile'/>

### builtin.io.openFile

```
lorem ipsum
```

<a name='builtin.io.position'/>

### builtin.io.position

```
lorem ipsum
```

<a name='builtin.io.printLine'/>

### builtin.io.printLine

```
lorem ipsum
```

<a name='builtin.io.putText'/>

### builtin.io.putText

```
lorem ipsum
```

<a name='builtin.io.readLine'/>

### builtin.io.readLine

```
lorem ipsum
```

<a name='builtin.io.receive'/>

### builtin.io.receive

```
lorem ipsum
```

<a name='builtin.io.removeDirectory'/>

### builtin.io.removeDirectory

```
lorem ipsum
```

<a name='builtin.io.removeFile'/>

### builtin.io.removeFile

```
lorem ipsum
```

<a name='builtin.io.renameDirectory'/>

### builtin.io.renameDirectory

```
lorem ipsum
```

<a name='builtin.io.renameFile'/>

### builtin.io.renameFile

```
lorem ipsum
```

<a name='builtin.io.rethrow'/>

### builtin.io.rethrow

```
lorem ipsum
```

<a name='builtin.io.seek'/>

### builtin.io.seek

```
lorem ipsum
```

<a name='builtin.io.send'/>

### builtin.io.send

```
lorem ipsum
```

<a name='builtin.io.serverSocket'/>

### builtin.io.serverSocket

```
lorem ipsum
```

<a name='builtin.io.setBuffering'/>

### builtin.io.setBuffering

```
lorem ipsum
```

<a name='builtin.io.setCurrentDirectory'/>

### builtin.io.setCurrentDirectory

```
lorem ipsum
```

<a name='builtin.io.stderr'/>

### builtin.io.stderr

```
lorem ipsum
```

<a name='builtin.io.stdin'/>

### builtin.io.stdin

```
lorem ipsum
```

<a name='builtin.io.stdout'/>

### builtin.io.stdout

```
lorem ipsum
```

<a name='builtin.io.systemTime'/>

### builtin.io.systemTime

```
lorem ipsum
```

<a name='builtin.links.isTest'/>

### builtin.links.isTest

```
lorem ipsum
```

<a name='exampleAdd'/>

### exampleAdd

```
lorem ipsum
```

