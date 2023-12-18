# Shell scripting cheat codes and secrets

## Crunch-bang

```sh
#!/usr/bin/env bash
```
equivalent to `#!/bin/bash` or `#!$(where bash)`

## setopt
See [Set Builtin](https://www.gnu.org/software/bash/manual/bash.html#The-Set-Builtin).

### Exit immediately if any command returns a non-zero status.
```sh
set -e || set -o errexit
```

### Trace printing of commands before execution.
```sh
set -x || set -o xtrace
```


## if

```sh
if condition; then
    cmd
fi

if condition
then
    cmd
fi
```

### conditions
See [conditional expressions](https://www.gnu.org/software/bash/manual/bash.html#Bash-Conditional-Expressions).

#### `true` if the length of `$STRING` is zero.
```sh
[[ -z $STRING ]]
```

#### `true` if the length of `$STRING` is non-zero.
```sh
[[ -n $STRING ]]
```

