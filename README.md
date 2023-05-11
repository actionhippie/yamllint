# yamllint

[![Current Tag](https://img.shields.io/github/v/tag/actionhippie/yamllint?sort=semver)](https://github.com/actionhippie/yamllint) [![Docker Build](https://github.com/actionhippie/yamllint/workflows/docker/badge.svg)](https://github.com/actionhippie/yamllint/actions/workflows/docker.yml)

[GitHub Action](https://github.com/features/actions) to validate/lint YAML files.

## Usage

```yml
name: Example

on:
  - push
  - pull_request

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - uses: actionhippie/yamllint@v1
        with:
          strict: true
```

## Inputs

### `config`

Path to custom configuration file

### `format`

Output formatter, defaults to `parsable`

### `warnings`

Enable warning message output

### `strict`

Return non-zero exit code on warnings

### `path`

Path to check, defaults to `.`

### `print`

Print messages directly, defaults to `true`

## Outputs

### `messages`

Generated validation/linting messages

## Security

If you find a security issue please contact thomas@webhippie.de first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

* [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2021 Thomas Boerger <thomas@webhippie.de>
```
