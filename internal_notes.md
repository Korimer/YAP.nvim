SideText - represents the text that composes half a pair.
Example html opening text:
```
{
    {
        capture = false,
        textcontent = "<%s*"
    }, {
        capture = true,
        textcontent = "%w[%w:_-]*"
    }, {
        capture = false,
        textcontent = ".->"
    }
}
```

Store pairs in format:
```
{
    a
}
```
