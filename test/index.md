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
+ [builtin.Bytes.++](#builtin.Bytes.++)
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
+ [builtin.Float.*](#builtin.Float.*)
+ [builtin.Float.+](#builtin.Float.+)
+ [builtin.Float.-](#builtin.Float.-)
+ [builtin.Float./](#builtin.Float./)
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
+ [builtin.Int.*](#builtin.Int.*)
+ [builtin.Int.+](#builtin.Int.+)
+ [builtin.Int.-](#builtin.Int.-)
+ [builtin.Int./](#builtin.Int./)
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
+ [builtin.List.++](#builtin.List.++)
+ [builtin.List.+:](#builtin.List.+:)
+ [builtin.List.:+](#builtin.List.:+)
+ [builtin.List.at](#builtin.List.at)
+ [builtin.List.cons](#builtin.List.cons)
+ [builtin.List.drop](#builtin.List.drop)
+ [builtin.List.empty](#builtin.List.empty)
+ [builtin.List.size](#builtin.List.size)
+ [builtin.List.snoc](#builtin.List.snoc)
+ [builtin.List.take](#builtin.List.take)
+ [builtin.Nat.*](#builtin.Nat.*)
+ [builtin.Nat.+](#builtin.Nat.+)
+ [builtin.Nat./](#builtin.Nat./)
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
+ [builtin.Text.!=](#builtin.Text.!=)
+ [builtin.Text.++](#builtin.Text.++)
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
+ [builtin.Universal.<](#builtin.Universal.<)
+ [builtin.Universal.<=](#builtin.Universal.<=)
+ [builtin.Universal.==](#builtin.Universal.==)
+ [builtin.Universal.>](#builtin.Universal.>)
+ [builtin.Universal.>=](#builtin.Universal.>=)
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

### builtin.Boolean

```
lorem ipsum
```

### builtin.Bytes

```
lorem ipsum
```

### builtin.Char

```
lorem ipsum
```

### builtin.Either

```
lorem ipsum
```

### builtin.Float

```
lorem ipsum
```

### builtin.Int

```
lorem ipsum
```

### builtin.IsTest

```
lorem ipsum
```

### builtin.List

```
lorem ipsum
```

### builtin.Nat

```
lorem ipsum
```

### builtin.Optional

```
lorem ipsum
```

### builtin.Request

```
lorem ipsum
```

### builtin.Test.Result

```
lorem ipsum
```

### builtin.Text

```
lorem ipsum
```

### builtin.Tuple

```
lorem ipsum
```

### builtin.Unit

```
lorem ipsum
```

### builtin.io.BufferMode

```
lorem ipsum
```

### builtin.io.EpochTime

```
lorem ipsum
```

### builtin.io.Error

```
lorem ipsum
```

### builtin.io.ErrorDescription

```
lorem ipsum
```

### builtin.io.ErrorLocation

```
lorem ipsum
```

### builtin.io.ErrorType

```
lorem ipsum
```

### builtin.io.FilePath

```
lorem ipsum
```

### builtin.io.Handle

```
lorem ipsum
```

### builtin.io.HostName

```
lorem ipsum
```

### builtin.io.IO

```
lorem ipsum
```

### builtin.io.Mode

```
lorem ipsum
```

### builtin.io.SeekMode

```
lorem ipsum
```

### builtin.io.ServiceName

```
lorem ipsum
```

### builtin.io.Socket

```
lorem ipsum
```

### builtin.io.ThreadId

```
lorem ipsum
```


# Terms

### builtin.Boolean.not

```
lorem ipsum
```

### builtin.Bytes.++

```
lorem ipsum
```

### builtin.Bytes.at

```
lorem ipsum
```

### builtin.Bytes.drop

```
lorem ipsum
```

### builtin.Bytes.empty

```
lorem ipsum
```

### builtin.Bytes.flatten

```
lorem ipsum
```

### builtin.Bytes.fromList

```
lorem ipsum
```

### builtin.Bytes.size

```
lorem ipsum
```

### builtin.Bytes.take

```
lorem ipsum
```

### builtin.Bytes.toList

```
lorem ipsum
```

### builtin.Char.fromNat

```
lorem ipsum
```

### builtin.Char.toNat

```
lorem ipsum
```

### builtin.Debug.watch

```
lorem ipsum
```

### builtin.Float.*

```
lorem ipsum
```

### builtin.Float.+

```
lorem ipsum
```

### builtin.Float.-

```
lorem ipsum
```

### builtin.Float./

```
lorem ipsum
```

### builtin.Float.abs

```
lorem ipsum
```

### builtin.Float.acos

```
lorem ipsum
```

### builtin.Float.acosh

```
lorem ipsum
```

### builtin.Float.asin

```
lorem ipsum
```

### builtin.Float.asinh

```
lorem ipsum
```

### builtin.Float.atan

```
lorem ipsum
```

### builtin.Float.atan2

```
lorem ipsum
```

### builtin.Float.atanh

```
lorem ipsum
```

### builtin.Float.ceiling

```
lorem ipsum
```

### builtin.Float.cos

```
lorem ipsum
```

### builtin.Float.cosh

```
lorem ipsum
```

### builtin.Float.eq

```
lorem ipsum
```

### builtin.Float.exp

```
lorem ipsum
```

### builtin.Float.floor

```
lorem ipsum
```

### builtin.Float.fromText

```
lorem ipsum
```

### builtin.Float.gt

```
lorem ipsum
```

### builtin.Float.gteq

```
lorem ipsum
```

### builtin.Float.log

```
lorem ipsum
```

### builtin.Float.logBase

```
lorem ipsum
```

### builtin.Float.lt

```
lorem ipsum
```

### builtin.Float.lteq

```
lorem ipsum
```

### builtin.Float.max

```
lorem ipsum
```

### builtin.Float.min

```
lorem ipsum
```

### builtin.Float.pow

```
lorem ipsum
```

### builtin.Float.round

```
lorem ipsum
```

### builtin.Float.sin

```
lorem ipsum
```

### builtin.Float.sinh

```
lorem ipsum
```

### builtin.Float.sqrt

```
lorem ipsum
```

### builtin.Float.tan

```
lorem ipsum
```

### builtin.Float.tanh

```
lorem ipsum
```

### builtin.Float.toText

```
lorem ipsum
```

### builtin.Float.truncate

```
lorem ipsum
```

### builtin.Int.*

```
lorem ipsum
```

### builtin.Int.+

```
lorem ipsum
```

### builtin.Int.-

```
lorem ipsum
```

### builtin.Int./

```
lorem ipsum
```

### builtin.Int.eq

```
lorem ipsum
```

### builtin.Int.fromText

```
lorem ipsum
```

### builtin.Int.gt

```
lorem ipsum
```

### builtin.Int.gteq

```
lorem ipsum
```

### builtin.Int.increment

```
lorem ipsum
```

### builtin.Int.isEven

```
lorem ipsum
```

### builtin.Int.isOdd

```
lorem ipsum
```

### builtin.Int.lt

```
lorem ipsum
```

### builtin.Int.lteq

```
lorem ipsum
```

### builtin.Int.mod

```
lorem ipsum
```

### builtin.Int.negate

```
lorem ipsum
```

### builtin.Int.signum

```
lorem ipsum
```

### builtin.Int.toFloat

```
lorem ipsum
```

### builtin.Int.toText

```
lorem ipsum
```

### builtin.Int.truncate0

```
lorem ipsum
```

### builtin.List.++

```
lorem ipsum
```

### builtin.List.+:

```
lorem ipsum
```

### builtin.List.:+

```
lorem ipsum
```

### builtin.List.at

```
lorem ipsum
```

### builtin.List.cons

```
lorem ipsum
```

### builtin.List.drop

```
lorem ipsum
```

### builtin.List.empty

```
lorem ipsum
```

### builtin.List.size

```
lorem ipsum
```

### builtin.List.snoc

```
lorem ipsum
```

### builtin.List.take

```
lorem ipsum
```

### builtin.Nat.*

```
lorem ipsum
```

### builtin.Nat.+

```
lorem ipsum
```

### builtin.Nat./

```
lorem ipsum
```

### builtin.Nat.drop

```
lorem ipsum
```

### builtin.Nat.eq

```
lorem ipsum
```

### builtin.Nat.fromText

```
lorem ipsum
```

### builtin.Nat.gt

```
lorem ipsum
```

### builtin.Nat.gteq

```
lorem ipsum
```

### builtin.Nat.increment

```
lorem ipsum
```

### builtin.Nat.isEven

```
lorem ipsum
```

### builtin.Nat.isOdd

```
lorem ipsum
```

### builtin.Nat.lt

```
lorem ipsum
```

### builtin.Nat.lteq

```
lorem ipsum
```

### builtin.Nat.mod

```
lorem ipsum
```

### builtin.Nat.sub

```
lorem ipsum
```

### builtin.Nat.toFloat

```
lorem ipsum
```

### builtin.Nat.toInt

```
lorem ipsum
```

### builtin.Nat.toText

```
lorem ipsum
```

### builtin.Text.!=

```
lorem ipsum
```

### builtin.Text.++

```
lorem ipsum
```

### builtin.Text.drop

```
lorem ipsum
```

### builtin.Text.empty

```
lorem ipsum
```

### builtin.Text.eq

```
lorem ipsum
```

### builtin.Text.fromCharList

```
lorem ipsum
```

### builtin.Text.gt

```
lorem ipsum
```

### builtin.Text.gteq

```
lorem ipsum
```

### builtin.Text.lt

```
lorem ipsum
```

### builtin.Text.lteq

```
lorem ipsum
```

### builtin.Text.size

```
lorem ipsum
```

### builtin.Text.take

```
lorem ipsum
```

### builtin.Text.toCharList

```
lorem ipsum
```

### builtin.Text.uncons

```
lorem ipsum
```

### builtin.Text.unsnoc

```
lorem ipsum
```

### builtin.Universal.<

```
lorem ipsum
```

### builtin.Universal.<=

```
lorem ipsum
```

### builtin.Universal.==

```
lorem ipsum
```

### builtin.Universal.>

```
lorem ipsum
```

### builtin.Universal.>=

```
lorem ipsum
```

### builtin.Universal.compare

```
lorem ipsum
```

### builtin.io.accept

```
lorem ipsum
```

### builtin.io.bracket

```
lorem ipsum
```

### builtin.io.clientSocket

```
lorem ipsum
```

### builtin.io.closeFile

```
lorem ipsum
```

### builtin.io.closeSocket

```
lorem ipsum
```

### builtin.io.createDirectory

```
lorem ipsum
```

### builtin.io.delay

```
lorem ipsum
```

### builtin.io.directoryContents

```
lorem ipsum
```

### builtin.io.fileExists

```
lorem ipsum
```

### builtin.io.fork

```
lorem ipsum
```

### builtin.io.getBuffering

```
lorem ipsum
```

### builtin.io.getCurrentDirectory

```
lorem ipsum
```

### builtin.io.getFileSize

```
lorem ipsum
```

### builtin.io.getFileTimestamp

```
lorem ipsum
```

### builtin.io.getLine

```
lorem ipsum
```

### builtin.io.getTemporaryDirectory

```
lorem ipsum
```

### builtin.io.getText

```
lorem ipsum
```

### builtin.io.isDirectory

```
lorem ipsum
```

### builtin.io.isFileEOF

```
lorem ipsum
```

### builtin.io.isFileOpen

```
lorem ipsum
```

### builtin.io.isSeekable

```
lorem ipsum
```

### builtin.io.kill

```
lorem ipsum
```

### builtin.io.listen

```
lorem ipsum
```

### builtin.io.openFile

```
lorem ipsum
```

### builtin.io.position

```
lorem ipsum
```

### builtin.io.printLine

```
lorem ipsum
```

### builtin.io.putText

```
lorem ipsum
```

### builtin.io.readLine

```
lorem ipsum
```

### builtin.io.receive

```
lorem ipsum
```

### builtin.io.removeDirectory

```
lorem ipsum
```

### builtin.io.removeFile

```
lorem ipsum
```

### builtin.io.renameDirectory

```
lorem ipsum
```

### builtin.io.renameFile

```
lorem ipsum
```

### builtin.io.rethrow

```
lorem ipsum
```

### builtin.io.seek

```
lorem ipsum
```

### builtin.io.send

```
lorem ipsum
```

### builtin.io.serverSocket

```
lorem ipsum
```

### builtin.io.setBuffering

```
lorem ipsum
```

### builtin.io.setCurrentDirectory

```
lorem ipsum
```

### builtin.io.stderr

```
lorem ipsum
```

### builtin.io.stdin

```
lorem ipsum
```

### builtin.io.stdout

```
lorem ipsum
```

### builtin.io.systemTime

```
lorem ipsum
```

### builtin.links.isTest

```
lorem ipsum
```

### exampleAdd

```
lorem ipsum
```

