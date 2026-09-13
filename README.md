# NBTStringify

NBT値をSNBT形式の文字列へ変換するデータパックです。デバッグ出力、動的なコマンド文字列の組み立て、NBTの比較用文字列の作成に使えます。

## 前提: フレーム

入出力は `storage nbtstringify: frames[-1]` に格納します。呼び出し前にフレームを追加し、結果を読んだら呼び出し元で削除してください。フレームを積むため、別のフレーム方式APIをネストして呼べます。

## 最短の使用例

```mcfunction
# 入力用フレームを作成
data modify storage nbtstringify: w set value {input:{foo:1b,bar:"text"}}
data modify storage nbtstringify: frames append from storage nbtstringify: w

# SNBT文字列へ変換
function nbtstringify:stringify/main

# 出力例: {foo:1b,bar:"text"}
tellraw @a {nbt:"frames[-1].output",storage:"nbtstringify:"}

# 後片付け
data remove storage nbtstringify: frames[-1]
```

## API

### `nbtstringify:stringify/main`

入力されたNBT値をSNBT形式の `string` として出力します。

| 項目 | 場所 | 型 |
| --- | --- | --- |
| 入力 | `storage nbtstringify: frames[-1].input` | `byte \| short \| int \| long \| float \| double \| byte_array \| string \| list \| compound \| int_array \| long_array` |
| 出力 | `storage nbtstringify: frames[-1].output` | `string` |

## 注意事項

- 出力はNBTそのものではなく、NBTを表す文字列です。再びNBT値として使う場合は、そのコマンドが文字列の解釈を行うか確認してください。
- 公開APIは `nbtstringify:stringify/main` です。その他の関数は内部実装です。
- `frames[-1]` が存在しない状態では呼び出さないでください。

## 依存関係

- [StandardStringManipulator](https://github.com/daijirin-tea/StandardStringManipulator)

## ライセンス

[MIT](./LICENSE)
