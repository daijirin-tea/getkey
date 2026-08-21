# NBTStringify

NBTを文字列化するデータパックです。

## 基本概念

### [frame](https://github.com/daijirin-tea/my-mc-concepts/tree/main/concepts/frame)

NBTを用いた関数群の入出力

## インストール方法

このデータパックは依存関係があるため、`git submodule`で取得します。

```bash
# 依存パッケージも含めて取得
git submodule add https://github.com/daijirin-tea/NBTStringify.git NBTStringify
git submodule update --init --recursive
```

または、依存パッケージを個別に追加します。

```bash
# 依存パッケージを data/ に追加
git submodule add https://github.com/daijirin-tea/StandardStringManipulator.git data/ssm
```

## 使い方

`storage nbtstringify: frames[-1].input` にNBTを設定し、関数を実行します。

```mcfunction
# 入力
data modify storage nbtstringify: frames[-1].input set value {foo: 1b, bar: "text"}

# 関数を実行
function nbtstringify:stringify/main

# 出力
# storage nbtstringify: frames[-1].output = "{foo: 1b, bar: \"text\"}"
```

## API

### `nbtstringify:stringify/main`

NBTを文字列化します。

- `@input storage nbtstringify: frames[-1].input: (byte | short | int | long | float | double | byte_array | string | list | compound | int_array | long_array)`
- `@output storage nbtstringify: frames[-1].output: string`

### `nbtstringify:join_text_component/main`

シンプルなテキストコンポーネントを結合します。

- `type limitedTextComponent = string | {text:string,extra?:limitedTextComponent[]}`
- `@input storage nbtstringify: frames[-1].input: limitedTextComponent`
- `@output storage nbtstringify: frames[-1].output: string`

## 依存関係

- [StandardStringManipulator](https://github.com/daijirin-tea/StandardStringManipulator)

## ライセンス

[MIT](./LICENSE)