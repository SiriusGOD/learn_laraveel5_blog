-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 
-- 伺服器版本: 5.7.14
-- PHP 版本： 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `blog`
--

-- --------------------------------------------------------

--
-- 資料表結構 `blog_article`
--

CREATE TABLE `blog_article` (
  `art_id` int(11) NOT NULL,
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章標題',
  `art_tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '關鍵詞',
  `art_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `art_thumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '縮圖',
  `art_content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '內容',
  `art_time` int(11) NOT NULL DEFAULT '0' COMMENT '時間',
  `art_editor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '作者',
  `art_view` int(11) NOT NULL DEFAULT '0' COMMENT '查看次數',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分類ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章';

--
-- 資料表的匯出資料 `blog_article`
--

INSERT INTO `blog_article` (`art_id`, `art_title`, `art_tag`, `art_description`, `art_thumb`, `art_content`, `art_time`, `art_editor`, `art_view`, `cate_id`) VALUES
(4, 'Fate/stay night [Heaven\'s Feel]', 'FATE HF', '將改編遊戲《Fate/stay night》中的「Heaven\'s Feel（天之杯）」間桐櫻路線。「Heaven\'s Feel（天之杯）」有著和前兩條線截然不同的黑暗基調，以衛宮士郎在弓道部與學妹間桐櫻作為感情主線，講述間桐櫻和衛宮士郎之間的故事，並將整個聖杯戰爭的真實全貌給展露出來。', 'uploads/20180305191755656.jpg', '<p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">《<strong>Fate/stay night [Heaven&#39;s Feel]</strong>》是<a href="https://zh.wikipedia.org/wiki/Ufotable" title="Ufotable" style=";color: rgb(11, 0, 128);background: none">ufotable</a>製作的<a href="https://zh.wikipedia.org/wiki/%E5%8B%95%E7%95%AB%E9%9B%BB%E5%BD%B1" title="動畫電影" style=";color: rgb(11, 0, 128);background: none">動畫電影</a>，由<span data-orig-title="須藤友德" data-lang-code="ja" data-lang-name="日語" data-foreign-title="須藤友徳"><a href="https://zh.wikipedia.org/w/index.php?title=%E9%A0%88%E8%97%A4%E5%8F%8B%E5%BE%B7&action=edit&redlink=1" original-title="須藤友德（頁面不存在）" style=";color: rgb(0, 175, 137);background: none">須藤友德</a></span>導演和檜山彬編劇<sup id="cite_ref-2" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/Fate/stay_night_Heaven%27s_Feel#cite_note-2" style=";color: rgb(11, 0, 128);background: none">[2]</a></sup>，<a href="https://zh.wikipedia.org/wiki/%E6%A2%B6%E6%B5%A6%E7%94%B1%E8%A8%98" title="梶浦由記" style=";color: rgb(11, 0, 128);background: none">梶浦由記</a>負責配樂<sup id="cite_ref-3" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/Fate/stay_night_Heaven%27s_Feel#cite_note-3" style=";color: rgb(11, 0, 128);background: none">[3]</a></sup>，劇場版將分為三部分播映，第一章《Fate/stay night [Heaven&#39;s Feel] I.presage flower》於2017年10月14日上映<sup id="cite_ref-Part1Date_1-1" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/Fate/stay_night_Heaven%27s_Feel#cite_note-Part1Date-1" style=";color: rgb(11, 0, 128);background: none">[1]</a></sup><sup id="cite_ref-4" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/Fate/stay_night_Heaven%27s_Feel#cite_note-4" style=";color: rgb(11, 0, 128);background: none">[4]</a></sup>。第二章《Fate/stay night [Heaven&#39;s Feel] II.lost butterfly》定於2018年上映。</p><p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">這是ufotable繼《<a href="https://zh.wikipedia.org/wiki/%E7%A9%BA%E4%B9%8B%E5%A2%83%E7%95%8C" title="空之境界" style=";color: rgb(11, 0, 128);background: none">空之境界</a>》系列、電視動畫《<a href="https://zh.wikipedia.org/wiki/Fate/Zero" title="Fate/Zero" style=";color: rgb(11, 0, 128);background: none">Fate/Zero</a>》和電視動畫《<a href="https://zh.wikipedia.org/wiki/Fate/stay_night#%E9%9B%BB%E8%A6%96%E5%8B%95%E7%95%AB%EF%BC%88%E7%AC%AC2%E4%BD%9C%EF%BC%89" title="Fate/stay night" style=";color: rgb(11, 0, 128);background: none">Fate/stay night [Unlimited Blade Works]</a>》後，第四度改編<a href="https://zh.wikipedia.org/wiki/TYPE-MOON" title="TYPE-MOON" style=";color: rgb(11, 0, 128);background: none">TYPE-MOON</a>作品<sup id="cite_ref-ANN_5-0" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/Fate/stay_night_Heaven%27s_Feel#cite_note-ANN-5" style=";color: rgb(11, 0, 128);background: none">[5]</a></sup>。亦是《<a href="https://zh.wikipedia.org/wiki/Fate/stay_night" title="Fate/stay night" style=";color: rgb(11, 0, 128);background: none">Fate/stay night</a>》在推出「三線混合」2006年電視動畫，「Unlimited Blade Works無限劍製」2010年劇場版及2014年電視動畫之後，首次登上螢幕、劇場版化的第三路線「Heaven′s Feel天之杯」<sup id="cite_ref-CR_6-0" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/Fate/stay_night_Heaven%27s_Feel#cite_note-CR-6" style=";color: rgb(11, 0, 128);background: none">[6]</a></sup>。</p><p><br/></p>', 1520251730, '許愷林', 9, 7),
(5, '封包抓取網路架構圖', '封包', '封包抓取網路架構圖', 'uploads/20180305210400111.png', '<p><strong>1.1 研究背景</strong></p><p>&nbsp;近年來雲端運算和高畫質影音傳輸等相關服務的新興發展，隨著多媒體與網\r\n路加值服務的興起和即時資訊需求的提升，整體網路傳輸速度與網路用量的要求\r\n也日益提高，造成網路資源不當使用的問題日益嚴重，再加上全球各網際網路相\r\n關組織均建議各 ISP 積極佈建 IPv6 網路，以解決 IPv4 位址發罄之問題，全球各\r\n大電信業者及網路服務提供者也紛紛開始提供 IPv6 服務。因此網路監控與網路\r\n管理工作也越來越受到重視。精確且即時的網路流量數據可以協助網路管理人員\r\n快速了解目前網路資源使用狀況及使用者的使用行為。</p><p><strong>1.2 研究動機與目的</strong></p><p>&nbsp;就如 1.1 小節提到的目前網路流量使用趨勢，網路管理者希望透過簡單的圖\r\n形化介面即可監控網路流量，因此如何設計一個簡單的圖形化介面讓管理者很輕\r\n易的監控網路流量是一個重要的設計考量。本篇論文是以設計及實作一個圖形化\r\n介面的即時流量管理程式將封包流量利用圖表方式顯示出來，讓管理者透過圖表\r\n的結果可以很清楚的了解當前封包流量是否有異常現象進而採取進一步的解決\r\n方案。</p>', 1520255043, '許愷林', 6, 1),
(10, '你的名字', '你的名字', '本作是新海誠第一次採用製作委員會方式的作品。該片上映後連霸日本數週票房冠軍，是目前唯一除吉卜力工作室作品以外超越百億日圓票房的日本動畫電影[7]，並獲得西班牙錫切斯影展最佳動畫長片獎等電影獎榮譽[8]。', 'uploads/20180614104239570.jpg', '<p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)"><a href="https://zh.wikipedia.org/wiki/%E8%BF%AA%E4%BA%9A%E9%A9%AC%E7%89%B9" title="迪亞馬特" style=";color: rgb(11, 0, 128);background: none">迪亞馬特</a>彗星（ティアマト彗星）每逢1200年造訪地球，在深山小鎮<a href="https://zh.wikipedia.org/wiki/%E7%B3%B8%E5%AE%88%E7%94%BA" title="糸守町" style=";color: rgb(11, 0, 128);background: none">糸守町</a>（糸守町／いともりまち）<span id="noteTag-cite_ref-sup"><sup id="cite_ref-16" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97%E3%80%82#cite_note-16" style=";color: rgb(11, 0, 128);background: none">[註 7]</a></sup></span>中家族世代經營鎮內「宮水神社」的高中少女<strong>宮水三葉</strong>、以及<a href="https://zh.wikipedia.org/wiki/%E6%9D%B1%E4%BA%AC" title="東京" style=";color: rgb(11, 0, 128);background: none">東京</a><a href="https://zh.wikipedia.org/wiki/%E5%9B%9B%E8%B0%B7" title="四谷" style=";color: rgb(11, 0, 128);background: none">四谷</a><span id="noteTag-cite_ref-sup"><sup id="cite_ref-17" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97%E3%80%82#cite_note-17" style=";color: rgb(11, 0, 128);background: none">[註 8]</a></sup></span>的高中少年<strong>立花瀧</strong>，從某天開始，在睡覺的時候，就會靈魂互換，醒來什麼都不記得，感覺像做了奇妙的夢，但周圍的人會講出他們昨天有違平常。他倆很快意識到這種情形，困惑之中開始在彼此智慧型手機留言，逐漸地變得習慣於身體切換，並干預對方的生活。三葉不僅樂於所嚮往的東京生活，也利用女人心這點，幫助瀧更接近其打工的美女前輩奧寺，促成與她約會；而瀧以陽剛的形象，幫助柔弱的三葉在她的學校更受歡迎，雙方逐漸對彼此有好感。</p><p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">有次三葉（瀧）和妹妹四葉、外祖母一起徒步至宮水神社位在鎮外山上的「<a href="https://zh.wikipedia.org/wiki/%E5%BE%A1%E7%A5%9E%E9%AB%94" title="御神體" style=";color: rgb(11, 0, 128);background: none">御神體</a>」，途中外祖母告訴她們土地神「産霊＝ムスビ＝結」，可以連結人與時間，因此宮水家族的歷代<a href="https://zh.wikipedia.org/wiki/%E5%B7%AB%E5%A5%B3" title="巫女" style=";color: rgb(11, 0, 128);background: none">巫女</a>都編織結繩來體現，水酒等進入人體也能形成連結。三人參拜位於<a href="https://zh.wikipedia.org/wiki/%E7%A0%B4%E7%81%AB%E5%B1%B1%E5%8F%A3" title="破火山口" style=";color: rgb(11, 0, 128);background: none">破火山口</a>型<a href="https://zh.wikipedia.org/wiki/%E6%B4%BC%E5%9C%B0" title="窪地" style=";color: rgb(11, 0, 128);background: none">窪地</a><span id="noteTag-cite_ref-sup"><sup id="cite_ref-18" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97%E3%80%82#cite_note-18" style=";color: rgb(11, 0, 128);background: none">[註 9]</a></sup></span>「隱世」（カクリヨ）上的御神體，並以<a href="https://zh.wikipedia.org/wiki/%E5%8F%A3%E5%9A%BC%E9%85%92" title="口嚼酒" style=";color: rgb(11, 0, 128);background: none">口嚼酒</a>為半身獻祭。回程時當三葉（瀧）和妹妹四葉、外祖母在觀看糸守湖的夕陽時，外祖母對三葉（瀧）說：「你是不是在作夢？」，瀧聽完後從床上驚醒起來，並發覺自己在流淚。</p><p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">瀧與奧寺約會時，偶然看到飛驒照片喚起記憶，三葉留下信息告訴瀧約會後正好可以看到彗星，瀧覺得此話十分奇怪，決定打電話詢問卻打不通，而且自那天起就再也沒有跟三葉交換身體。心中充滿疑問的他利用擅長的素描畫下片段印象，並與同學藤井司、前輩奧寺一起去飛驒探個究竟。在瀧一行人拿著素描圖詢問當地居民但四處碰壁之際，遇上拉麵店老闆閒聊回憶起家鄉，得知該地名為糸守町，並在拉麵店老闆的帶領下來到已無人居住的原糸守町；由於3年前隕石擊中當時正在舉行秋日<a href="https://zh.wikipedia.org/wiki/%E7%A5%AD_(%E6%97%A5%E6%9C%AC)" title="祭 (日本)" style=";color: rgb(11, 0, 128);background: none">祭典</a>的宮水神社一帶，村鎮被摧毀大半，超過500名鎮民、包括宮水本家及其朋友皆不幸罹難。不相信這個事實的瀧打開手機，卻發現三葉的留言全部消失，而歷史文獻亦將她列在罹難者名單之中。當天晚上和奧寺談起瀧手上不知何來的結繩信物時，瀧想到三葉外祖母曾經說過土地神可以連結人與時間，便決定回到過去幫助三葉和糸守町居民們躲過災難，他留下字條跟藤井司、奧寺說明原因後，在拉麵店老闆的幫助下前往御神體。</p><p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">瀧到達御神體並喝下三葉製作而自己當時留下的口嚼酒後便一陣暈眩、意外絆倒時，種種片段歷歷在目，等到瀧回過神來，發現自己再度與三葉交換身體。在三葉（瀧）思考如何拯救糸守町時，又被外祖母識破，並提起自己、二葉、甚至整個宮水家都有過似夢恍惚時候，但是自己已經錯過了記憶，特別告誡三葉（瀧）要好好珍惜現在這個緣份。三葉（瀧）向友人勅使河原克彥、名取早耶香說明情況並且開始策畫避難行動，查出小鎮所環繞的糸守湖也是隕石造成的<a href="https://zh.wikipedia.org/wiki/%E6%92%9E%E5%87%BB%E5%9D%91" title="撞擊坑" style=";color: rgb(11, 0, 128);background: none">撞擊坑</a><sup id="cite_ref-19" style="line-height: 1;unicode-bidi: isolate;white-space: nowrap"><a href="https://zh.wikipedia.org/wiki/%E4%BD%A0%E7%9A%84%E5%90%8D%E5%AD%97%E3%80%82#cite_note-19" style=";color: rgb(11, 0, 128);background: none">[10]</a></sup>，更加深他們的信念。勅使河原克彥負責用<a href="https://zh.wikipedia.org/wiki/%E6%B0%B4%E8%83%B6%E7%82%B8%E8%8D%AF" title="水膠炸藥" style=";color: rgb(11, 0, 128);background: none">水膠炸藥</a>爆破糸守町附近的變電所造成騷動，名取早耶香則在爆炸後透過廣播疏散鎮民，三葉（瀧）則是跑去跟身為<a href="https://zh.wikipedia.org/wiki/%E5%B8%82%E9%95%B7" title="市長" style=";color: rgb(11, 0, 128);background: none">町長</a>的父親要求疏散鎮民，爭執之中町長亦從三葉舉止發現她的意識變成別人。在三葉（瀧）奔走之際，在御神體的瀧（三葉）醒來對於瀧的身體為何在御神體感到不明白，好奇的瀧（三葉）在走出御神體的山頂時見到小鎮消失，才領悟到本人已在當時觀看彗星的時候死去。當三葉（瀧）至御神體之處，在「黃昏之時」（カタワレ時）兩人得以相見。在短暫的寒暄後，為避免再次相忘，瀧提議雙方在對方手上寫下自己的名字。三葉正要在瀧手上寫下名字之際兩人卻又分離，而瀧在三葉手上寫下了「喜歡你」。回復真身的三葉繼續執行瀧未完成的計畫，造成騷動促使鎮民避難，但其同儕的行動遭町長阻止，此時三葉見到彗星分裂碎片開始墜落，趕緊再次去遊說父親……。</p><p style="margin-top: 0.5em;margin-bottom: 0.5em;line-height: inherit;color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">時間跳到自飛驒回來5年期間，瀧已經出社會，對御神體時的事蹟的種種已變得模糊，以為應是跟藤井司、奧寺吵架然後負氣跑到山頂散心；回到東京，不自覺地對糸守這個地方很在意，從新聞記錄中得知鎮民因町長以「演習」名義指示至當地高中避難而躲過一劫。即使距彗星災難8年後（2021年），大學畢業在東京四處求職的瀧，仍依稀想找尋某人，期間數次與三葉擦肩而過。在一次偶然機會下，瀧與三葉隔著不同電車的車廂，驚訝地遇見了彼此。雙方下車後焦急地想與對方見面，最終在階梯相會。此時的瀧和三葉逐漸對彼此有了熟悉的感覺，在那久別重逢的當下，眼淚卻從自己的臉龐止不住地滑下。瀧忍不住開口問：「我是不是在哪裡見過你？」，三葉回答：「我也是。」，最終，雙方對問：「你的名字是？」（君の、名前は）。</p><p><br/></p>', 1528944248, '許愷林', 6, 7),
(8, 'AK47', 'AK47', 'AK47介紹', 'uploads/20180330152201231.jpg', '<p><strong style="color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">AK-47</strong><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)">（俄語：</span><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)"><strong>А</strong>втомат&nbsp;<strong>К</strong>алашникова образца 19<strong>47</strong>&nbsp;года</span><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)">，意為 「</span><strong style="color: rgb(34, 34, 34);font-size: 15.008px;white-space: normal;background-color: rgb(255, 255, 255)">卡拉什尼科夫1947年<a href="https://zh.wikipedia.org/wiki/%E8%87%AA%E5%8B%95%E6%AD%A5%E6%A7%8D" title="自動步槍" style=";color: rgb(11, 0, 128);background: none">自動步槍</a></strong><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)">」），是由</span><a href="https://zh.wikipedia.org/wiki/%E8%8B%8F%E8%81%94" title="蘇聯" style=";color: rgb(11, 0, 128);background: none rgb(255, 255, 255);font-size: 15.008px;white-space: normal">前蘇聯</a><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)">槍械設計師</span><a href="https://zh.wikipedia.org/wiki/%E7%B1%B3%E5%93%88%E4%BC%8A%E5%B0%94%C2%B7%E5%AD%A3%E8%8E%AB%E8%B4%B9%E8%80%B6%E7%BB%B4%E5%A5%87%C2%B7%E5%8D%A1%E6%8B%89%E4%BB%80%E5%B0%BC%E7%A7%91%E5%A4%AB" title="米哈伊爾·季莫費耶維奇·卡拉什尼科夫" style=";color: rgb(11, 0, 128);background: none rgb(255, 255, 255);font-size: 15.008px;white-space: normal">米哈伊爾·季莫費耶維奇·卡拉什尼科夫</a><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)">設計的</span><a href="https://zh.wikipedia.org/wiki/%E7%AA%81%E5%87%BB%E6%AD%A5%E6%9E%AA" title="突擊步槍" style=";color: rgb(11, 0, 128);background: none rgb(255, 255, 255);font-size: 15.008px;white-space: normal">突擊步槍</a><span style="color: rgb(34, 34, 34);font-size: 15.008px;background-color: rgb(255, 255, 255)">。</span></p><p><br/></p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);">卡拉什尼科夫原本是蘇聯紅軍的坦克兵，在因傷送至後方醫院救治後而開始研究槍械工藝。他在1944年與同袍討論歐洲的戰況時，發現到德軍配備<a href="https://zh.wikipedia.org/wiki/StG44%E7%AA%81%E6%93%8A%E6%AD%A5%E6%A7%8D" class="mw-redirect" title="StG44突擊步槍" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">StG44突擊步槍</a>的威力後，開始構思一種簡單可靠的新式可連發中威力步槍。在參考M1加蘭德步槍後，設計出M1944試作型樣槍，採用M43步槍彈、回轉式槍機；經過接連的嘗試後，於1946年製作出可連發射擊的樣槍（AK-46），成為此後AK系列槍械的原型。經過一系列試驗，包括在風沙泥水等惡劣環境中嚴格測試，改進了導氣裝置與活塞系統，於1947年定名為AK-47。</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);">有一些說法稱卡拉什尼科夫借鑑了如下槍的設計：布爾基納的TKB-415<sup id="cite_ref-4" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap;"><a href="https://zh.wikipedia.org/wiki/AK-47%E7%AA%81%E5%87%BB%E6%AD%A5%E6%9E%AA#cite_note-4" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[4]</a></sup>，AS-44或是西蒙諾夫的AVS-31<sup id="cite_ref-5" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap;"><a href="https://zh.wikipedia.org/wiki/AK-47%E7%AA%81%E5%87%BB%E6%AD%A5%E6%9E%AA#cite_note-5" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[5]</a></sup>，這說法當然不可信，但至少有證據表明雨果-施梅瑟，戰後「協助」過卡氏的工作<sup id="cite_ref-6" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap;"><a href="https://zh.wikipedia.org/wiki/AK-47%E7%AA%81%E5%87%BB%E6%AD%A5%E6%9E%AA#cite_note-6" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">[6]</a></sup>。</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);">1947年，被選定為蘇聯軍隊制式裝備；1949年，最終定型並正式在伊熱夫斯克軍工廠量產。1951年，開始裝備前蘇聯軍隊，以取代<a href="https://zh.wikipedia.org/wiki/SKS%E5%8D%8A%E8%87%AA%E5%8B%95%E6%AD%A5%E6%A7%8D" title="SKS半自動步槍" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">SKS</a>。1953年，<a href="https://zh.wikipedia.org/wiki/%E6%9C%BA%E5%8C%A3" title="機匣" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">機匣</a>生產工藝由沖壓變更為機械加工（第3型），開始大量裝備前蘇聯軍隊。從1950年代到1980年代，是前蘇聯軍隊和<a href="https://zh.wikipedia.org/wiki/%E5%8D%8E%E6%B2%99%E6%9D%A1%E7%BA%A6%E7%BB%84%E7%BB%87" title="華沙條約組織" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">華沙條約組織</a>國家軍隊制式裝備。後採用大量使用合成材料的AKM，可靠性更佳。在1980年代，<a href="https://zh.wikipedia.org/wiki/%E5%B0%8F%E5%8F%A3%E5%BE%84%E6%AD%A5%E6%9E%AA" title="小口徑步槍" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">小口徑</a>版本<a href="https://zh.wikipedia.org/wiki/AK-74%E7%AA%81%E5%87%BB%E6%AD%A5%E6%9E%AA" title="AK-74突擊步槍" style="text-decoration-line: none; color: rgb(11, 0, 128); background: none;">AK-74</a>系列裝備前蘇聯軍隊後，AK-47和AKM漸漸從蘇軍前線裝備中退出。</p><p><br/></p>', 1522394536, '許愷林', 5, 5),
(9, '遊戲人生ZERO', '遊戲人生ZERO', '《NO GAME NO LIFE 遊戲人生》（日語：ノーゲーム・ノーライフ，NO GAME NO LIFE）是由榎宮祐創作的日本輕小說。此系列於Media Factory的MF文庫J出版，繁體中文版由東立出版社代理發售，譯者為林憲權。', 'uploads/20180614103901445.jpg', '<p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);">空與白既是尼特族又是家裡蹲，但是在網路上卻是被奉為都市傳說的天才遊戲玩家兄妹。</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);">稱呼現實世界為「垃圾遊戲」的兩人，某一天被自稱是「神」的少年——特圖召喚至棋盤上的世界「迪司博德」，那是個戰爭為神所禁止，「遊戲決定一切」的世界，甚至連國界也一樣。</p><p style="margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-size: 15.008px; white-space: normal; background-color: rgb(255, 255, 255);">被其他種族逼至絕境，只剩下最後都市——「艾爾奇亞」的「人類種」，空與白利用自己的才智以及策略，在通過遊戲取得艾爾奇亞王的地位後，僅用短短幾個月就成功將艾爾奇亞從生死邊緣反轉為世界第二大國。空與白的目標是通過和平手段與其他十五個種族達成聯盟關係，最後取得向唯一神「特圖」挑戰的權利。</p><table class="cquote" role="presentation" width="NaN"><tbody><tr class="firstRow"><td style="vertical-align: top; border-width: initial; border-style: none; border-color: initial; color: rgb(178, 183, 242); font-size: 40px; font-family: &quot;Times New Roman&quot;, Times, serif; font-weight: bold; line-height: 0.6em; padding-top: 10px; padding-bottom: 10px;" width="20">「</td><td style="vertical-align: top; border-width: initial; border-style: none; border-color: initial; padding-top: 4px; padding-bottom: 4px;">來吧，遊戲開始了。</td><td style="vertical-align: bottom; border-width: initial; border-style: none; border-color: initial; color: rgb(178, 183, 242); font-size: 40px; font-family: &quot;Times New Roman&quot;, Times, serif; font-weight: bold; line-height: 0.6em; text-align: right; padding-top: 10px; padding-bottom: 10px;" width="20">」</td></tr></tbody></table><p><br/></p>', 1528944065, '許愷林', 3, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `blog_category`
--

CREATE TABLE `blog_category` (
  `cate_id` int(11) NOT NULL COMMENT 'ID',
  `cate_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分類名稱',
  `cate_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分類說明',
  `cate_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '關鍵詞',
  `cate_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `cate_view` int(10) NOT NULL DEFAULT '0' COMMENT '查看次數',
  `cate_order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `cate_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父級ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章分類';

--
-- 資料表的匯出資料 `blog_category`
--

INSERT INTO `blog_category` (`cate_id`, `cate_name`, `cate_title`, `cate_keywords`, `cate_description`, `cate_view`, `cate_order`, `cate_pid`) VALUES
(1, '新聞', '蒐集國內外熱門新聞資訊', '新聞', '蒐集國內外熱門新聞資訊', 8, 1, 0),
(2, '娛樂', '人人都有自己的娛樂圈', NULL, NULL, 0, 2, 0),
(3, '體育', '努力推廣體育競賽', '努力', '努力推廣體育競賽', 0, 3, 0),
(5, '軍事新聞', '最新軍事新聞', NULL, NULL, 0, 5, 1),
(6, '歌曲', '最新熱門歌曲', NULL, NULL, 0, 6, 2),
(7, '電影', '最新熱門電影', NULL, NULL, 0, 7, 2),
(9, '網球', '澳洲網球公開賽', '澳洲網球公開賽', '澳洲網球公開賽', 0, 9, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `blog_config`
--

CREATE TABLE `blog_config` (
  `conf_id` int(11) NOT NULL,
  `conf_title` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL COMMENT '標題',
  `conf_name` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL COMMENT '變量名',
  `conf_content` text COLLATE utf8_unicode_ci COMMENT '變量值',
  `conf_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `conf_tips` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '字段類型',
  `field_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '類型值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `blog_config`
--

INSERT INTO `blog_config` (`conf_id`, `conf_title`, `conf_name`, `conf_content`, `conf_order`, `conf_tips`, `field_type`, `field_value`) VALUES
(1, '網站標題', 'web_title', '個人部落格', 1, '網站大眾化標題 A', 'input', NULL),
(2, '統計代碼', 'web_count', '統計', 3, '網站訪問情況 B', 'textarea', NULL),
(3, '網站狀態', 'web_status', '0', 2, '網站狀態', 'radio', '1｜開啟,0｜關閉'),
(8, '輔助標題', 'seo_title', '心情紀錄', 4, '對網站名稱的補充', 'input', NULL),
(9, '關鍵詞', 'keywords', '心情紀錄部落格', 5, '關鍵詞', 'input', NULL),
(10, '描述', 'description', '愷林的心情紀錄空間!!', 6, '描述', 'textarea', NULL),
(11, '版權訊息', 'copyright', 'Design by 后盾網 (愷林學習作品) <a href="https://www.facebook.com/s72210ken?ref=bookmarks" target="_blank">愷林FB</a>', 7, NULL, 'textarea', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `blog_links`
--

CREATE TABLE `blog_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名稱',
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '標題',
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '鏈結',
  `link_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `blog_links`
--

INSERT INTO `blog_links` (`link_id`, `link_name`, `link_title`, `link_url`, `link_order`) VALUES
(1, '巴哈姆特', '國內最大遊戲論壇', 'https://www.gamer.com.tw/', 3),
(2, 'PTT', '國內最早論壇', 'https://www.ptt.cc/bbs/index.html', 1),
(3, '巴哈姆特動畫瘋', '巴哈姆特動畫瘋', 'https://ani.gamer.com.tw/', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `blog_navs`
--

CREATE TABLE `blog_navs` (
  `nav_id` int(11) UNSIGNED NOT NULL,
  `nav_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '名稱',
  `nav_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '別名',
  `nav_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'URL',
  `nav_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `blog_navs`
--

INSERT INTO `blog_navs` (`nav_id`, `nav_name`, `nav_alias`, `nav_url`, `nav_order`) VALUES
(1, '首頁', '首頁', 'http://120.125.85.157/laravelcode/blog/', 1),
(2, '西洽版', '西洽版', 'https://www.ptt.cc/bbs/C_Chat/index.html', 2),
(4, '新聞', 'News', 'http://120.125.85.157/laravelcode/blog/cate/1', 3),
(5, '動畫劇場版', '動畫', 'http://120.125.85.157/laravelcode/blog/a/10', 4),
(6, '模板分享', 'Share', 'http://cttech88.com/', 5),
(7, '桌球報名網站', 'table tennis', 'http://120.125.85.157/table_tennis/about.php', 6),
(8, '雅筑旅館', 'hotel', 'http://120.125.85.157/hotel/', 7);

-- --------------------------------------------------------

--
-- 資料表結構 `blog_user`
--

CREATE TABLE `blog_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `blog_user`
--

INSERT INTO `blog_user` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'admin', 'eyJpdiI6IjlcL21wTGExSWZMNGs2Y0ZOMG5HYU93PT0iLCJ2YWx1ZSI6InlNUUpcL296Z3J3R2dHeDg4SnhjMFpnPT0iLCJtYWMiOiJmOTViYTM2MTFmN2I3ODgwZTVlNWQxMjg1ZDI2MzM1YmIzZWNmMTE2NDc1YmY5YzVhN2I3YWUwODQyYmQ1ZDU1In0=');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_13_153747_create_links_table', 1);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`art_id`);

--
-- 資料表索引 `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`cate_id`);

--
-- 資料表索引 `blog_config`
--
ALTER TABLE `blog_config`
  ADD PRIMARY KEY (`conf_id`);

--
-- 資料表索引 `blog_links`
--
ALTER TABLE `blog_links`
  ADD PRIMARY KEY (`link_id`);

--
-- 資料表索引 `blog_navs`
--
ALTER TABLE `blog_navs`
  ADD PRIMARY KEY (`nav_id`);

--
-- 資料表索引 `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`user_id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用資料表 AUTO_INCREMENT `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=16;
--
-- 使用資料表 AUTO_INCREMENT `blog_config`
--
ALTER TABLE `blog_config`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `blog_links`
--
ALTER TABLE `blog_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `blog_navs`
--
ALTER TABLE `blog_navs`
  MODIFY `nav_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
