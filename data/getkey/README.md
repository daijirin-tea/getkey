# getkey

NBTコンパウンドからキー名を取り出すデータパックです。キー名だけの配列、または後続処理で扱いやすいコンパウンド配列を取得できます。

## 前提: フレーム

入出力は `storage getkey: frames[-1]` に置きます。呼び出し前にフレームを追加し、結果を読んだ後は呼び出し元で削除してください。フレームを積むため、別のフレーム方式APIをネストしても入出力が衝突しません。

## 最短の使用例

```mcfunction
# 入力用フレームを作成
data modify storage getkey: w set value {input:{foo:1b,bar:"text",baz:{nested:1}}}
data modify storage getkey: frames append from storage getkey: w

# キー名の配列を取得
function getkey:get/main

# 出力: ["foo","bar","baz"]
tellraw @a {nbt:"frames[-1].output",storage:"getkey:"}

# 後片付け
data remove storage getkey: frames[-1]
```

## API

### `getkey:get/main`

キー名だけの文字列リストを返します。

| 項目 | 場所 | 型 |
| --- | --- | --- |
| 入力 | `storage getkey: frames[-1].input` | `compound` |
| 出力 | `storage getkey: frames[-1].output` | `string[]` |

### `getkey:get2/main`

各キーを `{key:"..."}` 形式のコンパウンドにして返します。キーごとに追加情報を持たせる処理へ渡す場合に向いています。

| 項目 | 場所 | 型 |
| --- | --- | --- |
| 入力 | `storage getkey: frames[-1].input` | `compound` |
| 出力 | `storage getkey: frames[-1].output` | `{key:string}[]` |

## 注意事項

- 公開APIは `main` 関数だけです。その他の関数は内部実装のため、直接呼び出さないでください。
- 空のコンパウンドは空のリストを返します。
- `frames[-1]` が存在しない状態で呼び出すと、期待どおりに動作しません。

## 依存関係

- [StandardStringManipulator](https://github.com/daijirin-tea/StandardStringManipulator)
- [NBTStringify](https://github.com/daijirin-tea/NBTStringify)

## ライセンス

[MIT](./LICENSE)
