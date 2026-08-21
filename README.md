# getkey

コンパウンドのキーを取得するデータパックです。

## 基本概念

### [frame](https://github.com/daijirin-tea/my-mc-concepts/tree/main/concepts/frame)

NBTを用いた関数群の入出力

## インストール方法

このデータパックは依存関係があるため、`git submodule`で取得します。

```bash
# 依存パッケージも含めて取得
git submodule add https://github.com/daijirin-tea/getkey.git getkey
git submodule update --init --recursive
```

または、依存パッケージを個別に追加します。

```bash
# 依存パッケージを data/ に追加
git submodule add https://github.com/daijirin-tea/StandardStringManipulator.git data/ssm
git submodule add https://github.com/daijirin-tea/NBTStringify.git data/nbtstringify
```

## 使い方

`storage getkey: frames[-1].input` にコンパウンドを設定し、関数を実行します。

```mcfunction
# 入力
data modify storage getkey: frames[-1].input set value {foo: 1b, bar: "text", baz: {nested: 1}}

# 関数を実行
function getkey:get/main

# 出力
# storage getkey: frames[-1].output = ["foo", "bar", "baz"]
```

## API

### `getkey:get/main`

コンパウンドのキーを取得します。

- `@input storage getkey: frames[-1].input: compound`
- `@output storage getkey: frames[-1].output: string[]`

### `getkey:get2/main`

コンパウンドのキーを取得します。

- `@input storage getkey: frames[-1].input: compound`
- `@output storage getkey: frames[-1].output: {key:string}[]`

## 依存関係

- [StandardStringManipulator](https://github.com/daijirin-tea/StandardStringManipulator)
- [NBTStringify](https://github.com/daijirin-tea/NBTStringify)

## ライセンス

[MIT](./LICENSE)