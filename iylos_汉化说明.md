# Iylos NPC（伊洛斯）汉化说明

## 一、模组信息

| 项目 | 内容 |
| --- | --- |
| 模组名 | Iylos NPC for BGII:ToB |
| 作者 | Liam Esler（K'aeloree） |
| 版本 | v2.3 |
| 平台 | 博德之门 II：巴尔王座 / EET |
| 组件 | 0 伊洛斯本体；1 扩展内容（PID、更多插话、友谊、场景与剧情对话）；2–6 谈话间隔 15/20/30/45/60 分钟；7 Ilmatar 备用头像 |
| 源目录 | `E:\GitHub\iylos\iylos` |

本模组**没有 tra 语言文件**，全部文本内嵌在 7 个 `.d` 对话脚本与 `iylos.tp2` 中，因此本次为**源码内汉化**：直接在源文件里替换文本，字符集统一为 UTF-8。

## 二、汉化范围

共 **8 个源文件**被改写，另生成 8 个同名 `.bak` 备份：

| 文件 | 汉化文本条数 |
| --- | --- |
| `dialogue\blk#iyl.d` | 270 |
| `dialogue\imoen25j.d` | 52 |
| `dialogue\lk#iylj.d` | 206 |
| `dialogue\lk#iylo.d` | 25 |
| `dialogue\lk#iylp.d` | 12 |
| `dialogue\crossmod\ascension.d` | 9 |
| `extended\lk#iylj.d` | 857 |
| **.d 合计** | **1431 条 / 154,848 字符** |
| `iylos.tp2` | 114 处（组件名、REQUIRE 提示、11 件物品名与说明、生物名、BIO、43 条语音、3 段结局、计时子组件等） |

`iylos.tp2` 中已汉化的具体位置：

- 组件名：`伊洛斯 NPC（博德之门 II：巴尔王座）`、`安装扩展内容（…）？`、`15/20/30/45/60 分钟`、`Ilmatar 制作的伊洛斯备用头像`
- `REQUIRE_FILE` / `REQUIRE_COMPONENT` 的报错提示句
- 11 件物品的 `SAY NAME1` / `SAY NAME2` / `SAY UNIDENTIFIED_DESC` / `SAY DESC`
- 生物 `lk#iylos.cre` 的 `SAY NAME1` / `SAY NAME2` 与 `SAY BIO`
- 43 条语音（LK#I1–LK#I43）：MORALE、HAPPY、BATTLE_CRY1–4、SELECT_*、CRITICAL_* 等
- 3 段 `REPLACE ~99999~` 结局文本（对应 `lk#iylo1/2/3.2da`）

**未改动**：`scripts\*.baf`（4 个，无台词）、`extended\lk#iylo.baf`、`2da\`、`items\*.itm`、`creatures\`、`audio\`、`images\`、`alternate portraits\`、`iylos_readme.html`、`iylos.ini`、`iylosaudio*.bat`。`COPY`/`COMPILE` 行中的路径（如 `~iylos/items/lk#iamul.itm~`）属于文件名，不译。

## 三、编码与换行

- 输出编码：**UTF-8 无 BOM**；换行：**CRLF**（与原文件一致）。
- 原 `dialogue\blk#iyl.d` 与 `extended\lk#iylj.d` 存的是 cp1252（含 `’`、`ñ` 等 0xE9/0x92 字符），汉化后整文件按 UTF-8 重写，这些字符已变为标准 UTF-8 的 `’`，属预期结果。
- 若你的安装环境需要 **ANSI（GBK / cp936）** 版本，请告知，可另出一套 ANSI 文件（注意：EET 的 `lang\zh_CN\dialog.tlk` 必须是 UTF-8 中文，源码文本转 ANSI 后需自行确认 WeiDU 转码链路）。

## 四、术语表

| 英文 | 中文 |
| --- | --- |
| Iylos / Iylos Mirdan | 伊洛斯 / 伊洛斯·米尔丹 |
| Bhaalspawn / Bhaal | 巴尔之子 / 巴尔 |
| Godspawn | 神之裔 |
| Balthazar | 巴尔萨扎 |
| Melissan | 梅丽珊 |
| Irenicus | 艾瑞尼卡斯 |
| Sarevok Anchev | 萨瑞沃克·安切夫 |
| Illasera / Sendai / Yaga-Shura / Nyalee | 伊拉萨拉 / 森戴 / 亚加苏拉 / 娜莉 |
| Leila / Kalo / Keira | 蕾拉 / 卡洛 / 凯拉 |
| Solar / Gorion | 索拉 / 葛立安 |
| Amkethran / Saradush | 阿姆凯斯兰 / 萨拉杜什 |
| Anauroch / Faerun / Toril | 安纳罗克沙漠 / 费伦 / 托瑞尔 |
| Athkatla / Baldur's Gate / Beregost | 阿斯卡特拉 / 博德之门 / 贝果斯特 |
| Sword Coast / Sea of Swords | 剑湾 / 剑海 |
| Candlekeep | 烛堡 |
| Underdark / Ust Natha | 幽暗地域 / 乌斯特·纳萨 |
| Netherese | 耐色瑞尔 |
| Rasheman / the Dales / Luskan / Kuldahar | 拉舍曼 / 谷地 / 路斯坎 / 库尔达哈 |
| Spine of the World / Moonshae Isles | 世界之脊 / 月影群岛 |
| Neverwinter | 无冬城 |
| Monastery | 修道院 |
| Order of the Striking Scorpion | 刺蝎骑士团 |
| Stingers | 毒刺（巨型蝎） |
| Wind Scorpion | 风蝎 |
| Saemon Havarian | 赛蒙·哈瓦里安 |
| Raelis Shai | 蕾丽斯·夏伊 |
| Spectator | 旁观者（眼魔） |
| Volo / Volothamp | 伏罗 / 伏洛坦 |
| Drizzt | 崔斯特 |
| Eilistrae | 伊莉丝翠 |
| Formian | 弗米蚁 |

物品名：宁静护符（Amulet of Tranquillity）、储物腰带（Belt of Storage）、游牧者之靴（Boots of the Nomad）、盘蛇护腕（Bracers of the Coiling Serpent）、沙漠斗篷（Cloak of the Deserts）、冥想水晶（Meditative Crystal）、沙漠庇护（Aegis of the Deserts）、密封信（Sealed Letter）、巴尔萨扎的信（Letter from Balthazar）、砂岩戒指（Sandstone Ring）、修道士长袍（Monastic Robe）。

队友译名沿用既有基准：艾黎、爱蒙、贾希拉、维康尼亚、明斯克（布布）、瑟恩德、娜莉亚、艾德温·奥德塞隆、海尔达利、凯尔登、玛兹、扬·詹森、瓦里格、阿诺门·德林、萨瑞沃克。

## 五、保留不译

1. **对话占位符**：`<CHARNAME>`、`<PRO_HESHE>`、`<PRO_HIMHER>`、`<PRO_HISHER>`、`<PRO_SONDAUGHTER>`、`<PRO_MANWOMAN>`、`<PRO_LADYLORD>`、`<PRO_BROTHERSISTER>` 等一律原样保留。
2. **卓尔语（Drow）台词**整句保留原文，如 `Vith dos…`、`Waeles! Zah'har wun uoi'nota…`、`Cha'kohkev ilythiiri elg'caress!`、`Usstan tlun l' Detholusin d' Sendai, wael…`、`lu' ol's draeval whol ilta ulu el`、`Dosst heen zhah sreenath…`、`Pholor dosst la'uren, jaluk!`。教学段落中这些例句也保持原文（学习者需要看到原词）。
3. **强调星号** `*词*` 的星号成对保留。
4. **音效标签**（`[LK#I1]` 等）、脚本动作（`DO ~IncrementGlobal(...)~`）、标签名、`2da` 键名、变量名（`LK#IYLO`、`IYLOS_TIMER`、`DEATHVAR ~Iylos~`）不译。

## 六、校验记录

| 检查项 | 结果 |
| --- | --- |
| 8 个目标文件齐备 | 通过 |
| 无 BOM（`EF BB BF`） | 通过（8/8） |
| 严格 UTF-8 解码无异常 | 通过（8/8） |
| 纯 CRLF（`\r\n` 计数 == `\n` 计数） | 通过（8/8） |
| 每文件 `.bak` 存在 | 通过（8/8） |
| 改前改后 `~` 定界符数量一致 | 通过（8/8） |
| 汉化后重新提取台词条目数 | 1431，与译稿键（0–1430）一一对应 |
| 空串（`~~`） | 0 |
| 残留英文扫描（剥离占位符后，≥4 个连续英文单词） | 11 条命中，全部为卓尔语白名单，无漏译 |

校验脚本与底本存放在工作目录 `C:\Users\yuyou\.doubao\lark-chats\2026-11-09\new-chat-1\iyl_tmp\`（`extract.py`、`spans.json`、`ddump.txt`、`tr_i01–tr_i10.py`、`tr_tp2.py`、`apply.py`、`verify.py`）。

## 七、备注

1. 本模组 `iylos.tp2` **没有** `AUTO_TRA` / `LANGUAGE` / `HANDLE_CHARSETS`，安装时不会做任何转码，直接编译已汉化的 `.d`；只要文件保持 UTF-8，EET 的中文 `dialog.tlk` 即可正常显示。
2. 仓库里还有一份重复目录 `E:\GitHub\iylos\iylos\iylos\extended\lk#iylj.d`（193,740 字节，比正式路径 `iylos\extended\lk#iylj.d` 大 1 字节），`iylos.tp2` 引用的是 `~iylos/extended/lk#iylj.d~`，即模组根下的 `extended\`，该嵌套副本**不被安装引用**，故按保守处理**未改动、也未生成备份**。若你确认要一并汉化，可告知。
3. 组件 0 与组件 1 的语音文件（`audio\*.ogg`）由 `iylosaudio.bat` 在安装末尾解码，与文本无关；语音仍是英文原声。
4. 组件 2–6 只改 `gtimes.ids` 的计时数值，本汉化只译其组件名与提示文字，不影响功能。
5. 如需还原，删除改写后的文件、把同名 `.bak` 改回原名即可（`.bak` 为原始英文 + 原始编码）。
