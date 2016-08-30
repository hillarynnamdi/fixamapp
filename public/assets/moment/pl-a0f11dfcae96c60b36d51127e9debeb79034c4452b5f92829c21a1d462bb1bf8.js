//! moment.js locale configuration
//! locale : polish (pl)
//! author : Rafal Hirsz : https://github.com/evoL
!function(e,t){"object"==typeof exports&&"undefined"!=typeof module&&"function"==typeof require?t(require("../moment")):"function"==typeof define&&define.amd?define(["moment"],t):t(e.moment)}(this,function(e){"use strict";function t(e){return 5>e%10&&e%10>1&&~~(e/10)%10!==1}function i(e,i,n){var a=e+" ";switch(n){case"m":return i?"minuta":"minut\u0119";case"mm":return a+(t(e)?"minuty":"minut");case"h":return i?"godzina":"godzin\u0119";case"hh":return a+(t(e)?"godziny":"godzin");case"MM":return a+(t(e)?"miesi\u0105ce":"miesi\u0119cy");case"yy":return a+(t(e)?"lata":"lat")}}var n="stycze\u0144_luty_marzec_kwiecie\u0144_maj_czerwiec_lipiec_sierpie\u0144_wrzesie\u0144_pa\u017adziernik_listopad_grudzie\u0144".split("_"),a="stycznia_lutego_marca_kwietnia_maja_czerwca_lipca_sierpnia_wrze\u015bnia_pa\u017adziernika_listopada_grudnia".split("_"),r=e.defineLocale("pl",{months:function(e,t){return""===t?"("+a[e.month()]+"|"+n[e.month()]+")":/D MMMM/.test(t)?a[e.month()]:n[e.month()]},monthsShort:"sty_lut_mar_kwi_maj_cze_lip_sie_wrz_pa\u017a_lis_gru".split("_"),weekdays:"niedziela_poniedzia\u0142ek_wtorek_\u015broda_czwartek_pi\u0105tek_sobota".split("_"),weekdaysShort:"nie_pon_wt_\u015br_czw_pt_sb".split("_"),weekdaysMin:"Nd_Pn_Wt_\u015ar_Cz_Pt_So".split("_"),longDateFormat:{LT:"HH:mm",LTS:"HH:mm:ss",L:"DD.MM.YYYY",LL:"D MMMM YYYY",LLL:"D MMMM YYYY HH:mm",LLLL:"dddd, D MMMM YYYY HH:mm"},calendar:{sameDay:"[Dzi\u015b o] LT",nextDay:"[Jutro o] LT",nextWeek:"[W] dddd [o] LT",lastDay:"[Wczoraj o] LT",lastWeek:function(){switch(this.day()){case 0:return"[W zesz\u0142\u0105 niedziel\u0119 o] LT";case 3:return"[W zesz\u0142\u0105 \u015brod\u0119 o] LT";case 6:return"[W zesz\u0142\u0105 sobot\u0119 o] LT";default:return"[W zesz\u0142y] dddd [o] LT"}},sameElse:"L"},relativeTime:{future:"za %s",past:"%s temu",s:"kilka sekund",m:i,mm:i,h:i,hh:i,d:"1 dzie\u0144",dd:"%d dni",M:"miesi\u0105c",MM:i,y:"rok",yy:i},ordinalParse:/\d{1,2}\./,ordinal:"%d.",week:{dow:1,doy:4}});return r});