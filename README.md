# このリポジトリは何？
OCR（Optical Character Recognition/Reader）をPythonで実装したサンプルスクリプト。

OCRは手書きや印刷された文字を、イメージスキャナやデジタルカメラによって読みとり、コンピュータが利用できるデジタルの文字コードに変換する技術のことを言う。

本スクリプトでは、Tesseractと言われる光学文字認識のエンジンをPythonで扱い、日本語と英語のWikipediaの文章（画像）を文字データとして読み込む処理が実装してある。

*Tesseract*
https://github.com/tesseract-ocr/tesseract

# 解析対象の画像
|日本語のWikipedia画像|英語のWikipedia画像|
|:--|:--|
|![日本語のWikipedia](https://github.com/APPLE4869/orc-sample/blob/master/wiki-top-jpn.png)|![英語のWikipedia](https://github.com/APPLE4869/orc-sample/blob/master/wiki-top-eng.png)|

# 解析後の文字列
英語はかなり精度が高いように見えるが、日本語は誤字と不要な改行目立つ結果となった。
日本語の認識をチューニングするような方法もあるらしいので、実際に使うときはチューニングしていくのが良さそう。

## 日本語
```
概要 [編集]

単発の仕事と して様々な仕菫はするものの、 その仕菫を引き受ける都度契約を結ぶという形態をとる請負であり、 小説家 ・ 芸能人など個人の能力によって成果が決まる職種に多いが、 大工ゃプログラマなどの技術
者、 漁師のような古典的な職業も存在する。

派遣会社と契約している派遣祉員は、 派遣会社に属する従業員と見なされるため、 フリ一ランサ一ではない。 フリ一ランスという言某にはヽ 自呂未ー 自臼未 ・ 個人企未 (合同会社、 パパママ法人などと呼称されるロ

小事業者) 等の複数の法制度が混在しているため、 福利厚生ゃ税制度が一律に提供できず、 また実態を把握しにく いという社会的な課題がある。

収入は、 本人の営業力と業務遂行能力によって決定され、 同業の会社員よりも高収入を得る者がいる-方で全く仕喜

ちである。 このため公務員ゃ会社員よりも不安定な働き方と さ れている。
イン夕一ネッ トが浸透してきたことで、 フリ一ランスの増加ゃ社会の構造変化により、 フリ一ランス化ゃ社会ロ帰が取り トげられるようになった。

2000年、 アメリ力の政策評議会において公式レポ一卜が提出された。 アメリ力のフリ一ランスの実態を調査したそのレポ一トは 「命米玉内の就未人ロ
の形態でフリ一ランサ一として就労している」 [2]という内容でぁった。

日本玉内におけるフリ一ランス人ロの公的諦査はヽ ー990年代後睾

200万人から230万人 ・ 喜

義のフリ一ランスの推計経済規模が初の20戮
続き、 フリ-ランス人ロひとりへの所得配分率

喜業所の登録数600万ヶ所以上」 との数字があるが、 こ ーは、 当時の日本玉内の就未人ロの4。分のー程度である。
民営会社に依る調査として、 独自の 「フリ一ランス実態調査圖」

L/ヽ

が20ー。年代後睾壬から実施されているが、 「命玉の20ー69歳男女 (3,096人〉 を対象」 [4]としておりヽ 統計調査としての母
[を超え、 日本の総給与支払賽のー。%を占める阿」 という経済規模の提示に対して 「広義のフリ一ランス個人の立均報酬はー86ヵ '_

降の傾向、 所得配分比率の手数料が阻害原 等として伺われる結果となっている。

「E本における広義のフリ一ランス人ロは前年

喜が無いという状況もあり、 収入が不安定なためロ一ンゃク レジ ツ トカ一ドの契約では不利になりが

42。。万人のうち、 ー300万人 ・ 就業人ロの4人にー人が、 何らか

と総経済規模が矛眉しており、 生活水準としての玉内最低給与水準には達していない喜実が社会課題ヽ ク ラウ ドソ一シング等のイン夕一ネツ 卜喜

爪、 ー可一労働向一賃金制』の改疋による先働人ロの流動化について、 工三しく実態と社会福祉費用を把握していく必要がある。

壬以降、 明確なフリ一ランスへの職業分類としての再定義が行われておらず 工三確な現状を把握することは難しい。 当時の調査では 「自臼業者の数が

体数は少なぃ。 内容は 「広

となり、 昨年比ー2%増加傾向陶」 と

喜業者を経臼した単価下

こ比ベ横ばい、 日本の労働力人ロに対してー7%を占めるという割合爪」 となっているが、 日本玉内の現仕先働力人ロの 「5人に ー 人以上」 という設定値には クラウド
ソ一シング サイ 卜へのアカウン 卜開設者を主体対象と した調査母体でぁる背景が予測されるため、 「副業 (本業 ・ 副業を 茎別していなぃ労働者を含む) フリ- ランスの人ロは744万人 経済規槙は7兆8 280億'
兆 '一近い規模になり、 報酬は堅調に増加し、 業務委託ベ一スのパラレ丿 ヮ一力一数が伸長している傾向にぁります。 [8]」 という最終記述への、 公的な〔

と8

コ立体による調査による精緻化を行うことで、 副業解禁への政
```

## 英語
```
Welcome to Wikipedia,

the free encyclopedia that anyone can edit.
5,700,236 articles in English

From today's featured article

Oxalaia, a spinosaurid dinosaur, lived in what is now Brazil during the
Late Cretaceous, sometime between 93.9 and 100.5 million years ago.
The genus name comes from Oxala, an African deity. Oxalaia's only
known fossils, a partial snout and upper jaw bone, were found in 1999 in the Alcantara
Formation. At an estimated 12 to 14 metres (39 to 46 feet) in length, it is the largest
carnivorous dinosaur discovered from Brazilian fossils. The African genus Spinosaurus
was its closest relative. Oxalaia bore two replacement teeth in each socket (similarly to
sharks) and a very ornamented secondary palate, features which are not known in other
theropod or spinosaurid dinosaurs. Its habitat was tropical and heavily forested,
surrounded by dry regions. Since Oxalaia's skull and teeth resembled those of modern
crocodilians, it may have largely hunted fish. Fossil evidence suggests spinosaurids also
occasionally preyed on other animals such as small dinosaurs and pterosaurs.

(Full article...)

 

Recently featured: Hurricane Bret - Golden jackal - Evita (1996 film)
Archive - By email - More featured articles
```
