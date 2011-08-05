/* All sorts of goodies, placed in application.js to save on HTTP requests. */

// Underscore.js 1.1.6
// (c) 2011 Jeremy Ashkenas, DocumentCloud Inc.
// Underscore is freely distributable under the MIT license.
// Portions of Underscore are inspired or borrowed from Prototype,
// Oliver Steele's Functional, and John Resig's Micro-Templating.
// For all details and documentation:
// http://documentcloud.github.com/underscore
(function(){var p=this,C=p._,m={},i=Array.prototype,n=Object.prototype,f=i.slice,D=i.unshift,E=n.toString,l=n.hasOwnProperty,s=i.forEach,t=i.map,u=i.reduce,v=i.reduceRight,w=i.filter,x=i.every,y=i.some,o=i.indexOf,z=i.lastIndexOf;n=Array.isArray;var F=Object.keys,q=Function.prototype.bind,b=function(a){return new j(a)};typeof module!=="undefined"&&module.exports?(module.exports=b,b._=b):p._=b;b.VERSION="1.1.6";var h=b.each=b.forEach=function(a,c,d){if(a!=null)if(s&&a.forEach===s)a.forEach(c,d);else if(b.isNumber(a.length))for(var e=0,k=a.length;e<k;e++){if(c.call(d,a[e],e,a)===m)break}else for(e in a)if(l.call(a,e)&&c.call(d,a[e],e,a)===m)break};b.map=function(a,c,b){var e=[];if(a==null)return e;if(t&&a.map===t)return a.map(c,b);h(a,function(a,g,G){e[e.length]=c.call(b,a,g,G)});return e};b.reduce=b.foldl=b.inject=function(a,c,d,e){var k=d!==void 0;a==null&&(a=[]);if(u&&a.reduce===u)return e&&(c=b.bind(c,e)),k?a.reduce(c,d):a.reduce(c);h(a,function(a,b,f){!k&&b===0?(d=a,k=!0):d=c.call(e,d,a,b,f)});if(!k)throw new TypeError("Reduce of empty array with no initial value");
return d};b.reduceRight=b.foldr=function(a,c,d,e){a==null&&(a=[]);if(v&&a.reduceRight===v)return e&&(c=b.bind(c,e)),d!==void 0?a.reduceRight(c,d):a.reduceRight(c);a=(b.isArray(a)?a.slice():b.toArray(a)).reverse();return b.reduce(a,c,d,e)};b.find=b.detect=function(a,c,b){var e;A(a,function(a,g,f){if(c.call(b,a,g,f))return e=a,!0});return e};b.filter=b.select=function(a,c,b){var e=[];if(a==null)return e;if(w&&a.filter===w)return a.filter(c,b);h(a,function(a,g,f){c.call(b,a,g,f)&&(e[e.length]=a)});return e};
b.reject=function(a,c,b){var e=[];if(a==null)return e;h(a,function(a,g,f){c.call(b,a,g,f)||(e[e.length]=a)});return e};b.every=b.all=function(a,c,b){var e=!0;if(a==null)return e;if(x&&a.every===x)return a.every(c,b);h(a,function(a,g,f){if(!(e=e&&c.call(b,a,g,f)))return m});return e};var A=b.some=b.any=function(a,c,d){c||(c=b.identity);var e=!1;if(a==null)return e;if(y&&a.some===y)return a.some(c,d);h(a,function(a,b,f){if(e=c.call(d,a,b,f))return m});return e};b.include=b.contains=function(a,c){var b=
!1;if(a==null)return b;if(o&&a.indexOf===o)return a.indexOf(c)!=-1;A(a,function(a){if(b=a===c)return!0});return b};b.invoke=function(a,c){var d=f.call(arguments,2);return b.map(a,function(a){return(c.call?c||a:a[c]).apply(a,d)})};b.pluck=function(a,c){return b.map(a,function(a){return a[c]})};b.max=function(a,c,d){if(!c&&b.isArray(a))return Math.max.apply(Math,a);var e={computed:-Infinity};h(a,function(a,b,f){b=c?c.call(d,a,b,f):a;b>=e.computed&&(e={value:a,computed:b})});return e.value};b.min=function(a,
c,d){if(!c&&b.isArray(a))return Math.min.apply(Math,a);var e={computed:Infinity};h(a,function(a,b,f){b=c?c.call(d,a,b,f):a;b<e.computed&&(e={value:a,computed:b})});return e.value};b.sortBy=function(a,c,d){return b.pluck(b.map(a,function(a,b,f){return{value:a,criteria:c.call(d,a,b,f)}}).sort(function(a,b){var c=a.criteria,d=b.criteria;return c<d?-1:c>d?1:0}),"value")};b.sortedIndex=function(a,c,d){d||(d=b.identity);for(var e=0,f=a.length;e<f;){var g=e+f>>1;d(a[g])<d(c)?e=g+1:f=g}return e};b.toArray=
function(a){if(!a)return[];if(a.toArray)return a.toArray();if(b.isArray(a))return a;if(b.isArguments(a))return f.call(a);return b.values(a)};b.size=function(a){return b.toArray(a).length};b.first=b.head=function(a,b,d){return b!=null&&!d?f.call(a,0,b):a[0]};b.rest=b.tail=function(a,b,d){return f.call(a,b==null||d?1:b)};b.last=function(a){return a[a.length-1]};b.compact=function(a){return b.filter(a,function(a){return!!a})};b.flatten=function(a){return b.reduce(a,function(a,d){if(b.isArray(d))return a.concat(b.flatten(d));
a[a.length]=d;return a},[])};b.without=function(a){var c=f.call(arguments,1);return b.filter(a,function(a){return!b.include(c,a)})};b.uniq=b.unique=function(a,c){return b.reduce(a,function(a,e,f){if(0==f||(c===!0?b.last(a)!=e:!b.include(a,e)))a[a.length]=e;return a},[])};b.intersect=function(a){var c=f.call(arguments,1);return b.filter(b.uniq(a),function(a){return b.every(c,function(c){return b.indexOf(c,a)>=0})})};b.zip=function(){for(var a=f.call(arguments),c=b.max(b.pluck(a,"length")),d=Array(c),
e=0;e<c;e++)d[e]=b.pluck(a,""+e);return d};b.indexOf=function(a,c,d){if(a==null)return-1;var e;if(d)return d=b.sortedIndex(a,c),a[d]===c?d:-1;if(o&&a.indexOf===o)return a.indexOf(c);d=0;for(e=a.length;d<e;d++)if(a[d]===c)return d;return-1};b.lastIndexOf=function(a,b){if(a==null)return-1;if(z&&a.lastIndexOf===z)return a.lastIndexOf(b);for(var d=a.length;d--;)if(a[d]===b)return d;return-1};b.range=function(a,b,d){arguments.length<=1&&(b=a||0,a=0);d=arguments[2]||1;for(var e=Math.max(Math.ceil((b-a)/
d),0),f=0,g=Array(e);f<e;)g[f++]=a,a+=d;return g};b.bind=function(a,b){if(a.bind===q&&q)return q.apply(a,f.call(arguments,1));var d=f.call(arguments,2);return function(){return a.apply(b,d.concat(f.call(arguments)))}};b.bindAll=function(a){var c=f.call(arguments,1);c.length==0&&(c=b.functions(a));h(c,function(c){a[c]=b.bind(a[c],a)});return a};b.memoize=function(a,c){var d={};c||(c=b.identity);return function(){var b=c.apply(this,arguments);return l.call(d,b)?d[b]:d[b]=a.apply(this,arguments)}};b.delay=
function(a,b){var d=f.call(arguments,2);return setTimeout(function(){return a.apply(a,d)},b)};b.defer=function(a){return b.delay.apply(b,[a,1].concat(f.call(arguments,1)))};var B=function(a,b,d){var e;return function(){var f=this,g=arguments,h=function(){e=null;a.apply(f,g)};d&&clearTimeout(e);if(d||!e)e=setTimeout(h,b)}};b.throttle=function(a,b){return B(a,b,!1)};b.debounce=function(a,b){return B(a,b,!0)};b.once=function(a){var b=!1,d;return function(){if(b)return d;b=!0;return d=a.apply(this,arguments)}};
b.wrap=function(a,b){return function(){var d=[a].concat(f.call(arguments));return b.apply(this,d)}};b.compose=function(){var a=f.call(arguments);return function(){for(var b=f.call(arguments),d=a.length-1;d>=0;d--)b=[a[d].apply(this,b)];return b[0]}};b.after=function(a,b){return function(){if(--a<1)return b.apply(this,arguments)}};b.keys=F||function(a){if(a!==Object(a))throw new TypeError("Invalid object");var b=[],d;for(d in a)l.call(a,d)&&(b[b.length]=d);return b};b.values=function(a){return b.map(a,
b.identity)};b.functions=b.methods=function(a){return b.filter(b.keys(a),function(c){return b.isFunction(a[c])}).sort()};b.extend=function(a){h(f.call(arguments,1),function(b){for(var d in b)b[d]!==void 0&&(a[d]=b[d])});return a};b.defaults=function(a){h(f.call(arguments,1),function(b){for(var d in b)a[d]==null&&(a[d]=b[d])});return a};b.clone=function(a){return b.isArray(a)?a.slice():b.extend({},a)};b.tap=function(a,b){b(a);return a};b.isEqual=function(a,c){if(a===c)return!0;var d=typeof a;if(d!=
typeof c)return!1;if(a==c)return!0;if(!a&&c||a&&!c)return!1;if(a._chain)a=a._wrapped;if(c._chain)c=c._wrapped;if(a.isEqual)return a.isEqual(c);if(b.isDate(a)&&b.isDate(c))return a.getTime()===c.getTime();if(b.isNaN(a)&&b.isNaN(c))return!1;if(b.isRegExp(a)&&b.isRegExp(c))return a.source===c.source&&a.global===c.global&&a.ignoreCase===c.ignoreCase&&a.multiline===c.multiline;if(d!=="object")return!1;if(a.length&&a.length!==c.length)return!1;d=b.keys(a);var e=b.keys(c);if(d.length!=e.length)return!1;
for(var f in a)if(!(f in c)||!b.isEqual(a[f],c[f]))return!1;return!0};b.isEmpty=function(a){if(b.isArray(a)||b.isString(a))return a.length===0;for(var c in a)if(l.call(a,c))return!1;return!0};b.isElement=function(a){return!!(a&&a.nodeType==1)};b.isArray=n||function(a){return E.call(a)==="[object Array]"};b.isArguments=function(a){return!(!a||!l.call(a,"callee"))};b.isFunction=function(a){return!(!a||!a.constructor||!a.call||!a.apply)};b.isString=function(a){return!!(a===""||a&&a.charCodeAt&&a.substr)};
b.isNumber=function(a){return!!(a===0||a&&a.toExponential&&a.toFixed)};b.isNaN=function(a){return a!==a};b.isBoolean=function(a){return a===!0||a===!1};b.isDate=function(a){return!(!a||!a.getTimezoneOffset||!a.setUTCFullYear)};b.isRegExp=function(a){return!(!a||!a.test||!a.exec||!(a.ignoreCase||a.ignoreCase===!1))};b.isNull=function(a){return a===null};b.isUndefined=function(a){return a===void 0};b.noConflict=function(){p._=C;return this};b.identity=function(a){return a};b.times=function(a,b,d){for(var e=
0;e<a;e++)b.call(d,e)};b.mixin=function(a){h(b.functions(a),function(c){H(c,b[c]=a[c])})};var I=0;b.uniqueId=function(a){var b=I++;return a?a+b:b};b.templateSettings={evaluate:/<%([\s\S]+?)%>/g,interpolate:/<%=([\s\S]+?)%>/g};b.template=function(a,c){var d=b.templateSettings;d="var __p=[],print=function(){__p.push.apply(__p,arguments);};with(obj||{}){__p.push('"+a.replace(/\\/g,"\\\\").replace(/'/g,"\\'").replace(d.interpolate,function(a,b){return"',"+b.replace(/\\'/g,"'")+",'"}).replace(d.evaluate||
null,function(a,b){return"');"+b.replace(/\\'/g,"'").replace(/[\r\n\t]/g," ")+"__p.push('"}).replace(/\r/g,"\\r").replace(/\n/g,"\\n").replace(/\t/g,"\\t")+"');}return __p.join('');";d=new Function("obj",d);return c?d(c):d};var j=function(a){this._wrapped=a};b.prototype=j.prototype;var r=function(a,c){return c?b(a).chain():a},H=function(a,c){j.prototype[a]=function(){var a=f.call(arguments);D.call(a,this._wrapped);return r(c.apply(b,a),this._chain)}};b.mixin(b);h(["pop","push","reverse","shift","sort",
"splice","unshift"],function(a){var b=i[a];j.prototype[a]=function(){b.apply(this._wrapped,arguments);return r(this._wrapped,this._chain)}});h(["concat","join","slice"],function(a){var b=i[a];j.prototype[a]=function(){return r(b.apply(this._wrapped,arguments),this._chain)}});j.prototype.chain=function(){this._chain=!0;return this};j.prototype.value=function(){return this._wrapped}})();


/*
 * A JavaScript implementation of the Secure Hash Algorithm, SHA-1, as defined
 * in FIPS 180-1
 * Version 2.2 Copyright Paul Johnston 2000 - 2009.
 * Other contributors: Greg Holt, Andrew Kepert, Ydnar, Lostinet
 * Distributed under the BSD License
 * See http://pajhome.org.uk/crypt/md5 for details.
 */
var hexcase=0;var b64pad="";function hex_sha1(s){return rstr2hex(rstr_sha1(str2rstr_utf8(s)));}
function b64_sha1(s){return rstr2b64(rstr_sha1(str2rstr_utf8(s)));}
function any_sha1(s,e){return rstr2any(rstr_sha1(str2rstr_utf8(s)),e);}
function hex_hmac_sha1(k,d)
{return rstr2hex(rstr_hmac_sha1(str2rstr_utf8(k),str2rstr_utf8(d)));}
function b64_hmac_sha1(k,d)
{return rstr2b64(rstr_hmac_sha1(str2rstr_utf8(k),str2rstr_utf8(d)));}
function any_hmac_sha1(k,d,e)
{return rstr2any(rstr_hmac_sha1(str2rstr_utf8(k),str2rstr_utf8(d)),e);}
function sha1_vm_test()
{return hex_sha1("abc").toLowerCase()=="a9993e364706816aba3e25717850c26c9cd0d89d";}
function rstr_sha1(s)
{return binb2rstr(binb_sha1(rstr2binb(s),s.length*8));}
function rstr_hmac_sha1(key,data)
{var bkey=rstr2binb(key);if(bkey.length>16)bkey=binb_sha1(bkey,key.length*8);var ipad=Array(16),opad=Array(16);for(var i=0;i<16;i++)
{ipad[i]=bkey[i]^0x36363636;opad[i]=bkey[i]^0x5C5C5C5C;}
var hash=binb_sha1(ipad.concat(rstr2binb(data)),512+data.length*8);return binb2rstr(binb_sha1(opad.concat(hash),512+160));}
function rstr2hex(input)
{try{hexcase}catch(e){hexcase=0;}
var hex_tab=hexcase?"0123456789ABCDEF":"0123456789abcdef";var output="";var x;for(var i=0;i<input.length;i++)
{x=input.charCodeAt(i);output+=hex_tab.charAt((x>>>4)&0x0F)
+hex_tab.charAt(x&0x0F);}
return output;}
function rstr2b64(input)
{try{b64pad}catch(e){b64pad='';}
var tab="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";var output="";var len=input.length;for(var i=0;i<len;i+=3)
{var triplet=(input.charCodeAt(i)<<16)|(i+1<len?input.charCodeAt(i+1)<<8:0)|(i+2<len?input.charCodeAt(i+2):0);for(var j=0;j<4;j++)
{if(i*8+j*6>input.length*8)output+=b64pad;else output+=tab.charAt((triplet>>>6*(3-j))&0x3F);}}
return output;}
function rstr2any(input,encoding)
{var divisor=encoding.length;var remainders=Array();var i,q,x,quotient;var dividend=Array(Math.ceil(input.length/2));for(i=0;i<dividend.length;i++)
{dividend[i]=(input.charCodeAt(i*2)<<8)|input.charCodeAt(i*2+1);}
while(dividend.length>0)
{quotient=Array();x=0;for(i=0;i<dividend.length;i++)
{x=(x<<16)+dividend[i];q=Math.floor(x/divisor);x-=q*divisor;if(quotient.length>0||q>0)
quotient[quotient.length]=q;}
remainders[remainders.length]=x;dividend=quotient;}
var output="";for(i=remainders.length-1;i>=0;i--)
output+=encoding.charAt(remainders[i]);var full_length=Math.ceil(input.length*8/(Math.log(encoding.length)/Math.log(2)))
for(i=output.length;i<full_length;i++)
output=encoding[0]+output;return output;}
function str2rstr_utf8(input)
{var output="";var i=-1;var x,y;while(++i<input.length)
{x=input.charCodeAt(i);y=i+1<input.length?input.charCodeAt(i+1):0;if(0xD800<=x&&x<=0xDBFF&&0xDC00<=y&&y<=0xDFFF)
{x=0x10000+((x&0x03FF)<<10)+(y&0x03FF);i++;}
if(x<=0x7F)
output+=String.fromCharCode(x);else if(x<=0x7FF)
output+=String.fromCharCode(0xC0|((x>>>6)&0x1F),0x80|(x&0x3F));else if(x<=0xFFFF)
output+=String.fromCharCode(0xE0|((x>>>12)&0x0F),0x80|((x>>>6)&0x3F),0x80|(x&0x3F));else if(x<=0x1FFFFF)
output+=String.fromCharCode(0xF0|((x>>>18)&0x07),0x80|((x>>>12)&0x3F),0x80|((x>>>6)&0x3F),0x80|(x&0x3F));}
return output;}
function str2rstr_utf16le(input)
{var output="";for(var i=0;i<input.length;i++)
output+=String.fromCharCode(input.charCodeAt(i)&0xFF,(input.charCodeAt(i)>>>8)&0xFF);return output;}
function str2rstr_utf16be(input)
{var output="";for(var i=0;i<input.length;i++)
output+=String.fromCharCode((input.charCodeAt(i)>>>8)&0xFF,input.charCodeAt(i)&0xFF);return output;}
function rstr2binb(input)
{var output=Array(input.length>>2);for(var i=0;i<output.length;i++)
output[i]=0;for(var i=0;i<input.length*8;i+=8)
output[i>>5]|=(input.charCodeAt(i/8)&0xFF)<<(24-i%32);return output;}
function binb2rstr(input)
{var output="";for(var i=0;i<input.length*32;i+=8)
output+=String.fromCharCode((input[i>>5]>>>(24-i%32))&0xFF);return output;}
function binb_sha1(x,len)
{x[len>>5]|=0x80<<(24-len%32);x[((len+64>>9)<<4)+15]=len;var w=Array(80);var a=1732584193;var b=-271733879;var c=-1732584194;var d=271733878;var e=-1009589776;for(var i=0;i<x.length;i+=16)
{var olda=a;var oldb=b;var oldc=c;var oldd=d;var olde=e;for(var j=0;j<80;j++)
{if(j<16)w[j]=x[i+j];else w[j]=bit_rol(w[j-3]^w[j-8]^w[j-14]^w[j-16],1);var t=safe_add(safe_add(bit_rol(a,5),sha1_ft(j,b,c,d)),safe_add(safe_add(e,w[j]),sha1_kt(j)));e=d;d=c;c=bit_rol(b,30);b=a;a=t;}
a=safe_add(a,olda);b=safe_add(b,oldb);c=safe_add(c,oldc);d=safe_add(d,oldd);e=safe_add(e,olde);}
return Array(a,b,c,d,e);}
function sha1_ft(t,b,c,d)
{if(t<20)return(b&c)|((~b)&d);if(t<40)return b^c^d;if(t<60)return(b&c)|(b&d)|(c&d);return b^c^d;}
function sha1_kt(t)
{return(t<20)?1518500249:(t<40)?1859775393:(t<60)?-1894007588:-899497514;}
function safe_add(x,y)
{var lsw=(x&0xFFFF)+(y&0xFFFF);var msw=(x>>16)+(y>>16)+(lsw>>16);return(msw<<16)|(lsw&0xFFFF);}
function bit_rol(num,cnt)
{return(num<<cnt)|(num>>>(32-cnt));}


 /*
 * AutoSuggest
 * Copyright 2009-2010 Drew Wilson
 * www.drewwilson.com
 * code.drewwilson.com/entry/autosuggest-jquery-plugin
 *
 * Version 1.4   -   Updated: Mar. 23, 2010
 *
 * This Plug-In will auto-complete or auto-suggest completed search queries
 * for you as you type. You can add multiple selections and remove them on
 * the fly. It supports keybord navigation (UP + DOWN + RETURN), as well
 * as multiple AutoSuggest fields on the same page.
 *
 * Inspied by the Autocomplete plugin by: Jrn Zaefferer
 * and the Facelist plugin by: Ian Tearle (iantearle.com)
 *
 * This AutoSuggest jQuery plug-in is dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */
(function($){$.fn.autoSuggest=function(data,options){var defaults={asHtmlID:false,startText:"Enter Name Here",emptyText:"No Results Found",preFill:{},limitText:"No More Selections Are Allowed",selectedItemProp:"value",selectedValuesProp:"value",searchObjProps:"value",queryParam:"q",retrieveLimit:false,extraParams:"",matchCase:false,minChars:1,keyDelay:400,resultsHighlight:true,neverSubmit:false,selectionLimit:false,showResultList:true,start:function(){},selectionClick:function(elem){},selectionAdded:function(elem){},selectionRemoved:function(elem){elem.remove()},formatList:false,beforeRetrieve:function(string){return string},retrieveComplete:function(data){return data},resultClick:function(data){},resultsComplete:function(){}};var opts=$.extend(defaults,options);var d_type="object";var d_count=0;if(typeof data=="string"){d_type="string";var req_string=data}else{var org_data=data;for(k in data)if(data.hasOwnProperty(k))d_count++}if((d_type=="object"&&d_count>0)||d_type=="string"){return this.each(function(x){if(!opts.asHtmlID){x=x+""+Math.floor(Math.random()*100);var x_id="as-input-"+x}else{x=opts.asHtmlID;var x_id=x}opts.start.call(this);var input=$(this);input.attr("autocomplete","off").addClass("as-input").attr("id",x_id).val(opts.startText);var input_focus=false;input.wrap('<ul class="as-selections" id="as-selections-'+x+'"></ul>').wrap('<li class="as-original" id="as-original-'+x+'"></li>');var selections_holder=$("#as-selections-"+x);var org_li=$("#as-original-"+x);var results_holder=$('<div class="as-results" id="as-results-'+x+'"></div>').hide();var results_ul=$('<ul class="as-list"></ul>');var values_input=$('<input type="hidden" class="as-values" name="as_values_'+x+'" id="as-values-'+x+'" />');var prefill_value="";if(typeof opts.preFill=="string"){var vals=opts.preFill.split(",");for(var i=0;i<vals.length;i++){var v_data={};v_data[opts.selectedValuesProp]=vals[i];if(vals[i]!=""){add_selected_item(v_data,"000"+i)}}prefill_value=opts.preFill}else{prefill_value="";var prefill_count=0;for(k in opts.preFill)if(opts.preFill.hasOwnProperty(k))prefill_count++;if(prefill_count>0){for(var i=0;i<prefill_count;i++){var new_v=opts.preFill[i][opts.selectedValuesProp];if(new_v==undefined){new_v=""}prefill_value=prefill_value+new_v+",";if(new_v!=""){add_selected_item(opts.preFill[i],"000"+i)}}}}if(prefill_value!=""){input.val("");var lastChar=prefill_value.substring(prefill_value.length-1);if(lastChar!=","){prefill_value=prefill_value+","}values_input.val(","+prefill_value);$("li.as-selection-item",selections_holder).addClass("blur").removeClass("selected")}input.after(values_input);selections_holder.click(function(){input_focus=true;input.focus()}).mousedown(function(){input_focus=false}).after(results_holder);var timeout=null;var prev="";var totalSelections=0;var tab_press=false;input.focus(function(){if($(this).val()==opts.startText&&values_input.val()==""){$(this).val("")}else if(input_focus){$("li.as-selection-item",selections_holder).removeClass("blur");if($(this).val()!=""){results_ul.css("width",selections_holder.outerWidth());results_holder.show()}}input_focus=true;return true}).blur(function(){if($(this).val()==""&&values_input.val()==""&&prefill_value==""){$(this).val(opts.startText)}else if(input_focus){$("li.as-selection-item",selections_holder).addClass("blur").removeClass("selected");results_holder.hide()}}).keydown(function(e){lastKeyPressCode=e.keyCode;first_focus=false;switch(e.keyCode){case 38:e.preventDefault();moveSelection("up");break;case 40:e.preventDefault();moveSelection("down");break;case 8:if(input.val()==""){var last=values_input.val().split(",");last=last[last.length-2];selections_holder.children().not(org_li.prev()).removeClass("selected");if(org_li.prev().hasClass("selected")){values_input.val(values_input.val().replace(","+last+",",","));opts.selectionRemoved.call(this,org_li.prev())}else{opts.selectionClick.call(this,org_li.prev());org_li.prev().addClass("selected")}}if(input.val().length==1){results_holder.hide();prev=""}if($(":visible",results_holder).length>0){if(timeout){clearTimeout(timeout)}timeout=setTimeout(function(){keyChange()},opts.keyDelay)}break;case 9:case 188:tab_press=true;var i_input=input.val().replace(/(,)/g,"");if(i_input!=""&&values_input.val().search(","+i_input+",")<0&&i_input.length>=opts.minChars){e.preventDefault();var n_data={};n_data[opts.selectedItemProp]=i_input;n_data[opts.selectedValuesProp]=i_input;var lis=$("li",selections_holder).length;add_selected_item(n_data,"00"+(lis+1));input.val("")}case 13:tab_press=false;var active=$("li.active:first",results_holder);if(active.length>0){active.click();results_holder.hide()}if(opts.neverSubmit||active.length>0){e.preventDefault()}break;default:if(opts.showResultList){if(opts.selectionLimit&&$("li.as-selection-item",selections_holder).length>=opts.selectionLimit){results_ul.html('<li class="as-message">'+opts.limitText+'</li>');results_holder.show()}else{if(timeout){clearTimeout(timeout)}timeout=setTimeout(function(){keyChange()},opts.keyDelay)}}break}});function keyChange(){if(lastKeyPressCode==46||(lastKeyPressCode>8&&lastKeyPressCode<32)){return results_holder.hide()}var string=input.val().replace(/[\\]+|[\/]+/g,"");if(string==prev)return;prev=string;if(string.length>=opts.minChars){selections_holder.addClass("loading");if(d_type=="string"){var limit="";if(opts.retrieveLimit){limit="&limit="+encodeURIComponent(opts.retrieveLimit)}if(opts.beforeRetrieve){string=opts.beforeRetrieve.call(this,string)}$.getJSON(req_string+"?"+opts.queryParam+"="+encodeURIComponent(string)+limit+opts.extraParams,function(data){d_count=0;var new_data=opts.retrieveComplete.call(this,data);for(k in new_data)if(new_data.hasOwnProperty(k))d_count++;processData(new_data,string)})}else{if(opts.beforeRetrieve){string=opts.beforeRetrieve.call(this,string)}processData(org_data,string)}}else{selections_holder.removeClass("loading");results_holder.hide()}}var num_count=0;function processData(data,query){if(!opts.matchCase){query=query.toLowerCase()}var matchCount=0;results_holder.html(results_ul.html("")).hide();for(var i=0;i<d_count;i++){var num=i;num_count++;var forward=false;if(opts.searchObjProps=="value"){var str=data[num].value}else{var str="";var names=opts.searchObjProps.split(",");for(var y=0;y<names.length;y++){var name=$.trim(names[y]);str=str+data[num][name]+" "}}if(str){if(!opts.matchCase){str=str.toLowerCase()}if(str.search(query)!=-1&&values_input.val().search(","+data[num][opts.selectedValuesProp]+",")==-1){forward=true}}if(forward){var formatted=$('<li class="as-result-item" id="as-result-item-'+num+'"></li>').click(function(){var raw_data=$(this).data("data");var number=raw_data.num;if($("#as-selection-"+number,selections_holder).length<=0&&!tab_press){var data=raw_data.attributes;input.val("").focus();prev="";add_selected_item(data,number);opts.resultClick.call(this,raw_data);results_holder.hide()}tab_press=false}).mousedown(function(){input_focus=false}).mouseover(function(){$("li",results_ul).removeClass("active");$(this).addClass("active")}).data("data",{attributes:data[num],num:num_count});var this_data=$.extend({},data[num]);if(!opts.matchCase){var regx=new RegExp("(?![^&;]+;)(?!<[^<>]*)("+query+")(?![^<>]*>)(?![^&;]+;)","gi")}else{var regx=new RegExp("(?![^&;]+;)(?!<[^<>]*)("+query+")(?![^<>]*>)(?![^&;]+;)","g")}if(opts.resultsHighlight){this_data[opts.selectedItemProp]=this_data[opts.selectedItemProp].replace(regx,"<em>$1</em>")}if(!opts.formatList){formatted=formatted.html(this_data[opts.selectedItemProp])}else{formatted=opts.formatList.call(this,this_data,formatted)}results_ul.append(formatted);delete this_data;matchCount++;if(opts.retrieveLimit&&opts.retrieveLimit==matchCount){break}}}selections_holder.removeClass("loading");if(matchCount<=0){results_ul.html('<li class="as-message">'+opts.emptyText+'</li>')}results_ul.css("width",selections_holder.outerWidth());results_holder.show();opts.resultsComplete.call(this)}function add_selected_item(data,num){values_input.val(values_input.val()+data[opts.selectedValuesProp]+",");var item=$('<li class="as-selection-item" id="as-selection-'+num+'"></li>').click(function(){opts.selectionClick.call(this,$(this));selections_holder.children().removeClass("selected");$(this).addClass("selected")}).mousedown(function(){input_focus=false});var close=$('<a class="as-close">&times;</a>').click(function(){values_input.val(values_input.val().replace(","+data[opts.selectedValuesProp]+",",","));opts.selectionRemoved.call(this,item);input_focus=true;input.focus();return false});org_li.before(item.html(data[opts.selectedItemProp]).prepend(close));opts.selectionAdded.call(this,org_li.prev())}function moveSelection(direction){if($(":visible",results_holder).length>0){var lis=$("li",results_holder);if(direction=="down"){var start=lis.eq(0)}else{var start=lis.filter(":last")}var active=$("li.active:first",results_holder);if(active.length>0){if(direction=="down"){start=active.next()}else{start=active.prev()}}lis.removeClass("active");start.addClass("active")}}})}}})(jQuery);

String.prototype.slugify = function() {
  return this.toLowerCase().replace(/[^a-z0-9]/gi, '-').replace(/-{2,}/, '-');
}


head.ready(function() {

  function list_from_hash(hash) {
    var error_list = '<ul>';
    $.each(hash, function(attribute, error) {
      error_list += '<li><strong>' + attribute + '</strong>: ' + error + '</li>'; 
    });
    error_list += '</ul>';
    return error_list
  }

  // Expand or contract list items. FIXME: double-clicking writes height value to style attribute of .desc,
  // for some reason, overriding class height values.
  $(".listable .desc").click(function() {
    if ($(this).parent().hasClass("expanded_listable"))
        console.log('has class!');
    else
        console.log('hasn\'t class!');
        
    var style = $($(this).children()[1]).attr('style');
    if ($(this).parent().attr('editable') == 'false' || (style.indexOf('display:none;') != -1 || style.indexOf('display: none') != -1)) {
      $(this).parent().toggleClass("expanded_listable", 300);
    }
  });
  
  // Toggle editable boxes for jobs.
  $(".job_edit_button").click(function() {
    var job_id = $(this).attr('id').split('_')[1];

    var desc_expanded = $(this).parent().parent().hasClass("expanded_listable");
    var edit_expanded = $("#job_" + job_id + "_title_text").attr('style') == 'display: none;';

    $("#job_" + job_id + "_title_text").toggle();
    $("#job_" + job_id + "_title_input").toggle();
    $("#job_" + job_id + "_desc_text").toggle();
    $("#job_" + job_id + "_desc_input").toggle();
    $("#job_" + job_id + "_submit").toggle();
    $("#job_" + job_id + "_errors").html('');

    if (!desc_expanded || (desc_expanded && !edit_expanded)) {
      $(this).parent().parent().addClass("expanded_listable", 300);
    } else {
      $(this).parent().parent().removeClass("expanded_listable", 300);    
    }
    return false;
  });
  
  // Very quickly thrown-together job edit form submit
  $(".job_submit_button").click(function() {
    var job_id = $(this).attr('id').split('_')[1];
    var title = $("#job_" + job_id + "_title_input").val();
    var description = $("#job_" + job_id + "_desc_input").val();
    $.ajax({
      url: '/jobs/' + job_id,
      type: 'put',
      data: { job: { title: title, description: description } },
      success: function(response) {
        if (response.job == undefined) {
          $("#job_" + job_id + "_errors").html(list_from_hash(response));
        } else {
          $("#job_" + job_id + "_errors").html('<strong class="listable_feedback">Job successfully edited</strong>');
          $("#job_" + job_id + "_errors").effect('highlight', {}, 1000);
          $("#job_" + job_id + "_title_text").html(response.job.title);
          $("#job_" + job_id + "_desc_text").html('<p>' + response.job.description.replace(/\n/gi, "<br />") + '</p>');
        }
      },
      datatype: 'json'
    });
  });
  
  // Toggle editable boxes for reviews.
  $(".review_edit_button").click(function() {
    var review_id = $(this).attr('id').split('_')[1];

    var desc_expanded = $(this).parent().parent().hasClass("expanded_listable");
    var edit_expanded = $("#review_" + review_id + "_title_text").attr('style') == 'display: none;';

    $("#review_" + review_id + "_title_text").toggle();
    $("#review_" + review_id + "_title_input").toggle();
    $("#review_" + review_id + "_mark_text").toggle();
    $("#review_" + review_id + "_mark_input").toggle();
    $("#review_" + review_id + "_desc_text").toggle();
    $("#review_" + review_id + "_desc_input").toggle();
    $("#review_" + review_id + "_submit").toggle();
    $("#review_" + review_id + "_errors").html('');

    // If the description text isn't expanded, or if it's expanded and the edit text isn't expanded, then expand the desc text;
    // otherwise contract it.
    if (!desc_expanded || (desc_expanded && !edit_expanded)) {
      $(this).parent().parent().addClass("expanded_listable", 300);
    } else {
      $(this).parent().parent().removeClass("expanded_listable", 300);    
    }
    return false;
  });
  
  // Very quickly thrown-together job edit form submit
  $(".review_submit_button").click(function() {
    var review_id = $(this).attr('id').split('_')[1];
    var title = $("#review_" + review_id + "_title_input").val();
    var mark = $("#review_" + review_id + "_mark_input").val();
    var description = $("#review_" + review_id + "_desc_input").val();
    $.ajax({
      url: '/reviews/' + review_id,
      type: 'put',
      data: { review: { title: title, mark: mark, description: description } },
      success: function(response) {
        if (response.review == undefined) {
          $("#review_" + review_id + "_errors").html(list_from_hash(response));
        } else {
          $("#review_" + review_id + "_errors").html('<strong class="listable_feedback">Review successfully edited</strong>');
          $("#review_" + review_id + "_errors").effect('highlight', {}, 1000);
          $("#review_" + review_id + "_title_text").html(response.review.title);
          $("#review_" + review_id + "_mark_text").html(response.review.mark + (response.review.mark == 1 ? ' star' : ' stars'));
          $("#review_" + review_id + "_desc_text").html('<p>' + response.review.description.replace(/\n/gi, "<br />") + '</p>');
        }
      },
      datatype: 'json'
    });
  });

});
