<div align=center>
<img alt="GTrends Logo" src="https://vectorified.com/images/google-trends-icon-5.png" width="100">

# **GTrends**

#### Google Trends RSS in Nim

**[About](#about) - [Usage](#usage)** - [License](#license)

> **Note**
> This lib is not finished, more features is planned.
</div>

---

## About

This lib is a Google Trends RSS parser. That's it

## Usage

```nim
import std/json
import pkg/gtrends

echo pretty %*getDailyTrending()[]
```

## License

This library is free and open source software licensed over MIT license.
