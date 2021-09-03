# ps-mysql-select
PowerShell で MySQL を読み出す

## add settings.json ( Code Runner )
```javascript
    "code-runner.showRunIconInEditorTitleMenu": false,
```
## 実行結果
```
Driver={MySQL ODBC 8.0 Unicode Driver};SERVER=localhost;DATABASE=lightbox;UID=root;PWD=
0001,浦岡 友也,ウラオカ トモヤ,0003,0,2005/09/12 0:00:00,2005/11/28 0:00:00,270000,9000,,2000/01/01 0:00:00
0002,山村 洋代,ヤマムラ ヒロヨ,0003,1,2005/06/17 0:00:00,2005/09/18 0:00:00,300000,,,2000/01/02 0:00:00
0003,多岡 冬行,タオカ フユユキ,0002,0,2005/08/14 0:00:00,2005/11/14 0:00:00,250000,,,2000/01/03 0:00:00
0004,高田 冬美,タカタ フユミ,0003,1,2005/06/13 0:00:00,2005/10/05 0:00:00,250000,,,2000/01/04 0:00:00
0005,内高 友之,ウチタカ トモユキ,0003,0,2005/09/12 0:00:00,2005/11/10 0:00:00,150000,,,2000/01/05 0:00:00        
0006,森尾 正也,モリオ マサヤ,0002,0,2005/08/14 0:00:00,2005/12/17 0:00:00,300000,7000,0002,2000/01/06 0:00:00    
0007,鈴杉 由樹,スズスギ ヨシキ,0001,0,2005/07/12 0:00:00,2005/10/03 0:00:00,170000,,0003,2000/01/07 0:00:00      
0008,川吉 洋樹,カワヨシ ヒロキ,0002,0,2005/08/15 0:00:00,2005/12/14 0:00:00,240000,,0004,2000/01/08 0:00:00      
0009,村森 友恵,ムラモリ トモエ,0003,1,2005/09/11 0:00:00,2005/11/06 0:00:00,290000,,0003,2000/01/09 0:00:00      
0010,杉岡 友一,スギオカ トモカズ,0002,0,2005/08/17 0:00:00,2005/09/18 0:00:00,180000,,0005,2000/01/10 0:00:00    
0011,川多 由男,カワタ ヨシオ,0002,0,2005/08/19 0:00:00,2005/11/15 0:00:00,230000,5000,0005,2000/01/11 0:00:00    
0012,杉岡 由樹,スギオカ ヨシキ,0002,0,2005/06/29 0:00:00,2005/11/12 0:00:00,280000,,0001,2000/01/12 0:00:00      
0013,木川 元男,キカワ モトオ,0001,0,2005/07/21 0:00:00,2005/11/18 0:00:00,230000,,0005,2000/01/13 0:00:00        
0014,川木 春一,カワキ ハルカズ,0001,0,2005/07/04 0:00:00,2005/12/15 0:00:00,230000,,0001,2000/01/14 0:00:00      
0015,中多 克也,ナカタ カツヤ,0001,0,2005/09/04 0:00:00,2005/11/11 0:00:00,160000,,0005,2000/01/15 0:00:00        
0016,森村 正恵,モリムラ マサエ,0001,1,2005/07/07 0:00:00,2005/10/08 0:00:00,150000,5000,0002,2000/01/16 0:00:00  
0017,尾田 雅也,オタ マサヤ,0002,0,2005/09/09 0:00:00,2005/10/31 0:00:00,170000,,0005,2000/01/17 0:00:00
0018,松中 輝行,マツナカ テルユキ,0001,0,2005/07/11 0:00:00,2005/10/24 0:00:00,300000,,0001,2000/01/18 0:00:00    
0019,野丸 由一,ノマル ヨシカズ,0001,0,2005/06/05 0:00:00,2005/09/26 0:00:00,140000,,0002,2000/01/19 0:00:00      
0020,松野 友之,マツノ トモユキ,0003,0,2005/07/08 0:00:00,2005/11/24 0:00:00,300000,,0002,2000/01/20 0:00:00      
0021,吉村 春一,ヨシムラ ハルカズ,0002,0,2005/06/23 0:00:00,2005/11/06 0:00:00,210000,8000,0002,2000/01/21 0:00:00
0022,丸吉 春代,マルヨシ ハルヨ,0001,1,2005/08/15 0:00:00,2005/09/28 0:00:00,230000,,0002,2000/01/22 0:00:00
0023,松本 洋也,マツモト ヒロヤ,0003,0,2005/06/30 0:00:00,2005/11/14 0:00:00,270000,,0001,2000/01/23 0:00:00
0024,尾木 輝男,オキ テルオ,0003,0,2005/08/06 0:00:00,2005/10/29 0:00:00,160000,,0001,2000/01/24 0:00:00
0025,鈴川 春美,スズカワ ハルミ,0001,1,2005/07/28 0:00:00,2005/11/27 0:00:00,260000,,0002,2000/01/25 0:00:00
0026,原中 元美,ハラナカ モトミ,0001,1,2005/08/01 0:00:00,2005/10/23 0:00:00,180000,10000,0005,2000/01/26 0:00:00
0027,浦村 春一,ウラムラ ハルカズ,0002,0,2005/06/10 0:00:00,2005/09/25 0:00:00,240000,,0002,2000/01/27 0:00:00
0028,森木 和之,モリキ カズユキ,0002,0,2005/07/26 0:00:00,2005/12/20 0:00:00,170000,,0002,2000/01/28 0:00:00
0029,多田 友行,タタ トモユキ,0003,0,2005/07/19 0:00:00,2005/12/13 0:00:00,250000,,0003,2000/01/29 0:00:00
0030,浦川 冬代,ウラカワ フユヨ,0001,1,2005/08/22 0:00:00,2005/10/15 0:00:00,270000,,0001,2000/01/30 0:00:00
0031,岡中 冬之,オカナカ フユユキ,0003,0,2005/07/07 0:00:00,2005/12/13 0:00:00,280000,7000,0001,2000/01/31 0:00:00
0032,野尾 春男,ノオ ハルオ,0001,0,2005/08/28 0:00:00,2005/11/03 0:00:00,200000,,0001,2000/02/01 0:00:00
0033,田杉 洋也,タスギ ヒロヤ,0003,0,2005/08/07 0:00:00,2005/10/15 0:00:00,270000,,0002,2000/02/02 0:00:00
0034,村高 洋代,ムラタカ ヒロヨ,0002,1,2005/06/19 0:00:00,2005/11/11 0:00:00,290000,,0003,2000/02/03 0:00:00
0035,本原 正也,モトハラ マサヤ,0002,0,2005/09/13 0:00:00,2005/11/26 0:00:00,280000,,0002,2000/02/04 0:00:00
0036,浦多 冬代,ウラタ フユヨ,0001,1,2005/08/03 0:00:00,2005/10/17 0:00:00,260000,6000,0004,2000/02/05 0:00:00
0037,鈴丸 輝之,スズマル テルユキ,0001,0,2005/06/06 0:00:00,2005/11/15 0:00:00,240000,,0005,2000/02/06 0:00:00
0038,松高 洋一,マツタカ ヒロカズ,0003,0,2005/08/20 0:00:00,2005/10/21 0:00:00,200000,,0003,2000/02/07 0:00:00
0039,高松 雅之,タカマツ マサユキ,0001,0,2005/07/10 0:00:00,2005/12/12 0:00:00,170000,,0005,2000/02/08 0:00:00
0040,安村 克恵,ヤスムラ カツエ,0002,1,2005/08/25 0:00:00,2005/10/15 0:00:00,210000,,0001,2000/02/09 0:00:00
0041,丸森 雅美,マルモリ マサミ,0001,1,2005/06/05 0:00:00,2005/10/30 0:00:00,140000,7000,0002,2000/02/10 0:00:00
0042,中原 冬男,ナカハラ フユオ,0001,0,2005/08/29 0:00:00,2005/10/21 0:00:00,170000,,0005,2000/02/11 0:00:00
0043,原松 春也,ハラマツ ハルヤ,0001,0,2005/06/22 0:00:00,2005/12/01 0:00:00,270000,,0002,2000/02/12 0:00:00
0044,村松 冬子,ムラマツ フユコ,0001,1,2005/08/08 0:00:00,2005/11/09 0:00:00,190000,,0003,2000/02/13 0:00:00
0045,村松 和子,ムラマツ カズコ,0003,1,2005/06/11 0:00:00,2005/12/22 0:00:00,280000,,0003,2000/02/14 0:00:00
0046,尾内 正樹,オウチ マサキ,0001,0,2005/08/10 0:00:00,2005/11/21 0:00:00,150000,5000,0002,2000/02/15 0:00:00
0047,多松 正樹,タマツ マサキ,0001,0,2005/08/07 0:00:00,2005/10/23 0:00:00,280000,,0003,2000/02/16 0:00:00
0048,浦杉 由美,ウラスギ ヨシミ,0002,1,2005/08/22 0:00:00,2005/11/10 0:00:00,260000,,0003,2000/02/17 0:00:00
0049,原田 春代,ハラタ ハルヨ,0002,1,2005/09/12 0:00:00,2005/10/12 0:00:00,300000,,0004,2000/02/18 0:00:00
0050,松丸 正恵,マツマル マサエ,0003,1,2005/09/04 0:00:00,2005/11/06 0:00:00,210000,,0001,2000/02/19 0:00:00
```
