# getkey

コンパウンドのキーを取得するデータパックです。

## 基本概念

### [frame](https://github.com/daijirin-tea/my-mc-concepts/tree/main/concepts/frame)

NBTを用いた関数群の入出力

## インストール方法

リポジトリをクローンするだけで、依存パッケージも含めて取得できます。

```bash
git clone https://github.com/daijirin-tea/getkey.git
```

依存パッケージを更新する場合は、`git subtree pull`を使用します。

```bash
# StandardStringManipulator を更新
git subtree pull --prefix=data/ssm https://github.com/daijirin-tea/StandardStringManipulator.git ssm-only --squash

# NBTStringify を更新
git subtree pull --prefix=data/nbtstringify https://github.com/daijirin-tea/NBTStringify.git nbtstringify-only --squash
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