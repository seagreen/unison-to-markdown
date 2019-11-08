# Table of Contents

## Types

+ [builtin.Boolean](#builtinBoolean)
+ [builtin.Bytes](#builtinBytes)
+ [builtin.Char](#builtinChar)
+ [builtin.Either](#builtinEither)
+ [builtin.Float](#builtinFloat)
+ [builtin.Int](#builtinInt)
+ [builtin.IsTest](#builtinIsTest)
+ [builtin.List](#builtinList)
+ [builtin.Nat](#builtinNat)
+ [builtin.Optional](#builtinOptional)
+ [builtin.Request](#builtinRequest)
+ [builtin.Test.Result](#builtinTestResult)
+ [builtin.Text](#builtinText)
+ [builtin.Tuple](#builtinTuple)
+ [builtin.Unit](#builtinUnit)
+ [builtin.io.BufferMode](#builtinioBufferMode)
+ [builtin.io.EpochTime](#builtinioEpochTime)
+ [builtin.io.Error](#builtinioError)
+ [builtin.io.ErrorDescription](#builtinioErrorDescription)
+ [builtin.io.ErrorLocation](#builtinioErrorLocation)
+ [builtin.io.ErrorType](#builtinioErrorType)
+ [builtin.io.FilePath](#builtinioFilePath)
+ [builtin.io.Handle](#builtinioHandle)
+ [builtin.io.HostName](#builtinioHostName)
+ [builtin.io.IO](#builtinioIO)
+ [builtin.io.Mode](#builtinioMode)
+ [builtin.io.SeekMode](#builtinioSeekMode)
+ [builtin.io.ServiceName](#builtinioServiceName)
+ [builtin.io.Socket](#builtinioSocket)
+ [builtin.io.ThreadId](#builtinioThreadId)

## Terms

+ [builtin.Boolean.not](#builtinBooleannot)
+ [builtin.Bytes.++](#builtinBytes++)
+ [builtin.Bytes.at](#builtinBytesat)
+ [builtin.Bytes.drop](#builtinBytesdrop)
+ [builtin.Bytes.empty](#builtinBytesempty)
+ [builtin.Bytes.flatten](#builtinBytesflatten)
+ [builtin.Bytes.fromList](#builtinBytesfromList)
+ [builtin.Bytes.size](#builtinBytessize)
+ [builtin.Bytes.take](#builtinBytestake)
+ [builtin.Bytes.toList](#builtinBytestoList)
+ [builtin.Char.fromNat](#builtinCharfromNat)
+ [builtin.Char.toNat](#builtinChartoNat)
+ [builtin.Debug.watch](#builtinDebugwatch)
+ [builtin.Float.*](#builtinFloat*)
+ [builtin.Float.+](#builtinFloat+)
+ [builtin.Float.-](#builtinFloat-)
+ [builtin.Float./](#builtinFloat/)
+ [builtin.Float.abs](#builtinFloatabs)
+ [builtin.Float.acos](#builtinFloatacos)
+ [builtin.Float.acosh](#builtinFloatacosh)
+ [builtin.Float.asin](#builtinFloatasin)
+ [builtin.Float.asinh](#builtinFloatasinh)
+ [builtin.Float.atan](#builtinFloatatan)
+ [builtin.Float.atan2](#builtinFloatatan2)
+ [builtin.Float.atanh](#builtinFloatatanh)
+ [builtin.Float.ceiling](#builtinFloatceiling)
+ [builtin.Float.cos](#builtinFloatcos)
+ [builtin.Float.cosh](#builtinFloatcosh)
+ [builtin.Float.eq](#builtinFloateq)
+ [builtin.Float.exp](#builtinFloatexp)
+ [builtin.Float.floor](#builtinFloatfloor)
+ [builtin.Float.fromText](#builtinFloatfromText)
+ [builtin.Float.gt](#builtinFloatgt)
+ [builtin.Float.gteq](#builtinFloatgteq)
+ [builtin.Float.log](#builtinFloatlog)
+ [builtin.Float.logBase](#builtinFloatlogBase)
+ [builtin.Float.lt](#builtinFloatlt)
+ [builtin.Float.lteq](#builtinFloatlteq)
+ [builtin.Float.max](#builtinFloatmax)
+ [builtin.Float.min](#builtinFloatmin)
+ [builtin.Float.pow](#builtinFloatpow)
+ [builtin.Float.round](#builtinFloatround)
+ [builtin.Float.sin](#builtinFloatsin)
+ [builtin.Float.sinh](#builtinFloatsinh)
+ [builtin.Float.sqrt](#builtinFloatsqrt)
+ [builtin.Float.tan](#builtinFloattan)
+ [builtin.Float.tanh](#builtinFloattanh)
+ [builtin.Float.toText](#builtinFloattoText)
+ [builtin.Float.truncate](#builtinFloattruncate)
+ [builtin.Int.*](#builtinInt*)
+ [builtin.Int.+](#builtinInt+)
+ [builtin.Int.-](#builtinInt-)
+ [builtin.Int./](#builtinInt/)
+ [builtin.Int.eq](#builtinInteq)
+ [builtin.Int.fromText](#builtinIntfromText)
+ [builtin.Int.gt](#builtinIntgt)
+ [builtin.Int.gteq](#builtinIntgteq)
+ [builtin.Int.increment](#builtinIntincrement)
+ [builtin.Int.isEven](#builtinIntisEven)
+ [builtin.Int.isOdd](#builtinIntisOdd)
+ [builtin.Int.lt](#builtinIntlt)
+ [builtin.Int.lteq](#builtinIntlteq)
+ [builtin.Int.mod](#builtinIntmod)
+ [builtin.Int.negate](#builtinIntnegate)
+ [builtin.Int.signum](#builtinIntsignum)
+ [builtin.Int.toFloat](#builtinInttoFloat)
+ [builtin.Int.toText](#builtinInttoText)
+ [builtin.Int.truncate0](#builtinInttruncate0)
+ [builtin.List.++](#builtinList++)
+ [builtin.List.+:](#builtinList+:)
+ [builtin.List.:+](#builtinList:+)
+ [builtin.List.at](#builtinListat)
+ [builtin.List.cons](#builtinListcons)
+ [builtin.List.drop](#builtinListdrop)
+ [builtin.List.empty](#builtinListempty)
+ [builtin.List.size](#builtinListsize)
+ [builtin.List.snoc](#builtinListsnoc)
+ [builtin.List.take](#builtinListtake)
+ [builtin.Nat.*](#builtinNat*)
+ [builtin.Nat.+](#builtinNat+)
+ [builtin.Nat./](#builtinNat/)
+ [builtin.Nat.drop](#builtinNatdrop)
+ [builtin.Nat.eq](#builtinNateq)
+ [builtin.Nat.fromText](#builtinNatfromText)
+ [builtin.Nat.gt](#builtinNatgt)
+ [builtin.Nat.gteq](#builtinNatgteq)
+ [builtin.Nat.increment](#builtinNatincrement)
+ [builtin.Nat.isEven](#builtinNatisEven)
+ [builtin.Nat.isOdd](#builtinNatisOdd)
+ [builtin.Nat.lt](#builtinNatlt)
+ [builtin.Nat.lteq](#builtinNatlteq)
+ [builtin.Nat.mod](#builtinNatmod)
+ [builtin.Nat.sub](#builtinNatsub)
+ [builtin.Nat.toFloat](#builtinNattoFloat)
+ [builtin.Nat.toInt](#builtinNattoInt)
+ [builtin.Nat.toText](#builtinNattoText)
+ [builtin.Text.!=](#builtinText!=)
+ [builtin.Text.++](#builtinText++)
+ [builtin.Text.drop](#builtinTextdrop)
+ [builtin.Text.empty](#builtinTextempty)
+ [builtin.Text.eq](#builtinTexteq)
+ [builtin.Text.fromCharList](#builtinTextfromCharList)
+ [builtin.Text.gt](#builtinTextgt)
+ [builtin.Text.gteq](#builtinTextgteq)
+ [builtin.Text.lt](#builtinTextlt)
+ [builtin.Text.lteq](#builtinTextlteq)
+ [builtin.Text.size](#builtinTextsize)
+ [builtin.Text.take](#builtinTexttake)
+ [builtin.Text.toCharList](#builtinTexttoCharList)
+ [builtin.Text.uncons](#builtinTextuncons)
+ [builtin.Text.unsnoc](#builtinTextunsnoc)
+ [builtin.Universal.<](#builtinUniversal<)
+ [builtin.Universal.<=](#builtinUniversal<=)
+ [builtin.Universal.==](#builtinUniversal==)
+ [builtin.Universal.>](#builtinUniversal>)
+ [builtin.Universal.>=](#builtinUniversal>=)
+ [builtin.Universal.compare](#builtinUniversalcompare)
+ [builtin.io.accept](#builtinioaccept)
+ [builtin.io.bracket](#builtiniobracket)
+ [builtin.io.clientSocket](#builtinioclientSocket)
+ [builtin.io.closeFile](#builtiniocloseFile)
+ [builtin.io.closeSocket](#builtiniocloseSocket)
+ [builtin.io.createDirectory](#builtiniocreateDirectory)
+ [builtin.io.delay](#builtiniodelay)
+ [builtin.io.directoryContents](#builtiniodirectoryContents)
+ [builtin.io.fileExists](#builtiniofileExists)
+ [builtin.io.fork](#builtiniofork)
+ [builtin.io.getBuffering](#builtiniogetBuffering)
+ [builtin.io.getCurrentDirectory](#builtiniogetCurrentDirectory)
+ [builtin.io.getFileSize](#builtiniogetFileSize)
+ [builtin.io.getFileTimestamp](#builtiniogetFileTimestamp)
+ [builtin.io.getLine](#builtiniogetLine)
+ [builtin.io.getTemporaryDirectory](#builtiniogetTemporaryDirectory)
+ [builtin.io.getText](#builtiniogetText)
+ [builtin.io.isDirectory](#builtinioisDirectory)
+ [builtin.io.isFileEOF](#builtinioisFileEOF)
+ [builtin.io.isFileOpen](#builtinioisFileOpen)
+ [builtin.io.isSeekable](#builtinioisSeekable)
+ [builtin.io.kill](#builtiniokill)
+ [builtin.io.listen](#builtiniolisten)
+ [builtin.io.openFile](#builtinioopenFile)
+ [builtin.io.position](#builtinioposition)
+ [builtin.io.printLine](#builtinioprintLine)
+ [builtin.io.putText](#builtinioputText)
+ [builtin.io.readLine](#builtinioreadLine)
+ [builtin.io.receive](#builtinioreceive)
+ [builtin.io.removeDirectory](#builtinioremoveDirectory)
+ [builtin.io.removeFile](#builtinioremoveFile)
+ [builtin.io.renameDirectory](#builtiniorenameDirectory)
+ [builtin.io.renameFile](#builtiniorenameFile)
+ [builtin.io.rethrow](#builtiniorethrow)
+ [builtin.io.seek](#builtinioseek)
+ [builtin.io.send](#builtiniosend)
+ [builtin.io.serverSocket](#builtinioserverSocket)
+ [builtin.io.setBuffering](#builtiniosetBuffering)
+ [builtin.io.setCurrentDirectory](#builtiniosetCurrentDirectory)
+ [builtin.io.stderr](#builtiniostderr)
+ [builtin.io.stdin](#builtiniostdin)
+ [builtin.io.stdout](#builtiniostdout)
+ [builtin.io.systemTime](#builtiniosystemTime)
+ [builtin.links.isTest](#builtinlinksisTest)
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

