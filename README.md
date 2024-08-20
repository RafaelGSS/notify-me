# notify-me

Runs your command every 1 min until it gets succeeded (exit 0) and then pops up a custom message.

## Dependencies

```sh
$ apt-get install libnotify-dev
```

## Install

```console
$ sudo make install
```

## notify-me

```console
$ notify-me $COMMAND $MESSAGE
```

Example alerting when the README2.md file is created

```console
$ notify-me '[ -f "./README2.md" ]' "README2.md was created"
```

![](./example.png)

## notify-me-ci

This one is specific to Node.js contributors. It notifies whenever a CI is concluded -- When the result isn't "PENDING".

```console
$ notify-me-ci $CIURL
```

```console
$ notify-me-ci $CIURL "My CI finally Finished"
```

Example:

```console
$ notify-me-ci https://ci.nodejs.org/job/node-test-pull-request/52342/
```
