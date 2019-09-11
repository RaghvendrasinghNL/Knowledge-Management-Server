
ÄC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\BundleConfig.cs
	namespace 	
KnowledgeManagement
 
{ 
public 

static 
class 
BundleConfig $
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
). /
)/ 0
;0 1
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} À
ÄC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\FilterConfig.cs
	namespace 	
KnowledgeManagement
 
{ 
public 

static 
class 
FilterConfig $
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} ®	
C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\RouteConfig.cs
	namespace 	
KnowledgeManagement
 
{		 
public

 

static

 
class

 
RouteConfig

 #
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} ó
ÅC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\SwaggerConfig.cs
[ 
assembly 	
:	 
%
PreApplicationStartMethod $
($ %
typeof% +
(+ ,
SwaggerConfig, 9
)9 :
,: ;
$str< F
)F G
]G H
	namespace 	
KnowledgeManagement
 
{		 
public

 

static

 
class

 
SwaggerConfig

 %
{ 
public 
static 
void 
Register #
(# $
)$ %
{ 	
GlobalConfiguration 
.  
Configuration  -
. 
EnableSwagger 
( 
c  
=>! #
{ 
c## 
.## 
SingleApiVersion## *
(##* +
$str##+ /
,##/ 0
$str##1 F
)##F G
;##G H
}
≥≥ 
)
≥≥ 
.
¥¥ 
EnableSwaggerUi
¥¥  
(
¥¥  !
c
¥¥! "
=>
¥¥# %
{
µµ 
c
¸¸ 
.
¸¸ !
EnableApiKeySupport
¸¸ -
(
¸¸- .
$str
¸¸. 5
,
¸¸5 6
$str
¸¸7 ?
)
¸¸? @
;
¸¸@ A
}
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ¶+
C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\UnityConfig.cs
	namespace		 	
KnowledgeManagement		
 
{

 
public 

static 
class 
UnityConfig #
{ 
public 
static 
void 
RegisterComponents -
(- .
). /
{ 	
var 
	container 
= 
new 
UnityContainer %
(% &
)& '
;' (
	container 
. 
RegisterType "
<" #
IHomePageService# 3
,3 4
HomePageService5 D
>D E
(E F
)F G
;G H
	container 
. 
RegisterType "
<" #
IHomePageData# 0
,0 1
HomePageData2 >
>> ?
(? @
)@ A
;A B
	container 
. 
RegisterType "
<" #
ILikeService# /
,/ 0
LikeService1 <
>< =
(= >
)> ?
;? @
	container 
. 
RegisterType "
<" #
	ILikeData# ,
,, -
LikeData. 6
>6 7
(7 8
)8 9
;9 :
	container 
. 
RegisterType "
<" #
ILoginService# 0
,0 1
LoginService2 >
>> ?
(? @
)@ A
;A B
	container 
. 
RegisterType "
<" #

ILoginData# -
,- .
	LoginData/ 8
>8 9
(9 :
): ;
;; <
	container 
. 
RegisterType "
<" #
ICommentService# 2
,2 3
CommentService4 B
>B C
(C D
)D E
;E F
	container   
.   
RegisterType   "
<  " #
ICommentData  # /
,  / 0
CommentData  1 <
>  < =
(  = >
)  > ?
;  ? @
	container"" 
."" 
RegisterType"" "
<""" #
IAddTagsService""# 2
,""2 3
AddTagsService""4 B
>""B C
(""C D
)""D E
;""E F
	container## 
.## 
RegisterType## "
<##" #
IAddTagsData### /
,##/ 0
AddTagsData##1 <
>##< =
(##= >
)##> ?
;##? @
	container%% 
.%% 
RegisterType%% "
<%%" #"
IAssociatedTagsService%%# 9
,%%9 :!
AssociatedTagsService%%; P
>%%P Q
(%%Q R
)%%R S
;%%S T
	container&& 
.&& 
RegisterType&& "
<&&" #
IAssociatedTagsData&&# 6
,&&6 7
AssociatedTagsData&&8 J
>&&J K
(&&K L
)&&L M
;&&M N
	container(( 
.(( 
RegisterType(( "
<((" #
ISpamService((# /
,((/ 0
SpamService((1 <
>((< =
(((= >
)((> ?
;((? @
	container)) 
.)) 
RegisterType)) "
<))" #
	ISpamData))# ,
,)), -
SpamData)). 6
>))6 7
())7 8
)))8 9
;))9 :
	container++ 
.++ 
RegisterType++ "
<++" # 
INotificationService++# 7
,++7 8
NotificationService++9 L
>++L M
(++M N
)++N O
;++O P
	container,, 
.,, 
RegisterType,, "
<,," #
INotificationData,,# 4
,,,4 5
NotificationData,,6 F
>,,F G
(,,G H
),,H I
;,,I J
	container.. 
... 
RegisterType.. "
<.." #)
IModeratorNotificationService..# @
,..@ A(
ModeratorNotificationService..B ^
>..^ _
(.._ `
)..` a
;..a b
	container// 
.// 
RegisterType// "
<//" #&
IModeratorNotificationData//# =
,//= >%
ModeratorNotificationData//? X
>//X Y
(//Y Z
)//Z [
;//[ \
	container11 
.11 
RegisterType11 "
<11" #!
IElasticSearchService11# 8
,118 9
ElasticSearch11: G
>11G H
(11H I
)11I J
;11J K
	container22 
.22 
RegisterType22 "
<22" #
IElasticSearchData22# 5
,225 6
ElasticSearchData227 H
>22H I
(22I J
)22J K
;22K L
	container44 
.44 
RegisterType44 "
<44" #
IMyPostService44# 1
,441 2
MyPostService443 @
>44@ A
(44A B
)44B C
;44C D
	container55 
.55 
RegisterType55 "
<55" #
IMyPostData55# .
,55. /

MyPostData550 :
>55: ;
(55; <
)55< =
;55= >
GlobalConfiguration99 
.99  
Configuration99  -
.99- .
DependencyResolver99. @
=99A B
new99C F#
UnityDependencyResolver99G ^
(99^ _
	container99_ h
)99h i
;99i j
}<< 	
}== 
}>> √
ÄC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\WebApiConfig.cs
	namespace 	
KnowledgeManagement
 
{ 
public		 

static		 
class		 
WebApiConfig		 $
{

 
public 
static 
void 
Register #
(# $
HttpConfiguration$ 5
config6 <
)< =
{ 	
config 
. "
MapHttpAttributeRoutes )
() *
)* +
;+ ,
config 
. 
Routes 
. 
MapHttpRoute &
(& '
name 
: 
$str "
," #
routeTemplate 
: 
$str 6
,6 7
defaults 
: 
new 
{ 
id  "
=# $
RouteParameter% 3
.3 4
Optional4 <
}= >
) 
; 
config 
. 

Formatters 
. 
Remove $
($ %
config% +
.+ ,

Formatters, 6
.6 7
XmlFormatter7 C
)C D
;D E
config 
. 

Formatters 
. 
Add "
(" #
config# )
.) *

Formatters* 4
.4 5
JsonFormatter5 B
)B C
;C D
config 
. 

Formatters 
. 
JsonFormatter +
.+ ,
SerializerSettings, >
.> ?

Formatting? I
=J K

NewtonsoftL V
.V W
JsonW [
.[ \

Formatting\ f
.f g
Indentedg o
;o p
config 
. 

Formatters 
. 
JsonFormatter +
.+ ,
SerializerSettings, >
.> ?
ContractResolver? O
=P Q
newR U2
&CamelCasePropertyNamesContractResolverV |
(| }
)} ~
;~ 
} 	
}   
}!! »
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ApiDescriptionExtensions.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

static 
class $
ApiDescriptionExtensions 0
{		 
public 
static 
string 
GetFriendlyId *
(* +
this+ /
ApiDescription0 >
description? J
)J K
{ 	
string 
path 
= 
description %
.% &
RelativePath& 2
;2 3
string 
[ 
] 
urlParts 
= 
path  $
.$ %
Split% *
(* +
$char+ .
). /
;/ 0
string 
	localPath 
= 
urlParts '
[' (
$num( )
]) *
;* +
string 
queryKeyString !
=" #
null$ (
;( )
if 
( 
urlParts 
. 
Length 
>  !
$num" #
)# $
{ 
string 
query 
= 
urlParts '
[' (
$num( )
]) *
;* +
string 
[ 
] 
	queryKeys "
=# $
HttpUtility% 0
.0 1
ParseQueryString1 A
(A B
queryB G
)G H
.H I
AllKeysI P
;P Q
queryKeyString 
=  
String! '
.' (
Join( ,
(, -
$str- 0
,0 1
	queryKeys2 ;
); <
;< =
} 
StringBuilder 
friendlyPath &
=' (
new) ,
StringBuilder- :
(: ;
); <
;< =
friendlyPath 
. 
AppendFormat %
(% &
$str& /
,/ 0
description 
. 

HttpMethod &
.& '
Method' -
,- .
	localPath 
. 
Replace !
(! "
$str" %
,% &
$str' *
)* +
.+ ,
Replace, 3
(3 4
$str4 7
,7 8
String9 ?
.? @
Empty@ E
)E F
.F G
ReplaceG N
(N O
$strO R
,R S
StringT Z
.Z [
Empty[ `
)` a
)a b
;b c
if   
(   
queryKeyString   
!=   !
null  " &
)  & '
{!! 
friendlyPath"" 
."" 
AppendFormat"" )
("") *
$str""* 0
,""0 1
queryKeyString""2 @
.""@ A
Replace""A H
(""H I
$char""I L
,""L M
$char""N Q
)""Q R
)""R S
;""S T
}## 
return$$ 
friendlyPath$$ 
.$$  
ToString$$  (
($$( )
)$$) *
;$$* +
}%% 	
}&& 
}'' Ÿ
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\App_Start\HelpPageConfig.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

static 
class 
HelpPageConfig &
{ 
[ 	
SuppressMessage	 
( 
$str 2
,2 3
$str4 i
,i j
	MessageId 
= 
$str \
,\ ]
Justification 
= 
$str j
)j k
]k l
[ 	
SuppressMessage	 
( 
$str +
,+ ,
$str- Z
,Z [
	MessageId   
=   
$str   "
,  " #
Justification!! 
=!! 
$str!! ,
)!!, -
]!!- .
public"" 
static"" 
void"" 
Register"" #
(""# $
HttpConfiguration""$ 5
config""6 <
)""< =
{## 	
config:: 
.:: !
SetSampleForMediaType:: (
(::( )
new;; 

TextSample;; 
(;; 
$str;; Z
);;Z [
,;;[ \
new<<  
MediaTypeHeaderValue<< (
(<<( )
$str<<) ;
)<<; <
)<<< =
;<<= >
}PP 	
}oo 
}pp Ÿ
ìC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\Controllers\HelpController.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
Controllers- 8
{ 
public 

class 
HelpController 
:  !

Controller" ,
{ 
private 
const 
string 
ErrorViewName *
=+ ,
$str- 4
;4 5
public 
HelpController 
( 
) 
: 
this 
( 
GlobalConfiguration &
.& '
Configuration' 4
)4 5
{ 	
} 	
public 
HelpController 
( 
HttpConfiguration /
config0 6
)6 7
{ 	
Configuration 
= 
config "
;" #
} 	
public 
HttpConfiguration  
Configuration! .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
public 
ActionResult 
Index !
(! "
)" #
{ 	
ViewBag 
. !
DocumentationProvider )
=* +
Configuration, 9
.9 :
Services: B
.B C$
GetDocumentationProviderC [
([ \
)\ ]
;] ^
return 
View 
( 
Configuration %
.% &
Services& .
.. /
GetApiExplorer/ =
(= >
)> ?
.? @
ApiDescriptions@ O
)O P
;P Q
}   	
public"" 
ActionResult"" 
Api"" 
(""  
string""  &
apiId""' ,
)"", -
{## 	
if$$ 
($$ 
!$$ 
String$$ 
.$$ 
IsNullOrEmpty$$ %
($$% &
apiId$$& +
)$$+ ,
)$$, -
{%% 
HelpPageApiModel&&  
apiModel&&! )
=&&* +
Configuration&&, 9
.&&9 :
GetHelpPageApiModel&&: M
(&&M N
apiId&&N S
)&&S T
;&&T U
if'' 
('' 
apiModel'' 
!='' 
null''  $
)''$ %
{(( 
return)) 
View)) 
())  
apiModel))  (
)))( )
;))) *
}** 
}++ 
return-- 
View-- 
(-- 
ErrorViewName-- %
)--% &
;--& '
}.. 	
public00 
ActionResult00 
ResourceModel00 )
(00) *
string00* 0
	modelName001 :
)00: ;
{11 	
if22 
(22 
!22 
String22 
.22 
IsNullOrEmpty22 %
(22% &
	modelName22& /
)22/ 0
)220 1
{33 %
ModelDescriptionGenerator44 )%
modelDescriptionGenerator44* C
=44D E
Configuration44F S
.44S T(
GetModelDescriptionGenerator44T p
(44p q
)44q r
;44r s
ModelDescription55  
modelDescription55! 1
;551 2
if66 
(66 %
modelDescriptionGenerator66 -
.66- .
GeneratedModels66. =
.66= >
TryGetValue66> I
(66I J
	modelName66J S
,66S T
out66U X
modelDescription66Y i
)66i j
)66j k
{77 
return88 
View88 
(88  
modelDescription88  0
)880 1
;881 2
}99 
}:: 
return<< 
View<< 
(<< 
ErrorViewName<< %
)<<% &
;<<& '
}== 	
}>> 
}?? „
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\HelpPageAreaRegistration.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

class $
HelpPageAreaRegistration )
:* +
AreaRegistration, <
{ 
public 
override 
string 
AreaName '
{		 	
get

 
{ 
return 
$str !
;! "
} 
} 	
public 
override 
void 
RegisterArea )
() *#
AreaRegistrationContext* A
contextB I
)I J
{ 	
context 
. 
MapRoute 
( 
$str "
," #
$str '
,' (
new 
{ 

controller  
=! "
$str# )
,) *
action+ 1
=2 3
$str4 ;
,; <
apiId= B
=C D
UrlParameterE Q
.Q R
OptionalR Z
}[ \
)\ ]
;] ^
HelpPageConfig 
. 
Register #
(# $
GlobalConfiguration$ 7
.7 8
Configuration8 E
)E F
;F G
} 	
} 
} œ≥
òC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\HelpPageConfigurationExtensions.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

static 
class +
HelpPageConfigurationExtensions 7
{ 
private 
const 
string 
ApiModelPrefix +
=, -
$str. D
;D E
public 
static 
void $
SetDocumentationProvider 3
(3 4
this4 8
HttpConfiguration9 J
configK Q
,Q R"
IDocumentationProviderS i!
documentationProviderj 
)	 Ä
{ 	
config 
. 
Services 
. 
Replace #
(# $
typeof$ *
(* +"
IDocumentationProvider+ A
)A B
,B C!
documentationProviderD Y
)Y Z
;Z [
} 	
public&& 
static&& 
void&& 
SetSampleObjects&& +
(&&+ ,
this&&, 0
HttpConfiguration&&1 B
config&&C I
,&&I J
IDictionary&&K V
<&&V W
Type&&W [
,&&[ \
object&&] c
>&&c d
sampleObjects&&e r
)&&r s
{'' 	
config(( 
.(( &
GetHelpPageSampleGenerator(( -
(((- .
)((. /
.((/ 0
SampleObjects((0 =
=((> ?
sampleObjects((@ M
;((M N
})) 	
public33 
static33 
void33 
SetSampleRequest33 +
(33+ ,
this33, 0
HttpConfiguration331 B
config33C I
,33I J
object33K Q
sample33R X
,33X Y 
MediaTypeHeaderValue33Z n
	mediaType33o x
,33x y
string	33z Ä
controllerName
33Å è
,
33è ê
string
33ë ó

actionName
33ò ¢
)
33¢ £
{44 	
config55 
.55 &
GetHelpPageSampleGenerator55 -
(55- .
)55. /
.55/ 0
ActionSamples550 =
.55= >
Add55> A
(55A B
new55B E
HelpPageSampleKey55F W
(55W X
	mediaType55X a
,55a b
SampleDirection55c r
.55r s
Request55s z
,55z {
controllerName	55| ä
,
55ä ã

actionName
55å ñ
,
55ñ ó
new
55ò õ
[
55õ ú
]
55ú ù
{
55û ü
$str
55† £
}
55§ •
)
55• ¶
,
55¶ ß
sample
55® Æ
)
55Æ Ø
;
55Ø ∞
}66 	
publicAA 
staticAA 
voidAA 
SetSampleRequestAA +
(AA+ ,
thisAA, 0
HttpConfigurationAA1 B
configAAC I
,AAI J
objectAAK Q
sampleAAR X
,AAX Y 
MediaTypeHeaderValueAAZ n
	mediaTypeAAo x
,AAx y
string	AAz Ä
controllerName
AAÅ è
,
AAè ê
string
AAë ó

actionName
AAò ¢
,
AA¢ £
params
AA§ ™
string
AA´ ±
[
AA± ≤
]
AA≤ ≥
parameterNames
AA¥ ¬
)
AA¬ √
{BB 	
configCC 
.CC &
GetHelpPageSampleGeneratorCC -
(CC- .
)CC. /
.CC/ 0
ActionSamplesCC0 =
.CC= >
AddCC> A
(CCA B
newCCB E
HelpPageSampleKeyCCF W
(CCW X
	mediaTypeCCX a
,CCa b
SampleDirectionCCc r
.CCr s
RequestCCs z
,CCz {
controllerName	CC| ä
,
CCä ã

actionName
CCå ñ
,
CCñ ó
parameterNames
CCò ¶
)
CC¶ ß
,
CCß ®
sample
CC© Ø
)
CCØ ∞
;
CC∞ ±
}DD 	
publicNN 
staticNN 
voidNN 
SetSampleResponseNN ,
(NN, -
thisNN- 1
HttpConfigurationNN2 C
configNND J
,NNJ K
objectNNL R
sampleNNS Y
,NNY Z 
MediaTypeHeaderValueNN[ o
	mediaTypeNNp y
,NNy z
string	NN{ Å
controllerName
NNÇ ê
,
NNê ë
string
NNí ò

actionName
NNô £
)
NN£ §
{OO 	
configPP 
.PP &
GetHelpPageSampleGeneratorPP -
(PP- .
)PP. /
.PP/ 0
ActionSamplesPP0 =
.PP= >
AddPP> A
(PPA B
newPPB E
HelpPageSampleKeyPPF W
(PPW X
	mediaTypePPX a
,PPa b
SampleDirectionPPc r
.PPr s
ResponsePPs {
,PP{ |
controllerName	PP} ã
,
PPã å

actionName
PPç ó
,
PPó ò
new
PPô ú
[
PPú ù
]
PPù û
{
PPü †
$str
PP° §
}
PP• ¶
)
PP¶ ß
,
PPß ®
sample
PP© Ø
)
PPØ ∞
;
PP∞ ±
}QQ 	
public\\ 
static\\ 
void\\ 
SetSampleResponse\\ ,
(\\, -
this\\- 1
HttpConfiguration\\2 C
config\\D J
,\\J K
object\\L R
sample\\S Y
,\\Y Z 
MediaTypeHeaderValue\\[ o
	mediaType\\p y
,\\y z
string	\\{ Å
controllerName
\\Ç ê
,
\\ê ë
string
\\í ò

actionName
\\ô £
,
\\£ §
params
\\• ´
string
\\¨ ≤
[
\\≤ ≥
]
\\≥ ¥
parameterNames
\\µ √
)
\\√ ƒ
{]] 	
config^^ 
.^^ &
GetHelpPageSampleGenerator^^ -
(^^- .
)^^. /
.^^/ 0
ActionSamples^^0 =
.^^= >
Add^^> A
(^^A B
new^^B E
HelpPageSampleKey^^F W
(^^W X
	mediaType^^X a
,^^a b
SampleDirection^^c r
.^^r s
Response^^s {
,^^{ |
controllerName	^^} ã
,
^^ã å

actionName
^^ç ó
,
^^ó ò
parameterNames
^^ô ß
)
^^ß ®
,
^^® ©
sample
^^™ ∞
)
^^∞ ±
;
^^± ≤
}__ 	
publicgg 
staticgg 
voidgg !
SetSampleForMediaTypegg 0
(gg0 1
thisgg1 5
HttpConfigurationgg6 G
configggH N
,ggN O
objectggP V
sampleggW ]
,gg] ^ 
MediaTypeHeaderValuegg_ s
	mediaTypeggt }
)gg} ~
{hh 	
configii 
.ii &
GetHelpPageSampleGeneratorii -
(ii- .
)ii. /
.ii/ 0
ActionSamplesii0 =
.ii= >
Addii> A
(iiA B
newiiB E
HelpPageSampleKeyiiF W
(iiW X
	mediaTypeiiX a
)iia b
,iib c
sampleiid j
)iij k
;iik l
}jj 	
publicss 
staticss 
voidss 
SetSampleForTypess +
(ss+ ,
thisss, 0
HttpConfigurationss1 B
configssC I
,ssI J
objectssK Q
samplessR X
,ssX Y 
MediaTypeHeaderValuessZ n
	mediaTypesso x
,ssx y
Typessz ~
type	ss É
)
ssÉ Ñ
{tt 	
configuu 
.uu &
GetHelpPageSampleGeneratoruu -
(uu- .
)uu. /
.uu/ 0
ActionSamplesuu0 =
.uu= >
Adduu> A
(uuA B
newuuB E
HelpPageSampleKeyuuF W
(uuW X
	mediaTypeuuX a
,uua b
typeuuc g
)uug h
,uuh i
sampleuuj p
)uup q
;uuq r
}vv 	
public
ÄÄ 
static
ÄÄ 
void
ÄÄ "
SetActualRequestType
ÄÄ /
(
ÄÄ/ 0
this
ÄÄ0 4
HttpConfiguration
ÄÄ5 F
config
ÄÄG M
,
ÄÄM N
Type
ÄÄO S
type
ÄÄT X
,
ÄÄX Y
string
ÄÄZ `
controllerName
ÄÄa o
,
ÄÄo p
string
ÄÄq w

actionNameÄÄx Ç
)ÄÄÇ É
{
ÅÅ 	
config
ÇÇ 
.
ÇÇ (
GetHelpPageSampleGenerator
ÇÇ -
(
ÇÇ- .
)
ÇÇ. /
.
ÇÇ/ 0$
ActualHttpMessageTypes
ÇÇ0 F
.
ÇÇF G
Add
ÇÇG J
(
ÇÇJ K
new
ÇÇK N
HelpPageSampleKey
ÇÇO `
(
ÇÇ` a
SampleDirection
ÇÇa p
.
ÇÇp q
Request
ÇÇq x
,
ÇÇx y
controllerNameÇÇz à
,ÇÇà â

actionNameÇÇä î
,ÇÇî ï
newÇÇñ ô
[ÇÇô ö
]ÇÇö õ
{ÇÇú ù
$strÇÇû °
}ÇÇ¢ £
)ÇÇ£ §
,ÇÇ§ •
typeÇÇ¶ ™
)ÇÇ™ ´
;ÇÇ´ ¨
}
ÉÉ 	
public
éé 
static
éé 
void
éé "
SetActualRequestType
éé /
(
éé/ 0
this
éé0 4
HttpConfiguration
éé5 F
config
ééG M
,
ééM N
Type
ééO S
type
ééT X
,
ééX Y
string
ééZ `
controllerName
ééa o
,
ééo p
string
ééq w

actionNameééx Ç
,ééÇ É
paramsééÑ ä
stringééã ë
[ééë í
]ééí ì
parameterNamesééî ¢
)éé¢ £
{
èè 	
config
êê 
.
êê (
GetHelpPageSampleGenerator
êê -
(
êê- .
)
êê. /
.
êê/ 0$
ActualHttpMessageTypes
êê0 F
.
êêF G
Add
êêG J
(
êêJ K
new
êêK N
HelpPageSampleKey
êêO `
(
êê` a
SampleDirection
êêa p
.
êêp q
Request
êêq x
,
êêx y
controllerNameêêz à
,êêà â

actionNameêêä î
,êêî ï
parameterNamesêêñ §
)êê§ •
,êê• ¶
typeêêß ´
)êê´ ¨
;êê¨ ≠
}
ëë 	
public
õõ 
static
õõ 
void
õõ #
SetActualResponseType
õõ 0
(
õõ0 1
this
õõ1 5
HttpConfiguration
õõ6 G
config
õõH N
,
õõN O
Type
õõP T
type
õõU Y
,
õõY Z
string
õõ[ a
controllerName
õõb p
,
õõp q
string
õõr x

actionNameõõy É
)õõÉ Ñ
{
úú 	
config
ùù 
.
ùù (
GetHelpPageSampleGenerator
ùù -
(
ùù- .
)
ùù. /
.
ùù/ 0$
ActualHttpMessageTypes
ùù0 F
.
ùùF G
Add
ùùG J
(
ùùJ K
new
ùùK N
HelpPageSampleKey
ùùO `
(
ùù` a
SampleDirection
ùùa p
.
ùùp q
Response
ùùq y
,
ùùy z
controllerNameùù{ â
,ùùâ ä

actionNameùùã ï
,ùùï ñ
newùùó ö
[ùùö õ
]ùùõ ú
{ùùù û
$strùùü ¢
}ùù£ §
)ùù§ •
,ùù• ¶
typeùùß ´
)ùù´ ¨
;ùù¨ ≠
}
ûû 	
public
©© 
static
©© 
void
©© #
SetActualResponseType
©© 0
(
©©0 1
this
©©1 5
HttpConfiguration
©©6 G
config
©©H N
,
©©N O
Type
©©P T
type
©©U Y
,
©©Y Z
string
©©[ a
controllerName
©©b p
,
©©p q
string
©©r x

actionName©©y É
,©©É Ñ
params©©Ö ã
string©©å í
[©©í ì
]©©ì î
parameterNames©©ï £
)©©£ §
{
™™ 	
config
´´ 
.
´´ (
GetHelpPageSampleGenerator
´´ -
(
´´- .
)
´´. /
.
´´/ 0$
ActualHttpMessageTypes
´´0 F
.
´´F G
Add
´´G J
(
´´J K
new
´´K N
HelpPageSampleKey
´´O `
(
´´` a
SampleDirection
´´a p
.
´´p q
Response
´´q y
,
´´y z
controllerName´´{ â
,´´â ä

actionName´´ã ï
,´´ï ñ
parameterNames´´ó •
)´´• ¶
,´´¶ ß
type´´® ¨
)´´¨ ≠
;´´≠ Æ
}
¨¨ 	
public
≥≥ 
static
≥≥ %
HelpPageSampleGenerator
≥≥ -(
GetHelpPageSampleGenerator
≥≥. H
(
≥≥H I
this
≥≥I M
HttpConfiguration
≥≥N _
config
≥≥` f
)
≥≥f g
{
¥¥ 	
return
µµ 
(
µµ %
HelpPageSampleGenerator
µµ +
)
µµ+ ,
config
µµ, 2
.
µµ2 3

Properties
µµ3 =
.
µµ= >
GetOrAdd
µµ> F
(
µµF G
typeof
∂∂ 
(
∂∂ %
HelpPageSampleGenerator
∂∂ .
)
∂∂. /
,
∂∂/ 0
k
∑∑ 
=>
∑∑ 
new
∑∑ %
HelpPageSampleGenerator
∑∑ 0
(
∑∑0 1
)
∑∑1 2
)
∑∑2 3
;
∑∑3 4
}
∏∏ 	
public
øø 
static
øø 
void
øø (
SetHelpPageSampleGenerator
øø 5
(
øø5 6
this
øø6 :
HttpConfiguration
øø; L
config
øøM S
,
øøS T%
HelpPageSampleGenerator
øøU l
sampleGenerator
øøm |
)
øø| }
{
¿¿ 	
config
¡¡ 
.
¡¡ 

Properties
¡¡ 
.
¡¡ 
AddOrUpdate
¡¡ )
(
¡¡) *
typeof
¬¬ 
(
¬¬ %
HelpPageSampleGenerator
¬¬ .
)
¬¬. /
,
¬¬/ 0
k
√√ 
=>
√√ 
sampleGenerator
√√ $
,
√√$ %
(
ƒƒ 
k
ƒƒ 
,
ƒƒ 
o
ƒƒ 
)
ƒƒ 
=>
ƒƒ 
sampleGenerator
ƒƒ )
)
ƒƒ) *
;
ƒƒ* +
}
≈≈ 	
public
ÃÃ 
static
ÃÃ '
ModelDescriptionGenerator
ÃÃ /*
GetModelDescriptionGenerator
ÃÃ0 L
(
ÃÃL M
this
ÃÃM Q
HttpConfiguration
ÃÃR c
config
ÃÃd j
)
ÃÃj k
{
ÕÕ 	
return
ŒŒ 
(
ŒŒ '
ModelDescriptionGenerator
ŒŒ -
)
ŒŒ- .
config
ŒŒ. 4
.
ŒŒ4 5

Properties
ŒŒ5 ?
.
ŒŒ? @
GetOrAdd
ŒŒ@ H
(
ŒŒH I
typeof
œœ 
(
œœ '
ModelDescriptionGenerator
œœ 0
)
œœ0 1
,
œœ1 2
k
–– 
=>
–– 1
#InitializeModelDescriptionGenerator
–– 8
(
––8 9
config
––9 ?
)
––? @
)
––@ A
;
––A B
}
—— 	
public
€€ 
static
€€ 
HelpPageApiModel
€€ &!
GetHelpPageApiModel
€€' :
(
€€: ;
this
€€; ?
HttpConfiguration
€€@ Q
config
€€R X
,
€€X Y
string
€€Z `
apiDescriptionId
€€a q
)
€€q r
{
‹‹ 	
object
›› 
model
›› 
;
›› 
string
ﬁﬁ 
modelId
ﬁﬁ 
=
ﬁﬁ 
ApiModelPrefix
ﬁﬁ +
+
ﬁﬁ, -
apiDescriptionId
ﬁﬁ. >
;
ﬁﬁ> ?
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
config
ﬂﬂ 
.
ﬂﬂ 

Properties
ﬂﬂ "
.
ﬂﬂ" #
TryGetValue
ﬂﬂ# .
(
ﬂﬂ. /
modelId
ﬂﬂ/ 6
,
ﬂﬂ6 7
out
ﬂﬂ8 ;
model
ﬂﬂ< A
)
ﬂﬂA B
)
ﬂﬂB C
{
‡‡ 

Collection
·· 
<
·· 
ApiDescription
·· )
>
··) *
apiDescriptions
··+ :
=
··; <
config
··= C
.
··C D
Services
··D L
.
··L M
GetApiExplorer
··M [
(
··[ \
)
··\ ]
.
··] ^
ApiDescriptions
··^ m
;
··m n
ApiDescription
‚‚ 
apiDescription
‚‚ -
=
‚‚. /
apiDescriptions
‚‚0 ?
.
‚‚? @
FirstOrDefault
‚‚@ N
(
‚‚N O
api
‚‚O R
=>
‚‚S U
String
‚‚V \
.
‚‚\ ]
Equals
‚‚] c
(
‚‚c d
api
‚‚d g
.
‚‚g h
GetFriendlyId
‚‚h u
(
‚‚u v
)
‚‚v w
,
‚‚w x
apiDescriptionId‚‚y â
,‚‚â ä 
StringComparison‚‚ã õ
.‚‚õ ú!
OrdinalIgnoreCase‚‚ú ≠
)‚‚≠ Æ
)‚‚Æ Ø
;‚‚Ø ∞
if
„„ 
(
„„ 
apiDescription
„„ "
!=
„„# %
null
„„& *
)
„„* +
{
‰‰ 
model
ÂÂ 
=
ÂÂ 
GenerateApiModel
ÂÂ ,
(
ÂÂ, -
apiDescription
ÂÂ- ;
,
ÂÂ; <
config
ÂÂ= C
)
ÂÂC D
;
ÂÂD E
config
ÊÊ 
.
ÊÊ 

Properties
ÊÊ %
.
ÊÊ% &
TryAdd
ÊÊ& ,
(
ÊÊ, -
modelId
ÊÊ- 4
,
ÊÊ4 5
model
ÊÊ6 ;
)
ÊÊ; <
;
ÊÊ< =
}
ÁÁ 
}
ËË 
return
ÍÍ 
(
ÍÍ 
HelpPageApiModel
ÍÍ $
)
ÍÍ$ %
model
ÍÍ% *
;
ÍÍ* +
}
ÎÎ 	
private
ÌÌ 
static
ÌÌ 
HelpPageApiModel
ÌÌ '
GenerateApiModel
ÌÌ( 8
(
ÌÌ8 9
ApiDescription
ÌÌ9 G
apiDescription
ÌÌH V
,
ÌÌV W
HttpConfiguration
ÌÌX i
config
ÌÌj p
)
ÌÌp q
{
ÓÓ 	
HelpPageApiModel
ÔÔ 
apiModel
ÔÔ %
=
ÔÔ& '
new
ÔÔ( +
HelpPageApiModel
ÔÔ, <
(
ÔÔ< =
)
ÔÔ= >
{
 
ApiDescription
ÒÒ 
=
ÒÒ  
apiDescription
ÒÒ! /
,
ÒÒ/ 0
}
ÚÚ 
;
ÚÚ '
ModelDescriptionGenerator
ÙÙ %
modelGenerator
ÙÙ& 4
=
ÙÙ5 6
config
ÙÙ7 =
.
ÙÙ= >*
GetModelDescriptionGenerator
ÙÙ> Z
(
ÙÙZ [
)
ÙÙ[ \
;
ÙÙ\ ]%
HelpPageSampleGenerator
ıı #
sampleGenerator
ıı$ 3
=
ıı4 5
config
ıı6 <
.
ıı< =(
GetHelpPageSampleGenerator
ıı= W
(
ııW X
)
ııX Y
;
ııY Z#
GenerateUriParameters
ˆˆ !
(
ˆˆ! "
apiModel
ˆˆ" *
,
ˆˆ* +
modelGenerator
ˆˆ, :
)
ˆˆ: ;
;
ˆˆ; <-
GenerateRequestModelDescription
˜˜ +
(
˜˜+ ,
apiModel
˜˜, 4
,
˜˜4 5
modelGenerator
˜˜6 D
,
˜˜D E
sampleGenerator
˜˜F U
)
˜˜U V
;
˜˜V W)
GenerateResourceDescription
¯¯ '
(
¯¯' (
apiModel
¯¯( 0
,
¯¯0 1
modelGenerator
¯¯2 @
)
¯¯@ A
;
¯¯A B
GenerateSamples
˘˘ 
(
˘˘ 
apiModel
˘˘ $
,
˘˘$ %
sampleGenerator
˘˘& 5
)
˘˘5 6
;
˘˘6 7
return
˚˚ 
apiModel
˚˚ 
;
˚˚ 
}
¸¸ 	
private
˛˛ 
static
˛˛ 
void
˛˛ #
GenerateUriParameters
˛˛ 1
(
˛˛1 2
HelpPageApiModel
˛˛2 B
apiModel
˛˛C K
,
˛˛K L'
ModelDescriptionGenerator
˛˛M f
modelGenerator
˛˛g u
)
˛˛u v
{
ˇˇ 	
ApiDescription
ÄÄ 
apiDescription
ÄÄ )
=
ÄÄ* +
apiModel
ÄÄ, 4
.
ÄÄ4 5
ApiDescription
ÄÄ5 C
;
ÄÄC D
foreach
ÅÅ 
(
ÅÅ %
ApiParameterDescription
ÅÅ ,
apiParameter
ÅÅ- 9
in
ÅÅ: <
apiDescription
ÅÅ= K
.
ÅÅK L#
ParameterDescriptions
ÅÅL a
)
ÅÅa b
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
apiParameter
ÉÉ  
.
ÉÉ  !
Source
ÉÉ! '
==
ÉÉ( * 
ApiParameterSource
ÉÉ+ =
.
ÉÉ= >
FromUri
ÉÉ> E
)
ÉÉE F
{
ÑÑ %
HttpParameterDescriptor
ÖÖ +!
parameterDescriptor
ÖÖ, ?
=
ÖÖ@ A
apiParameter
ÖÖB N
.
ÖÖN O!
ParameterDescriptor
ÖÖO b
;
ÖÖb c
Type
ÜÜ 
parameterType
ÜÜ &
=
ÜÜ' (
null
ÜÜ) -
;
ÜÜ- .
ModelDescription
áá $
typeDescription
áá% 4
=
áá5 6
null
áá7 ;
;
áá; <)
ComplexTypeModelDescription
àà /$
complexTypeDescription
àà0 F
=
ààG H
null
ààI M
;
ààM N
if
ââ 
(
ââ !
parameterDescriptor
ââ +
!=
ââ, .
null
ââ/ 3
)
ââ3 4
{
ää 
parameterType
ãã %
=
ãã& '!
parameterDescriptor
ãã( ;
.
ãã; <
ParameterType
ãã< I
;
ããI J
typeDescription
åå '
=
åå( )
modelGenerator
åå* 8
.
åå8 9)
GetOrCreateModelDescription
åå9 T
(
ååT U
parameterType
ååU b
)
ååb c
;
ååc d$
complexTypeDescription
çç .
=
çç/ 0
typeDescription
çç1 @
as
ççA C)
ComplexTypeModelDescription
ççD _
;
çç_ `
}
éé 
if
ëë 
(
ëë $
complexTypeDescription
ëë .
!=
ëë/ 1
null
ëë2 6
&&
íí 
!
íí )
IsBindableWithTypeConverter
íí 7
(
íí7 8
parameterType
íí8 E
)
ííE F
)
ííF G
{
ìì 
foreach
îî 
(
îî  !"
ParameterDescription
îî! 5
uriParameter
îî6 B
in
îîC E$
complexTypeDescription
îîF \
.
îî\ ]

Properties
îî] g
)
îîg h
{
ïï 
apiModel
ññ $
.
ññ$ %
UriParameters
ññ% 2
.
ññ2 3
Add
ññ3 6
(
ññ6 7
uriParameter
ññ7 C
)
ññC D
;
ññD E
}
óó 
}
òò 
else
ôô 
if
ôô 
(
ôô !
parameterDescriptor
ôô 0
!=
ôô1 3
null
ôô4 8
)
ôô8 9
{
öö "
ParameterDescription
õõ ,
uriParameter
õõ- 9
=
õõ: ;%
AddParameterDescription
úú 3
(
úú3 4
apiModel
úú4 <
,
úú< =
apiParameter
úú> J
,
úúJ K
typeDescription
úúL [
)
úú[ \
;
úú\ ]
if
ûû 
(
ûû 
!
ûû !
parameterDescriptor
ûû 0
.
ûû0 1

IsOptional
ûû1 ;
)
ûû; <
{
üü 
uriParameter
†† (
.
††( )
Annotations
††) 4
.
††4 5
Add
††5 8
(
††8 9
new
††9 <!
ParameterAnnotation
††= P
(
††P Q
)
††Q R
{
††S T
Documentation
††U b
=
††c d
$str
††e o
}
††p q
)
††q r
;
††r s
}
°° 
object
££ 
defaultValue
££ +
=
££, -!
parameterDescriptor
££. A
.
££A B
DefaultValue
££B N
;
££N O
if
§§ 
(
§§ 
defaultValue
§§ (
!=
§§) +
null
§§, 0
)
§§0 1
{
•• 
uriParameter
¶¶ (
.
¶¶( )
Annotations
¶¶) 4
.
¶¶4 5
Add
¶¶5 8
(
¶¶8 9
new
¶¶9 <!
ParameterAnnotation
¶¶= P
(
¶¶P Q
)
¶¶Q R
{
¶¶S T
Documentation
¶¶U b
=
¶¶c d
$str
¶¶e x
+
¶¶y z
Convert¶¶{ Ç
.¶¶Ç É
ToString¶¶É ã
(¶¶ã å
defaultValue¶¶å ò
,¶¶ò ô
CultureInfo¶¶ö •
.¶¶• ¶ 
InvariantCulture¶¶¶ ∂
)¶¶∂ ∑
}¶¶∏ π
)¶¶π ∫
;¶¶∫ ª
}
ßß 
}
®® 
else
©© 
{
™™ 
Debug
´´ 
.
´´ 
Assert
´´ $
(
´´$ %!
parameterDescriptor
´´% 8
==
´´9 ;
null
´´< @
)
´´@ A
;
´´A B
ModelDescription
∞∞ (
modelDescription
∞∞) 9
=
∞∞: ;
modelGenerator
∞∞< J
.
∞∞J K)
GetOrCreateModelDescription
∞∞K f
(
∞∞f g
typeof
∞∞g m
(
∞∞m n
string
∞∞n t
)
∞∞t u
)
∞∞u v
;
∞∞v w%
AddParameterDescription
±± /
(
±±/ 0
apiModel
±±0 8
,
±±8 9
apiParameter
±±: F
,
±±F G
modelDescription
±±H X
)
±±X Y
;
±±Y Z
}
≤≤ 
}
≥≥ 
}
¥¥ 
}
µµ 	
private
∑∑ 
static
∑∑ 
bool
∑∑ )
IsBindableWithTypeConverter
∑∑ 7
(
∑∑7 8
Type
∑∑8 <
parameterType
∑∑= J
)
∑∑J K
{
∏∏ 	
if
ππ 
(
ππ 
parameterType
ππ 
==
ππ  
null
ππ! %
)
ππ% &
{
∫∫ 
return
ªª 
false
ªª 
;
ªª 
}
ºº 
return
ææ 
TypeDescriptor
ææ !
.
ææ! "
GetConverter
ææ" .
(
ææ. /
parameterType
ææ/ <
)
ææ< =
.
ææ= >
CanConvertFrom
ææ> L
(
ææL M
typeof
ææM S
(
ææS T
string
ææT Z
)
ææZ [
)
ææ[ \
;
ææ\ ]
}
øø 	
private
¡¡ 
static
¡¡ "
ParameterDescription
¡¡ +%
AddParameterDescription
¡¡, C
(
¡¡C D
HelpPageApiModel
¡¡D T
apiModel
¡¡U ]
,
¡¡] ^%
ApiParameterDescription
¬¬ #
apiParameter
¬¬$ 0
,
¬¬0 1
ModelDescription
¬¬2 B
typeDescription
¬¬C R
)
¬¬R S
{
√√ 	"
ParameterDescription
ƒƒ  "
parameterDescription
ƒƒ! 5
=
ƒƒ6 7
new
ƒƒ8 ;"
ParameterDescription
ƒƒ< P
{
≈≈ 
Name
∆∆ 
=
∆∆ 
apiParameter
∆∆ #
.
∆∆# $
Name
∆∆$ (
,
∆∆( )
Documentation
«« 
=
«« 
apiParameter
««  ,
.
««, -
Documentation
««- :
,
««: ;
TypeDescription
»» 
=
»»  !
typeDescription
»»" 1
,
»»1 2
}
…… 
;
…… 
apiModel
ÀÀ 
.
ÀÀ 
UriParameters
ÀÀ "
.
ÀÀ" #
Add
ÀÀ# &
(
ÀÀ& '"
parameterDescription
ÀÀ' ;
)
ÀÀ; <
;
ÀÀ< =
return
ÃÃ "
parameterDescription
ÃÃ '
;
ÃÃ' (
}
ÕÕ 	
private
œœ 
static
œœ 
void
œœ -
GenerateRequestModelDescription
œœ ;
(
œœ; <
HelpPageApiModel
œœ< L
apiModel
œœM U
,
œœU V'
ModelDescriptionGenerator
œœW p
modelGenerator
œœq 
,œœ Ä'
HelpPageSampleGeneratorœœÅ ò
sampleGeneratorœœô ®
)œœ® ©
{
–– 	
ApiDescription
—— 
apiDescription
—— )
=
——* +
apiModel
——, 4
.
——4 5
ApiDescription
——5 C
;
——C D
foreach
““ 
(
““ %
ApiParameterDescription
““ ,
apiParameter
““- 9
in
““: <
apiDescription
““= K
.
““K L#
ParameterDescriptions
““L a
)
““a b
{
”” 
if
‘‘ 
(
‘‘ 
apiParameter
‘‘  
.
‘‘  !
Source
‘‘! '
==
‘‘( * 
ApiParameterSource
‘‘+ =
.
‘‘= >
FromBody
‘‘> F
)
‘‘F G
{
’’ 
Type
÷÷ 
parameterType
÷÷ &
=
÷÷' (
apiParameter
÷÷) 5
.
÷÷5 6!
ParameterDescriptor
÷÷6 I
.
÷÷I J
ParameterType
÷÷J W
;
÷÷W X
apiModel
◊◊ 
.
◊◊ %
RequestModelDescription
◊◊ 4
=
◊◊5 6
modelGenerator
◊◊7 E
.
◊◊E F)
GetOrCreateModelDescription
◊◊F a
(
◊◊a b
parameterType
◊◊b o
)
◊◊o p
;
◊◊p q
apiModel
ÿÿ 
.
ÿÿ "
RequestDocumentation
ÿÿ 1
=
ÿÿ2 3
apiParameter
ÿÿ4 @
.
ÿÿ@ A
Documentation
ÿÿA N
;
ÿÿN O
}
ŸŸ 
else
⁄⁄ 
if
⁄⁄ 
(
⁄⁄ 
apiParameter
⁄⁄ %
.
⁄⁄% &!
ParameterDescriptor
⁄⁄& 9
!=
⁄⁄: <
null
⁄⁄= A
&&
⁄⁄B D
apiParameter
€€  
.
€€  !!
ParameterDescriptor
€€! 4
.
€€4 5
ParameterType
€€5 B
==
€€C E
typeof
€€F L
(
€€L M 
HttpRequestMessage
€€M _
)
€€_ `
)
€€` a
{
‹‹ 
Type
›› 
parameterType
›› &
=
››' (
sampleGenerator
››) 8
.
››8 9+
ResolveHttpRequestMessageType
››9 V
(
››V W
apiDescription
››W e
)
››e f
;
››f g
if
ﬂﬂ 
(
ﬂﬂ 
parameterType
ﬂﬂ %
!=
ﬂﬂ& (
null
ﬂﬂ) -
)
ﬂﬂ- .
{
‡‡ 
apiModel
··  
.
··  !%
RequestModelDescription
··! 8
=
··9 :
modelGenerator
··; I
.
··I J)
GetOrCreateModelDescription
··J e
(
··e f
parameterType
··f s
)
··s t
;
··t u
}
‚‚ 
}
„„ 
}
‰‰ 
}
ÂÂ 	
private
ÁÁ 
static
ÁÁ 
void
ÁÁ )
GenerateResourceDescription
ÁÁ 7
(
ÁÁ7 8
HelpPageApiModel
ÁÁ8 H
apiModel
ÁÁI Q
,
ÁÁQ R'
ModelDescriptionGenerator
ÁÁS l
modelGenerator
ÁÁm {
)
ÁÁ{ |
{
ËË 	!
ResponseDescription
ÈÈ 
response
ÈÈ  (
=
ÈÈ) *
apiModel
ÈÈ+ 3
.
ÈÈ3 4
ApiDescription
ÈÈ4 B
.
ÈÈB C!
ResponseDescription
ÈÈC V
;
ÈÈV W
Type
ÍÍ 
responseType
ÍÍ 
=
ÍÍ 
response
ÍÍ  (
.
ÍÍ( )
ResponseType
ÍÍ) 5
??
ÍÍ6 8
response
ÍÍ9 A
.
ÍÍA B
DeclaredType
ÍÍB N
;
ÍÍN O
if
ÎÎ 
(
ÎÎ 
responseType
ÎÎ 
!=
ÎÎ 
null
ÎÎ  $
&&
ÎÎ% '
responseType
ÎÎ( 4
!=
ÎÎ5 7
typeof
ÎÎ8 >
(
ÎÎ> ?
void
ÎÎ? C
)
ÎÎC D
)
ÎÎD E
{
ÏÏ 
apiModel
ÌÌ 
.
ÌÌ !
ResourceDescription
ÌÌ ,
=
ÌÌ- .
modelGenerator
ÌÌ/ =
.
ÌÌ= >)
GetOrCreateModelDescription
ÌÌ> Y
(
ÌÌY Z
responseType
ÌÌZ f
)
ÌÌf g
;
ÌÌg h
}
ÓÓ 
}
ÔÔ 	
[
ÒÒ 	
SuppressMessage
ÒÒ	 
(
ÒÒ 
$str
ÒÒ +
,
ÒÒ+ ,
$str
ÒÒ- U
,
ÒÒU V
Justification
ÒÒW d
=
ÒÒe f
$strÒÒg î
)ÒÒî ï
]ÒÒï ñ
private
ÚÚ 
static
ÚÚ 
void
ÚÚ 
GenerateSamples
ÚÚ +
(
ÚÚ+ ,
HelpPageApiModel
ÚÚ, <
apiModel
ÚÚ= E
,
ÚÚE F%
HelpPageSampleGenerator
ÚÚG ^
sampleGenerator
ÚÚ_ n
)
ÚÚn o
{
ÛÛ 	
try
ÙÙ 
{
ıı 
foreach
ˆˆ 
(
ˆˆ 
var
ˆˆ 
item
ˆˆ !
in
ˆˆ" $
sampleGenerator
ˆˆ% 4
.
ˆˆ4 5
GetSampleRequests
ˆˆ5 F
(
ˆˆF G
apiModel
ˆˆG O
.
ˆˆO P
ApiDescription
ˆˆP ^
)
ˆˆ^ _
)
ˆˆ_ `
{
˜˜ 
apiModel
¯¯ 
.
¯¯ 
SampleRequests
¯¯ +
.
¯¯+ ,
Add
¯¯, /
(
¯¯/ 0
item
¯¯0 4
.
¯¯4 5
Key
¯¯5 8
,
¯¯8 9
item
¯¯: >
.
¯¯> ?
Value
¯¯? D
)
¯¯D E
;
¯¯E F%
LogInvalidSampleAsError
˘˘ +
(
˘˘+ ,
apiModel
˘˘, 4
,
˘˘4 5
item
˘˘6 :
.
˘˘: ;
Value
˘˘; @
)
˘˘@ A
;
˘˘A B
}
˙˙ 
foreach
¸¸ 
(
¸¸ 
var
¸¸ 
item
¸¸ !
in
¸¸" $
sampleGenerator
¸¸% 4
.
¸¸4 5 
GetSampleResponses
¸¸5 G
(
¸¸G H
apiModel
¸¸H P
.
¸¸P Q
ApiDescription
¸¸Q _
)
¸¸_ `
)
¸¸` a
{
˝˝ 
apiModel
˛˛ 
.
˛˛ 
SampleResponses
˛˛ ,
.
˛˛, -
Add
˛˛- 0
(
˛˛0 1
item
˛˛1 5
.
˛˛5 6
Key
˛˛6 9
,
˛˛9 :
item
˛˛; ?
.
˛˛? @
Value
˛˛@ E
)
˛˛E F
;
˛˛F G%
LogInvalidSampleAsError
ˇˇ +
(
ˇˇ+ ,
apiModel
ˇˇ, 4
,
ˇˇ4 5
item
ˇˇ6 :
.
ˇˇ: ;
Value
ˇˇ; @
)
ˇˇ@ A
;
ˇˇA B
}
ÄÄ 
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ 
e
ÇÇ 
)
ÇÇ 
{
ÉÉ 
apiModel
ÑÑ 
.
ÑÑ 
ErrorMessages
ÑÑ &
.
ÑÑ& '
Add
ÑÑ' *
(
ÑÑ* +
String
ÑÑ+ 1
.
ÑÑ1 2
Format
ÑÑ2 8
(
ÑÑ8 9
CultureInfo
ÑÑ9 D
.
ÑÑD E
CurrentCulture
ÑÑE S
,
ÑÑS T
$str
ÖÖ c
,
ÖÖc d%
HelpPageSampleGenerator
ÜÜ +
.
ÜÜ+ ,
UnwrapException
ÜÜ, ;
(
ÜÜ; <
e
ÜÜ< =
)
ÜÜ= >
.
ÜÜ> ?
Message
ÜÜ? F
)
ÜÜF G
)
ÜÜG H
;
ÜÜH I
}
áá 
}
àà 	
private
ää 
static
ää 
bool
ää %
TryGetResourceParameter
ää 3
(
ää3 4
ApiDescription
ää4 B
apiDescription
ääC Q
,
ääQ R
HttpConfiguration
ääS d
config
ääe k
,
ääk l
out
ääm p&
ApiParameterDescriptionääq à$
parameterDescriptionääâ ù
,ääù û
outääü ¢
Typeää£ ß
resourceTypeää® ¥
)ää¥ µ
{
ãã 	"
parameterDescription
åå  
=
åå! "
apiDescription
åå# 1
.
åå1 2#
ParameterDescriptions
åå2 G
.
ååG H
FirstOrDefault
ååH V
(
ååV W
p
çç 
=>
çç 
p
çç 
.
çç 
Source
çç 
==
çç   
ApiParameterSource
çç! 3
.
çç3 4
FromBody
çç4 <
||
çç= ?
(
éé 
p
éé 
.
éé !
ParameterDescriptor
éé *
!=
éé+ -
null
éé. 2
&&
éé3 5
p
éé6 7
.
éé7 8!
ParameterDescriptor
éé8 K
.
ééK L
ParameterType
ééL Y
==
ééZ \
typeof
éé] c
(
ééc d 
HttpRequestMessage
ééd v
)
éév w
)
ééw x
)
ééx y
;
ééy z
if
êê 
(
êê "
parameterDescription
êê $
==
êê% '
null
êê( ,
)
êê, -
{
ëë 
resourceType
íí 
=
íí 
null
íí #
;
íí# $
return
ìì 
false
ìì 
;
ìì 
}
îî 
resourceType
ññ 
=
ññ "
parameterDescription
ññ /
.
ññ/ 0!
ParameterDescriptor
ññ0 C
.
ññC D
ParameterType
ññD Q
;
ññQ R
if
òò 
(
òò 
resourceType
òò 
==
òò 
typeof
òò  &
(
òò& ' 
HttpRequestMessage
òò' 9
)
òò9 :
)
òò: ;
{
ôô %
HelpPageSampleGenerator
öö '
sampleGenerator
öö( 7
=
öö8 9
config
öö: @
.
öö@ A(
GetHelpPageSampleGenerator
ööA [
(
öö[ \
)
öö\ ]
;
öö] ^
resourceType
õõ 
=
õõ 
sampleGenerator
õõ .
.
õõ. /+
ResolveHttpRequestMessageType
õõ/ L
(
õõL M
apiDescription
õõM [
)
õõ[ \
;
õõ\ ]
}
úú 
if
ûû 
(
ûû 
resourceType
ûû 
==
ûû 
null
ûû  $
)
ûû$ %
{
üü "
parameterDescription
†† $
=
††% &
null
††' +
;
††+ ,
return
°° 
false
°° 
;
°° 
}
¢¢ 
return
§§ 
true
§§ 
;
§§ 
}
•• 	
private
ßß 
static
ßß '
ModelDescriptionGenerator
ßß 01
#InitializeModelDescriptionGenerator
ßß1 T
(
ßßT U
HttpConfiguration
ßßU f
config
ßßg m
)
ßßm n
{
®® 	'
ModelDescriptionGenerator
©© %
modelGenerator
©©& 4
=
©©5 6
new
©©7 :'
ModelDescriptionGenerator
©©; T
(
©©T U
config
©©U [
)
©©[ \
;
©©\ ]

Collection
™™ 
<
™™ 
ApiDescription
™™ %
>
™™% &
apis
™™' +
=
™™, -
config
™™. 4
.
™™4 5
Services
™™5 =
.
™™= >
GetApiExplorer
™™> L
(
™™L M
)
™™M N
.
™™N O
ApiDescriptions
™™O ^
;
™™^ _
foreach
´´ 
(
´´ 
ApiDescription
´´ #
api
´´$ '
in
´´( *
apis
´´+ /
)
´´/ 0
{
¨¨ %
ApiParameterDescription
≠≠ '"
parameterDescription
≠≠( <
;
≠≠< =
Type
ÆÆ 
parameterType
ÆÆ "
;
ÆÆ" #
if
ØØ 
(
ØØ %
TryGetResourceParameter
ØØ +
(
ØØ+ ,
api
ØØ, /
,
ØØ/ 0
config
ØØ1 7
,
ØØ7 8
out
ØØ9 <"
parameterDescription
ØØ= Q
,
ØØQ R
out
ØØS V
parameterType
ØØW d
)
ØØd e
)
ØØe f
{
∞∞ 
modelGenerator
±± "
.
±±" #)
GetOrCreateModelDescription
±±# >
(
±±> ?
parameterType
±±? L
)
±±L M
;
±±M N
}
≤≤ 
}
≥≥ 
return
¥¥ 
modelGenerator
¥¥ !
;
¥¥! "
}
µµ 	
private
∑∑ 
static
∑∑ 
void
∑∑ %
LogInvalidSampleAsError
∑∑ 3
(
∑∑3 4
HelpPageApiModel
∑∑4 D
apiModel
∑∑E M
,
∑∑M N
object
∑∑O U
sample
∑∑V \
)
∑∑\ ]
{
∏∏ 	
InvalidSample
ππ 
invalidSample
ππ '
=
ππ( )
sample
ππ* 0
as
ππ1 3
InvalidSample
ππ4 A
;
ππA B
if
∫∫ 
(
∫∫ 
invalidSample
∫∫ 
!=
∫∫  
null
∫∫! %
)
∫∫% &
{
ªª 
apiModel
ºº 
.
ºº 
ErrorMessages
ºº &
.
ºº& '
Add
ºº' *
(
ºº* +
invalidSample
ºº+ 8
.
ºº8 9
ErrorMessage
ºº9 E
)
ººE F
;
ººF G
}
ΩΩ 
}
ææ 	
}
øø 
}¿¿ ∑
•C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\CollectionModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class &
CollectionModelDescription +
:, -
ModelDescription. >
{ 
public 
ModelDescription 
ElementDescription  2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} ∂
¶C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ComplexTypeModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class '
ComplexTypeModelDescription ,
:- .
ModelDescription/ ?
{ 
public '
ComplexTypeModelDescription *
(* +
)+ ,
{ 	

Properties		 
=		 
new		 

Collection		 '
<		' ( 
ParameterDescription		( <
>		< =
(		= >
)		> ?
;		? @
}

 	
public 

Collection 
<  
ParameterDescription .
>. /

Properties0 :
{; <
get= @
;@ A
privateB I
setJ M
;M N
}O P
} 
} ì
•C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\DictionaryModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class &
DictionaryModelDescription +
:, -(
KeyValuePairModelDescription. J
{ 
} 
} •
£C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\EnumTypeModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class $
EnumTypeModelDescription )
:* +
ModelDescription, <
{ 
public $
EnumTypeModelDescription '
(' (
)( )
{		 	
Values

 
=

 
new

 

Collection

 #
<

# $ 
EnumValueDescription

$ 8
>

8 9
(

9 :
)

: ;
;

; <
} 	
public 

Collection 
<  
EnumValueDescription .
>. /
Values0 6
{7 8
get9 <
;< =
private> E
setF I
;I J
}K L
} 
} †
üC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\EnumValueDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class  
EnumValueDescription %
{ 
public 
string 
Documentation #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Value		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} Ó
¶C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\IModelDocumentationProvider.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

	interface '
IModelDocumentationProvider 0
{ 
string 
GetDocumentation 
(  

MemberInfo  *
member+ 1
)1 2
;2 3
string

 
GetDocumentation

 
(

  
Type

  $
type

% )
)

) *
;

* +
} 
} Ô
ßC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\KeyValuePairModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class (
KeyValuePairModelDescription -
:. /
ModelDescription0 @
{ 
public 
ModelDescription 
KeyModelDescription  3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
ModelDescription !
ValueModelDescription  5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
}		 ∞
õC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

abstract 
class 
ModelDescription *
{		 
public

 
string

 
Documentation

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
Type 
	ModelType 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ÿ–
§C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelDescriptionGenerator.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class %
ModelDescriptionGenerator *
{ 
private 
readonly 
IDictionary $
<$ %
Type% )
,) *
Func+ /
</ 0
object0 6
,6 7
string8 >
>> ?
>? @#
AnnotationTextGeneratorA X
=Y Z
new[ ^

Dictionary_ i
<i j
Typej n
,n o
Funcp t
<t u
objectu {
,{ |
string	} É
>
É Ñ
>
Ñ Ö
{ 	
{ 
typeof 
( 
RequiredAttribute &
)& '
,' (
a) *
=>+ -
$str. 8
}9 :
,: ;
{ 
typeof 
( 
RangeAttribute #
)# $
,$ %
a& '
=>( *
{ 
RangeAttribute "
range# (
=) *
(+ ,
RangeAttribute, :
): ;
a; <
;< =
return 
String !
.! "
Format" (
(( )
CultureInfo) 4
.4 5
CurrentCulture5 C
,C D
$strE k
,k l
rangem r
.r s
Minimums z
,z {
range	| Å
.
Å Ç
Maximum
Ç â
)
â ä
;
ä ã
} 
} 
, 
{ 
typeof 
( 
MaxLengthAttribute '
)' (
,( )
a* +
=>, .
{   
MaxLengthAttribute!! &
	maxLength!!' 0
=!!1 2
(!!3 4
MaxLengthAttribute!!4 F
)!!F G
a!!G H
;!!H I
return"" 
String"" !
.""! "
Format""" (
(""( )
CultureInfo"") 4
.""4 5
CurrentCulture""5 C
,""C D
$str""E V
,""V W
	maxLength""X a
.""a b
Length""b h
)""h i
;""i j
}## 
}$$ 
,$$ 
{%% 
typeof%% 
(%% 
MinLengthAttribute%% '
)%%' (
,%%( )
a%%* +
=>%%, .
{&& 
MinLengthAttribute'' &
	minLength''' 0
=''1 2
(''3 4
MinLengthAttribute''4 F
)''F G
a''G H
;''H I
return(( 
String(( !
.((! "
Format((" (
(((( )
CultureInfo(() 4
.((4 5
CurrentCulture((5 C
,((C D
$str((E V
,((V W
	minLength((X a
.((a b
Length((b h
)((h i
;((i j
})) 
}** 
,** 
{++ 
typeof++ 
(++ !
StringLengthAttribute++ *
)++* +
,+++ ,
a++- .
=>++/ 1
{,, !
StringLengthAttribute-- )
	strLength--* 3
=--4 5
(--6 7!
StringLengthAttribute--7 L
)--L M
a--M N
;--N O
return.. 
String.. !
...! "
Format.." (
(..( )
CultureInfo..) 4
...4 5
CurrentCulture..5 C
,..C D
$str..E s
,..s t
	strLength..u ~
...~ 
MinimumLength	.. å
,
..å ç
	strLength
..é ó
.
..ó ò
MaximumLength
..ò •
)
..• ¶
;
..¶ ß
}// 
}00 
,00 
{11 
typeof11 
(11 
DataTypeAttribute11 &
)11& '
,11' (
a11) *
=>11+ -
{22 
DataTypeAttribute33 %
dataType33& .
=33/ 0
(331 2
DataTypeAttribute332 C
)33C D
a33D E
;33E F
return44 
String44 !
.44! "
Format44" (
(44( )
CultureInfo44) 4
.444 5
CurrentCulture445 C
,44C D
$str44E U
,44U V
dataType44W _
.44_ `
CustomDataType44` n
??44o q
dataType44r z
.44z {
DataType	44{ É
.
44É Ñ
ToString
44Ñ å
(
44å ç
)
44ç é
)
44é è
;
44è ê
}55 
}66 
,66 
{77 
typeof77 
(77 &
RegularExpressionAttribute77 /
)77/ 0
,770 1
a772 3
=>774 6
{88 &
RegularExpressionAttribute99 .
regularExpression99/ @
=99A B
(99C D&
RegularExpressionAttribute99D ^
)99^ _
a99_ `
;99` a
return:: 
String:: !
.::! "
Format::" (
(::( )
CultureInfo::) 4
.::4 5
CurrentCulture::5 C
,::C D
$str::E o
,::o p
regularExpression	::q Ç
.
::Ç É
Pattern
::É ä
)
::ä ã
;
::ã å
};; 
}<< 
,<< 
}== 	
;==	 

private@@ 
readonly@@ 
IDictionary@@ $
<@@$ %
Type@@% )
,@@) *
string@@+ 1
>@@1 2$
DefaultTypeDocumentation@@3 K
=@@L M
new@@N Q

Dictionary@@R \
<@@\ ]
Type@@] a
,@@a b
string@@c i
>@@i j
{AA 	
{BB 
typeofBB 
(BB 
Int16BB 
)BB 
,BB 
$strBB &
}BB' (
,BB( )
{CC 
typeofCC 
(CC 
Int32CC 
)CC 
,CC 
$strCC &
}CC' (
,CC( )
{DD 
typeofDD 
(DD 
Int64DD 
)DD 
,DD 
$strDD &
}DD' (
,DD( )
{EE 
typeofEE 
(EE 
UInt16EE 
)EE 
,EE 
$strEE 0
}EE1 2
,EE2 3
{FF 
typeofFF 
(FF 
UInt32FF 
)FF 
,FF 
$strFF 0
}FF1 2
,FF2 3
{GG 
typeofGG 
(GG 
UInt64GG 
)GG 
,GG 
$strGG 0
}GG1 2
,GG2 3
{HH 
typeofHH 
(HH 
ByteHH 
)HH 
,HH 
$strHH "
}HH# $
,HH$ %
{II 
typeofII 
(II 
CharII 
)II 
,II 
$strII '
}II( )
,II) *
{JJ 
typeofJJ 
(JJ 
SByteJJ 
)JJ 
,JJ 
$strJJ *
}JJ+ ,
,JJ, -
{KK 
typeofKK 
(KK 
UriKK 
)KK 
,KK 
$strKK  
}KK! "
,KK" #
{LL 
typeofLL 
(LL 
SingleLL 
)LL 
,LL 
$strLL .
}LL/ 0
,LL0 1
{MM 
typeofMM 
(MM 
DoubleMM 
)MM 
,MM 
$strMM .
}MM/ 0
,MM0 1
{NN 
typeofNN 
(NN 
DecimalNN 
)NN 
,NN 
$strNN /
}NN0 1
,NN1 2
{OO 
typeofOO 
(OO 
StringOO 
)OO 
,OO 
$strOO &
}OO' (
,OO( )
{PP 
typeofPP 
(PP 
GuidPP 
)PP 
,PP 
$strPP 8
}PP9 :
,PP: ;
{QQ 
typeofQQ 
(QQ 
TimeSpanQQ 
)QQ 
,QQ 
$strQQ  /
}QQ0 1
,QQ1 2
{RR 
typeofRR 
(RR 
DateTimeRR 
)RR 
,RR 
$strRR  &
}RR' (
,RR( )
{SS 
typeofSS 
(SS 
DateTimeOffsetSS #
)SS# $
,SS$ %
$strSS& ,
}SS- .
,SS. /
{TT 
typeofTT 
(TT 
BooleanTT 
)TT 
,TT 
$strTT (
}TT) *
,TT* +
}UU 	
;UU	 

privateWW 
readonlyWW 
LazyWW 
<WW '
IModelDocumentationProviderWW 9
>WW9 :"
_documentationProviderWW; Q
;WWQ R
publicYY %
ModelDescriptionGeneratorYY (
(YY( )
HttpConfigurationYY) :
configYY; A
)YYA B
{ZZ 	
if[[ 
([[ 
config[[ 
==[[ 
null[[ 
)[[ 
{\\ 
throw]] 
new]] !
ArgumentNullException]] /
(]]/ 0
$str]]0 8
)]]8 9
;]]9 :
}^^ "
_documentationProvider`` "
=``# $
new``% (
Lazy``) -
<``- .'
IModelDocumentationProvider``. I
>``I J
(``J K
(``K L
)``L M
=>``N P
config``Q W
.``W X
Services``X `
.``` a$
GetDocumentationProvider``a y
(``y z
)``z {
as``| ~(
IModelDocumentationProvider	`` ö
)
``ö õ
;
``õ ú
GeneratedModelsaa 
=aa 
newaa !

Dictionaryaa" ,
<aa, -
stringaa- 3
,aa3 4
ModelDescriptionaa5 E
>aaE F
(aaF G
StringCompareraaG U
.aaU V
OrdinalIgnoreCaseaaV g
)aag h
;aah i
}bb 	
publicdd 

Dictionarydd 
<dd 
stringdd  
,dd  !
ModelDescriptiondd" 2
>dd2 3
GeneratedModelsdd4 C
{ddD E
getddF I
;ddI J
privateddK R
setddS V
;ddV W
}ddX Y
privateff '
IModelDocumentationProviderff +!
DocumentationProviderff, A
{gg 	
gethh 
{ii 
returnjj "
_documentationProviderjj -
.jj- .
Valuejj. 3
;jj3 4
}kk 
}ll 	
publicnn 
ModelDescriptionnn '
GetOrCreateModelDescriptionnn  ;
(nn; <
Typenn< @
	modelTypennA J
)nnJ K
{oo 	
ifpp 
(pp 
	modelTypepp 
==pp 
nullpp !
)pp! "
{qq 
throwrr 
newrr !
ArgumentNullExceptionrr /
(rr/ 0
$strrr0 ;
)rr; <
;rr< =
}ss 
Typeuu 
underlyingTypeuu 
=uu  !
Nullableuu" *
.uu* +
GetUnderlyingTypeuu+ <
(uu< =
	modelTypeuu= F
)uuF G
;uuG H
ifvv 
(vv 
underlyingTypevv 
!=vv !
nullvv" &
)vv& '
{ww 
	modelTypexx 
=xx 
underlyingTypexx *
;xx* +
}yy 
ModelDescription{{ 
modelDescription{{ -
;{{- .
string|| 
	modelName|| 
=|| 
ModelNameHelper|| .
.||. /
GetModelName||/ ;
(||; <
	modelType||< E
)||E F
;||F G
if}} 
(}} 
GeneratedModels}} 
.}}  
TryGetValue}}  +
(}}+ ,
	modelName}}, 5
,}}5 6
out}}7 :
modelDescription}}; K
)}}K L
)}}L M
{~~ 
if 
( 
	modelType 
!=  
modelDescription! 1
.1 2
	ModelType2 ;
); <
{
ÄÄ 
throw
ÅÅ 
new
ÅÅ '
InvalidOperationException
ÅÅ 7
(
ÅÅ7 8
String
ÇÇ 
.
ÇÇ 
Format
ÇÇ %
(
ÇÇ% &
CultureInfo
ÉÉ '
.
ÉÉ' (
CurrentCulture
ÉÉ( 6
,
ÉÉ6 7
$strÑÑ à
+ÑÑâ ä
$strÖÖ ê
,ÖÖê ë
	modelName
ÜÜ %
,
ÜÜ% &
modelDescription
áá ,
.
áá, -
	ModelType
áá- 6
.
áá6 7
FullName
áá7 ?
,
áá? @
	modelType
àà %
.
àà% &
FullName
àà& .
)
àà. /
)
àà/ 0
;
àà0 1
}
ââ 
return
ãã 
modelDescription
ãã '
;
ãã' (
}
åå 
if
éé 
(
éé &
DefaultTypeDocumentation
éé (
.
éé( )
ContainsKey
éé) 4
(
éé4 5
	modelType
éé5 >
)
éé> ?
)
éé? @
{
èè 
return
êê 0
"GenerateSimpleTypeModelDescription
êê 9
(
êê9 :
	modelType
êê: C
)
êêC D
;
êêD E
}
ëë 
if
ìì 
(
ìì 
	modelType
ìì 
.
ìì 
IsEnum
ìì  
)
ìì  !
{
îî 
return
ïï .
 GenerateEnumTypeModelDescription
ïï 7
(
ïï7 8
	modelType
ïï8 A
)
ïïA B
;
ïïB C
}
ññ 
if
òò 
(
òò 
	modelType
òò 
.
òò 
IsGenericType
òò '
)
òò' (
{
ôô 
Type
öö 
[
öö 
]
öö 
genericArguments
öö '
=
öö( )
	modelType
öö* 3
.
öö3 4!
GetGenericArguments
öö4 G
(
ööG H
)
ööH I
;
ööI J
if
úú 
(
úú 
genericArguments
úú $
.
úú$ %
Length
úú% +
==
úú, .
$num
úú/ 0
)
úú0 1
{
ùù 
Type
ûû 
enumerableType
ûû '
=
ûû( )
typeof
ûû* 0
(
ûû0 1
IEnumerable
ûû1 <
<
ûû< =
>
ûû= >
)
ûû> ?
.
ûû? @
MakeGenericType
ûû@ O
(
ûûO P
genericArguments
ûûP `
)
ûû` a
;
ûûa b
if
üü 
(
üü 
enumerableType
üü &
.
üü& '
IsAssignableFrom
üü' 7
(
üü7 8
	modelType
üü8 A
)
üüA B
)
üüB C
{
†† 
return
°° 0
"GenerateCollectionModelDescription
°° A
(
°°A B
	modelType
°°B K
,
°°K L
genericArguments
°°M ]
[
°°] ^
$num
°°^ _
]
°°_ `
)
°°` a
;
°°a b
}
¢¢ 
}
££ 
if
§§ 
(
§§ 
genericArguments
§§ $
.
§§$ %
Length
§§% +
==
§§, .
$num
§§/ 0
)
§§0 1
{
•• 
Type
¶¶ 
dictionaryType
¶¶ '
=
¶¶( )
typeof
¶¶* 0
(
¶¶0 1
IDictionary
¶¶1 <
<
¶¶< =
,
¶¶= >
>
¶¶> ?
)
¶¶? @
.
¶¶@ A
MakeGenericType
¶¶A P
(
¶¶P Q
genericArguments
¶¶Q a
)
¶¶a b
;
¶¶b c
if
ßß 
(
ßß 
dictionaryType
ßß &
.
ßß& '
IsAssignableFrom
ßß' 7
(
ßß7 8
	modelType
ßß8 A
)
ßßA B
)
ßßB C
{
®® 
return
©© 0
"GenerateDictionaryModelDescription
©© A
(
©©A B
	modelType
©©B K
,
©©K L
genericArguments
©©M ]
[
©©] ^
$num
©©^ _
]
©©_ `
,
©©` a
genericArguments
©©b r
[
©©r s
$num
©©s t
]
©©t u
)
©©u v
;
©©v w
}
™™ 
Type
¨¨ 
keyValuePairType
¨¨ )
=
¨¨* +
typeof
¨¨, 2
(
¨¨2 3
KeyValuePair
¨¨3 ?
<
¨¨? @
,
¨¨@ A
>
¨¨A B
)
¨¨B C
.
¨¨C D
MakeGenericType
¨¨D S
(
¨¨S T
genericArguments
¨¨T d
)
¨¨d e
;
¨¨e f
if
≠≠ 
(
≠≠ 
keyValuePairType
≠≠ (
.
≠≠( )
IsAssignableFrom
≠≠) 9
(
≠≠9 :
	modelType
≠≠: C
)
≠≠C D
)
≠≠D E
{
ÆÆ 
return
ØØ 2
$GenerateKeyValuePairModelDescription
ØØ C
(
ØØC D
	modelType
ØØD M
,
ØØM N
genericArguments
ØØO _
[
ØØ_ `
$num
ØØ` a
]
ØØa b
,
ØØb c
genericArguments
ØØd t
[
ØØt u
$num
ØØu v
]
ØØv w
)
ØØw x
;
ØØx y
}
∞∞ 
}
±± 
}
≤≤ 
if
¥¥ 
(
¥¥ 
	modelType
¥¥ 
.
¥¥ 
IsArray
¥¥ !
)
¥¥! "
{
µµ 
Type
∂∂ 
elementType
∂∂  
=
∂∂! "
	modelType
∂∂# ,
.
∂∂, -
GetElementType
∂∂- ;
(
∂∂; <
)
∂∂< =
;
∂∂= >
return
∑∑ 0
"GenerateCollectionModelDescription
∑∑ 9
(
∑∑9 :
	modelType
∑∑: C
,
∑∑C D
elementType
∑∑E P
)
∑∑P Q
;
∑∑Q R
}
∏∏ 
if
∫∫ 
(
∫∫ 
	modelType
∫∫ 
==
∫∫ 
typeof
∫∫ #
(
∫∫# $!
NameValueCollection
∫∫$ 7
)
∫∫7 8
)
∫∫8 9
{
ªª 
return
ºº 0
"GenerateDictionaryModelDescription
ºº 9
(
ºº9 :
	modelType
ºº: C
,
ººC D
typeof
ººE K
(
ººK L
string
ººL R
)
ººR S
,
ººS T
typeof
ººU [
(
ºº[ \
string
ºº\ b
)
ººb c
)
ººc d
;
ººd e
}
ΩΩ 
if
øø 
(
øø 
typeof
øø 
(
øø 
IDictionary
øø "
)
øø" #
.
øø# $
IsAssignableFrom
øø$ 4
(
øø4 5
	modelType
øø5 >
)
øø> ?
)
øø? @
{
¿¿ 
return
¡¡ 0
"GenerateDictionaryModelDescription
¡¡ 9
(
¡¡9 :
	modelType
¡¡: C
,
¡¡C D
typeof
¡¡E K
(
¡¡K L
object
¡¡L R
)
¡¡R S
,
¡¡S T
typeof
¡¡U [
(
¡¡[ \
object
¡¡\ b
)
¡¡b c
)
¡¡c d
;
¡¡d e
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
typeof
ƒƒ 
(
ƒƒ 
IEnumerable
ƒƒ "
)
ƒƒ" #
.
ƒƒ# $
IsAssignableFrom
ƒƒ$ 4
(
ƒƒ4 5
	modelType
ƒƒ5 >
)
ƒƒ> ?
)
ƒƒ? @
{
≈≈ 
return
∆∆ 0
"GenerateCollectionModelDescription
∆∆ 9
(
∆∆9 :
	modelType
∆∆: C
,
∆∆C D
typeof
∆∆E K
(
∆∆K L
object
∆∆L R
)
∆∆R S
)
∆∆S T
;
∆∆T U
}
«« 
return
…… 1
#GenerateComplexTypeModelDescription
…… 6
(
……6 7
	modelType
……7 @
)
……@ A
;
……A B
}
   	
private
ÕÕ 
static
ÕÕ 
string
ÕÕ 
GetMemberName
ÕÕ +
(
ÕÕ+ ,

MemberInfo
ÕÕ, 6
member
ÕÕ7 =
,
ÕÕ= >
bool
ÕÕ? C&
hasDataContractAttribute
ÕÕD \
)
ÕÕ\ ]
{
ŒŒ 	#
JsonPropertyAttribute
œœ !
jsonProperty
œœ" .
=
œœ/ 0
member
œœ1 7
.
œœ7 8 
GetCustomAttribute
œœ8 J
<
œœJ K#
JsonPropertyAttribute
œœK `
>
œœ` a
(
œœa b
)
œœb c
;
œœc d
if
–– 
(
–– 
jsonProperty
–– 
!=
–– 
null
––  $
&&
––% '
!
––( )
String
––) /
.
––/ 0
IsNullOrEmpty
––0 =
(
––= >
jsonProperty
––> J
.
––J K
PropertyName
––K W
)
––W X
)
––X Y
{
—— 
return
““ 
jsonProperty
““ #
.
““# $
PropertyName
““$ 0
;
““0 1
}
”” 
if
’’ 
(
’’ &
hasDataContractAttribute
’’ (
)
’’( )
{
÷÷ !
DataMemberAttribute
◊◊ #

dataMember
◊◊$ .
=
◊◊/ 0
member
◊◊1 7
.
◊◊7 8 
GetCustomAttribute
◊◊8 J
<
◊◊J K!
DataMemberAttribute
◊◊K ^
>
◊◊^ _
(
◊◊_ `
)
◊◊` a
;
◊◊a b
if
ÿÿ 
(
ÿÿ 

dataMember
ÿÿ 
!=
ÿÿ !
null
ÿÿ" &
&&
ÿÿ' )
!
ÿÿ* +
String
ÿÿ+ 1
.
ÿÿ1 2
IsNullOrEmpty
ÿÿ2 ?
(
ÿÿ? @

dataMember
ÿÿ@ J
.
ÿÿJ K
Name
ÿÿK O
)
ÿÿO P
)
ÿÿP Q
{
ŸŸ 
return
⁄⁄ 

dataMember
⁄⁄ %
.
⁄⁄% &
Name
⁄⁄& *
;
⁄⁄* +
}
€€ 
}
‹‹ 
return
ﬁﬁ 
member
ﬁﬁ 
.
ﬁﬁ 
Name
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 	
private
·· 
static
·· 
bool
·· !
ShouldDisplayMember
·· /
(
··/ 0

MemberInfo
··0 :
member
··; A
,
··A B
bool
··C G&
hasDataContractAttribute
··H `
)
··` a
{
‚‚ 	!
JsonIgnoreAttribute
„„ 

jsonIgnore
„„  *
=
„„+ ,
member
„„- 3
.
„„3 4 
GetCustomAttribute
„„4 F
<
„„F G!
JsonIgnoreAttribute
„„G Z
>
„„Z [
(
„„[ \
)
„„\ ]
;
„„] ^ 
XmlIgnoreAttribute
‰‰ 
	xmlIgnore
‰‰ (
=
‰‰) *
member
‰‰+ 1
.
‰‰1 2 
GetCustomAttribute
‰‰2 D
<
‰‰D E 
XmlIgnoreAttribute
‰‰E W
>
‰‰W X
(
‰‰X Y
)
‰‰Y Z
;
‰‰Z ['
IgnoreDataMemberAttribute
ÂÂ %
ignoreDataMember
ÂÂ& 6
=
ÂÂ7 8
member
ÂÂ9 ?
.
ÂÂ? @ 
GetCustomAttribute
ÂÂ@ R
<
ÂÂR S'
IgnoreDataMemberAttribute
ÂÂS l
>
ÂÂl m
(
ÂÂm n
)
ÂÂn o
;
ÂÂo p$
NonSerializedAttribute
ÊÊ "
nonSerialized
ÊÊ# 0
=
ÊÊ1 2
member
ÊÊ3 9
.
ÊÊ9 : 
GetCustomAttribute
ÊÊ: L
<
ÊÊL M$
NonSerializedAttribute
ÊÊM c
>
ÊÊc d
(
ÊÊd e
)
ÊÊe f
;
ÊÊf g*
ApiExplorerSettingsAttribute
ÁÁ ( 
apiExplorerSetting
ÁÁ) ;
=
ÁÁ< =
member
ÁÁ> D
.
ÁÁD E 
GetCustomAttribute
ÁÁE W
<
ÁÁW X*
ApiExplorerSettingsAttribute
ÁÁX t
>
ÁÁt u
(
ÁÁu v
)
ÁÁv w
;
ÁÁw x
bool
ÈÈ  
hasMemberAttribute
ÈÈ #
=
ÈÈ$ %
member
ÈÈ& ,
.
ÈÈ, -
DeclaringType
ÈÈ- :
.
ÈÈ: ;
IsEnum
ÈÈ; A
?
ÈÈB C
member
ÍÍ 
.
ÍÍ  
GetCustomAttribute
ÍÍ )
<
ÍÍ) *!
EnumMemberAttribute
ÍÍ* =
>
ÍÍ= >
(
ÍÍ> ?
)
ÍÍ? @
!=
ÍÍA C
null
ÍÍD H
:
ÍÍI J
member
ÎÎ 
.
ÎÎ  
GetCustomAttribute
ÎÎ )
<
ÎÎ) *!
DataMemberAttribute
ÎÎ* =
>
ÎÎ= >
(
ÎÎ> ?
)
ÎÎ? @
!=
ÎÎA C
null
ÎÎD H
;
ÎÎH I
return
ÙÙ 

jsonIgnore
ÙÙ 
==
ÙÙ  
null
ÙÙ! %
&&
ÙÙ& (
	xmlIgnore
ıı 
==
ıı 
null
ıı !
&&
ıı" $
ignoreDataMember
ˆˆ  
==
ˆˆ! #
null
ˆˆ$ (
&&
ˆˆ) +
nonSerialized
˜˜ 
==
˜˜  
null
˜˜! %
&&
˜˜& (
(
¯¯  
apiExplorerSetting
¯¯ #
==
¯¯$ &
null
¯¯' +
||
¯¯, .
!
¯¯/ 0 
apiExplorerSetting
¯¯0 B
.
¯¯B C
	IgnoreApi
¯¯C L
)
¯¯L M
&&
¯¯N P
(
˘˘ 
!
˘˘ &
hasDataContractAttribute
˘˘ *
||
˘˘+ - 
hasMemberAttribute
˘˘. @
)
˘˘@ A
;
˘˘A B
}
˙˙ 	
private
¸¸ 
string
¸¸ (
CreateDefaultDocumentation
¸¸ 1
(
¸¸1 2
Type
¸¸2 6
type
¸¸7 ;
)
¸¸; <
{
˝˝ 	
string
˛˛ 
documentation
˛˛  
;
˛˛  !
if
ˇˇ 
(
ˇˇ &
DefaultTypeDocumentation
ˇˇ (
.
ˇˇ( )
TryGetValue
ˇˇ) 4
(
ˇˇ4 5
type
ˇˇ5 9
,
ˇˇ9 :
out
ˇˇ; >
documentation
ˇˇ? L
)
ˇˇL M
)
ˇˇM N
{
ÄÄ 
return
ÅÅ 
documentation
ÅÅ $
;
ÅÅ$ %
}
ÇÇ 
if
ÉÉ 
(
ÉÉ #
DocumentationProvider
ÉÉ %
!=
ÉÉ& (
null
ÉÉ) -
)
ÉÉ- .
{
ÑÑ 
documentation
ÖÖ 
=
ÖÖ #
DocumentationProvider
ÖÖ  5
.
ÖÖ5 6
GetDocumentation
ÖÖ6 F
(
ÖÖF G
type
ÖÖG K
)
ÖÖK L
;
ÖÖL M
}
ÜÜ 
return
àà 
documentation
àà  
;
àà  !
}
ââ 	
private
ãã 
void
ãã !
GenerateAnnotations
ãã (
(
ãã( )

MemberInfo
ãã) 3
property
ãã4 <
,
ãã< ="
ParameterDescription
ãã> R
propertyModel
ããS `
)
ãã` a
{
åå 	
List
çç 
<
çç !
ParameterAnnotation
çç $
>
çç$ %
annotations
çç& 1
=
çç2 3
new
çç4 7
List
çç8 <
<
çç< =!
ParameterAnnotation
çç= P
>
ççP Q
(
ççQ R
)
ççR S
;
ççS T
IEnumerable
èè 
<
èè 
	Attribute
èè !
>
èè! "

attributes
èè# -
=
èè. /
property
èè0 8
.
èè8 9!
GetCustomAttributes
èè9 L
(
èèL M
)
èèM N
;
èèN O
foreach
êê 
(
êê 
	Attribute
êê 
	attribute
êê (
in
êê) +

attributes
êê, 6
)
êê6 7
{
ëë 
Func
íí 
<
íí 
object
íí 
,
íí 
string
íí #
>
íí# $
textGenerator
íí% 2
;
íí2 3
if
ìì 
(
ìì %
AnnotationTextGenerator
ìì +
.
ìì+ ,
TryGetValue
ìì, 7
(
ìì7 8
	attribute
ìì8 A
.
ììA B
GetType
ììB I
(
ììI J
)
ììJ K
,
ììK L
out
ììM P
textGenerator
ììQ ^
)
ìì^ _
)
ìì_ `
{
îî 
annotations
ïï 
.
ïï  
Add
ïï  #
(
ïï# $
new
ññ !
ParameterAnnotation
ññ /
{
óó !
AnnotationAttribute
òò /
=
òò0 1
	attribute
òò2 ;
,
òò; <
Documentation
ôô )
=
ôô* +
textGenerator
ôô, 9
(
ôô9 :
	attribute
ôô: C
)
ôôC D
}
öö 
)
öö 
;
öö 
}
õõ 
}
úú 
annotations
üü 
.
üü 
Sort
üü 
(
üü 
(
üü 
x
üü 
,
üü  
y
üü! "
)
üü" #
=>
üü$ &
{
†† 
if
¢¢ 
(
¢¢ 
x
¢¢ 
.
¢¢ !
AnnotationAttribute
¢¢ )
is
¢¢* ,
RequiredAttribute
¢¢- >
)
¢¢> ?
{
££ 
return
§§ 
-
§§ 
$num
§§ 
;
§§ 
}
•• 
if
¶¶ 
(
¶¶ 
y
¶¶ 
.
¶¶ !
AnnotationAttribute
¶¶ )
is
¶¶* ,
RequiredAttribute
¶¶- >
)
¶¶> ?
{
ßß 
return
®® 
$num
®® 
;
®® 
}
©© 
return
¨¨ 
String
¨¨ 
.
¨¨ 
Compare
¨¨ %
(
¨¨% &
x
¨¨& '
.
¨¨' (
Documentation
¨¨( 5
,
¨¨5 6
y
¨¨7 8
.
¨¨8 9
Documentation
¨¨9 F
,
¨¨F G
StringComparison
¨¨H X
.
¨¨X Y
OrdinalIgnoreCase
¨¨Y j
)
¨¨j k
;
¨¨k l
}
≠≠ 
)
≠≠ 
;
≠≠ 
foreach
ØØ 
(
ØØ !
ParameterAnnotation
ØØ (

annotation
ØØ) 3
in
ØØ4 6
annotations
ØØ7 B
)
ØØB C
{
∞∞ 
propertyModel
±± 
.
±± 
Annotations
±± )
.
±±) *
Add
±±* -
(
±±- .

annotation
±±. 8
)
±±8 9
;
±±9 :
}
≤≤ 
}
≥≥ 	
private
µµ (
CollectionModelDescription
µµ *0
"GenerateCollectionModelDescription
µµ+ M
(
µµM N
Type
µµN R
	modelType
µµS \
,
µµ\ ]
Type
µµ^ b
elementType
µµc n
)
µµn o
{
∂∂ 	
ModelDescription
∑∑ (
collectionModelDescription
∑∑ 7
=
∑∑8 9)
GetOrCreateModelDescription
∑∑: U
(
∑∑U V
elementType
∑∑V a
)
∑∑a b
;
∑∑b c
if
∏∏ 
(
∏∏ (
collectionModelDescription
∏∏ *
!=
∏∏+ -
null
∏∏. 2
)
∏∏2 3
{
ππ 
return
∫∫ 
new
∫∫ (
CollectionModelDescription
∫∫ 5
{
ªª 
Name
ºº 
=
ºº 
ModelNameHelper
ºº *
.
ºº* +
GetModelName
ºº+ 7
(
ºº7 8
	modelType
ºº8 A
)
ººA B
,
ººB C
	ModelType
ΩΩ 
=
ΩΩ 
	modelType
ΩΩ  )
,
ΩΩ) * 
ElementDescription
ææ &
=
ææ' ((
collectionModelDescription
ææ) C
}
øø 
;
øø 
}
¿¿ 
return
¬¬ 
null
¬¬ 
;
¬¬ 
}
√√ 	
private
≈≈ 
ModelDescription
≈≈  1
#GenerateComplexTypeModelDescription
≈≈! D
(
≈≈D E
Type
≈≈E I
	modelType
≈≈J S
)
≈≈S T
{
∆∆ 	)
ComplexTypeModelDescription
«« '%
complexModelDescription
««( ?
=
««@ A
new
««B E)
ComplexTypeModelDescription
««F a
{
»» 
Name
…… 
=
…… 
ModelNameHelper
…… &
.
……& '
GetModelName
……' 3
(
……3 4
	modelType
……4 =
)
……= >
,
……> ?
	ModelType
   
=
   
	modelType
   %
,
  % &
Documentation
ÀÀ 
=
ÀÀ (
CreateDefaultDocumentation
ÀÀ  :
(
ÀÀ: ;
	modelType
ÀÀ; D
)
ÀÀD E
}
ÃÃ 
;
ÃÃ 
GeneratedModels
ŒŒ 
.
ŒŒ 
Add
ŒŒ 
(
ŒŒ  %
complexModelDescription
ŒŒ  7
.
ŒŒ7 8
Name
ŒŒ8 <
,
ŒŒ< =%
complexModelDescription
ŒŒ> U
)
ŒŒU V
;
ŒŒV W
bool
œœ &
hasDataContractAttribute
œœ )
=
œœ* +
	modelType
œœ, 5
.
œœ5 6 
GetCustomAttribute
œœ6 H
<
œœH I#
DataContractAttribute
œœI ^
>
œœ^ _
(
œœ_ `
)
œœ` a
!=
œœb d
null
œœe i
;
œœi j
PropertyInfo
–– 
[
–– 
]
–– 

properties
–– %
=
––& '
	modelType
––( 1
.
––1 2
GetProperties
––2 ?
(
––? @
BindingFlags
––@ L
.
––L M
Public
––M S
|
––T U
BindingFlags
––V b
.
––b c
Instance
––c k
)
––k l
;
––l m
foreach
—— 
(
—— 
PropertyInfo
—— !
property
——" *
in
——+ -

properties
——. 8
)
——8 9
{
““ 
if
”” 
(
”” !
ShouldDisplayMember
”” '
(
””' (
property
””( 0
,
””0 1&
hasDataContractAttribute
””2 J
)
””J K
)
””K L
{
‘‘ "
ParameterDescription
’’ (
propertyModel
’’) 6
=
’’7 8
new
’’9 <"
ParameterDescription
’’= Q
{
÷÷ 
Name
◊◊ 
=
◊◊ 
GetMemberName
◊◊ ,
(
◊◊, -
property
◊◊- 5
,
◊◊5 6&
hasDataContractAttribute
◊◊7 O
)
◊◊O P
}
ÿÿ 
;
ÿÿ 
if
⁄⁄ 
(
⁄⁄ #
DocumentationProvider
⁄⁄ -
!=
⁄⁄. 0
null
⁄⁄1 5
)
⁄⁄5 6
{
€€ 
propertyModel
‹‹ %
.
‹‹% &
Documentation
‹‹& 3
=
‹‹4 5#
DocumentationProvider
‹‹6 K
.
‹‹K L
GetDocumentation
‹‹L \
(
‹‹\ ]
property
‹‹] e
)
‹‹e f
;
‹‹f g
}
›› !
GenerateAnnotations
ﬂﬂ '
(
ﬂﬂ' (
property
ﬂﬂ( 0
,
ﬂﬂ0 1
propertyModel
ﬂﬂ2 ?
)
ﬂﬂ? @
;
ﬂﬂ@ A%
complexModelDescription
‡‡ +
.
‡‡+ ,

Properties
‡‡, 6
.
‡‡6 7
Add
‡‡7 :
(
‡‡: ;
propertyModel
‡‡; H
)
‡‡H I
;
‡‡I J
propertyModel
·· !
.
··! "
TypeDescription
··" 1
=
··2 3)
GetOrCreateModelDescription
··4 O
(
··O P
property
··P X
.
··X Y
PropertyType
··Y e
)
··e f
;
··f g
}
‚‚ 
}
„„ 
	FieldInfo
ÂÂ 
[
ÂÂ 
]
ÂÂ 
fields
ÂÂ 
=
ÂÂ  
	modelType
ÂÂ! *
.
ÂÂ* +
	GetFields
ÂÂ+ 4
(
ÂÂ4 5
BindingFlags
ÂÂ5 A
.
ÂÂA B
Public
ÂÂB H
|
ÂÂI J
BindingFlags
ÂÂK W
.
ÂÂW X
Instance
ÂÂX `
)
ÂÂ` a
;
ÂÂa b
foreach
ÊÊ 
(
ÊÊ 
	FieldInfo
ÊÊ 
field
ÊÊ $
in
ÊÊ% '
fields
ÊÊ( .
)
ÊÊ. /
{
ÁÁ 
if
ËË 
(
ËË !
ShouldDisplayMember
ËË '
(
ËË' (
field
ËË( -
,
ËË- .&
hasDataContractAttribute
ËË/ G
)
ËËG H
)
ËËH I
{
ÈÈ "
ParameterDescription
ÍÍ (
propertyModel
ÍÍ) 6
=
ÍÍ7 8
new
ÍÍ9 <"
ParameterDescription
ÍÍ= Q
{
ÎÎ 
Name
ÏÏ 
=
ÏÏ 
GetMemberName
ÏÏ ,
(
ÏÏ, -
field
ÏÏ- 2
,
ÏÏ2 3&
hasDataContractAttribute
ÏÏ4 L
)
ÏÏL M
}
ÌÌ 
;
ÌÌ 
if
ÔÔ 
(
ÔÔ #
DocumentationProvider
ÔÔ -
!=
ÔÔ. 0
null
ÔÔ1 5
)
ÔÔ5 6
{
 
propertyModel
ÒÒ %
.
ÒÒ% &
Documentation
ÒÒ& 3
=
ÒÒ4 5#
DocumentationProvider
ÒÒ6 K
.
ÒÒK L
GetDocumentation
ÒÒL \
(
ÒÒ\ ]
field
ÒÒ] b
)
ÒÒb c
;
ÒÒc d
}
ÚÚ %
complexModelDescription
ÙÙ +
.
ÙÙ+ ,

Properties
ÙÙ, 6
.
ÙÙ6 7
Add
ÙÙ7 :
(
ÙÙ: ;
propertyModel
ÙÙ; H
)
ÙÙH I
;
ÙÙI J
propertyModel
ıı !
.
ıı! "
TypeDescription
ıı" 1
=
ıı2 3)
GetOrCreateModelDescription
ıı4 O
(
ııO P
field
ııP U
.
ııU V
	FieldType
ııV _
)
ıı_ `
;
ıı` a
}
ˆˆ 
}
˜˜ 
return
˘˘ %
complexModelDescription
˘˘ *
;
˘˘* +
}
˙˙ 	
private
¸¸ (
DictionaryModelDescription
¸¸ *0
"GenerateDictionaryModelDescription
¸¸+ M
(
¸¸M N
Type
¸¸N R
	modelType
¸¸S \
,
¸¸\ ]
Type
¸¸^ b
keyType
¸¸c j
,
¸¸j k
Type
¸¸l p
	valueType
¸¸q z
)
¸¸z {
{
˝˝ 	
ModelDescription
˛˛ !
keyModelDescription
˛˛ 0
=
˛˛1 2)
GetOrCreateModelDescription
˛˛3 N
(
˛˛N O
keyType
˛˛O V
)
˛˛V W
;
˛˛W X
ModelDescription
ˇˇ #
valueModelDescription
ˇˇ 2
=
ˇˇ3 4)
GetOrCreateModelDescription
ˇˇ5 P
(
ˇˇP Q
	valueType
ˇˇQ Z
)
ˇˇZ [
;
ˇˇ[ \
return
ÅÅ 
new
ÅÅ (
DictionaryModelDescription
ÅÅ 1
{
ÇÇ 
Name
ÉÉ 
=
ÉÉ 
ModelNameHelper
ÉÉ &
.
ÉÉ& '
GetModelName
ÉÉ' 3
(
ÉÉ3 4
	modelType
ÉÉ4 =
)
ÉÉ= >
,
ÉÉ> ?
	ModelType
ÑÑ 
=
ÑÑ 
	modelType
ÑÑ %
,
ÑÑ% &!
KeyModelDescription
ÖÖ #
=
ÖÖ$ %!
keyModelDescription
ÖÖ& 9
,
ÖÖ9 :#
ValueModelDescription
ÜÜ %
=
ÜÜ& '#
valueModelDescription
ÜÜ( =
}
áá 
;
áá 
}
àà 	
private
ää &
EnumTypeModelDescription
ää (.
 GenerateEnumTypeModelDescription
ää) I
(
ääI J
Type
ääJ N
	modelType
ääO X
)
ääX Y
{
ãã 	&
EnumTypeModelDescription
åå $
enumDescription
åå% 4
=
åå5 6
new
åå7 :&
EnumTypeModelDescription
åå; S
{
çç 
Name
éé 
=
éé 
ModelNameHelper
éé &
.
éé& '
GetModelName
éé' 3
(
éé3 4
	modelType
éé4 =
)
éé= >
,
éé> ?
	ModelType
èè 
=
èè 
	modelType
èè %
,
èè% &
Documentation
êê 
=
êê (
CreateDefaultDocumentation
êê  :
(
êê: ;
	modelType
êê; D
)
êêD E
}
ëë 
;
ëë 
bool
íí &
hasDataContractAttribute
íí )
=
íí* +
	modelType
íí, 5
.
íí5 6 
GetCustomAttribute
íí6 H
<
ííH I#
DataContractAttribute
ííI ^
>
íí^ _
(
íí_ `
)
íí` a
!=
ííb d
null
ííe i
;
ííi j
foreach
ìì 
(
ìì 
	FieldInfo
ìì 
field
ìì $
in
ìì% '
	modelType
ìì( 1
.
ìì1 2
	GetFields
ìì2 ;
(
ìì; <
BindingFlags
ìì< H
.
ììH I
Public
ììI O
|
ììP Q
BindingFlags
ììR ^
.
ìì^ _
Static
ìì_ e
)
ììe f
)
ììf g
{
îî 
if
ïï 
(
ïï !
ShouldDisplayMember
ïï '
(
ïï' (
field
ïï( -
,
ïï- .&
hasDataContractAttribute
ïï/ G
)
ïïG H
)
ïïH I
{
ññ "
EnumValueDescription
óó (
	enumValue
óó) 2
=
óó3 4
new
óó5 8"
EnumValueDescription
óó9 M
{
òò 
Name
ôô 
=
ôô 
field
ôô $
.
ôô$ %
Name
ôô% )
,
ôô) *
Value
öö 
=
öö 
field
öö  %
.
öö% &!
GetRawConstantValue
öö& 9
(
öö9 :
)
öö: ;
.
öö; <
ToString
öö< D
(
ööD E
)
ööE F
}
õõ 
;
õõ 
if
úú 
(
úú #
DocumentationProvider
úú -
!=
úú. 0
null
úú1 5
)
úú5 6
{
ùù 
	enumValue
ûû !
.
ûû! "
Documentation
ûû" /
=
ûû0 1#
DocumentationProvider
ûû2 G
.
ûûG H
GetDocumentation
ûûH X
(
ûûX Y
field
ûûY ^
)
ûû^ _
;
ûû_ `
}
üü 
enumDescription
†† #
.
††# $
Values
††$ *
.
††* +
Add
††+ .
(
††. /
	enumValue
††/ 8
)
††8 9
;
††9 :
}
°° 
}
¢¢ 
GeneratedModels
££ 
.
££ 
Add
££ 
(
££  
enumDescription
££  /
.
££/ 0
Name
££0 4
,
££4 5
enumDescription
££6 E
)
££E F
;
££F G
return
•• 
enumDescription
•• "
;
••" #
}
¶¶ 	
private
®® *
KeyValuePairModelDescription
®® ,2
$GenerateKeyValuePairModelDescription
®®- Q
(
®®Q R
Type
®®R V
	modelType
®®W `
,
®®` a
Type
®®b f
keyType
®®g n
,
®®n o
Type
®®p t
	valueType
®®u ~
)
®®~ 
{
©© 	
ModelDescription
™™ !
keyModelDescription
™™ 0
=
™™1 2)
GetOrCreateModelDescription
™™3 N
(
™™N O
keyType
™™O V
)
™™V W
;
™™W X
ModelDescription
´´ #
valueModelDescription
´´ 2
=
´´3 4)
GetOrCreateModelDescription
´´5 P
(
´´P Q
	valueType
´´Q Z
)
´´Z [
;
´´[ \
return
≠≠ 
new
≠≠ *
KeyValuePairModelDescription
≠≠ 3
{
ÆÆ 
Name
ØØ 
=
ØØ 
ModelNameHelper
ØØ &
.
ØØ& '
GetModelName
ØØ' 3
(
ØØ3 4
	modelType
ØØ4 =
)
ØØ= >
,
ØØ> ?
	ModelType
∞∞ 
=
∞∞ 
	modelType
∞∞ %
,
∞∞% &!
KeyModelDescription
±± #
=
±±$ %!
keyModelDescription
±±& 9
,
±±9 :#
ValueModelDescription
≤≤ %
=
≤≤& '#
valueModelDescription
≤≤( =
}
≥≥ 
;
≥≥ 
}
¥¥ 	
private
∂∂ 
ModelDescription
∂∂  0
"GenerateSimpleTypeModelDescription
∂∂! C
(
∂∂C D
Type
∂∂D H
	modelType
∂∂I R
)
∂∂R S
{
∑∑ 	(
SimpleTypeModelDescription
∏∏ &$
simpleModelDescription
∏∏' =
=
∏∏> ?
new
∏∏@ C(
SimpleTypeModelDescription
∏∏D ^
{
ππ 
Name
∫∫ 
=
∫∫ 
ModelNameHelper
∫∫ &
.
∫∫& '
GetModelName
∫∫' 3
(
∫∫3 4
	modelType
∫∫4 =
)
∫∫= >
,
∫∫> ?
	ModelType
ªª 
=
ªª 
	modelType
ªª %
,
ªª% &
Documentation
ºº 
=
ºº (
CreateDefaultDocumentation
ºº  :
(
ºº: ;
	modelType
ºº; D
)
ººD E
}
ΩΩ 
;
ΩΩ 
GeneratedModels
ææ 
.
ææ 
Add
ææ 
(
ææ  $
simpleModelDescription
ææ  6
.
ææ6 7
Name
ææ7 ;
,
ææ; <$
simpleModelDescription
ææ= S
)
ææS T
;
ææT U
return
¿¿ $
simpleModelDescription
¿¿ )
;
¿¿) *
}
¡¡ 	
}
¬¬ 
}√√ ⁄

ùC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelNameAttribute.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
|+ ,
AttributeTargets- =
.= >
Struct> D
|E F
AttributeTargetsG W
.W X
EnumX \
,\ ]
AllowMultiple^ k
=l m
falsen s
,s t
	Inheritedu ~
=	 Ä
false
Å Ü
)
Ü á
]
á à
public		 

sealed		 
class		 
ModelNameAttribute		 *
:		+ ,
	Attribute		- 6
{

 
public 
ModelNameAttribute !
(! "
string" (
name) -
)- .
{ 	
Name 
= 
name 
; 
} 	
public 
string 
Name 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
} 
} Â
öC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelNameHelper.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
internal 
static 
class 
ModelNameHelper )
{		 
public 
static 
string 
GetModelName )
() *
Type* .
type/ 3
)3 4
{ 	
ModelNameAttribute 
modelNameAttribute 1
=2 3
type4 8
.8 9
GetCustomAttribute9 K
<K L
ModelNameAttributeL ^
>^ _
(_ `
)` a
;a b
if 
( 
modelNameAttribute "
!=# %
null& *
&&+ -
!. /
String/ 5
.5 6
IsNullOrEmpty6 C
(C D
modelNameAttributeD V
.V W
NameW [
)[ \
)\ ]
{ 
return 
modelNameAttribute )
.) *
Name* .
;. /
} 
string 
	modelName 
= 
type #
.# $
Name$ (
;( )
if 
( 
type 
. 
IsGenericType "
)" #
{ 
Type 
genericType  
=! "
type# '
.' ($
GetGenericTypeDefinition( @
(@ A
)A B
;B C
Type 
[ 
] 
genericArguments '
=( )
type* .
.. /
GetGenericArguments/ B
(B C
)C D
;D E
string 
genericTypeName &
=' (
genericType) 4
.4 5
Name5 9
;9 :
genericTypeName 
=  !
genericTypeName" 1
.1 2
	Substring2 ;
(; <
$num< =
,= >
genericTypeName? N
.N O
IndexOfO V
(V W
$charW Z
)Z [
)[ \
;\ ]
string 
[ 
] 
argumentTypeNames *
=+ ,
genericArguments- =
.= >
Select> D
(D E
tE F
=>G I
GetModelNameJ V
(V W
tW X
)X Y
)Y Z
.Z [
ToArray[ b
(b c
)c d
;d e
	modelName 
= 
String "
." #
Format# )
() *
CultureInfo* 5
.5 6
InvariantCulture6 F
,F G
$strH R
,R S
genericTypeNameT c
,c d
Stringe k
.k l
Joinl p
(p q
$strq v
,v w
argumentTypeNames	x â
)
â ä
)
ä ã
;
ã å
} 
return!! 
	modelName!! 
;!! 
}"" 	
}## 
}$$ ó
ûC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ParameterAnnotation.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class 
ParameterAnnotation $
{ 
public 
	Attribute 
AnnotationAttribute ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public		 
string		 
Documentation		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
}

 
} ⁄
üC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ParameterDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class  
ParameterDescription %
{ 
public  
ParameterDescription #
(# $
)$ %
{		 	
Annotations

 
=

 
new

 

Collection

 (
<

( )
ParameterAnnotation

) <
>

< =
(

= >
)

> ?
;

? @
} 	
public 

Collection 
< 
ParameterAnnotation -
>- .
Annotations/ :
{; <
get= @
;@ A
privateB I
setJ M
;M N
}O P
public 
string 
Documentation #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
ModelDescription 
TypeDescription  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} á
•C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\SimpleTypeModelDescription.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
ModelDescriptions- >
{ 
public 

class &
SimpleTypeModelDescription +
:, -
ModelDescription. >
{ 
} 
} –*
êC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\Models\HelpPageApiModel.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
., -
Models- 3
{ 
public 

class 
HelpPageApiModel !
{ 
public 
HelpPageApiModel 
(  
)  !
{ 	
UriParameters 
= 
new 

Collection  *
<* + 
ParameterDescription+ ?
>? @
(@ A
)A B
;B C
SampleRequests 
= 
new  

Dictionary! +
<+ , 
MediaTypeHeaderValue, @
,@ A
objectB H
>H I
(I J
)J K
;K L
SampleResponses 
= 
new !

Dictionary" ,
<, - 
MediaTypeHeaderValue- A
,A B
objectC I
>I J
(J K
)K L
;L M
ErrorMessages 
= 
new 

Collection  *
<* +
string+ 1
>1 2
(2 3
)3 4
;4 5
} 	
public 
ApiDescription 
ApiDescription ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public!! 

Collection!! 
<!!  
ParameterDescription!! .
>!!. /
UriParameters!!0 =
{!!> ?
get!!@ C
;!!C D
private!!E L
set!!M P
;!!P Q
}!!R S
public&& 
string&&  
RequestDocumentation&& *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
public++ 
ModelDescription++ #
RequestModelDescription++  7
{++8 9
get++: =
;++= >
set++? B
;++B C
}++D E
public00 
IList00 
<00  
ParameterDescription00 )
>00) *!
RequestBodyParameters00+ @
{11 	
get22 
{33 
return44 $
GetParameterDescriptions44 /
(44/ 0#
RequestModelDescription440 G
)44G H
;44H I
}55 
}66 	
public;; 
ModelDescription;; 
ResourceDescription;;  3
{;;4 5
get;;6 9
;;;9 :
set;;; >
;;;> ?
};;@ A
public@@ 
IList@@ 
<@@  
ParameterDescription@@ )
>@@) *
ResourceProperties@@+ =
{AA 	
getBB 
{CC 
returnDD $
GetParameterDescriptionsDD /
(DD/ 0
ResourceDescriptionDD0 C
)DDC D
;DDD E
}EE 
}FF 	
publicKK 
IDictionaryKK 
<KK  
MediaTypeHeaderValueKK /
,KK/ 0
objectKK1 7
>KK7 8
SampleRequestsKK9 G
{KKH I
getKKJ M
;KKM N
privateKKO V
setKKW Z
;KKZ [
}KK\ ]
publicPP 
IDictionaryPP 
<PP  
MediaTypeHeaderValuePP /
,PP/ 0
objectPP1 7
>PP7 8
SampleResponsesPP9 H
{PPI J
getPPK N
;PPN O
privatePPP W
setPPX [
;PP[ \
}PP] ^
publicUU 

CollectionUU 
<UU 
stringUU  
>UU  !
ErrorMessagesUU" /
{UU0 1
getUU2 5
;UU5 6
privateUU7 >
setUU? B
;UUB C
}UUD E
privateWW 
staticWW 
IListWW 
<WW  
ParameterDescriptionWW 1
>WW1 2$
GetParameterDescriptionsWW3 K
(WWK L
ModelDescriptionWWL \
modelDescriptionWW] m
)WWm n
{XX 	'
ComplexTypeModelDescriptionYY ''
complexTypeModelDescriptionYY( C
=YYD E
modelDescriptionYYF V
asYYW Y'
ComplexTypeModelDescriptionYYZ u
;YYu v
ifZZ 
(ZZ '
complexTypeModelDescriptionZZ +
!=ZZ, .
nullZZ/ 3
)ZZ3 4
{[[ 
return\\ '
complexTypeModelDescription\\ 2
.\\2 3

Properties\\3 =
;\\= >
}]] &
CollectionModelDescription__ &&
collectionModelDescription__' A
=__B C
modelDescription__D T
as__U W&
CollectionModelDescription__X r
;__r s
if`` 
(`` &
collectionModelDescription`` *
!=``+ -
null``. 2
)``2 3
{aa '
complexTypeModelDescriptionbb +
=bb, -&
collectionModelDescriptionbb. H
.bbH I
ElementDescriptionbbI [
asbb\ ^'
ComplexTypeModelDescriptionbb_ z
;bbz {
ifcc 
(cc '
complexTypeModelDescriptioncc /
!=cc0 2
nullcc3 7
)cc7 8
{dd 
returnee '
complexTypeModelDescriptionee 6
.ee6 7

Propertiesee7 A
;eeA B
}ff 
}gg 
returnii 
nullii 
;ii 
}jj 	
}kk 
}ll ≤ò
°C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\HelpPageSampleGenerator.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

class #
HelpPageSampleGenerator (
{ 
public #
HelpPageSampleGenerator &
(& '
)' (
{ 	"
ActualHttpMessageTypes "
=# $
new% (

Dictionary) 3
<3 4
HelpPageSampleKey4 E
,E F
TypeG K
>K L
(L M
)M N
;N O
ActionSamples 
= 
new 

Dictionary  *
<* +
HelpPageSampleKey+ <
,< =
object> D
>D E
(E F
)F G
;G H
SampleObjects 
= 
new 

Dictionary  *
<* +
Type+ /
,/ 0
object1 7
>7 8
(8 9
)9 :
;: ;!
SampleObjectFactories !
=" #
new$ '
List( ,
<, -
Func- 1
<1 2#
HelpPageSampleGenerator2 I
,I J
TypeK O
,O P
objectQ W
>W X
>X Y
{   &
DefaultSampleObjectFactory!! *
,!!* +
}"" 
;"" 
}## 	
public(( 
IDictionary(( 
<(( 
HelpPageSampleKey(( ,
,((, -
Type((. 2
>((2 3"
ActualHttpMessageTypes((4 J
{((K L
get((M P
;((P Q
internal((R Z
set(([ ^
;((^ _
}((` a
public-- 
IDictionary-- 
<-- 
HelpPageSampleKey-- ,
,--, -
object--. 4
>--4 5
ActionSamples--6 C
{--D E
get--F I
;--I J
internal--K S
set--T W
;--W X
}--Y Z
public22 
IDictionary22 
<22 
Type22 
,22  
object22! '
>22' (
SampleObjects22) 6
{227 8
get229 <
;22< =
internal22> F
set22G J
;22J K
}22L M
[<< 	
SuppressMessage<<	 
(<< 
$str<< +
,<<+ ,
$str<<- ]
,<<] ^
Justification== 
=== 
$str== M
)==M N
]==N O
public>> 
IList>> 
<>> 
Func>> 
<>> #
HelpPageSampleGenerator>> 1
,>>1 2
Type>>3 7
,>>7 8
object>>9 ?
>>>? @
>>>@ A!
SampleObjectFactories>>B W
{>>X Y
get>>Z ]
;>>] ^
private>>_ f
set>>g j
;>>j k
}>>l m
publicEE 
IDictionaryEE 
<EE  
MediaTypeHeaderValueEE /
,EE/ 0
objectEE1 7
>EE7 8
GetSampleRequestsEE9 J
(EEJ K
ApiDescriptionEEK Y
apiEEZ ]
)EE] ^
{FF 	
returnGG 
	GetSampleGG 
(GG 
apiGG  
,GG  !
SampleDirectionGG" 1
.GG1 2
RequestGG2 9
)GG9 :
;GG: ;
}HH 	
publicOO 
IDictionaryOO 
<OO  
MediaTypeHeaderValueOO /
,OO/ 0
objectOO1 7
>OO7 8
GetSampleResponsesOO9 K
(OOK L
ApiDescriptionOOL Z
apiOO[ ^
)OO^ _
{PP 	
returnQQ 
	GetSampleQQ 
(QQ 
apiQQ  
,QQ  !
SampleDirectionQQ" 1
.QQ1 2
ResponseQQ2 :
)QQ: ;
;QQ; <
}RR 	
publicZZ 
virtualZZ 
IDictionaryZZ "
<ZZ" # 
MediaTypeHeaderValueZZ# 7
,ZZ7 8
objectZZ9 ?
>ZZ? @
	GetSampleZZA J
(ZZJ K
ApiDescriptionZZK Y
apiZZZ ]
,ZZ] ^
SampleDirectionZZ_ n
sampleDirectionZZo ~
)ZZ~ 
{[[ 	
if\\ 
(\\ 
api\\ 
==\\ 
null\\ 
)\\ 
{]] 
throw^^ 
new^^ !
ArgumentNullException^^ /
(^^/ 0
$str^^0 5
)^^5 6
;^^6 7
}__ 
string`` 
controllerName`` !
=``" #
api``$ '
.``' (
ActionDescriptor``( 8
.``8 9 
ControllerDescriptor``9 M
.``M N
ControllerName``N \
;``\ ]
stringaa 

actionNameaa 
=aa 
apiaa  #
.aa# $
ActionDescriptoraa$ 4
.aa4 5

ActionNameaa5 ?
;aa? @
IEnumerablebb 
<bb 
stringbb 
>bb 
parameterNamesbb  .
=bb/ 0
apibb1 4
.bb4 5!
ParameterDescriptionsbb5 J
.bbJ K
SelectbbK Q
(bbQ R
pbbR S
=>bbT V
pbbW X
.bbX Y
NamebbY ]
)bb] ^
;bb^ _

Collectioncc 
<cc 
MediaTypeFormattercc )
>cc) *

formatterscc+ 5
;cc5 6
Typedd 
typedd 
=dd 
ResolveTypedd #
(dd# $
apidd$ '
,dd' (
controllerNamedd) 7
,dd7 8

actionNamedd9 C
,ddC D
parameterNamesddE S
,ddS T
sampleDirectionddU d
,ddd e
outddf i

formattersddj t
)ddt u
;ddu v
varee 
samplesee 
=ee 
newee 

Dictionaryee (
<ee( ) 
MediaTypeHeaderValueee) =
,ee= >
objectee? E
>eeE F
(eeF G
)eeG H
;eeH I
varhh 
actionSampleshh 
=hh 
GetAllActionSampleshh  3
(hh3 4
controllerNamehh4 B
,hhB C

actionNamehhD N
,hhN O
parameterNameshhP ^
,hh^ _
sampleDirectionhh` o
)hho p
;hhp q
foreachii 
(ii 
varii 
actionSampleii %
inii& (
actionSamplesii) 6
)ii6 7
{jj 
sampleskk 
.kk 
Addkk 
(kk 
actionSamplekk (
.kk( )
Keykk) ,
.kk, -
	MediaTypekk- 6
,kk6 7
WrapSampleIfStringkk8 J
(kkJ K
actionSamplekkK W
.kkW X
ValuekkX ]
)kk] ^
)kk^ _
;kk_ `
}ll 
ifpp 
(pp 
typepp 
!=pp 
nullpp 
&&pp 
!pp  !
typeofpp! '
(pp' (
HttpResponseMessagepp( ;
)pp; <
.pp< =
IsAssignableFrompp= M
(ppM N
typeppN R
)ppR S
)ppS T
{qq 
objectrr 
sampleObjectrr #
=rr$ %
GetSampleObjectrr& 5
(rr5 6
typerr6 :
)rr: ;
;rr; <
foreachss 
(ss 
varss 
	formatterss &
inss' )

formattersss* 4
)ss4 5
{tt 
foreachuu 
(uu  
MediaTypeHeaderValueuu 1
	mediaTypeuu2 ;
inuu< >
	formatteruu? H
.uuH I
SupportedMediaTypesuuI \
)uu\ ]
{vv 
ifww 
(ww 
!ww 
samplesww $
.ww$ %
ContainsKeyww% 0
(ww0 1
	mediaTypeww1 :
)ww: ;
)ww; <
{xx 
objectyy "
sampleyy# )
=yy* +
GetActionSampleyy, ;
(yy; <
controllerNameyy< J
,yyJ K

actionNameyyL V
,yyV W
parameterNamesyyX f
,yyf g
typeyyh l
,yyl m
	formatteryyn w
,yyw x
	mediaType	yyy Ç
,
yyÇ É
sampleDirection
yyÑ ì
)
yyì î
;
yyî ï
if|| 
(||  
sample||  &
==||' )
null||* .
&&||/ 1
sampleObject||2 >
!=||? A
null||B F
)||F G
{}} 
sample~~  &
=~~' (+
WriteSampleObjectUsingFormatter~~) H
(~~H I
	formatter~~I R
,~~R S
sampleObject~~T `
,~~` a
type~~b f
,~~f g
	mediaType~~h q
)~~q r
;~~r s
} 
samples
ÅÅ #
.
ÅÅ# $
Add
ÅÅ$ '
(
ÅÅ' (
	mediaType
ÅÅ( 1
,
ÅÅ1 2 
WrapSampleIfString
ÅÅ3 E
(
ÅÅE F
sample
ÅÅF L
)
ÅÅL M
)
ÅÅM N
;
ÅÅN O
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 
return
áá 
samples
áá 
;
áá 
}
àà 	
public
ïï 
virtual
ïï 
object
ïï 
GetActionSample
ïï -
(
ïï- .
string
ïï. 4
controllerName
ïï5 C
,
ïïC D
string
ïïE K

actionName
ïïL V
,
ïïV W
IEnumerable
ïïX c
<
ïïc d
string
ïïd j
>
ïïj k
parameterNames
ïïl z
,
ïïz {
Typeïï| Ä
typeïïÅ Ö
,ïïÖ Ü"
MediaTypeFormatterïïá ô
	formatterïïö £
,ïï£ §$
MediaTypeHeaderValueïï• π
	mediaTypeïï∫ √
,ïï√ ƒ
SampleDirectionïï≈ ‘
sampleDirectionïï’ ‰
)ïï‰ Â
{
ññ 	
object
óó 
sample
óó 
;
óó 
if
ùù 
(
ùù 
ActionSamples
ùù 
.
ùù 
TryGetValue
ùù )
(
ùù) *
new
ùù* -
HelpPageSampleKey
ùù. ?
(
ùù? @
	mediaType
ùù@ I
,
ùùI J
sampleDirection
ùùK Z
,
ùùZ [
controllerName
ùù\ j
,
ùùj k

actionName
ùùl v
,
ùùv w
parameterNamesùùx Ü
)ùùÜ á
,ùùá à
outùùâ å
sampleùùç ì
)ùùì î
||ùùï ó
ActionSamples
ûû 
.
ûû 
TryGetValue
ûû )
(
ûû) *
new
ûû* -
HelpPageSampleKey
ûû. ?
(
ûû? @
	mediaType
ûû@ I
,
ûûI J
sampleDirection
ûûK Z
,
ûûZ [
controllerName
ûû\ j
,
ûûj k

actionName
ûûl v
,
ûûv w
new
ûûx {
[
ûû{ |
]
ûû| }
{
ûû~ 
$strûûÄ É
}ûûÑ Ö
)ûûÖ Ü
,ûûÜ á
outûûà ã
sampleûûå í
)ûûí ì
||ûûî ñ
ActionSamples
üü 
.
üü 
TryGetValue
üü )
(
üü) *
new
üü* -
HelpPageSampleKey
üü. ?
(
üü? @
	mediaType
üü@ I
,
üüI J
type
üüK O
)
üüO P
,
üüP Q
out
üüR U
sample
üüV \
)
üü\ ]
||
üü^ `
ActionSamples
†† 
.
†† 
TryGetValue
†† )
(
††) *
new
††* -
HelpPageSampleKey
††. ?
(
††? @
	mediaType
††@ I
)
††I J
,
††J K
out
††L O
sample
††P V
)
††V W
)
††W X
{
°° 
return
¢¢ 
sample
¢¢ 
;
¢¢ 
}
££ 
return
•• 
null
•• 
;
•• 
}
¶¶ 	
[
∞∞ 	
SuppressMessage
∞∞	 
(
∞∞ 
$str
∞∞ +
,
∞∞+ ,
$str
∞∞- U
,
∞∞U V
Justification
±± 
=
±± 
$str
±± z
)
±±z {
]
±±{ |
public
≤≤ 
virtual
≤≤ 
object
≤≤ 
GetSampleObject
≤≤ -
(
≤≤- .
Type
≤≤. 2
type
≤≤3 7
)
≤≤7 8
{
≥≥ 	
object
¥¥ 
sampleObject
¥¥ 
;
¥¥  
if
∂∂ 
(
∂∂ 
!
∂∂ 
SampleObjects
∂∂ 
.
∂∂ 
TryGetValue
∂∂ *
(
∂∂* +
type
∂∂+ /
,
∂∂/ 0
out
∂∂1 4
sampleObject
∂∂5 A
)
∂∂A B
)
∂∂B C
{
∑∑ 
foreach
ππ 
(
ππ 
Func
ππ 
<
ππ %
HelpPageSampleGenerator
ππ 5
,
ππ5 6
Type
ππ7 ;
,
ππ; <
object
ππ= C
>
ππC D
factory
ππE L
in
ππM O#
SampleObjectFactories
ππP e
)
ππe f
{
∫∫ 
if
ªª 
(
ªª 
factory
ªª 
==
ªª  "
null
ªª# '
)
ªª' (
{
ºº 
continue
ΩΩ  
;
ΩΩ  !
}
ææ 
try
¿¿ 
{
¡¡ 
sampleObject
¬¬ $
=
¬¬% &
factory
¬¬' .
(
¬¬. /
this
¬¬/ 3
,
¬¬3 4
type
¬¬5 9
)
¬¬9 :
;
¬¬: ;
if
√√ 
(
√√ 
sampleObject
√√ (
!=
√√) +
null
√√, 0
)
√√0 1
{
ƒƒ 
break
≈≈ !
;
≈≈! "
}
∆∆ 
}
«« 
catch
»» 
{
…… 
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 
return
œœ 
sampleObject
œœ 
;
œœ  
}
–– 	
public
◊◊ 
virtual
◊◊ 
Type
◊◊ +
ResolveHttpRequestMessageType
◊◊ 9
(
◊◊9 :
ApiDescription
◊◊: H
api
◊◊I L
)
◊◊L M
{
ÿÿ 	
string
ŸŸ 
controllerName
ŸŸ !
=
ŸŸ" #
api
ŸŸ$ '
.
ŸŸ' (
ActionDescriptor
ŸŸ( 8
.
ŸŸ8 9"
ControllerDescriptor
ŸŸ9 M
.
ŸŸM N
ControllerName
ŸŸN \
;
ŸŸ\ ]
string
⁄⁄ 

actionName
⁄⁄ 
=
⁄⁄ 
api
⁄⁄  #
.
⁄⁄# $
ActionDescriptor
⁄⁄$ 4
.
⁄⁄4 5

ActionName
⁄⁄5 ?
;
⁄⁄? @
IEnumerable
€€ 
<
€€ 
string
€€ 
>
€€ 
parameterNames
€€  .
=
€€/ 0
api
€€1 4
.
€€4 5#
ParameterDescriptions
€€5 J
.
€€J K
Select
€€K Q
(
€€Q R
p
€€R S
=>
€€T V
p
€€W X
.
€€X Y
Name
€€Y ]
)
€€] ^
;
€€^ _

Collection
‹‹ 
<
‹‹  
MediaTypeFormatter
‹‹ )
>
‹‹) *

formatters
‹‹+ 5
;
‹‹5 6
return
›› 
ResolveType
›› 
(
›› 
api
›› "
,
››" #
controllerName
››$ 2
,
››2 3

actionName
››4 >
,
››> ?
parameterNames
››@ N
,
››N O
SampleDirection
››P _
.
››_ `
Request
››` g
,
››g h
out
››i l

formatters
››m w
)
››w x
;
››x y
}
ﬁﬁ 	
[
ÈÈ 	
SuppressMessage
ÈÈ	 
(
ÈÈ 
$str
ÈÈ +
,
ÈÈ+ ,
$str
ÈÈ- H
,
ÈÈH I
Justification
ÈÈJ W
=
ÈÈX Y
$strÈÈZ Ñ
)ÈÈÑ Ö
]ÈÈÖ Ü
public
ÍÍ 
virtual
ÍÍ 
Type
ÍÍ 
ResolveType
ÍÍ '
(
ÍÍ' (
ApiDescription
ÍÍ( 6
api
ÍÍ7 :
,
ÍÍ: ;
string
ÍÍ< B
controllerName
ÍÍC Q
,
ÍÍQ R
string
ÍÍS Y

actionName
ÍÍZ d
,
ÍÍd e
IEnumerable
ÍÍf q
<
ÍÍq r
string
ÍÍr x
>
ÍÍx y
parameterNamesÍÍz à
,ÍÍà â
SampleDirectionÍÍä ô
sampleDirectionÍÍö ©
,ÍÍ© ™
outÍÍ´ Æ

CollectionÍÍØ π
<ÍÍπ ∫"
MediaTypeFormatterÍÍ∫ Ã
>ÍÍÃ Õ

formattersÍÍŒ ÿ
)ÍÍÿ Ÿ
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
Enum
ÏÏ 
.
ÏÏ 
	IsDefined
ÏÏ 
(
ÏÏ  
typeof
ÏÏ  &
(
ÏÏ& '
SampleDirection
ÏÏ' 6
)
ÏÏ6 7
,
ÏÏ7 8
sampleDirection
ÏÏ9 H
)
ÏÏH I
)
ÏÏI J
{
ÌÌ 
throw
ÓÓ 
new
ÓÓ *
InvalidEnumArgumentException
ÓÓ 6
(
ÓÓ6 7
$str
ÓÓ7 H
,
ÓÓH I
(
ÓÓJ K
int
ÓÓK N
)
ÓÓN O
sampleDirection
ÓÓO ^
,
ÓÓ^ _
typeof
ÓÓ` f
(
ÓÓf g
SampleDirection
ÓÓg v
)
ÓÓv w
)
ÓÓw x
;
ÓÓx y
}
ÔÔ 
if
 
(
 
api
 
==
 
null
 
)
 
{
ÒÒ 
throw
ÚÚ 
new
ÚÚ #
ArgumentNullException
ÚÚ /
(
ÚÚ/ 0
$str
ÚÚ0 5
)
ÚÚ5 6
;
ÚÚ6 7
}
ÛÛ 
Type
ÙÙ 
type
ÙÙ 
;
ÙÙ 
if
ıı 
(
ıı $
ActualHttpMessageTypes
ıı &
.
ıı& '
TryGetValue
ıı' 2
(
ıı2 3
new
ıı3 6
HelpPageSampleKey
ıı7 H
(
ııH I
sampleDirection
ııI X
,
ııX Y
controllerName
ııZ h
,
ııh i

actionName
ııj t
,
ııt u
parameterNamesııv Ñ
)ııÑ Ö
,ııÖ Ü
outııá ä
typeııã è
)ııè ê
||ııë ì$
ActualHttpMessageTypes
ˆˆ &
.
ˆˆ& '
TryGetValue
ˆˆ' 2
(
ˆˆ2 3
new
ˆˆ3 6
HelpPageSampleKey
ˆˆ7 H
(
ˆˆH I
sampleDirection
ˆˆI X
,
ˆˆX Y
controllerName
ˆˆZ h
,
ˆˆh i

actionName
ˆˆj t
,
ˆˆt u
new
ˆˆv y
[
ˆˆy z
]
ˆˆz {
{
ˆˆ| }
$strˆˆ~ Å
}ˆˆÇ É
)ˆˆÉ Ñ
,ˆˆÑ Ö
outˆˆÜ â
typeˆˆä é
)ˆˆé è
)ˆˆè ê
{
˜˜ 

Collection
˘˘ 
<
˘˘  
MediaTypeFormatter
˘˘ -
>
˘˘- .
newFormatters
˘˘/ <
=
˘˘= >
new
˘˘? B

Collection
˘˘C M
<
˘˘M N 
MediaTypeFormatter
˘˘N `
>
˘˘` a
(
˘˘a b
)
˘˘b c
;
˘˘c d
foreach
˙˙ 
(
˙˙ 
var
˙˙ 
	formatter
˙˙ &
in
˙˙' )
api
˙˙* -
.
˙˙- .
ActionDescriptor
˙˙. >
.
˙˙> ?
Configuration
˙˙? L
.
˙˙L M

Formatters
˙˙M W
)
˙˙W X
{
˚˚ 
if
¸¸ 
(
¸¸ 
IsFormatSupported
¸¸ )
(
¸¸) *
sampleDirection
¸¸* 9
,
¸¸9 :
	formatter
¸¸; D
,
¸¸D E
type
¸¸F J
)
¸¸J K
)
¸¸K L
{
˝˝ 
newFormatters
˛˛ %
.
˛˛% &
Add
˛˛& )
(
˛˛) *
	formatter
˛˛* 3
)
˛˛3 4
;
˛˛4 5
}
ˇˇ 
}
ÄÄ 

formatters
ÅÅ 
=
ÅÅ 
newFormatters
ÅÅ *
;
ÅÅ* +
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
switch
ÖÖ 
(
ÖÖ 
sampleDirection
ÖÖ '
)
ÖÖ' (
{
ÜÜ 
case
áá 
SampleDirection
áá (
.
áá( )
Request
áá) 0
:
áá0 1%
ApiParameterDescription
àà /"
requestBodyParameter
àà0 D
=
ààE F
api
ààG J
.
ààJ K#
ParameterDescriptions
ààK `
.
àà` a
FirstOrDefault
ààa o
(
àào p
p
ààp q
=>
ààr t
p
ààu v
.
ààv w
Source
ààw }
==àà~ Ä"
ApiParameterSourceààÅ ì
.ààì î
FromBodyààî ú
)ààú ù
;ààù û
type
ââ 
=
ââ "
requestBodyParameter
ââ 3
==
ââ4 6
null
ââ7 ;
?
ââ< =
null
ââ> B
:
ââC D"
requestBodyParameter
ââE Y
.
ââY Z!
ParameterDescriptor
ââZ m
.
ââm n
ParameterType
âân {
;
ââ{ |

formatters
ää "
=
ää# $
api
ää% (
.
ää( ),
SupportedRequestBodyFormatters
ää) G
;
ääG H
break
ãã 
;
ãã 
default
çç 
:
çç 
type
éé 
=
éé 
api
éé "
.
éé" #!
ResponseDescription
éé# 6
.
éé6 7
ResponseType
éé7 C
??
ééD F
api
ééG J
.
ééJ K!
ResponseDescription
ééK ^
.
éé^ _
DeclaredType
éé_ k
;
éék l

formatters
èè "
=
èè# $
api
èè% (
.
èè( ))
SupportedResponseFormatters
èè) D
;
èèD E
break
êê 
;
êê 
}
ëë 
}
íí 
return
îî 
type
îî 
;
îî 
}
ïï 	
[
üü 	
SuppressMessage
üü	 
(
üü 
$str
üü +
,
üü+ ,
$str
üü- U
,
üüU V
Justification
üüW d
=
üüe f
$strüüg î
)üüî ï
]üüï ñ
public
†† 
virtual
†† 
object
†† -
WriteSampleObjectUsingFormatter
†† =
(
††= > 
MediaTypeFormatter
††> P
	formatter
††Q Z
,
††Z [
object
††\ b
value
††c h
,
††h i
Type
††j n
type
††o s
,
††s t#
MediaTypeHeaderValue††u â
	mediaType††ä ì
)††ì î
{
°° 	
if
¢¢ 
(
¢¢ 
	formatter
¢¢ 
==
¢¢ 
null
¢¢ !
)
¢¢! "
{
££ 
throw
§§ 
new
§§ #
ArgumentNullException
§§ /
(
§§/ 0
$str
§§0 ;
)
§§; <
;
§§< =
}
•• 
if
¶¶ 
(
¶¶ 
	mediaType
¶¶ 
==
¶¶ 
null
¶¶ !
)
¶¶! "
{
ßß 
throw
®® 
new
®® #
ArgumentNullException
®® /
(
®®/ 0
$str
®®0 ;
)
®®; <
;
®®< =
}
©© 
object
´´ 
sample
´´ 
=
´´ 
String
´´ "
.
´´" #
Empty
´´# (
;
´´( )
MemoryStream
¨¨ 
ms
¨¨ 
=
¨¨ 
null
¨¨ "
;
¨¨" #
HttpContent
≠≠ 
content
≠≠ 
=
≠≠  !
null
≠≠" &
;
≠≠& '
try
ÆÆ 
{
ØØ 
if
∞∞ 
(
∞∞ 
	formatter
∞∞ 
.
∞∞ 
CanWriteType
∞∞ *
(
∞∞* +
type
∞∞+ /
)
∞∞/ 0
)
∞∞0 1
{
±± 
ms
≤≤ 
=
≤≤ 
new
≤≤ 
MemoryStream
≤≤ )
(
≤≤) *
)
≤≤* +
;
≤≤+ ,
content
≥≥ 
=
≥≥ 
new
≥≥ !
ObjectContent
≥≥" /
(
≥≥/ 0
type
≥≥0 4
,
≥≥4 5
value
≥≥6 ;
,
≥≥; <
	formatter
≥≥= F
,
≥≥F G
	mediaType
≥≥H Q
)
≥≥Q R
;
≥≥R S
	formatter
¥¥ 
.
¥¥  
WriteToStreamAsync
¥¥ 0
(
¥¥0 1
type
¥¥1 5
,
¥¥5 6
value
¥¥7 <
,
¥¥< =
ms
¥¥> @
,
¥¥@ A
content
¥¥B I
,
¥¥I J
null
¥¥K O
)
¥¥O P
.
¥¥P Q
Wait
¥¥Q U
(
¥¥U V
)
¥¥V W
;
¥¥W X
ms
µµ 
.
µµ 
Position
µµ 
=
µµ  !
$num
µµ" #
;
µµ# $
StreamReader
∂∂  
reader
∂∂! '
=
∂∂( )
new
∂∂* -
StreamReader
∂∂. :
(
∂∂: ;
ms
∂∂; =
)
∂∂= >
;
∂∂> ?
string
∑∑ $
serializedSampleString
∑∑ 1
=
∑∑2 3
reader
∑∑4 :
.
∑∑: ;
	ReadToEnd
∑∑; D
(
∑∑D E
)
∑∑E F
;
∑∑F G
if
∏∏ 
(
∏∏ 
	mediaType
∏∏ !
.
∏∏! "
	MediaType
∏∏" +
.
∏∏+ ,
ToUpperInvariant
∏∏, <
(
∏∏< =
)
∏∏= >
.
∏∏> ?
Contains
∏∏? G
(
∏∏G H
$str
∏∏H M
)
∏∏M N
)
∏∏N O
{
ππ $
serializedSampleString
∫∫ .
=
∫∫/ 0
TryFormatXml
∫∫1 =
(
∫∫= >$
serializedSampleString
∫∫> T
)
∫∫T U
;
∫∫U V
}
ªª 
else
ºº 
if
ºº 
(
ºº 
	mediaType
ºº &
.
ºº& '
	MediaType
ºº' 0
.
ºº0 1
ToUpperInvariant
ºº1 A
(
ººA B
)
ººB C
.
ººC D
Contains
ººD L
(
ººL M
$str
ººM S
)
ººS T
)
ººT U
{
ΩΩ $
serializedSampleString
ææ .
=
ææ/ 0
TryFormatJson
ææ1 >
(
ææ> ?$
serializedSampleString
ææ? U
)
ææU V
;
ææV W
}
øø 
sample
¡¡ 
=
¡¡ 
new
¡¡  

TextSample
¡¡! +
(
¡¡+ ,$
serializedSampleString
¡¡, B
)
¡¡B C
;
¡¡C D
}
¬¬ 
else
√√ 
{
ƒƒ 
sample
≈≈ 
=
≈≈ 
new
≈≈  
InvalidSample
≈≈! .
(
≈≈. /
String
≈≈/ 5
.
≈≈5 6
Format
≈≈6 <
(
≈≈< =
CultureInfo
∆∆ #
.
∆∆# $
CurrentCulture
∆∆$ 2
,
∆∆2 3
$str
«« }
,
««} ~
	mediaType
»» !
,
»»! "
	formatter
…… !
.
……! "
GetType
……" )
(
……) *
)
……* +
.
……+ ,
Name
……, 0
,
……0 1
type
   
.
   
Name
   !
)
  ! "
)
  " #
;
  # $
}
ÀÀ 
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
	Exception
ÕÕ 
e
ÕÕ 
)
ÕÕ 
{
ŒŒ 
sample
œœ 
=
œœ 
new
œœ 
InvalidSample
œœ *
(
œœ* +
String
œœ+ 1
.
œœ1 2
Format
œœ2 8
(
œœ8 9
CultureInfo
–– 
.
––  
CurrentCulture
––  .
,
––. /
$str—— è
,——è ê
	formatter
““ 
.
““ 
GetType
““ %
(
““% &
)
““& '
.
““' (
Name
““( ,
,
““, -
	mediaType
”” 
.
”” 
	MediaType
”” '
,
””' (
UnwrapException
‘‘ #
(
‘‘# $
e
‘‘$ %
)
‘‘% &
.
‘‘& '
Message
‘‘' .
)
‘‘. /
)
‘‘/ 0
;
‘‘0 1
}
’’ 
finally
÷÷ 
{
◊◊ 
if
ÿÿ 
(
ÿÿ 
ms
ÿÿ 
!=
ÿÿ 
null
ÿÿ 
)
ÿÿ 
{
ŸŸ 
ms
⁄⁄ 
.
⁄⁄ 
Dispose
⁄⁄ 
(
⁄⁄ 
)
⁄⁄  
;
⁄⁄  !
}
€€ 
if
‹‹ 
(
‹‹ 
content
‹‹ 
!=
‹‹ 
null
‹‹ #
)
‹‹# $
{
›› 
content
ﬁﬁ 
.
ﬁﬁ 
Dispose
ﬁﬁ #
(
ﬁﬁ# $
)
ﬁﬁ$ %
;
ﬁﬁ% &
}
ﬂﬂ 
}
‡‡ 
return
‚‚ 
sample
‚‚ 
;
‚‚ 
}
„„ 	
internal
ÂÂ 
static
ÂÂ 
	Exception
ÂÂ !
UnwrapException
ÂÂ" 1
(
ÂÂ1 2
	Exception
ÂÂ2 ;
	exception
ÂÂ< E
)
ÂÂE F
{
ÊÊ 	 
AggregateException
ÁÁ  
aggregateException
ÁÁ 1
=
ÁÁ2 3
	exception
ÁÁ4 =
as
ÁÁ> @ 
AggregateException
ÁÁA S
;
ÁÁS T
if
ËË 
(
ËË  
aggregateException
ËË "
!=
ËË# %
null
ËË& *
)
ËË* +
{
ÈÈ 
return
ÍÍ  
aggregateException
ÍÍ )
.
ÍÍ) *
Flatten
ÍÍ* 1
(
ÍÍ1 2
)
ÍÍ2 3
.
ÍÍ3 4
InnerException
ÍÍ4 B
;
ÍÍB C
}
ÎÎ 
return
ÏÏ 
	exception
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
private
 
static
 
object
 (
DefaultSampleObjectFactory
 8
(
8 9%
HelpPageSampleGenerator
9 P
sampleGenerator
Q `
,
` a
Type
b f
type
g k
)
k l
{
ÒÒ 	
ObjectGenerator
ÛÛ 
objectGenerator
ÛÛ +
=
ÛÛ, -
new
ÛÛ. 1
ObjectGenerator
ÛÛ2 A
(
ÛÛA B
)
ÛÛB C
;
ÛÛC D
return
ÙÙ 
objectGenerator
ÙÙ "
.
ÙÙ" #
GenerateObject
ÙÙ# 1
(
ÙÙ1 2
type
ÙÙ2 6
)
ÙÙ6 7
;
ÙÙ7 8
}
ıı 	
[
˜˜ 	
SuppressMessage
˜˜	 
(
˜˜ 
$str
˜˜ +
,
˜˜+ ,
$str
˜˜- U
,
˜˜U V
Justification
˜˜W d
=
˜˜e f
$str˜˜g ü
)˜˜ü †
]˜˜† °
private
¯¯ 
static
¯¯ 
string
¯¯ 
TryFormatJson
¯¯ +
(
¯¯+ ,
string
¯¯, 2
str
¯¯3 6
)
¯¯6 7
{
˘˘ 	
try
˙˙ 
{
˚˚ 
object
¸¸ 

parsedJson
¸¸ !
=
¸¸" #
JsonConvert
¸¸$ /
.
¸¸/ 0
DeserializeObject
¸¸0 A
(
¸¸A B
str
¸¸B E
)
¸¸E F
;
¸¸F G
return
˝˝ 
JsonConvert
˝˝ "
.
˝˝" #
SerializeObject
˝˝# 2
(
˝˝2 3

parsedJson
˝˝3 =
,
˝˝= >

Formatting
˝˝? I
.
˝˝I J
Indented
˝˝J R
)
˝˝R S
;
˝˝S T
}
˛˛ 
catch
ˇˇ 
{
ÄÄ 
return
ÇÇ 
str
ÇÇ 
;
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
[
ÜÜ 	
SuppressMessage
ÜÜ	 
(
ÜÜ 
$str
ÜÜ +
,
ÜÜ+ ,
$str
ÜÜ- U
,
ÜÜU V
Justification
ÜÜW d
=
ÜÜe f
$strÜÜg ü
)ÜÜü †
]ÜÜ† °
private
áá 
static
áá 
string
áá 
TryFormatXml
áá *
(
áá* +
string
áá+ 1
str
áá2 5
)
áá5 6
{
àà 	
try
ââ 
{
ää 
	XDocument
ãã 
xml
ãã 
=
ãã 
	XDocument
ãã  )
.
ãã) *
Parse
ãã* /
(
ãã/ 0
str
ãã0 3
)
ãã3 4
;
ãã4 5
return
åå 
xml
åå 
.
åå 
ToString
åå #
(
åå# $
)
åå$ %
;
åå% &
}
çç 
catch
éé 
{
èè 
return
ëë 
str
ëë 
;
ëë 
}
íí 
}
ìì 	
private
ïï 
static
ïï 
bool
ïï 
IsFormatSupported
ïï -
(
ïï- .
SampleDirection
ïï. =
sampleDirection
ïï> M
,
ïïM N 
MediaTypeFormatter
ïïO a
	formatter
ïïb k
,
ïïk l
Type
ïïm q
type
ïïr v
)
ïïv w
{
ññ 	
switch
óó 
(
óó 
sampleDirection
óó #
)
óó# $
{
òò 
case
ôô 
SampleDirection
ôô $
.
ôô$ %
Request
ôô% ,
:
ôô, -
return
öö 
	formatter
öö $
.
öö$ %
CanReadType
öö% 0
(
öö0 1
type
öö1 5
)
öö5 6
;
öö6 7
case
õõ 
SampleDirection
õõ $
.
õõ$ %
Response
õõ% -
:
õõ- .
return
úú 
	formatter
úú $
.
úú$ %
CanWriteType
úú% 1
(
úú1 2
type
úú2 6
)
úú6 7
;
úú7 8
}
ùù 
return
ûû 
false
ûû 
;
ûû 
}
üü 	
private
°° 
IEnumerable
°° 
<
°° 
KeyValuePair
°° (
<
°°( )
HelpPageSampleKey
°°) :
,
°°: ;
object
°°< B
>
°°B C
>
°°C D!
GetAllActionSamples
°°E X
(
°°X Y
string
°°Y _
controllerName
°°` n
,
°°n o
string
°°p v

actionName°°w Å
,°°Å Ç
IEnumerable°°É é
<°°é è
string°°è ï
>°°ï ñ
parameterNames°°ó •
,°°• ¶
SampleDirection°°ß ∂
sampleDirection°°∑ ∆
)°°∆ «
{
¢¢ 	
HashSet
££ 
<
££ 
string
££ 
>
££ 
parameterNamesSet
££ -
=
££. /
new
££0 3
HashSet
££4 ;
<
££; <
string
££< B
>
££B C
(
££C D
parameterNames
££D R
,
££R S
StringComparer
££T b
.
££b c
OrdinalIgnoreCase
££c t
)
££t u
;
££u v
foreach
§§ 
(
§§ 
var
§§ 
sample
§§ 
in
§§  "
ActionSamples
§§# 0
)
§§0 1
{
•• 
HelpPageSampleKey
¶¶ !
	sampleKey
¶¶" +
=
¶¶, -
sample
¶¶. 4
.
¶¶4 5
Key
¶¶5 8
;
¶¶8 9
if
ßß 
(
ßß 
String
ßß 
.
ßß 
Equals
ßß !
(
ßß! "
controllerName
ßß" 0
,
ßß0 1
	sampleKey
ßß2 ;
.
ßß; <
ControllerName
ßß< J
,
ßßJ K
StringComparison
ßßL \
.
ßß\ ]
OrdinalIgnoreCase
ßß] n
)
ßßn o
&&
ßßp r
String
®® 
.
®® 
Equals
®® !
(
®®! "

actionName
®®" ,
,
®®, -
	sampleKey
®®. 7
.
®®7 8

ActionName
®®8 B
,
®®B C
StringComparison
®®D T
.
®®T U
OrdinalIgnoreCase
®®U f
)
®®f g
&&
®®h j
(
©© 
	sampleKey
©© 
.
©© 
ParameterNames
©© -
.
©©- .
	SetEquals
©©. 7
(
©©7 8
new
©©8 ;
[
©©; <
]
©©< =
{
©©> ?
$str
©©@ C
}
©©D E
)
©©E F
||
©©G I
parameterNamesSet
©©J [
.
©©[ \
	SetEquals
©©\ e
(
©©e f
	sampleKey
©©f o
.
©©o p
ParameterNames
©©p ~
)
©©~ 
)©© Ä
&&©©Å É
sampleDirection
™™ #
==
™™$ &
	sampleKey
™™' 0
.
™™0 1
SampleDirection
™™1 @
)
™™@ A
{
´´ 
yield
¨¨ 
return
¨¨  
sample
¨¨! '
;
¨¨' (
}
≠≠ 
}
ÆÆ 
}
ØØ 	
private
±± 
static
±± 
object
±±  
WrapSampleIfString
±± 0
(
±±0 1
object
±±1 7
sample
±±8 >
)
±±> ?
{
≤≤ 	
string
≥≥ 
stringSample
≥≥ 
=
≥≥  !
sample
≥≥" (
as
≥≥) +
string
≥≥, 2
;
≥≥2 3
if
¥¥ 
(
¥¥ 
stringSample
¥¥ 
!=
¥¥ 
null
¥¥  $
)
¥¥$ %
{
µµ 
return
∂∂ 
new
∂∂ 

TextSample
∂∂ %
(
∂∂% &
stringSample
∂∂& 2
)
∂∂2 3
;
∂∂3 4
}
∑∑ 
return
ππ 
sample
ππ 
;
ππ 
}
∫∫ 	
}
ªª 
}ºº ºU
õC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\HelpPageSampleKey.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

class 
HelpPageSampleKey "
{ 
public 
HelpPageSampleKey  
(  ! 
MediaTypeHeaderValue! 5
	mediaType6 ?
)? @
{ 	
if 
( 
	mediaType 
== 
null !
)! "
{ 
throw 
new !
ArgumentNullException /
(/ 0
$str0 ;
); <
;< =
} 

ActionName 
= 
String 
.  
Empty  %
;% &
ControllerName 
= 
String #
.# $
Empty$ )
;) *
	MediaType 
= 
	mediaType !
;! "
ParameterNames 
= 
new  
HashSet! (
<( )
string) /
>/ 0
(0 1
StringComparer1 ?
.? @
OrdinalIgnoreCase@ Q
)Q R
;R S
} 	
public## 
HelpPageSampleKey##  
(##  ! 
MediaTypeHeaderValue##! 5
	mediaType##6 ?
,##? @
Type##A E
type##F J
)##J K
:$$ 
this$$ 
($$ 
	mediaType$$ 
)$$ 
{%% 	
if&& 
(&& 
type&& 
==&& 
null&& 
)&& 
{'' 
throw(( 
new(( !
ArgumentNullException(( /
(((/ 0
$str((0 6
)((6 7
;((7 8
})) 
ParameterType++ 
=++ 
type++  
;++  !
},, 	
public55 
HelpPageSampleKey55  
(55  !
SampleDirection55! 0
sampleDirection551 @
,55@ A
string55B H
controllerName55I W
,55W X
string55Y _

actionName55` j
,55j k
IEnumerable55l w
<55w x
string55x ~
>55~ 
parameterNames
55Ä é
)
55é è
{66 	
if77 
(77 
!77 
Enum77 
.77 
	IsDefined77 
(77  
typeof77  &
(77& '
SampleDirection77' 6
)776 7
,777 8
sampleDirection779 H
)77H I
)77I J
{88 
throw99 
new99 (
InvalidEnumArgumentException99 6
(996 7
$str997 H
,99H I
(99J K
int99K N
)99N O
sampleDirection99O ^
,99^ _
typeof99` f
(99f g
SampleDirection99g v
)99v w
)99w x
;99x y
}:: 
if;; 
(;; 
controllerName;; 
==;; !
null;;" &
);;& '
{<< 
throw== 
new== !
ArgumentNullException== /
(==/ 0
$str==0 @
)==@ A
;==A B
}>> 
if?? 
(?? 

actionName?? 
==?? 
null?? "
)??" #
{@@ 
throwAA 
newAA !
ArgumentNullExceptionAA /
(AA/ 0
$strAA0 <
)AA< =
;AA= >
}BB 
ifCC 
(CC 
parameterNamesCC 
==CC !
nullCC" &
)CC& '
{DD 
throwEE 
newEE !
ArgumentNullExceptionEE /
(EE/ 0
$strEE0 @
)EE@ A
;EEA B
}FF 
ControllerNameHH 
=HH 
controllerNameHH +
;HH+ ,

ActionNameII 
=II 

actionNameII #
;II# $
ParameterNamesJJ 
=JJ 
newJJ  
HashSetJJ! (
<JJ( )
stringJJ) /
>JJ/ 0
(JJ0 1
parameterNamesJJ1 ?
,JJ? @
StringComparerJJA O
.JJO P
OrdinalIgnoreCaseJJP a
)JJa b
;JJb c
SampleDirectionKK 
=KK 
sampleDirectionKK -
;KK- .
}LL 	
publicVV 
HelpPageSampleKeyVV  
(VV  ! 
MediaTypeHeaderValueVV! 5
	mediaTypeVV6 ?
,VV? @
SampleDirectionVVA P
sampleDirectionVVQ `
,VV` a
stringVVb h
controllerNameVVi w
,VVw x
stringVVy 

actionName
VVÄ ä
,
VVä ã
IEnumerable
VVå ó
<
VVó ò
string
VVò û
>
VVû ü
parameterNames
VV† Æ
)
VVÆ Ø
:WW 
thisWW 
(WW 
sampleDirectionWW "
,WW" #
controllerNameWW$ 2
,WW2 3

actionNameWW4 >
,WW> ?
parameterNamesWW@ N
)WWN O
{XX 	
ifYY 
(YY 
	mediaTypeYY 
==YY 
nullYY !
)YY! "
{ZZ 
throw[[ 
new[[ !
ArgumentNullException[[ /
([[/ 0
$str[[0 ;
)[[; <
;[[< =
}\\ 
	MediaType^^ 
=^^ 
	mediaType^^ !
;^^! "
}__ 	
publicgg 
stringgg 
ControllerNamegg $
{gg% &
getgg' *
;gg* +
privategg, 3
setgg4 7
;gg7 8
}gg9 :
publicoo 
stringoo 

ActionNameoo  
{oo! "
getoo# &
;oo& '
privateoo( /
setoo0 3
;oo3 4
}oo5 6
publicww  
MediaTypeHeaderValueww #
	MediaTypeww$ -
{ww. /
getww0 3
;ww3 4
privateww5 <
setww= @
;ww@ A
}wwB C
public|| 
HashSet|| 
<|| 
string|| 
>|| 
ParameterNames|| -
{||. /
get||0 3
;||3 4
private||5 <
set||= @
;||@ A
}||B C
public~~ 
Type~~ 
ParameterType~~ !
{~~" #
get~~$ '
;~~' (
private~~) 0
set~~1 4
;~~4 5
}~~6 7
public
ÉÉ 
SampleDirection
ÉÉ 
?
ÉÉ 
SampleDirection
ÉÉ  /
{
ÉÉ0 1
get
ÉÉ2 5
;
ÉÉ5 6
private
ÉÉ7 >
set
ÉÉ? B
;
ÉÉB C
}
ÉÉD E
public
ÖÖ 
override
ÖÖ 
bool
ÖÖ 
Equals
ÖÖ #
(
ÖÖ# $
object
ÖÖ$ *
obj
ÖÖ+ .
)
ÖÖ. /
{
ÜÜ 	
HelpPageSampleKey
áá 
otherKey
áá &
=
áá' (
obj
áá) ,
as
áá- /
HelpPageSampleKey
áá0 A
;
ááA B
if
àà 
(
àà 
otherKey
àà 
==
àà 
null
àà  
)
àà  !
{
ââ 
return
ää 
false
ää 
;
ää 
}
ãã 
return
çç 
String
çç 
.
çç 
Equals
çç  
(
çç  !
ControllerName
çç! /
,
çç/ 0
otherKey
çç1 9
.
çç9 :
ControllerName
çç: H
,
ççH I
StringComparison
ççJ Z
.
ççZ [
OrdinalIgnoreCase
çç[ l
)
ççl m
&&
ççn p
String
éé 
.
éé 
Equals
éé 
(
éé 

ActionName
éé (
,
éé( )
otherKey
éé* 2
.
éé2 3

ActionName
éé3 =
,
éé= >
StringComparison
éé? O
.
ééO P
OrdinalIgnoreCase
ééP a
)
ééa b
&&
ééc e
(
èè 
	MediaType
èè 
==
èè 
otherKey
èè &
.
èè& '
	MediaType
èè' 0
||
èè1 3
(
èè4 5
	MediaType
èè5 >
!=
èè? A
null
èèB F
&&
èèG I
	MediaType
èèJ S
.
èèS T
Equals
èèT Z
(
èèZ [
otherKey
èè[ c
.
èèc d
	MediaType
èèd m
)
èèm n
)
èèn o
)
èèo p
&&
èèq s
ParameterType
êê 
==
êê  
otherKey
êê! )
.
êê) *
ParameterType
êê* 7
&&
êê8 :
SampleDirection
ëë 
==
ëë  "
otherKey
ëë# +
.
ëë+ ,
SampleDirection
ëë, ;
&&
ëë< >
ParameterNames
íí 
.
íí 
	SetEquals
íí (
(
íí( )
otherKey
íí) 1
.
íí1 2
ParameterNames
íí2 @
)
íí@ A
;
ííA B
}
ìì 	
public
ïï 
override
ïï 
int
ïï 
GetHashCode
ïï '
(
ïï' (
)
ïï( )
{
ññ 	
int
óó 
hashCode
óó 
=
óó 
ControllerName
óó )
.
óó) *
ToUpperInvariant
óó* :
(
óó: ;
)
óó; <
.
óó< =
GetHashCode
óó= H
(
óóH I
)
óóI J
^
óóK L

ActionName
óóM W
.
óóW X
ToUpperInvariant
óóX h
(
óóh i
)
óói j
.
óój k
GetHashCode
óók v
(
óóv w
)
óów x
;
óóx y
if
òò 
(
òò 
	MediaType
òò 
!=
òò 
null
òò !
)
òò! "
{
ôô 
hashCode
öö 
^=
öö 
	MediaType
öö %
.
öö% &
GetHashCode
öö& 1
(
öö1 2
)
öö2 3
;
öö3 4
}
õõ 
if
úú 
(
úú 
SampleDirection
úú 
!=
úú  "
null
úú# '
)
úú' (
{
ùù 
hashCode
ûû 
^=
ûû 
SampleDirection
ûû +
.
ûû+ ,
GetHashCode
ûû, 7
(
ûû7 8
)
ûû8 9
;
ûû9 :
}
üü 
if
†† 
(
†† 
ParameterType
†† 
!=
††  
null
††! %
)
††% &
{
°° 
hashCode
¢¢ 
^=
¢¢ 
ParameterType
¢¢ )
.
¢¢) *
GetHashCode
¢¢* 5
(
¢¢5 6
)
¢¢6 7
;
¢¢7 8
}
££ 
foreach
§§ 
(
§§ 
string
§§ 
parameterName
§§ )
in
§§* ,
ParameterNames
§§- ;
)
§§; <
{
•• 
hashCode
¶¶ 
^=
¶¶ 
parameterName
¶¶ )
.
¶¶) *
ToUpperInvariant
¶¶* :
(
¶¶: ;
)
¶¶; <
.
¶¶< =
GetHashCode
¶¶= H
(
¶¶H I
)
¶¶I J
;
¶¶J K
}
ßß 
return
©© 
hashCode
©© 
;
©© 
}
™™ 	
}
´´ 
}¨¨ À
ïC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\ImageSample.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

class 
ImageSample 
{		 
public 
ImageSample 
( 
string !
src" %
)% &
{ 	
if 
( 
src 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
$str0 5
)5 6
;6 7
} 
Src 
= 
src 
; 
} 	
public 
string 
Src 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
ImageSample 
other 
= 
obj  #
as$ &
ImageSample' 2
;2 3
return 
other 
!= 
null  
&&! #
Src$ '
==( *
other+ 0
.0 1
Src1 4
;4 5
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{   	
return!! 
Src!! 
.!! 
GetHashCode!! "
(!!" #
)!!# $
;!!$ %
}"" 	
public$$ 
override$$ 
string$$ 
ToString$$ '
($$' (
)$$( )
{%% 	
return&& 
Src&& 
;&& 
}'' 	
}(( 
})) ¶
óC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\InvalidSample.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

class 
InvalidSample 
{		 
public

 
InvalidSample

 
(

 
string

 #
errorMessage

$ 0
)

0 1
{ 	
if 
( 
errorMessage 
== 
null  $
)$ %
{ 
throw 
new !
ArgumentNullException /
(/ 0
$str0 >
)> ?
;? @
} 
ErrorMessage 
= 
errorMessage '
;' (
} 	
public 
string 
ErrorMessage "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
InvalidSample 
other 
=  !
obj" %
as& (
InvalidSample) 6
;6 7
return 
other 
!= 
null  
&&! #
ErrorMessage$ 0
==1 3
other4 9
.9 :
ErrorMessage: F
;F G
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
ErrorMessage 
.  
GetHashCode  +
(+ ,
), -
;- .
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
return"" 
ErrorMessage"" 
;""  
}## 	
}$$ 
}%% √á
ôC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\ObjectGenerator.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Areas		 #
.		# $
HelpPage		$ ,
{

 
public 

class 
ObjectGenerator  
{ 
internal 
const 
int !
DefaultCollectionSize 0
=1 2
$num3 4
;4 5
private 
readonly %
SimpleTypeObjectGenerator 2!
SimpleObjectGenerator3 H
=I J
newK N%
SimpleTypeObjectGeneratorO h
(h i
)i j
;j k
public!! 
object!! 
GenerateObject!! $
(!!$ %
Type!!% )
type!!* .
)!!. /
{"" 	
return## 
GenerateObject## !
(##! "
type##" &
,##& '
new##( +

Dictionary##, 6
<##6 7
Type##7 ;
,##; <
object##= C
>##C D
(##D E
)##E F
)##F G
;##G H
}$$ 	
[&& 	
SuppressMessage&&	 
(&& 
$str&& +
,&&+ ,
$str&&- U
,&&U V
Justification&&W d
=&&e f
$str	&&g °
)
&&° ¢
]
&&¢ £
private'' 
object'' 
GenerateObject'' %
(''% &
Type''& *
type''+ /
,''/ 0

Dictionary''1 ;
<''; <
Type''< @
,''@ A
object''B H
>''H I#
createdObjectReferences''J a
)''a b
{(( 	
try)) 
{** 
if++ 
(++ %
SimpleTypeObjectGenerator++ -
.++- .
CanGenerateObject++. ?
(++? @
type++@ D
)++D E
)++E F
{,, 
return-- !
SimpleObjectGenerator-- 0
.--0 1
GenerateObject--1 ?
(--? @
type--@ D
)--D E
;--E F
}.. 
if00 
(00 
type00 
.00 
IsArray00  
)00  !
{11 
return22 
GenerateArray22 (
(22( )
type22) -
,22- .!
DefaultCollectionSize22/ D
,22D E#
createdObjectReferences22F ]
)22] ^
;22^ _
}33 
if55 
(55 
type55 
.55 
IsGenericType55 &
)55& '
{66 
return77 
GenerateGenericType77 .
(77. /
type77/ 3
,773 4!
DefaultCollectionSize775 J
,77J K#
createdObjectReferences77L c
)77c d
;77d e
}88 
if:: 
(:: 
type:: 
==:: 
typeof:: "
(::" #
IDictionary::# .
)::. /
)::/ 0
{;; 
return<< 
GenerateDictionary<< -
(<<- .
typeof<<. 4
(<<4 5
	Hashtable<<5 >
)<<> ?
,<<? @!
DefaultCollectionSize<<A V
,<<V W#
createdObjectReferences<<X o
)<<o p
;<<p q
}== 
if?? 
(?? 
typeof?? 
(?? 
IDictionary?? &
)??& '
.??' (
IsAssignableFrom??( 8
(??8 9
type??9 =
)??= >
)??> ?
{@@ 
returnAA 
GenerateDictionaryAA -
(AA- .
typeAA. 2
,AA2 3!
DefaultCollectionSizeAA4 I
,AAI J#
createdObjectReferencesAAK b
)AAb c
;AAc d
}BB 
ifDD 
(DD 
typeDD 
==DD 
typeofDD "
(DD" #
IListDD# (
)DD( )
||DD* ,
typeEE 
==EE 
typeofEE "
(EE" #
IEnumerableEE# .
)EE. /
||EE0 2
typeFF 
==FF 
typeofFF "
(FF" #
ICollectionFF# .
)FF. /
)FF/ 0
{GG 
returnHH 
GenerateCollectionHH -
(HH- .
typeofHH. 4
(HH4 5
	ArrayListHH5 >
)HH> ?
,HH? @!
DefaultCollectionSizeHHA V
,HHV W#
createdObjectReferencesHHX o
)HHo p
;HHp q
}II 
ifKK 
(KK 
typeofKK 
(KK 
IListKK  
)KK  !
.KK! "
IsAssignableFromKK" 2
(KK2 3
typeKK3 7
)KK7 8
)KK8 9
{LL 
returnMM 
GenerateCollectionMM -
(MM- .
typeMM. 2
,MM2 3!
DefaultCollectionSizeMM4 I
,MMI J#
createdObjectReferencesMMK b
)MMb c
;MMc d
}NN 
ifPP 
(PP 
typePP 
==PP 
typeofPP "
(PP" #

IQueryablePP# -
)PP- .
)PP. /
{QQ 
returnRR 
GenerateQueryableRR ,
(RR, -
typeRR- 1
,RR1 2!
DefaultCollectionSizeRR3 H
,RRH I#
createdObjectReferencesRRJ a
)RRa b
;RRb c
}SS 
ifUU 
(UU 
typeUU 
.UU 
IsEnumUU 
)UU  
{VV 
returnWW 
GenerateEnumWW '
(WW' (
typeWW( ,
)WW, -
;WW- .
}XX 
ifZZ 
(ZZ 
typeZZ 
.ZZ 
IsPublicZZ !
||ZZ" $
typeZZ% )
.ZZ) *
IsNestedPublicZZ* 8
)ZZ8 9
{[[ 
return\\ !
GenerateComplexObject\\ 0
(\\0 1
type\\1 5
,\\5 6#
createdObjectReferences\\7 N
)\\N O
;\\O P
}]] 
}^^ 
catch__ 
{`` 
returnbb 
nullbb 
;bb 
}cc 
returnee 
nullee 
;ee 
}ff 	
privatehh 
statichh 
objecthh 
GenerateGenericTypehh 1
(hh1 2
Typehh2 6
typehh7 ;
,hh; <
inthh= @
collectionSizehhA O
,hhO P

DictionaryhhQ [
<hh[ \
Typehh\ `
,hh` a
objecthhb h
>hhh i$
createdObjectReferences	hhj Å
)
hhÅ Ç
{ii 	
Typejj !
genericTypeDefinitionjj &
=jj' (
typejj) -
.jj- .$
GetGenericTypeDefinitionjj. F
(jjF G
)jjG H
;jjH I
ifkk 
(kk !
genericTypeDefinitionkk %
==kk& (
typeofkk) /
(kk/ 0
Nullablekk0 8
<kk8 9
>kk9 :
)kk: ;
)kk; <
{ll 
returnmm 
GenerateNullablemm '
(mm' (
typemm( ,
,mm, -#
createdObjectReferencesmm. E
)mmE F
;mmF G
}nn 
ifpp 
(pp !
genericTypeDefinitionpp %
==pp& (
typeofpp) /
(pp/ 0
KeyValuePairpp0 <
<pp< =
,pp= >
>pp> ?
)pp? @
)pp@ A
{qq 
returnrr  
GenerateKeyValuePairrr +
(rr+ ,
typerr, 0
,rr0 1#
createdObjectReferencesrr2 I
)rrI J
;rrJ K
}ss 
ifuu 
(uu 
IsTupleuu 
(uu !
genericTypeDefinitionuu -
)uu- .
)uu. /
{vv 
returnww 
GenerateTupleww $
(ww$ %
typeww% )
,ww) *#
createdObjectReferencesww+ B
)wwB C
;wwC D
}xx 
Typezz 
[zz 
]zz 
genericArgumentszz #
=zz$ %
typezz& *
.zz* +
GetGenericArgumentszz+ >
(zz> ?
)zz? @
;zz@ A
if{{ 
({{ 
genericArguments{{  
.{{  !
Length{{! '
=={{( *
$num{{+ ,
){{, -
{|| 
if}} 
(}} !
genericTypeDefinition}} )
==}}* ,
typeof}}- 3
(}}3 4
IList}}4 9
<}}9 :
>}}: ;
)}}; <
||}}= ?!
genericTypeDefinition~~ )
==~~* ,
typeof~~- 3
(~~3 4
IEnumerable~~4 ?
<~~? @
>~~@ A
)~~A B
||~~C E!
genericTypeDefinition )
==* ,
typeof- 3
(3 4
ICollection4 ?
<? @
>@ A
)A B
)B C
{
ÄÄ 
Type
ÅÅ 
collectionType
ÅÅ '
=
ÅÅ( )
typeof
ÅÅ* 0
(
ÅÅ0 1
List
ÅÅ1 5
<
ÅÅ5 6
>
ÅÅ6 7
)
ÅÅ7 8
.
ÅÅ8 9
MakeGenericType
ÅÅ9 H
(
ÅÅH I
genericArguments
ÅÅI Y
)
ÅÅY Z
;
ÅÅZ [
return
ÇÇ  
GenerateCollection
ÇÇ -
(
ÇÇ- .
collectionType
ÇÇ. <
,
ÇÇ< =
collectionSize
ÇÇ> L
,
ÇÇL M%
createdObjectReferences
ÇÇN e
)
ÇÇe f
;
ÇÇf g
}
ÉÉ 
if
ÖÖ 
(
ÖÖ #
genericTypeDefinition
ÖÖ )
==
ÖÖ* ,
typeof
ÖÖ- 3
(
ÖÖ3 4

IQueryable
ÖÖ4 >
<
ÖÖ> ?
>
ÖÖ? @
)
ÖÖ@ A
)
ÖÖA B
{
ÜÜ 
return
áá 
GenerateQueryable
áá ,
(
áá, -
type
áá- 1
,
áá1 2
collectionSize
áá3 A
,
ááA B%
createdObjectReferences
ááC Z
)
ááZ [
;
áá[ \
}
àà 
Type
ää "
closedCollectionType
ää )
=
ää* +
typeof
ää, 2
(
ää2 3
ICollection
ää3 >
<
ää> ?
>
ää? @
)
ää@ A
.
ääA B
MakeGenericType
ääB Q
(
ääQ R
genericArguments
ääR b
[
ääb c
$num
ääc d
]
ääd e
)
ääe f
;
ääf g
if
ãã 
(
ãã "
closedCollectionType
ãã (
.
ãã( )
IsAssignableFrom
ãã) 9
(
ãã9 :
type
ãã: >
)
ãã> ?
)
ãã? @
{
åå 
return
çç  
GenerateCollection
çç -
(
çç- .
type
çç. 2
,
çç2 3
collectionSize
çç4 B
,
ççB C%
createdObjectReferences
ççD [
)
çç[ \
;
çç\ ]
}
éé 
}
èè 
if
ëë 
(
ëë 
genericArguments
ëë  
.
ëë  !
Length
ëë! '
==
ëë( *
$num
ëë+ ,
)
ëë, -
{
íí 
if
ìì 
(
ìì #
genericTypeDefinition
ìì )
==
ìì* ,
typeof
ìì- 3
(
ìì3 4
IDictionary
ìì4 ?
<
ìì? @
,
ìì@ A
>
ììA B
)
ììB C
)
ììC D
{
îî 
Type
ïï 
dictionaryType
ïï '
=
ïï( )
typeof
ïï* 0
(
ïï0 1

Dictionary
ïï1 ;
<
ïï; <
,
ïï< =
>
ïï= >
)
ïï> ?
.
ïï? @
MakeGenericType
ïï@ O
(
ïïO P
genericArguments
ïïP `
)
ïï` a
;
ïïa b
return
ññ  
GenerateDictionary
ññ -
(
ññ- .
dictionaryType
ññ. <
,
ññ< =
collectionSize
ññ> L
,
ññL M%
createdObjectReferences
ññN e
)
ññe f
;
ññf g
}
óó 
Type
ôô "
closedDictionaryType
ôô )
=
ôô* +
typeof
ôô, 2
(
ôô2 3
IDictionary
ôô3 >
<
ôô> ?
,
ôô? @
>
ôô@ A
)
ôôA B
.
ôôB C
MakeGenericType
ôôC R
(
ôôR S
genericArguments
ôôS c
[
ôôc d
$num
ôôd e
]
ôôe f
,
ôôf g
genericArguments
ôôh x
[
ôôx y
$num
ôôy z
]
ôôz {
)
ôô{ |
;
ôô| }
if
öö 
(
öö "
closedDictionaryType
öö (
.
öö( )
IsAssignableFrom
öö) 9
(
öö9 :
type
öö: >
)
öö> ?
)
öö? @
{
õõ 
return
úú  
GenerateDictionary
úú -
(
úú- .
type
úú. 2
,
úú2 3
collectionSize
úú4 B
,
úúB C%
createdObjectReferences
úúD [
)
úú[ \
;
úú\ ]
}
ùù 
}
ûû 
if
†† 
(
†† 
type
†† 
.
†† 
IsPublic
†† 
||
††  
type
††! %
.
††% &
IsNestedPublic
††& 4
)
††4 5
{
°° 
return
¢¢ #
GenerateComplexObject
¢¢ ,
(
¢¢, -
type
¢¢- 1
,
¢¢1 2%
createdObjectReferences
¢¢3 J
)
¢¢J K
;
¢¢K L
}
££ 
return
•• 
null
•• 
;
•• 
}
¶¶ 	
private
®® 
static
®® 
object
®® 
GenerateTuple
®® +
(
®®+ ,
Type
®®, 0
type
®®1 5
,
®®5 6

Dictionary
®®7 A
<
®®A B
Type
®®B F
,
®®F G
object
®®H N
>
®®N O%
createdObjectReferences
®®P g
)
®®g h
{
©© 	
Type
™™ 
[
™™ 
]
™™ 
genericArgs
™™ 
=
™™  
type
™™! %
.
™™% &!
GetGenericArguments
™™& 9
(
™™9 :
)
™™: ;
;
™™; <
object
´´ 
[
´´ 
]
´´ 
parameterValues
´´ $
=
´´% &
new
´´' *
object
´´+ 1
[
´´1 2
genericArgs
´´2 =
.
´´= >
Length
´´> D
]
´´D E
;
´´E F
bool
¨¨ !
failedToCreateTuple
¨¨ $
=
¨¨% &
true
¨¨' +
;
¨¨+ ,
ObjectGenerator
≠≠ 
objectGenerator
≠≠ +
=
≠≠, -
new
≠≠. 1
ObjectGenerator
≠≠2 A
(
≠≠A B
)
≠≠B C
;
≠≠C D
for
ÆÆ 
(
ÆÆ 
int
ÆÆ 
i
ÆÆ 
=
ÆÆ 
$num
ÆÆ 
;
ÆÆ 
i
ÆÆ 
<
ÆÆ 
genericArgs
ÆÆ  +
.
ÆÆ+ ,
Length
ÆÆ, 2
;
ÆÆ2 3
i
ÆÆ4 5
++
ÆÆ5 7
)
ÆÆ7 8
{
ØØ 
parameterValues
∞∞ 
[
∞∞  
i
∞∞  !
]
∞∞! "
=
∞∞# $
objectGenerator
∞∞% 4
.
∞∞4 5
GenerateObject
∞∞5 C
(
∞∞C D
genericArgs
∞∞D O
[
∞∞O P
i
∞∞P Q
]
∞∞Q R
,
∞∞R S%
createdObjectReferences
∞∞T k
)
∞∞k l
;
∞∞l m!
failedToCreateTuple
±± #
&=
±±$ &
parameterValues
±±' 6
[
±±6 7
i
±±7 8
]
±±8 9
==
±±: <
null
±±= A
;
±±A B
}
≤≤ 
if
≥≥ 
(
≥≥ !
failedToCreateTuple
≥≥ #
)
≥≥# $
{
¥¥ 
return
µµ 
null
µµ 
;
µµ 
}
∂∂ 
object
∑∑ 
result
∑∑ 
=
∑∑ 
	Activator
∑∑ %
.
∑∑% &
CreateInstance
∑∑& 4
(
∑∑4 5
type
∑∑5 9
,
∑∑9 :
parameterValues
∑∑; J
)
∑∑J K
;
∑∑K L
return
∏∏ 
result
∏∏ 
;
∏∏ 
}
ππ 	
private
ªª 
static
ªª 
bool
ªª 
IsTuple
ªª #
(
ªª# $
Type
ªª$ (#
genericTypeDefinition
ªª) >
)
ªª> ?
{
ºº 	
return
ΩΩ #
genericTypeDefinition
ΩΩ (
==
ΩΩ) +
typeof
ΩΩ, 2
(
ΩΩ2 3
Tuple
ΩΩ3 8
<
ΩΩ8 9
>
ΩΩ9 :
)
ΩΩ: ;
||
ΩΩ< >#
genericTypeDefinition
ææ %
==
ææ& (
typeof
ææ) /
(
ææ/ 0
Tuple
ææ0 5
<
ææ5 6
,
ææ6 7
>
ææ7 8
)
ææ8 9
||
ææ: <#
genericTypeDefinition
øø %
==
øø& (
typeof
øø) /
(
øø/ 0
Tuple
øø0 5
<
øø5 6
,
øø6 7
,
øø7 8
>
øø8 9
)
øø9 :
||
øø; =#
genericTypeDefinition
¿¿ %
==
¿¿& (
typeof
¿¿) /
(
¿¿/ 0
Tuple
¿¿0 5
<
¿¿5 6
,
¿¿6 7
,
¿¿7 8
,
¿¿8 9
>
¿¿9 :
)
¿¿: ;
||
¿¿< >#
genericTypeDefinition
¡¡ %
==
¡¡& (
typeof
¡¡) /
(
¡¡/ 0
Tuple
¡¡0 5
<
¡¡5 6
,
¡¡6 7
,
¡¡7 8
,
¡¡8 9
,
¡¡9 :
>
¡¡: ;
)
¡¡; <
||
¡¡= ?#
genericTypeDefinition
¬¬ %
==
¬¬& (
typeof
¬¬) /
(
¬¬/ 0
Tuple
¬¬0 5
<
¬¬5 6
,
¬¬6 7
,
¬¬7 8
,
¬¬8 9
,
¬¬9 :
,
¬¬: ;
>
¬¬; <
)
¬¬< =
||
¬¬> @#
genericTypeDefinition
√√ %
==
√√& (
typeof
√√) /
(
√√/ 0
Tuple
√√0 5
<
√√5 6
,
√√6 7
,
√√7 8
,
√√8 9
,
√√9 :
,
√√: ;
,
√√; <
>
√√< =
)
√√= >
||
√√? A#
genericTypeDefinition
ƒƒ %
==
ƒƒ& (
typeof
ƒƒ) /
(
ƒƒ/ 0
Tuple
ƒƒ0 5
<
ƒƒ5 6
,
ƒƒ6 7
,
ƒƒ7 8
,
ƒƒ8 9
,
ƒƒ9 :
,
ƒƒ: ;
,
ƒƒ; <
,
ƒƒ< =
>
ƒƒ= >
)
ƒƒ> ?
;
ƒƒ? @
}
≈≈ 	
private
«« 
static
«« 
object
«« "
GenerateKeyValuePair
«« 2
(
««2 3
Type
««3 7
keyValuePairType
««8 H
,
««H I

Dictionary
««J T
<
««T U
Type
««U Y
,
««Y Z
object
««[ a
>
««a b%
createdObjectReferences
««c z
)
««z {
{
»» 	
Type
…… 
[
…… 
]
…… 
genericArgs
…… 
=
……  
keyValuePairType
……! 1
.
……1 2!
GetGenericArguments
……2 E
(
……E F
)
……F G
;
……G H
Type
   
typeK
   
=
   
genericArgs
   $
[
  $ %
$num
  % &
]
  & '
;
  ' (
Type
ÀÀ 
typeV
ÀÀ 
=
ÀÀ 
genericArgs
ÀÀ $
[
ÀÀ$ %
$num
ÀÀ% &
]
ÀÀ& '
;
ÀÀ' (
ObjectGenerator
ÃÃ 
objectGenerator
ÃÃ +
=
ÃÃ, -
new
ÃÃ. 1
ObjectGenerator
ÃÃ2 A
(
ÃÃA B
)
ÃÃB C
;
ÃÃC D
object
ÕÕ 
	keyObject
ÕÕ 
=
ÕÕ 
objectGenerator
ÕÕ .
.
ÕÕ. /
GenerateObject
ÕÕ/ =
(
ÕÕ= >
typeK
ÕÕ> C
,
ÕÕC D%
createdObjectReferences
ÕÕE \
)
ÕÕ\ ]
;
ÕÕ] ^
object
ŒŒ 
valueObject
ŒŒ 
=
ŒŒ  
objectGenerator
ŒŒ! 0
.
ŒŒ0 1
GenerateObject
ŒŒ1 ?
(
ŒŒ? @
typeV
ŒŒ@ E
,
ŒŒE F%
createdObjectReferences
ŒŒG ^
)
ŒŒ^ _
;
ŒŒ_ `
if
œœ 
(
œœ 
	keyObject
œœ 
==
œœ 
null
œœ !
&&
œœ" $
valueObject
œœ% 0
==
œœ1 3
null
œœ4 8
)
œœ8 9
{
–– 
return
““ 
null
““ 
;
““ 
}
”” 
object
‘‘ 
result
‘‘ 
=
‘‘ 
	Activator
‘‘ %
.
‘‘% &
CreateInstance
‘‘& 4
(
‘‘4 5
keyValuePairType
‘‘5 E
,
‘‘E F
	keyObject
‘‘G P
,
‘‘P Q
valueObject
‘‘R ]
)
‘‘] ^
;
‘‘^ _
return
’’ 
result
’’ 
;
’’ 
}
÷÷ 	
private
ÿÿ 
static
ÿÿ 
object
ÿÿ 
GenerateArray
ÿÿ +
(
ÿÿ+ ,
Type
ÿÿ, 0
	arrayType
ÿÿ1 :
,
ÿÿ: ;
int
ÿÿ< ?
size
ÿÿ@ D
,
ÿÿD E

Dictionary
ÿÿF P
<
ÿÿP Q
Type
ÿÿQ U
,
ÿÿU V
object
ÿÿW ]
>
ÿÿ] ^%
createdObjectReferences
ÿÿ_ v
)
ÿÿv w
{
ŸŸ 	
Type
⁄⁄ 
type
⁄⁄ 
=
⁄⁄ 
	arrayType
⁄⁄ !
.
⁄⁄! "
GetElementType
⁄⁄" 0
(
⁄⁄0 1
)
⁄⁄1 2
;
⁄⁄2 3
Array
€€ 
result
€€ 
=
€€ 
Array
€€  
.
€€  !
CreateInstance
€€! /
(
€€/ 0
type
€€0 4
,
€€4 5
size
€€6 :
)
€€: ;
;
€€; <
bool
‹‹  
areAllElementsNull
‹‹ #
=
‹‹$ %
true
‹‹& *
;
‹‹* +
ObjectGenerator
›› 
objectGenerator
›› +
=
››, -
new
››. 1
ObjectGenerator
››2 A
(
››A B
)
››B C
;
››C D
for
ﬁﬁ 
(
ﬁﬁ 
int
ﬁﬁ 
i
ﬁﬁ 
=
ﬁﬁ 
$num
ﬁﬁ 
;
ﬁﬁ 
i
ﬁﬁ 
<
ﬁﬁ 
size
ﬁﬁ  $
;
ﬁﬁ$ %
i
ﬁﬁ& '
++
ﬁﬁ' )
)
ﬁﬁ) *
{
ﬂﬂ 
object
‡‡ 
element
‡‡ 
=
‡‡  
objectGenerator
‡‡! 0
.
‡‡0 1
GenerateObject
‡‡1 ?
(
‡‡? @
type
‡‡@ D
,
‡‡D E%
createdObjectReferences
‡‡F ]
)
‡‡] ^
;
‡‡^ _
result
·· 
.
·· 
SetValue
·· 
(
··  
element
··  '
,
··' (
i
··) *
)
··* +
;
··+ , 
areAllElementsNull
‚‚ "
&=
‚‚# %
element
‚‚& -
==
‚‚. 0
null
‚‚1 5
;
‚‚5 6
}
„„ 
if
ÂÂ 
(
ÂÂ  
areAllElementsNull
ÂÂ "
)
ÂÂ" #
{
ÊÊ 
return
ÁÁ 
null
ÁÁ 
;
ÁÁ 
}
ËË 
return
ÍÍ 
result
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
static
ÌÌ 
object
ÌÌ  
GenerateDictionary
ÌÌ 0
(
ÌÌ0 1
Type
ÌÌ1 5
dictionaryType
ÌÌ6 D
,
ÌÌD E
int
ÌÌF I
size
ÌÌJ N
,
ÌÌN O

Dictionary
ÌÌP Z
<
ÌÌZ [
Type
ÌÌ[ _
,
ÌÌ_ `
object
ÌÌa g
>
ÌÌg h&
createdObjectReferencesÌÌi Ä
)ÌÌÄ Å
{
ÓÓ 	
Type
ÔÔ 
typeK
ÔÔ 
=
ÔÔ 
typeof
ÔÔ 
(
ÔÔ  
object
ÔÔ  &
)
ÔÔ& '
;
ÔÔ' (
Type
 
typeV
 
=
 
typeof
 
(
  
object
  &
)
& '
;
' (
if
ÒÒ 
(
ÒÒ 
dictionaryType
ÒÒ 
.
ÒÒ 
IsGenericType
ÒÒ ,
)
ÒÒ, -
{
ÚÚ 
Type
ÛÛ 
[
ÛÛ 
]
ÛÛ 
genericArgs
ÛÛ "
=
ÛÛ# $
dictionaryType
ÛÛ% 3
.
ÛÛ3 4!
GetGenericArguments
ÛÛ4 G
(
ÛÛG H
)
ÛÛH I
;
ÛÛI J
typeK
ÙÙ 
=
ÙÙ 
genericArgs
ÙÙ #
[
ÙÙ# $
$num
ÙÙ$ %
]
ÙÙ% &
;
ÙÙ& '
typeV
ıı 
=
ıı 
genericArgs
ıı #
[
ıı# $
$num
ıı$ %
]
ıı% &
;
ıı& '
}
ˆˆ 
object
¯¯ 
result
¯¯ 
=
¯¯ 
	Activator
¯¯ %
.
¯¯% &
CreateInstance
¯¯& 4
(
¯¯4 5
dictionaryType
¯¯5 C
)
¯¯C D
;
¯¯D E

MethodInfo
˘˘ 
	addMethod
˘˘  
=
˘˘! "
dictionaryType
˘˘# 1
.
˘˘1 2
	GetMethod
˘˘2 ;
(
˘˘; <
$str
˘˘< A
)
˘˘A B
??
˘˘C E
dictionaryType
˘˘F T
.
˘˘T U
	GetMethod
˘˘U ^
(
˘˘^ _
$str
˘˘_ g
)
˘˘g h
;
˘˘h i

MethodInfo
˙˙ 
containsMethod
˙˙ %
=
˙˙& '
dictionaryType
˙˙( 6
.
˙˙6 7
	GetMethod
˙˙7 @
(
˙˙@ A
$str
˙˙A K
)
˙˙K L
??
˙˙M O
dictionaryType
˙˙P ^
.
˙˙^ _
	GetMethod
˙˙_ h
(
˙˙h i
$str
˙˙i v
)
˙˙v w
;
˙˙w x
ObjectGenerator
˚˚ 
objectGenerator
˚˚ +
=
˚˚, -
new
˚˚. 1
ObjectGenerator
˚˚2 A
(
˚˚A B
)
˚˚B C
;
˚˚C D
for
¸¸ 
(
¸¸ 
int
¸¸ 
i
¸¸ 
=
¸¸ 
$num
¸¸ 
;
¸¸ 
i
¸¸ 
<
¸¸ 
size
¸¸  $
;
¸¸$ %
i
¸¸& '
++
¸¸' )
)
¸¸) *
{
˝˝ 
object
˛˛ 
newKey
˛˛ 
=
˛˛ 
objectGenerator
˛˛  /
.
˛˛/ 0
GenerateObject
˛˛0 >
(
˛˛> ?
typeK
˛˛? D
,
˛˛D E%
createdObjectReferences
˛˛F ]
)
˛˛] ^
;
˛˛^ _
if
ˇˇ 
(
ˇˇ 
newKey
ˇˇ 
==
ˇˇ 
null
ˇˇ "
)
ˇˇ" #
{
ÄÄ 
return
ÇÇ 
null
ÇÇ 
;
ÇÇ  
}
ÉÉ 
bool
ÖÖ 
containsKey
ÖÖ  
=
ÖÖ! "
(
ÖÖ# $
bool
ÖÖ$ (
)
ÖÖ( )
containsMethod
ÖÖ) 7
.
ÖÖ7 8
Invoke
ÖÖ8 >
(
ÖÖ> ?
result
ÖÖ? E
,
ÖÖE F
new
ÖÖG J
object
ÖÖK Q
[
ÖÖQ R
]
ÖÖR S
{
ÖÖT U
newKey
ÖÖV \
}
ÖÖ] ^
)
ÖÖ^ _
;
ÖÖ_ `
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
containsKey
ÜÜ  
)
ÜÜ  !
{
áá 
object
àà 
newValue
àà #
=
àà$ %
objectGenerator
àà& 5
.
àà5 6
GenerateObject
àà6 D
(
ààD E
typeV
ààE J
,
ààJ K%
createdObjectReferences
ààL c
)
ààc d
;
ààd e
	addMethod
ââ 
.
ââ 
Invoke
ââ $
(
ââ$ %
result
ââ% +
,
ââ+ ,
new
ââ- 0
object
ââ1 7
[
ââ7 8
]
ââ8 9
{
ââ: ;
newKey
ââ< B
,
ââB C
newValue
ââD L
}
ââM N
)
ââN O
;
ââO P
}
ää 
}
ãã 
return
çç 
result
çç 
;
çç 
}
éé 	
private
êê 
static
êê 
object
êê 
GenerateEnum
êê *
(
êê* +
Type
êê+ /
enumType
êê0 8
)
êê8 9
{
ëë 	
Array
íí 
possibleValues
íí  
=
íí! "
Enum
íí# '
.
íí' (
	GetValues
íí( 1
(
íí1 2
enumType
íí2 :
)
íí: ;
;
íí; <
if
ìì 
(
ìì 
possibleValues
ìì 
.
ìì 
Length
ìì %
>
ìì& '
$num
ìì( )
)
ìì) *
{
îî 
return
ïï 
possibleValues
ïï %
.
ïï% &
GetValue
ïï& .
(
ïï. /
$num
ïï/ 0
)
ïï0 1
;
ïï1 2
}
ññ 
return
óó 
null
óó 
;
óó 
}
òò 	
private
öö 
static
öö 
object
öö 
GenerateQueryable
öö /
(
öö/ 0
Type
öö0 4
queryableType
öö5 B
,
ööB C
int
ööD G
size
ööH L
,
ööL M

Dictionary
ööN X
<
ööX Y
Type
ööY ]
,
öö] ^
object
öö_ e
>
ööe f%
createdObjectReferences
öög ~
)
öö~ 
{
õõ 	
bool
úú 
	isGeneric
úú 
=
úú 
queryableType
úú *
.
úú* +
IsGenericType
úú+ 8
;
úú8 9
object
ùù 
list
ùù 
;
ùù 
if
ûû 
(
ûû 
	isGeneric
ûû 
)
ûû 
{
üü 
Type
†† 
listType
†† 
=
†† 
typeof
††  &
(
††& '
List
††' +
<
††+ ,
>
††, -
)
††- .
.
††. /
MakeGenericType
††/ >
(
††> ?
queryableType
††? L
.
††L M!
GetGenericArguments
††M `
(
††` a
)
††a b
)
††b c
;
††c d
list
°° 
=
°°  
GenerateCollection
°° )
(
°°) *
listType
°°* 2
,
°°2 3
size
°°4 8
,
°°8 9%
createdObjectReferences
°°: Q
)
°°Q R
;
°°R S
}
¢¢ 
else
££ 
{
§§ 
list
•• 
=
•• 
GenerateArray
•• $
(
••$ %
typeof
••% +
(
••+ ,
object
••, 2
[
••2 3
]
••3 4
)
••4 5
,
••5 6
size
••7 ;
,
••; <%
createdObjectReferences
••= T
)
••T U
;
••U V
}
¶¶ 
if
ßß 
(
ßß 
list
ßß 
==
ßß 
null
ßß 
)
ßß 
{
®® 
return
©© 
null
©© 
;
©© 
}
™™ 
if
´´ 
(
´´ 
	isGeneric
´´ 
)
´´ 
{
¨¨ 
Type
≠≠ 
argumentType
≠≠ !
=
≠≠" #
typeof
≠≠$ *
(
≠≠* +
IEnumerable
≠≠+ 6
<
≠≠6 7
>
≠≠7 8
)
≠≠8 9
.
≠≠9 :
MakeGenericType
≠≠: I
(
≠≠I J
queryableType
≠≠J W
.
≠≠W X!
GetGenericArguments
≠≠X k
(
≠≠k l
)
≠≠l m
)
≠≠m n
;
≠≠n o

MethodInfo
ÆÆ 
asQueryableMethod
ÆÆ ,
=
ÆÆ- .
typeof
ÆÆ/ 5
(
ÆÆ5 6
	Queryable
ÆÆ6 ?
)
ÆÆ? @
.
ÆÆ@ A
	GetMethod
ÆÆA J
(
ÆÆJ K
$str
ÆÆK X
,
ÆÆX Y
new
ÆÆZ ]
[
ÆÆ] ^
]
ÆÆ^ _
{
ÆÆ` a
argumentType
ÆÆb n
}
ÆÆo p
)
ÆÆp q
;
ÆÆq r
return
ØØ 
asQueryableMethod
ØØ (
.
ØØ( )
Invoke
ØØ) /
(
ØØ/ 0
null
ØØ0 4
,
ØØ4 5
new
ØØ6 9
[
ØØ9 :
]
ØØ: ;
{
ØØ< =
list
ØØ> B
}
ØØC D
)
ØØD E
;
ØØE F
}
∞∞ 
return
≤≤ 
	Queryable
≤≤ 
.
≤≤ 
AsQueryable
≤≤ (
(
≤≤( )
(
≤≤) *
IEnumerable
≤≤* 5
)
≤≤5 6
list
≤≤6 :
)
≤≤: ;
;
≤≤; <
}
≥≥ 	
private
µµ 
static
µµ 
object
µµ  
GenerateCollection
µµ 0
(
µµ0 1
Type
µµ1 5
collectionType
µµ6 D
,
µµD E
int
µµF I
size
µµJ N
,
µµN O

Dictionary
µµP Z
<
µµZ [
Type
µµ[ _
,
µµ_ `
object
µµa g
>
µµg h&
createdObjectReferencesµµi Ä
)µµÄ Å
{
∂∂ 	
Type
∑∑ 
type
∑∑ 
=
∑∑ 
collectionType
∑∑ &
.
∑∑& '
IsGenericType
∑∑' 4
?
∑∑5 6
collectionType
∏∏ 
.
∏∏ !
GetGenericArguments
∏∏ 2
(
∏∏2 3
)
∏∏3 4
[
∏∏4 5
$num
∏∏5 6
]
∏∏6 7
:
∏∏8 9
typeof
ππ 
(
ππ 
object
ππ 
)
ππ 
;
ππ 
object
∫∫ 
result
∫∫ 
=
∫∫ 
	Activator
∫∫ %
.
∫∫% &
CreateInstance
∫∫& 4
(
∫∫4 5
collectionType
∫∫5 C
)
∫∫C D
;
∫∫D E

MethodInfo
ªª 
	addMethod
ªª  
=
ªª! "
collectionType
ªª# 1
.
ªª1 2
	GetMethod
ªª2 ;
(
ªª; <
$str
ªª< A
)
ªªA B
;
ªªB C
bool
ºº  
areAllElementsNull
ºº #
=
ºº$ %
true
ºº& *
;
ºº* +
ObjectGenerator
ΩΩ 
objectGenerator
ΩΩ +
=
ΩΩ, -
new
ΩΩ. 1
ObjectGenerator
ΩΩ2 A
(
ΩΩA B
)
ΩΩB C
;
ΩΩC D
for
ææ 
(
ææ 
int
ææ 
i
ææ 
=
ææ 
$num
ææ 
;
ææ 
i
ææ 
<
ææ 
size
ææ  $
;
ææ$ %
i
ææ& '
++
ææ' )
)
ææ) *
{
øø 
object
¿¿ 
element
¿¿ 
=
¿¿  
objectGenerator
¿¿! 0
.
¿¿0 1
GenerateObject
¿¿1 ?
(
¿¿? @
type
¿¿@ D
,
¿¿D E%
createdObjectReferences
¿¿F ]
)
¿¿] ^
;
¿¿^ _
	addMethod
¡¡ 
.
¡¡ 
Invoke
¡¡  
(
¡¡  !
result
¡¡! '
,
¡¡' (
new
¡¡) ,
object
¡¡- 3
[
¡¡3 4
]
¡¡4 5
{
¡¡6 7
element
¡¡8 ?
}
¡¡@ A
)
¡¡A B
;
¡¡B C 
areAllElementsNull
¬¬ "
&=
¬¬# %
element
¬¬& -
==
¬¬. 0
null
¬¬1 5
;
¬¬5 6
}
√√ 
if
≈≈ 
(
≈≈  
areAllElementsNull
≈≈ "
)
≈≈" #
{
∆∆ 
return
«« 
null
«« 
;
«« 
}
»» 
return
   
result
   
;
   
}
ÀÀ 	
private
ÕÕ 
static
ÕÕ 
object
ÕÕ 
GenerateNullable
ÕÕ .
(
ÕÕ. /
Type
ÕÕ/ 3
nullableType
ÕÕ4 @
,
ÕÕ@ A

Dictionary
ÕÕB L
<
ÕÕL M
Type
ÕÕM Q
,
ÕÕQ R
object
ÕÕS Y
>
ÕÕY Z%
createdObjectReferences
ÕÕ[ r
)
ÕÕr s
{
ŒŒ 	
Type
œœ 
type
œœ 
=
œœ 
nullableType
œœ $
.
œœ$ %!
GetGenericArguments
œœ% 8
(
œœ8 9
)
œœ9 :
[
œœ: ;
$num
œœ; <
]
œœ< =
;
œœ= >
ObjectGenerator
–– 
objectGenerator
–– +
=
––, -
new
––. 1
ObjectGenerator
––2 A
(
––A B
)
––B C
;
––C D
return
—— 
objectGenerator
—— "
.
——" #
GenerateObject
——# 1
(
——1 2
type
——2 6
,
——6 7%
createdObjectReferences
——8 O
)
——O P
;
——P Q
}
““ 	
private
‘‘ 
static
‘‘ 
object
‘‘ #
GenerateComplexObject
‘‘ 3
(
‘‘3 4
Type
‘‘4 8
type
‘‘9 =
,
‘‘= >

Dictionary
‘‘? I
<
‘‘I J
Type
‘‘J N
,
‘‘N O
object
‘‘P V
>
‘‘V W%
createdObjectReferences
‘‘X o
)
‘‘o p
{
’’ 	
object
÷÷ 
result
÷÷ 
=
÷÷ 
null
÷÷  
;
÷÷  !
if
ÿÿ 
(
ÿÿ %
createdObjectReferences
ÿÿ '
.
ÿÿ' (
TryGetValue
ÿÿ( 3
(
ÿÿ3 4
type
ÿÿ4 8
,
ÿÿ8 9
out
ÿÿ: =
result
ÿÿ> D
)
ÿÿD E
)
ÿÿE F
{
ŸŸ 
return
€€ 
result
€€ 
;
€€ 
}
‹‹ 
if
ﬁﬁ 
(
ﬁﬁ 
type
ﬁﬁ 
.
ﬁﬁ 
IsValueType
ﬁﬁ  
)
ﬁﬁ  !
{
ﬂﬂ 
result
‡‡ 
=
‡‡ 
	Activator
‡‡ "
.
‡‡" #
CreateInstance
‡‡# 1
(
‡‡1 2
type
‡‡2 6
)
‡‡6 7
;
‡‡7 8
}
·· 
else
‚‚ 
{
„„ 
ConstructorInfo
‰‰ 
defaultCtor
‰‰  +
=
‰‰, -
type
‰‰. 2
.
‰‰2 3
GetConstructor
‰‰3 A
(
‰‰A B
Type
‰‰B F
.
‰‰F G

EmptyTypes
‰‰G Q
)
‰‰Q R
;
‰‰R S
if
ÂÂ 
(
ÂÂ 
defaultCtor
ÂÂ 
==
ÂÂ  "
null
ÂÂ# '
)
ÂÂ' (
{
ÊÊ 
return
ËË 
null
ËË 
;
ËË  
}
ÈÈ 
result
ÎÎ 
=
ÎÎ 
defaultCtor
ÎÎ $
.
ÎÎ$ %
Invoke
ÎÎ% +
(
ÎÎ+ ,
new
ÎÎ, /
object
ÎÎ0 6
[
ÎÎ6 7
$num
ÎÎ7 8
]
ÎÎ8 9
)
ÎÎ9 :
;
ÎÎ: ;
}
ÏÏ %
createdObjectReferences
ÌÌ #
.
ÌÌ# $
Add
ÌÌ$ '
(
ÌÌ' (
type
ÌÌ( ,
,
ÌÌ, -
result
ÌÌ. 4
)
ÌÌ4 5
;
ÌÌ5 6!
SetPublicProperties
ÓÓ 
(
ÓÓ  
type
ÓÓ  $
,
ÓÓ$ %
result
ÓÓ& ,
,
ÓÓ, -%
createdObjectReferences
ÓÓ. E
)
ÓÓE F
;
ÓÓF G
SetPublicFields
ÔÔ 
(
ÔÔ 
type
ÔÔ  
,
ÔÔ  !
result
ÔÔ" (
,
ÔÔ( )%
createdObjectReferences
ÔÔ* A
)
ÔÔA B
;
ÔÔB C
return
 
result
 
;
 
}
ÒÒ 	
private
ÛÛ 
static
ÛÛ 
void
ÛÛ !
SetPublicProperties
ÛÛ /
(
ÛÛ/ 0
Type
ÛÛ0 4
type
ÛÛ5 9
,
ÛÛ9 :
object
ÛÛ; A
obj
ÛÛB E
,
ÛÛE F

Dictionary
ÛÛG Q
<
ÛÛQ R
Type
ÛÛR V
,
ÛÛV W
object
ÛÛX ^
>
ÛÛ^ _%
createdObjectReferences
ÛÛ` w
)
ÛÛw x
{
ÙÙ 	
PropertyInfo
ıı 
[
ıı 
]
ıı 

properties
ıı %
=
ıı& '
type
ıı( ,
.
ıı, -
GetProperties
ıı- :
(
ıı: ;
BindingFlags
ıı; G
.
ııG H
Public
ııH N
|
ııO P
BindingFlags
ııQ ]
.
ıı] ^
Instance
ıı^ f
)
ııf g
;
ııg h
ObjectGenerator
ˆˆ 
objectGenerator
ˆˆ +
=
ˆˆ, -
new
ˆˆ. 1
ObjectGenerator
ˆˆ2 A
(
ˆˆA B
)
ˆˆB C
;
ˆˆC D
foreach
˜˜ 
(
˜˜ 
PropertyInfo
˜˜ !
property
˜˜" *
in
˜˜+ -

properties
˜˜. 8
)
˜˜8 9
{
¯¯ 
if
˘˘ 
(
˘˘ 
property
˘˘ 
.
˘˘ 
CanWrite
˘˘ %
)
˘˘% &
{
˙˙ 
object
˚˚ 
propertyValue
˚˚ (
=
˚˚) *
objectGenerator
˚˚+ :
.
˚˚: ;
GenerateObject
˚˚; I
(
˚˚I J
property
˚˚J R
.
˚˚R S
PropertyType
˚˚S _
,
˚˚_ `%
createdObjectReferences
˚˚a x
)
˚˚x y
;
˚˚y z
property
¸¸ 
.
¸¸ 
SetValue
¸¸ %
(
¸¸% &
obj
¸¸& )
,
¸¸) *
propertyValue
¸¸+ 8
,
¸¸8 9
null
¸¸: >
)
¸¸> ?
;
¸¸? @
}
˝˝ 
}
˛˛ 
}
ˇˇ 	
private
ÅÅ 
static
ÅÅ 
void
ÅÅ 
SetPublicFields
ÅÅ +
(
ÅÅ+ ,
Type
ÅÅ, 0
type
ÅÅ1 5
,
ÅÅ5 6
object
ÅÅ7 =
obj
ÅÅ> A
,
ÅÅA B

Dictionary
ÅÅC M
<
ÅÅM N
Type
ÅÅN R
,
ÅÅR S
object
ÅÅT Z
>
ÅÅZ [%
createdObjectReferences
ÅÅ\ s
)
ÅÅs t
{
ÇÇ 	
	FieldInfo
ÉÉ 
[
ÉÉ 
]
ÉÉ 
fields
ÉÉ 
=
ÉÉ  
type
ÉÉ! %
.
ÉÉ% &
	GetFields
ÉÉ& /
(
ÉÉ/ 0
BindingFlags
ÉÉ0 <
.
ÉÉ< =
Public
ÉÉ= C
|
ÉÉD E
BindingFlags
ÉÉF R
.
ÉÉR S
Instance
ÉÉS [
)
ÉÉ[ \
;
ÉÉ\ ]
ObjectGenerator
ÑÑ 
objectGenerator
ÑÑ +
=
ÑÑ, -
new
ÑÑ. 1
ObjectGenerator
ÑÑ2 A
(
ÑÑA B
)
ÑÑB C
;
ÑÑC D
foreach
ÖÖ 
(
ÖÖ 
	FieldInfo
ÖÖ 
field
ÖÖ $
in
ÖÖ% '
fields
ÖÖ( .
)
ÖÖ. /
{
ÜÜ 
object
áá 

fieldValue
áá !
=
áá" #
objectGenerator
áá$ 3
.
áá3 4
GenerateObject
áá4 B
(
ááB C
field
ááC H
.
ááH I
	FieldType
ááI R
,
ááR S%
createdObjectReferences
ááT k
)
áák l
;
áál m
field
àà 
.
àà 
SetValue
àà 
(
àà 
obj
àà "
,
àà" #

fieldValue
àà$ .
)
àà. /
;
àà/ 0
}
ââ 
}
ää 	
private
åå 
class
åå '
SimpleTypeObjectGenerator
åå /
{
çç 	
private
éé 
long
éé 
_index
éé 
=
éé  !
$num
éé" #
;
éé# $
private
èè 
static
èè 
readonly
èè #

Dictionary
èè$ .
<
èè. /
Type
èè/ 3
,
èè3 4
Func
èè5 9
<
èè9 :
long
èè: >
,
èè> ?
object
èè@ F
>
èèF G
>
èèG H
DefaultGenerators
èèI Z
=
èè[ \"
InitializeGenerators
èè] q
(
èèq r
)
èèr s
;
èès t
[
ëë 
SuppressMessage
ëë 
(
ëë 
$str
ëë 8
,
ëë8 9
$str
ëë: [
,
ëë[ \
Justification
ëë] j
=
ëëk l
$strëëm ¶
)ëë¶ ß
]ëëß ®
private
íí 
static
íí 

Dictionary
íí %
<
íí% &
Type
íí& *
,
íí* +
Func
íí, 0
<
íí0 1
long
íí1 5
,
íí5 6
object
íí7 =
>
íí= >
>
íí> ?"
InitializeGenerators
íí@ T
(
ííT U
)
ííU V
{
ìì 
return
îî 
new
îî 

Dictionary
îî %
<
îî% &
Type
îî& *
,
îî* +
Func
îî, 0
<
îî0 1
long
îî1 5
,
îî5 6
object
îî7 =
>
îî= >
>
îî> ?
{
ïï 
{
ññ 
typeof
ññ 
(
ññ 
Boolean
ññ $
)
ññ$ %
,
ññ% &
index
ññ' ,
=>
ññ- /
true
ññ0 4
}
ññ5 6
,
ññ6 7
{
óó 
typeof
óó 
(
óó 
Byte
óó !
)
óó! "
,
óó" #
index
óó$ )
=>
óó* ,
(
óó- .
Byte
óó. 2
)
óó2 3
$num
óó3 5
}
óó6 7
,
óó7 8
{
òò 
typeof
òò 
(
òò 
Char
òò !
)
òò! "
,
òò" #
index
òò$ )
=>
òò* ,
(
òò- .
Char
òò. 2
)
òò2 3
$num
òò3 5
}
òò6 7
,
òò7 8
{
ôô 
typeof
ôô 
(
ôô 
DateTime
ôô %
)
ôô% &
,
ôô& '
index
ôô( -
=>
ôô. 0
DateTime
ôô1 9
.
ôô9 :
Now
ôô: =
}
ôô> ?
,
ôô? @
{
öö 
typeof
öö 
(
öö 
DateTimeOffset
öö +
)
öö+ ,
,
öö, -
index
öö. 3
=>
öö4 6
new
öö7 :
DateTimeOffset
öö; I
(
ööI J
DateTime
ööJ R
.
ööR S
Now
ööS V
)
ööV W
}
ööX Y
,
ööY Z
{
õõ 
typeof
õõ 
(
õõ 
DBNull
õõ #
)
õõ# $
,
õõ$ %
index
õõ& +
=>
õõ, .
DBNull
õõ/ 5
.
õõ5 6
Value
õõ6 ;
}
õõ< =
,
õõ= >
{
úú 
typeof
úú 
(
úú 
Decimal
úú $
)
úú$ %
,
úú% &
index
úú' ,
=>
úú- /
(
úú0 1
Decimal
úú1 8
)
úú8 9
index
úú9 >
}
úú? @
,
úú@ A
{
ùù 
typeof
ùù 
(
ùù 
Double
ùù #
)
ùù# $
,
ùù$ %
index
ùù& +
=>
ùù, .
(
ùù/ 0
Double
ùù0 6
)
ùù6 7
(
ùù7 8
index
ùù8 =
+
ùù> ?
$num
ùù@ C
)
ùùC D
}
ùùE F
,
ùùF G
{
ûû 
typeof
ûû 
(
ûû 
Guid
ûû !
)
ûû! "
,
ûû" #
index
ûû$ )
=>
ûû* ,
Guid
ûû- 1
.
ûû1 2
NewGuid
ûû2 9
(
ûû9 :
)
ûû: ;
}
ûû< =
,
ûû= >
{
üü 
typeof
üü 
(
üü 
Int16
üü "
)
üü" #
,
üü# $
index
üü% *
=>
üü+ -
(
üü. /
Int16
üü/ 4
)
üü4 5
(
üü5 6
index
üü6 ;
%
üü< =
Int16
üü> C
.
üüC D
MaxValue
üüD L
)
üüL M
}
üüN O
,
üüO P
{
†† 
typeof
†† 
(
†† 
Int32
†† "
)
††" #
,
††# $
index
††% *
=>
††+ -
(
††. /
Int32
††/ 4
)
††4 5
(
††5 6
index
††6 ;
%
††< =
Int32
††> C
.
††C D
MaxValue
††D L
)
††L M
}
††N O
,
††O P
{
°° 
typeof
°° 
(
°° 
Int64
°° "
)
°°" #
,
°°# $
index
°°% *
=>
°°+ -
(
°°. /
Int64
°°/ 4
)
°°4 5
index
°°5 :
}
°°; <
,
°°< =
{
¢¢ 
typeof
¢¢ 
(
¢¢ 
Object
¢¢ #
)
¢¢# $
,
¢¢$ %
index
¢¢& +
=>
¢¢, .
new
¢¢/ 2
object
¢¢3 9
(
¢¢9 :
)
¢¢: ;
}
¢¢< =
,
¢¢= >
{
££ 
typeof
££ 
(
££ 
SByte
££ "
)
££" #
,
££# $
index
££% *
=>
££+ -
(
££. /
SByte
££/ 4
)
££4 5
$num
££5 7
}
££8 9
,
££9 :
{
§§ 
typeof
§§ 
(
§§ 
Single
§§ #
)
§§# $
,
§§$ %
index
§§& +
=>
§§, .
(
§§/ 0
Single
§§0 6
)
§§6 7
(
§§7 8
index
§§8 =
+
§§> ?
$num
§§@ C
)
§§C D
}
§§E F
,
§§F G
{
•• 
typeof
¶¶ 
(
¶¶ 
String
¶¶ %
)
¶¶% &
,
¶¶& '
index
¶¶( -
=>
¶¶. 0
{
ßß 
return
®® "
String
®®# )
.
®®) *
Format
®®* 0
(
®®0 1
CultureInfo
®®1 <
.
®®< =
CurrentCulture
®®= K
,
®®K L
$str
®®M `
,
®®` a
index
®®b g
)
®®g h
;
®®h i
}
©© 
}
™™ 
,
™™ 
{
´´ 
typeof
¨¨ 
(
¨¨ 
TimeSpan
¨¨ '
)
¨¨' (
,
¨¨( )
index
¨¨* /
=>
¨¨0 2
{
≠≠ 
return
ÆÆ "
TimeSpan
ÆÆ# +
.
ÆÆ+ ,
	FromTicks
ÆÆ, 5
(
ÆÆ5 6
$num
ÆÆ6 =
)
ÆÆ= >
;
ÆÆ> ?
}
ØØ 
}
∞∞ 
,
∞∞ 
{
±± 
typeof
±± 
(
±± 
UInt16
±± #
)
±±# $
,
±±$ %
index
±±& +
=>
±±, .
(
±±/ 0
UInt16
±±0 6
)
±±6 7
(
±±7 8
index
±±8 =
%
±±> ?
UInt16
±±@ F
.
±±F G
MaxValue
±±G O
)
±±O P
}
±±Q R
,
±±R S
{
≤≤ 
typeof
≤≤ 
(
≤≤ 
UInt32
≤≤ #
)
≤≤# $
,
≤≤$ %
index
≤≤& +
=>
≤≤, .
(
≤≤/ 0
UInt32
≤≤0 6
)
≤≤6 7
(
≤≤7 8
index
≤≤8 =
%
≤≤> ?
UInt32
≤≤@ F
.
≤≤F G
MaxValue
≤≤G O
)
≤≤O P
}
≤≤Q R
,
≤≤R S
{
≥≥ 
typeof
≥≥ 
(
≥≥ 
UInt64
≥≥ #
)
≥≥# $
,
≥≥$ %
index
≥≥& +
=>
≥≥, .
(
≥≥/ 0
UInt64
≥≥0 6
)
≥≥6 7
index
≥≥7 <
}
≥≥= >
,
≥≥> ?
{
¥¥ 
typeof
µµ 
(
µµ 
Uri
µµ "
)
µµ" #
,
µµ# $
index
µµ% *
=>
µµ+ -
{
∂∂ 
return
∑∑ "
new
∑∑# &
Uri
∑∑' *
(
∑∑* +
String
∑∑+ 1
.
∑∑1 2
Format
∑∑2 8
(
∑∑8 9
CultureInfo
∑∑9 D
.
∑∑D E
CurrentCulture
∑∑E S
,
∑∑S T
$str
∑∑U s
,
∑∑s t
index
∑∑u z
)
∑∑z {
)
∑∑{ |
;
∑∑| }
}
∏∏ 
}
ππ 
,
ππ 
}
∫∫ 
;
∫∫ 
}
ªª 
public
ΩΩ 
static
ΩΩ 
bool
ΩΩ 
CanGenerateObject
ΩΩ 0
(
ΩΩ0 1
Type
ΩΩ1 5
type
ΩΩ6 :
)
ΩΩ: ;
{
ææ 
return
øø 
DefaultGenerators
øø (
.
øø( )
ContainsKey
øø) 4
(
øø4 5
type
øø5 9
)
øø9 :
;
øø: ;
}
¿¿ 
public
¬¬ 
object
¬¬ 
GenerateObject
¬¬ (
(
¬¬( )
Type
¬¬) -
type
¬¬. 2
)
¬¬2 3
{
√√ 
return
ƒƒ 
DefaultGenerators
ƒƒ (
[
ƒƒ( )
type
ƒƒ) -
]
ƒƒ- .
(
ƒƒ. /
++
ƒƒ/ 1
_index
ƒƒ1 7
)
ƒƒ7 8
;
ƒƒ8 9
}
≈≈ 
}
∆∆ 	
}
«« 
}»» Ô
ôC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\SampleDirection.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

enum 
SampleDirection 
{ 
Request 
= 
$num 
, 
Response		 
}

 
} œ
îC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\TextSample.cs
	namespace 	
KnowledgeManagement
 
. 
Areas #
.# $
HelpPage$ ,
{ 
public 

class 

TextSample 
{		 
public

 

TextSample

 
(

 
string

  
text

! %
)

% &
{ 	
if 
( 
text 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
$str0 6
)6 7
;7 8
} 
Text 
= 
text 
; 
} 	
public 
string 
Text 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	

TextSample 
other 
= 
obj "
as# %

TextSample& 0
;0 1
return 
other 
!= 
null  
&&! #
Text$ (
==) +
other, 1
.1 2
Text2 6
;6 7
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
Text 
. 
GetHashCode #
(# $
)$ %
;% &
} 	
public   
override   
string   
ToString   '
(  ' (
)  ( )
{!! 	
return"" 
Text"" 
;"" 
}## 	
}$$ 
}%% ˙w
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\XmlDocumentationProvider.cs
	namespace

 	
KnowledgeManagement


 
.

 
Areas

 #
.

# $
HelpPage

$ ,
{ 
public 

class $
XmlDocumentationProvider )
:* +"
IDocumentationProvider, B
,B C'
IModelDocumentationProviderD _
{ 
private 
XPathNavigator 
_documentNavigator 1
;1 2
private 
const 
string 
TypeExpression +
=, -
$str. R
;R S
private 
const 
string 
MethodExpression -
=. /
$str0 T
;T U
private 
const 
string 
PropertyExpression /
=0 1
$str2 V
;V W
private 
const 
string 
FieldExpression ,
=- .
$str/ S
;S T
private 
const 
string 
ParameterExpression 0
=1 2
$str3 G
;G H
public $
XmlDocumentationProvider '
(' (
string( .
documentPath/ ;
); <
{ 	
if 
( 
documentPath 
== 
null  $
)$ %
{ 
throw   
new   !
ArgumentNullException   /
(  / 0
$str  0 >
)  > ?
;  ? @
}!! 
XPathDocument"" 
xpath"" 
=""  !
new""" %
XPathDocument""& 3
(""3 4
documentPath""4 @
)""@ A
;""A B
_documentNavigator## 
=##  
xpath##! &
.##& '
CreateNavigator##' 6
(##6 7
)##7 8
;##8 9
}$$ 	
public&& 
string&& 
GetDocumentation&& &
(&&& '$
HttpControllerDescriptor&&' ? 
controllerDescriptor&&@ T
)&&T U
{'' 	
XPathNavigator(( 
typeNode(( #
=(($ %
GetTypeNode((& 1
(((1 2 
controllerDescriptor((2 F
.((F G
ControllerType((G U
)((U V
;((V W
return)) 
GetTagValue)) 
()) 
typeNode)) '
,))' (
$str))) 2
)))2 3
;))3 4
}** 	
public,, 
virtual,, 
string,, 
GetDocumentation,, .
(,,. / 
HttpActionDescriptor,,/ C
actionDescriptor,,D T
),,T U
{-- 	
XPathNavigator.. 

methodNode.. %
=..& '
GetMethodNode..( 5
(..5 6
actionDescriptor..6 F
)..F G
;..G H
return// 
GetTagValue// 
(// 

methodNode// )
,//) *
$str//+ 4
)//4 5
;//5 6
}00 	
public22 
virtual22 
string22 
GetDocumentation22 .
(22. /#
HttpParameterDescriptor22/ F
parameterDescriptor22G Z
)22Z [
{33 	,
 ReflectedHttpParameterDescriptor44 ,(
reflectedParameterDescriptor44- I
=44J K
parameterDescriptor44L _
as44` b-
 ReflectedHttpParameterDescriptor	44c É
;
44É Ñ
if55 
(55 (
reflectedParameterDescriptor55 ,
!=55- /
null550 4
)554 5
{66 
XPathNavigator77 

methodNode77 )
=77* +
GetMethodNode77, 9
(779 :(
reflectedParameterDescriptor77: V
.77V W
ActionDescriptor77W g
)77g h
;77h i
if88 
(88 

methodNode88 
!=88 !
null88" &
)88& '
{99 
string:: 
parameterName:: (
=::) *(
reflectedParameterDescriptor::+ G
.::G H
ParameterInfo::H U
.::U V
Name::V Z
;::Z [
XPathNavigator;; "
parameterNode;;# 0
=;;1 2

methodNode;;3 =
.;;= >
SelectSingleNode;;> N
(;;N O
String;;O U
.;;U V
Format;;V \
(;;\ ]
CultureInfo;;] h
.;;h i
InvariantCulture;;i y
,;;y z 
ParameterExpression	;;{ é
,
;;é è
parameterName
;;ê ù
)
;;ù û
)
;;û ü
;
;;ü †
if<< 
(<< 
parameterNode<< %
!=<<& (
null<<) -
)<<- .
{== 
return>> 
parameterNode>> ,
.>>, -
Value>>- 2
.>>2 3
Trim>>3 7
(>>7 8
)>>8 9
;>>9 :
}?? 
}@@ 
}AA 
returnCC 
nullCC 
;CC 
}DD 	
publicFF 
stringFF $
GetResponseDocumentationFF .
(FF. / 
HttpActionDescriptorFF/ C
actionDescriptorFFD T
)FFT U
{GG 	
XPathNavigatorHH 

methodNodeHH %
=HH& '
GetMethodNodeHH( 5
(HH5 6
actionDescriptorHH6 F
)HHF G
;HHG H
returnII 
GetTagValueII 
(II 

methodNodeII )
,II) *
$strII+ 4
)II4 5
;II5 6
}JJ 	
publicLL 
stringLL 
GetDocumentationLL &
(LL& '

MemberInfoLL' 1
memberLL2 8
)LL8 9
{MM 	
stringNN 

memberNameNN 
=NN 
StringNN  &
.NN& '
FormatNN' -
(NN- .
CultureInfoNN. 9
.NN9 :
InvariantCultureNN: J
,NNJ K
$strNNL U
,NNU V
GetTypeNameNNW b
(NNb c
memberNNc i
.NNi j
DeclaringTypeNNj w
)NNw x
,NNx y
member	NNz Ä
.
NNÄ Å
Name
NNÅ Ö
)
NNÖ Ü
;
NNÜ á
stringOO 

expressionOO 
=OO 
memberOO  &
.OO& '

MemberTypeOO' 1
==OO2 4
MemberTypesOO5 @
.OO@ A
FieldOOA F
?OOG H
FieldExpressionOOI X
:OOY Z
PropertyExpressionOO[ m
;OOm n
stringPP 
selectExpressionPP #
=PP$ %
StringPP& ,
.PP, -
FormatPP- 3
(PP3 4
CultureInfoPP4 ?
.PP? @
InvariantCulturePP@ P
,PPP Q

expressionPPR \
,PP\ ]

memberNamePP^ h
)PPh i
;PPi j
XPathNavigatorQQ 
propertyNodeQQ '
=QQ( )
_documentNavigatorQQ* <
.QQ< =
SelectSingleNodeQQ= M
(QQM N
selectExpressionQQN ^
)QQ^ _
;QQ_ `
returnRR 
GetTagValueRR 
(RR 
propertyNodeRR +
,RR+ ,
$strRR- 6
)RR6 7
;RR7 8
}SS 	
publicUU 
stringUU 
GetDocumentationUU &
(UU& '
TypeUU' +
typeUU, 0
)UU0 1
{VV 	
XPathNavigatorWW 
typeNodeWW #
=WW$ %
GetTypeNodeWW& 1
(WW1 2
typeWW2 6
)WW6 7
;WW7 8
returnXX 
GetTagValueXX 
(XX 
typeNodeXX '
,XX' (
$strXX) 2
)XX2 3
;XX3 4
}YY 	
private[[ 
XPathNavigator[[ 
GetMethodNode[[ ,
([[, - 
HttpActionDescriptor[[- A
actionDescriptor[[B R
)[[R S
{\\ 	)
ReflectedHttpActionDescriptor]] )%
reflectedActionDescriptor]]* C
=]]D E
actionDescriptor]]F V
as]]W Y)
ReflectedHttpActionDescriptor]]Z w
;]]w x
if^^ 
(^^ %
reflectedActionDescriptor^^ )
!=^^* ,
null^^- 1
)^^1 2
{__ 
string`` 
selectExpression`` '
=``( )
String``* 0
.``0 1
Format``1 7
(``7 8
CultureInfo``8 C
.``C D
InvariantCulture``D T
,``T U
MethodExpression``V f
,``f g
GetMemberName``h u
(``u v&
reflectedActionDescriptor	``v è
.
``è ê

MethodInfo
``ê ö
)
``ö õ
)
``õ ú
;
``ú ù
returnaa 
_documentNavigatoraa )
.aa) *
SelectSingleNodeaa* :
(aa: ;
selectExpressionaa; K
)aaK L
;aaL M
}bb 
returndd 
nulldd 
;dd 
}ee 	
privategg 
staticgg 
stringgg 
GetMemberNamegg +
(gg+ ,

MethodInfogg, 6
methodgg7 =
)gg= >
{hh 	
stringii 
nameii 
=ii 
Stringii  
.ii  !
Formatii! '
(ii' (
CultureInfoii( 3
.ii3 4
InvariantCultureii4 D
,iiD E
$striiF O
,iiO P
GetTypeNameiiQ \
(ii\ ]
methodii] c
.iic d
DeclaringTypeiid q
)iiq r
,iir s
methodiit z
.iiz {
Nameii{ 
)	ii Ä
;
iiÄ Å
ParameterInfojj 
[jj 
]jj 

parametersjj &
=jj' (
methodjj) /
.jj/ 0
GetParametersjj0 =
(jj= >
)jj> ?
;jj? @
ifkk 
(kk 

parameterskk 
.kk 
Lengthkk !
!=kk" $
$numkk% &
)kk& '
{ll 
stringmm 
[mm 
]mm 
parameterTypeNamesmm +
=mm, -

parametersmm. 8
.mm8 9
Selectmm9 ?
(mm? @
parammm@ E
=>mmF H
GetTypeNamemmI T
(mmT U
parammmU Z
.mmZ [
ParameterTypemm[ h
)mmh i
)mmi j
.mmj k
ToArraymmk r
(mmr s
)mms t
;mmt u
namenn 
+=nn 
Stringnn 
.nn 
Formatnn %
(nn% &
CultureInfonn& 1
.nn1 2
InvariantCulturenn2 B
,nnB C
$strnnD K
,nnK L
StringnnM S
.nnS T
JoinnnT X
(nnX Y
$strnnY \
,nn\ ]
parameterTypeNamesnn^ p
)nnp q
)nnq r
;nnr s
}oo 
returnqq 
nameqq 
;qq 
}rr 	
privatett 
statictt 
stringtt 
GetTagValuett )
(tt) *
XPathNavigatortt* 8

parentNodett9 C
,ttC D
stringttE K
tagNamettL S
)ttS T
{uu 	
ifvv 
(vv 

parentNodevv 
!=vv 
nullvv "
)vv" #
{ww 
XPathNavigatorxx 
nodexx #
=xx$ %

parentNodexx& 0
.xx0 1
SelectSingleNodexx1 A
(xxA B
tagNamexxB I
)xxI J
;xxJ K
ifyy 
(yy 
nodeyy 
!=yy 
nullyy  
)yy  !
{zz 
return{{ 
node{{ 
.{{  
Value{{  %
.{{% &
Trim{{& *
({{* +
){{+ ,
;{{, -
}|| 
}}} 
return 
null 
; 
}
ÄÄ 	
private
ÇÇ 
XPathNavigator
ÇÇ 
GetTypeNode
ÇÇ *
(
ÇÇ* +
Type
ÇÇ+ /
type
ÇÇ0 4
)
ÇÇ4 5
{
ÉÉ 	
string
ÑÑ  
controllerTypeName
ÑÑ %
=
ÑÑ& '
GetTypeName
ÑÑ( 3
(
ÑÑ3 4
type
ÑÑ4 8
)
ÑÑ8 9
;
ÑÑ9 :
string
ÖÖ 
selectExpression
ÖÖ #
=
ÖÖ$ %
String
ÖÖ& ,
.
ÖÖ, -
Format
ÖÖ- 3
(
ÖÖ3 4
CultureInfo
ÖÖ4 ?
.
ÖÖ? @
InvariantCulture
ÖÖ@ P
,
ÖÖP Q
TypeExpression
ÖÖR `
,
ÖÖ` a 
controllerTypeName
ÖÖb t
)
ÖÖt u
;
ÖÖu v
return
ÜÜ  
_documentNavigator
ÜÜ %
.
ÜÜ% &
SelectSingleNode
ÜÜ& 6
(
ÜÜ6 7
selectExpression
ÜÜ7 G
)
ÜÜG H
;
ÜÜH I
}
áá 	
private
ââ 
static
ââ 
string
ââ 
GetTypeName
ââ )
(
ââ) *
Type
ââ* .
type
ââ/ 3
)
ââ3 4
{
ää 	
string
ãã 
name
ãã 
=
ãã 
type
ãã 
.
ãã 
FullName
ãã '
;
ãã' (
if
åå 
(
åå 
type
åå 
.
åå 
IsGenericType
åå "
)
åå" #
{
çç 
Type
èè 
genericType
èè  
=
èè! "
type
èè# '
.
èè' (&
GetGenericTypeDefinition
èè( @
(
èè@ A
)
èèA B
;
èèB C
Type
êê 
[
êê 
]
êê 
genericArguments
êê '
=
êê( )
type
êê* .
.
êê. /!
GetGenericArguments
êê/ B
(
êêB C
)
êêC D
;
êêD E
string
ëë 
genericTypeName
ëë &
=
ëë' (
genericType
ëë) 4
.
ëë4 5
FullName
ëë5 =
;
ëë= >
genericTypeName
îî 
=
îî  !
genericTypeName
îî" 1
.
îî1 2
	Substring
îî2 ;
(
îî; <
$num
îî< =
,
îî= >
genericTypeName
îî? N
.
îîN O
IndexOf
îîO V
(
îîV W
$char
îîW Z
)
îîZ [
)
îî[ \
;
îî\ ]
string
ïï 
[
ïï 
]
ïï 
argumentTypeNames
ïï *
=
ïï+ ,
genericArguments
ïï- =
.
ïï= >
Select
ïï> D
(
ïïD E
t
ïïE F
=>
ïïG I
GetTypeName
ïïJ U
(
ïïU V
t
ïïV W
)
ïïW X
)
ïïX Y
.
ïïY Z
ToArray
ïïZ a
(
ïïa b
)
ïïb c
;
ïïc d
name
ññ 
=
ññ 
String
ññ 
.
ññ 
Format
ññ $
(
ññ$ %
CultureInfo
ññ% 0
.
ññ0 1
InvariantCulture
ññ1 A
,
ññA B
$str
ññC O
,
ññO P
genericTypeName
ññQ `
,
ññ` a
String
ññb h
.
ññh i
Join
ññi m
(
ññm n
$str
ññn q
,
ññq r 
argumentTypeNamesññs Ñ
)ññÑ Ö
)ññÖ Ü
;ññÜ á
}
óó 
if
òò 
(
òò 
type
òò 
.
òò 
IsNested
òò 
)
òò 
{
ôô 
name
õõ 
=
õõ 
name
õõ 
.
õõ 
Replace
õõ #
(
õõ# $
$str
õõ$ '
,
õõ' (
$str
õõ) ,
)
õõ, -
;
õõ- .
}
úú 
return
ûû 
name
ûû 
;
ûû 
}
üü 	
}
†† 
}°° ±
íC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IAddTagsService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 
	interface

	 
IAddTagsService

 "
{ 
Task 
< 
Boolean 
> 
AddTags 
( 
	TagsModel '
tags( ,
), -
;- .
Task 
< 
IEnumerable 
< 
	TagsModel "
>" #
># $
GetTags% ,
(, -
int- 0
UserId1 7
)7 8
;8 9
} 
} ¿
ôC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IAssociatedTagsService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


 "
IAssociatedTagsService

 *
{ 
Task 
AddAssociatedTags 
( 
AssociatedTagModel 1

associated2 <
)< =
;= >
} 
} ﬂ
íC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ICommentService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


 
ICommentService

 #
{ 
List 
< 
CommentModel 
> 
GetCommentById )
() *
int* -
id. 0
)0 1
;1 2
void 

AddComment 
( 
CommentModel $
comment% ,
), -
;- .
bool 
EditMyComment 
( 
CommentModel '
comment( /
)/ 0
;0 1
} 
} æ
òC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IElasticSearchService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


 !
IElasticSearchService

 )
{ 
void 

GetSqlData 
( 
) 
; 
List 
< 
PostRequestModel 
> 
GetSearchResult .
(. /
string/ 5
query6 ;
); <
;< =
} 
} ó
ìC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IHomePageService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 

	interface

 
IHomePageService

 %
{ 
IEnumerable 
< 
PostRequestModel $
>$ %
HomePagePost& 2
(2 3
int3 6
UserId7 =
,= >
int? B

CategoryIdC M
,M N
SortingTypeO Z
sortingtype[ f
,f g

FilterTypeh r

filtertypes }
)} ~
;~ 
} 
} õ
èC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ILikeService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


 
ILikeService

  
{ 
void 
LikePost 
( 
LikedPostModel '
result( .
). /
;/ 0
} 
} “
êC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ILoginService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 

	interface

 
ILoginService

 "
{ 
Task 
< 
LoginRequestModel 
> 
Authenticatetoken  1
(1 2
string2 8
token9 >
)> ?
;? @
void 
LogOut 
( 
int 
UserId 
) 
;  
} 
} ˇ
†C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IModeratorNotificationService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


 )
IModeratorNotificationService

 1
{ 
List 
< 
NotificationModel 
> $
GetModeratorNotification  8
(8 9
int9 <
UserId= C
)C D
;D E
} 
} 
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IMyPostService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 
	interface

	 
IMyPostService

 !
{ 
IEnumerable 
< 
MyPostModel 
>  
MySeeRecentPost! 0
(0 1
int1 4
UserId5 ;
); <
;< =
bool 

EditMyPost 
( 
EditPostModel %
editPost& .
). /
;/ 0
void 
DeleteRecentPost 
( 
int !
PostId" (
)( )
;) *
void 

AddNewPost 
( 
AddPostRequestModel +
AddPost, 3
)3 4
;4 5
} 
} Ë
óC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\INotificationService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


  
INotificationService

 (
{ 
List 
< 
NotificationModel 
> 
GetUserNotification  3
(3 4
int4 7
UserId8 >
)> ?
;? @
} 
} ≤
òC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IReportCommentService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 
	interface

	 !
IReportCommentService

 (
{ 
bool 
EditMyComment 
( 
ReportCommentModel -
rp. 0
)0 1
;1 2
} 
} ±
èC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ISpamService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
	Interface- 6
{		 
public

 	
	interface


 
ISpamService

  
{ 
void 

AddNewSpam 
( 
	SpamModel !
spam" &
)& '
;' (
void 
DeleteRecentPost 
( 
int !
PostId" (
)( )
;) *
IEnumerable 
< 
ReportRequestModel &
>& '
GetPost( /
(/ 0
)0 1
;1 2
} 
} Ÿ
èC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\AddTagsService.cs
	namespace

 	
KnowledgeManagement


 
.

 
Business_Layer

 ,
.

, -
Service

- 4
{ 
public 

class 
AddTagsService 
:  !
IAddTagsService" 1
{ 
public 
readonly 
IAddTagsData $
_data% *
;* +
public 
AddTagsService 
( 
IAddTagsData *
value+ 0
)0 1
{ 	
_data 
= 
value 
; 
} 	
public 
async 
Task 
< 
Boolean !
>! "
AddTags# *
(* +
	TagsModel+ 4
tags5 9
)9 :
{ 	
return 
await 
Task 
. 
Run !
<! "
Boolean" )
>) *
(* +
(+ ,
), -
=>. 0
_data1 6
.6 7
AddTags7 >
(> ?
tags? C
)C D
)D E
;E F
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
	TagsModel& /
>/ 0
>0 1
GetTags2 9
(9 :
int: =
UserId> D
)D E
{ 	
return 
await 
Task 
. 
Run !
<! "
IEnumerable" -
<- .
	TagsModel. 7
>7 8
>8 9
(9 :
(: ;
); <
=>= ?
_dataA F
.F G
GetTagsG N
(N O
UserIdO U
)U V
)V W
;W X
} 	
} 
} é

ñC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\AssociatedTagsService.cs
	namespace

 	
KnowledgeManagement


 
.

 
Business_Layer

 ,
.

, -
Service

- 4
{ 
public 

class !
AssociatedTagsService &
:' ("
IAssociatedTagsService) ?
{ 
public 
readonly 
IAssociatedTagsData +
_data, 1
;1 2
public !
AssociatedTagsService $
($ %
IAssociatedTagsData% 8
value9 >
)> ?
{ 	
_data 
= 
value 
; 
} 	
public 
async 
Task 
AddAssociatedTags +
(+ ,
AssociatedTagModel, >

associated? I
)I J
{ 	
await 
Task 
. 
Run 
( 
( 
) 
=> 
_data  %
.% &
AddAssociatedTags& 7
(7 8

associated8 B
)B C
)C D
;D E
} 	
} 
} À
èC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\CommentService.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class 
CommentService 
:  !
ICommentService" 1
{ 
public 
readonly 
ICommentData $
_data% *
;* +
public 
CommentService 
( 
ICommentData *
value+ 0
)0 1
{ 	
_data 
= 
value 
; 
} 	
public 
List 
< 
CommentModel  
>  !
GetCommentById" 0
(0 1
int1 4
id5 7
)7 8
{ 	
return 
_data 
. 
GetCommentById '
(' (
id( *
)* +
;+ ,
} 	
public 
void 

AddComment 
( 
CommentModel +
comment, 3
)3 4
{ 	
_data 
. 

AddComment 
( 
comment $
)$ %
;% &
} 	
public 
bool 
EditMyComment !
(! "
CommentModel" .
comment/ 6
)6 7
{ 	
return  
 
_data   
.   
EditMyComment   %
(  % &
comment  & -
)  - .
;  . /
}!! 	
}"" 
}## Ê

éC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\ElasticSearch.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class 
ElasticSearch 
:  !
IElasticSearchService! 6
{ 
public 
readonly 
IElasticSearchData *
_data+ 0
;0 1
public 
ElasticSearch 
( 
IElasticSearchData /
value0 5
)5 6
{ 	
_data 
= 
value 
; 
} 	
public 
void 

GetSqlData 
( 
)  
{ 	
_data 
. 

GetSqlData 
( 
) 
; 
} 	
public 
List 
< 
PostRequestModel $
>$ %
GetSearchResult& 5
(5 6
string6 <
query= B
)B C
{ 	
return 
_data 
. 
GetSearchResult (
(( )
query) .
). /
;/ 0
} 	
}"" 
}## ≠
êC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\HomePageService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
Service- 4
{ 
public 

class 
HomePageService  
:! "
IHomePageService# 3
{ 
public 
readonly 
IHomePageData %
_data& +
;+ ,
public 
HomePageService 
( 
IHomePageData ,
value- 2
)2 3
{ 	
_data 
= 
value 
; 
} 	
public"" 
IEnumerable"" 
<"" 
PostRequestModel"" +
>""+ ,
HomePagePost""- 9
(""9 :
int"": =
UserId""> D
,""D E
int""F I

CategoryId""J T
,""T U
SortingType""V a
sortingtype""b m
,""m n

FilterType""o y

filtertype	""z Ñ
)
""Ñ Ö
{&& 	
return'' 
_data'' 
.'' 
HomePagePost'' %
(''% &
UserId''& ,
,'', -

CategoryId''. 8
,''8 9
sortingtype'': E
,''E F

filtertype''G Q
)''Q R
;''R S
})) 	
}** 
}++ ê
åC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\LikeService.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class 
LikeService 
: 
ILikeService +
{ 
public 
readonly 
	ILikeData !
_data" '
;' (
public 
LikeService 
( 
	ILikeData $
value% *
)* +
{ 	
_data 
= 
value 
; 
} 	
public 
void 
LikePost 
( 
LikedPostModel +
result, 2
)2 3
{ 	
_data 
. 
LikePost 
( 
result "
)" #
;# $
} 	
} 
} Ø
çC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\LoginService.cs
	namespace 	
KnowledgeManagement
 
. 
Business_Layer ,
., -
Service- 4
{ 
public 

class 
LoginService 
: 
ILoginService  -
{ 
public 
readonly 

ILoginData "
_data# (
;( )
public 
LoginService 
( 

ILoginData &
value' ,
), -
{ 	
_data 
= 
value 
; 
} 	
public 
async 
Task 
< 
LoginRequestModel +
>+ ,
Authenticatetoken- >
(> ?
string? E
tokenF K
)K L
{ 	"
GoogleJsonWebSignature "
." #
Payload# *
pyload+ 1
=2 3
await4 9"
GoogleJsonWebSignature: P
.P Q
ValidateAsyncQ ^
(^ _
token_ d
)d e
;e f&
KnowledgeManagementContext &
db' )
=* +
new, /&
KnowledgeManagementContext0 J
(J K
)K L
;L M
int 
h 
= 
( 
from 
n 
in 
db !
.! "
Users" '
where 
pyload !
.! "
Email" '
==( *
n+ ,
., -
EmailId- 4
select   
n   
.   
UserId   $
)  $ %
.  % &
FirstOrDefault  & 4
(  4 5
)  5 6
;  6 7
var"" 
	moderator"" 
="" 
("" 
from""  
k""! "
in""# %
db""& (
.""( )
Users"") .
where## 
pyload## !
.##! "
Email##" '
==##( *
k##+ ,
.##, -
EmailId##- 4
select$$ 
k$$ 
.$$ 
isModerator$$ )
)$$) *
.$$* +
FirstOrDefault$$+ 9
($$9 :
)$$: ;
;$$; <
var'' 
jwtToken'' 
='' 

JwtManager'' &
.''& '
GenerateToken''' 4
(''4 5
pyload''5 ;
.''; <
Email''< A
,''A B
h''B C
)''C D
;''D E
LoginRequestModel(( 
lrmodel(( %
=((& '
new((( +
LoginRequestModel((, =
(((= >
)((> ?
{)) 
token** 
=** 
jwtToken**  
,**  !
isModerator++ 
=++ 
	moderator++ '
,++' (
UserId,, 
=,, 
h,, 
}-- 
;-- 
return.. 
lrmodel.. 
;.. 
}// 	
public11 
void11 
LogOut11 
(11 
int11 
UserId11 %
)11% &
{22 	
_data33 
.33 
LogOut33 
(33 
UserId33 
)33  
;33  !
}44 	
}55 
}66 ÿ	
ùC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\ModeratorNotificationService.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class (
ModeratorNotificationService -
:. /)
IModeratorNotificationService0 M
{ 
public 
readonly &
IModeratorNotificationData 2
_data3 8
;8 9
public (
ModeratorNotificationService +
(+ ,&
IModeratorNotificationData, F
resG J
)J K
{ 	
_data 
= 
res 
; 
} 	
public 
List 
< 
NotificationModel %
>% &$
GetModeratorNotification' ?
(? @
int@ C
UserIdD J
)J K
{ 	
return 
_data 
. $
GetModeratorNotification 1
(1 2
UserId2 8
)8 9
;9 :
} 	
} 
} Ä
éC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\MyPostService.cs
	namespace

 	
KnowledgeManagement


 
.

 
Business_Layer

 ,
.

, -
Service

- 4
{ 
public 

class 
MyPostService 
:  
IMyPostService! /
{ 
private 
readonly 
IMyPostData $
_data% *
;* +
public 
MyPostService 
( 
IMyPostData (
value) .
). /
{ 	
_data 
= 
value 
; 
} 	
public 
IEnumerable 
< 
MyPostModel &
>& '
MySeeRecentPost( 7
(7 8
int8 ;
UserId< B
)B C
{ 	
return 
_data 
. 
MySeeRecentPost (
(( )
UserId) /
)/ 0
;0 1
} 	
public 
bool 

EditMyPost 
( 
EditPostModel ,
editPost- 5
)5 6
{ 	
return 
_data 
. 

EditMyPost #
(# $
editPost$ ,
), -
;- .
} 	
public 
void 
DeleteRecentPost $
($ %
int% (
PostId) /
)/ 0
{   	
_data!! 
.!! 
DeleteRecentPost!! #
(!!# $
PostId!!$ *
)!!* +
;!!+ ,
}"" 	
public$$ 
void$$ 

AddNewPost$$ 
($$ 
AddPostRequestModel$$ 2
AddPost$$3 :
)$$: ;
{%% 	
_data&& 
.&& 

AddNewPost&& 
(&& 
AddPost&& $
)&&$ %
;&&% &
}'' 	
}(( 
})) ú	
îC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\NotificationService.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class 
NotificationService $
:% & 
INotificationService' ;
{ 
public 
readonly 
INotificationData )
_data* /
;/ 0
public 
NotificationService "
(" #
INotificationData# 4
value5 :
): ;
{ 	
_data 
= 
value 
; 
} 	
public 
List 
< 
NotificationModel %
>% &
GetUserNotification' :
(: ;
int; >
UserId? E
)E F
{ 	
return 
_data 
. 
GetUserNotification +
(+ ,
UserId, 2
)2 3
;3 4
} 	
} 
} ‡
ïC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\ReportcommentService.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class  
ReportcommentService %
:& '!
IReportCommentService( =
{ 
public 
readonly 
IReportcommentData *
_data+ 0
;0 1
public  
ReportcommentService #
(# $
IReportcommentData$ 6
value7 <
)< =
{ 	
_data 
= 
value 
; 
} 	
public 
bool 
EditMyComment !
(! "
ReportCommentModel" 4
rp5 7
)7 8
{ 	
return 
_data 
. 
EditMyComment %
(% &
rp& (
)( )
;) *
} 	
} 
} Â
åC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\SpamService.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Business_Layer		 ,
.		, -
Service		- 4
{

 
public 

class 
SpamService 
: 
ISpamService +
{ 
public 
readonly 
	ISpamData !
_data" '
;' (
public 
SpamService 
( 
	ISpamData $
value% *
)* +
{ 	
_data 
= 
value 
; 
} 	
public 
void 

AddNewSpam 
( 
	SpamModel (
spam) -
)- .
{ 	
_data 
. 

AddNewSpam 
( 
spam !
)! "
;" #
} 	
public 
void 
DeleteRecentPost $
($ %
int% (
PostId) /
)/ 0
{ 	
_data 
. 
DeleteRecentPost "
(" #
PostId# )
)) *
;* +
} 	
public 
IEnumerable 
< 
ReportRequestModel ,
>, -
GetPost. 5
(5 6
)6 7
{ 	
return   
_data   
.   
GetPost    
(    !
)  ! "
;  " #
}!! 	
}"" 
}## Õ#
áC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\AddTagsController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class 
AddTagsController "
:# $
ApiController% 2
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
private 
readonly 
IAddTagsService (
_at) ,
;, -
public 
AddTagsController  
(  !
IAddTagsService! 0
value1 6
)6 7
{ 	
_at 
= 
value 
; 
} 	
[   	
JwtAuthentication  	 
]   
public!! 
async!! 
Task!! 
<!! 
IHttpActionResult!! +
>!!+ ,
Get!!- 0
(!!0 1
)!!1 2
{"" 	
try## 
{$$ 
var&& 
identity&& 
=&& 
(&&  
ClaimsIdentity&&  .
)&&. /
User&&/ 3
.&&3 4
Identity&&4 <
;&&< =
var'' 
userIdClaim'' 
=''  !
identity''" *
.''* +
	FindFirst''+ 4
(''4 5

ClaimTypes''5 ?
.''? @
UserData''@ H
)''H I
;''I J
int(( 
userid(( 
=(( 
Int32(( "
.((" #
Parse((# (
(((( )
userIdClaim(() 4
?((4 5
.((5 6
Value((6 ;
)((; <
;((< =
logger)) 
.)) 
Info)) 
()) 
$str)) D
)))D E
;))E F
var** 
data** 
=** 
await**  
_at**! $
.**$ %
GetTags**% ,
(**, -
userid**- 3
)**3 4
;**4 5
return++ 
Ok++ 
(++ 
data++ 
)++ 
;++  
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)-- 
{.. 
logger// 
.// 
Error// 
(// 
$str// 6
+//7 8
ex//9 ;
)//; <
;//< =
return00 

BadRequest00 !
(00! "
$str00" 0
+001 2
ex003 5
)005 6
;006 7
}11 
}33 	
[66 	
JwtAuthentication66	 
]66 
public77 
async77 
Task77 
<77 
IHttpActionResult77 +
>77+ ,
Post77- 1
(771 2
[772 3
FromBody773 ;
]77; <
	TagsModel77< E
tag77F I
)77I J
{88 	
try99 
{:: 
logger<< 
.<< 
Info<< 
(<< 
$str<< D
)<<D E
;<<E F
if>> 
(>> 
tag>> 
.>> 
TagName>> 
.>>  
Equals>>  &
(>>& '
null>>' +
)>>+ ,
)>>, -
{?? 
return@@ 

BadRequest@@ %
(@@% &
$str@@& 5
)@@5 6
;@@6 7
}AA 
elseDD 
{EE 
varFF 
fFF 
=FF 
awaitFF !
_atFF" %
.FF% &
AddTagsFF& -
(FF- .
tagFF. 1
)FF1 2
;FF2 3
ifGG 
(GG 
fGG 
!=GG 
trueGG 
)GG  
{HH 
returnKK 

BadRequestKK )
(KK) *
$strKK* =
)KK= >
;KK> ?
}NN 
elseOO 
{PP 
returnQQ 
OkQQ !
(QQ! "
tagQQ" %
)QQ% &
;QQ& '
}SS 
}UU 
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW 
{XX 
loggerYY 
.YY 
ErrorYY 
(YY 
$strYY 7
+YY8 9
exYY: <
)YY< =
;YY= >
returnZZ 

BadRequestZZ !
(ZZ! "
$strZZ" 0
+ZZ1 2
exZZ3 5
)ZZ5 6
;ZZ6 7
}[[ 
}\\ 	
}bb 
}dd ◊

éC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\AssociatedTagsController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class $
AssociatedTagsController )
:* +
ApiController, 9
{ 
private 
readonly "
IAssociatedTagsService /
_at0 3
;3 4
public $
AssociatedTagsController '
(' ("
IAssociatedTagsService( >
value? D
)D E
{ 	
_at 
= 
value 
; 
} 	
[ 	
JwtAuthentication	 
] 
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
Post- 1
(1 2
[2 3
FromBody3 ;
]; <
AssociatedTagModel< N
associatedTagO \
)\ ]
{   	
await"" 
_at"" 
."" 
AddAssociatedTags"" &
(""& '
associatedTag""' 4
)""4 5
;""5 6
return## 
Ok## 
(## 
)## 
;## 
}$$ 	
}'' 
}(( œ/
áC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\CommentController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class 
CommentController "
:# $
ApiController% 2
{ 
private 
readonly 
ICommentService '
_commentService( 7
;7 8
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
public 
CommentController  
(  !
ICommentService! 0
val1 4
)4 5
{ 	
_commentService 
= 
val !
;! "
} 	
[$$ 	
JwtAuthentication$$	 
]$$ 
public%% 
HttpResponseMessage%% "
Get%%# &
(%%& '
int%%' *
id%%+ -
)%%- .
{&& 	
try'' 
{(( 
logger** 
.** 
Info** 
(** 
$str** R
)**R S
;**S T
var++ 
result++ 
=++ 
_commentService++ ,
.++, -
GetCommentById++- ;
(++; <
id++< >
)++> ?
;++? @
return,, 
Request,, 
.,, 
CreateResponse,, -
(,,- .
HttpStatusCode,,. <
.,,< =
OK,,= ?
,,,? @
result,,A G
),,G H
;,,I J
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
).. 
{// 
logger00 
.00 
Error00 
(00 
$str00 6
+007 8
ex009 ;
)00; <
;00< =
return11 
Request11 
.11 
CreateResponse11 -
(11- .
HttpStatusCode11. <
.11< =

BadRequest11= G
)11G H
;11H I
}22 
}33 	
[:: 	
JwtAuthentication::	 
]:: 
public;; 
IHttpActionResult;;  
Post;;! %
(;;% &
[;;& '
FromBody;;' /
];;/ 0
CommentModel;;0 <
comment;;= D
);;D E
{<< 	
try== 
{>> 
var?? 
identity?? 
=?? 
(??  
ClaimsIdentity??  .
)??. /
User??/ 3
.??3 4
Identity??4 <
;??< =
var@@ 
userIdClaim@@ 
=@@  !
identity@@" *
.@@* +
	FindFirst@@+ 4
(@@4 5

ClaimTypes@@5 ?
.@@? @
UserData@@@ H
)@@H I
;@@I J
intAA 
useridAA 
=AA 
Int32AA "
.AA" #
ParseAA# (
(AA( )
userIdClaimAA) 4
?AA4 5
.AA5 6
ValueAA6 ;
)AA; <
;AA< =
loggerBB 
.BB 
InfoBB 
(BB 
$strBB @
)BB@ A
;BBA B
commentCC 
.CC 
UserIdCC 
=CC  
useridCC! '
;CC' (
ifEE 
(EE 
commentEE 
.EE 
ContentEE #
.EE# $
EqualsEE$ *
(EE* +
nullEE+ /
)EE/ 0
)EE0 1
{FF 
returnGG 

BadRequestGG %
(GG% &
$strGG& 5
)GG5 6
;GG6 7
}HH 
ifII 
(II 
commentII 
.II 
PostIdII "
.II" #
EqualsII# )
(II) *
nullII* .
)II. /
)II/ 0
{JJ 
returnKK 

BadRequestKK %
(KK% &
$strKK& 4
)KK4 5
;KK5 6
}LL 
elseMM 
{NN 
_commentServiceOO #
.OO# $

AddCommentOO$ .
(OO. /
commentOO/ 6
)OO6 7
;OO7 8
returnPP 
OkPP 
(PP 
)PP 
;PP  
}QQ 
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS 
{TT 
loggerUU 
.UU 
ErrorUU 
(UU 
$strUU 7
+UU8 9
exUU: <
)UU< =
;UU= >
returnVV 

BadRequestVV !
(VV! "
$strVV" 0
+VV0 1
exVV1 3
)VV3 4
;VV4 5
}WW 
}YY 	
[[[ 	
JwtAuthentication[[	 
][[ 
public\\ 
IHttpActionResult\\  
Put\\! $
(\\$ %
[\\% &
FromBody\\& .
]\\. /
CommentModel\\0 <
editComment\\= H
)\\H I
{]] 	
try^^ 
{__ 
loggeraa 
.aa 
Infoaa 
(aa 
$straa C
)aaC D
;aaD E
varcc 

newCommentcc 
=cc  
_commentServicecc! 0
.cc0 1
EditMyCommentcc1 >
(cc> ?
editCommentcc? J
)ccJ K
;ccK L
ifdd 
(dd 

newCommentdd 
)dd 
{ee 
returnff 
Okff 
(ff 
)ff 
;ff  
}gg 
elsehh 
returnii 
NotFoundii #
(ii# $
)ii$ %
;ii% &
}jj 
catchkk 
(kk 
	Exceptionkk 
exkk 
)kk 
{ll 
loggermm 
.mm 
Errormm 
(mm 
$strmm 7
+mm8 9
exmm: <
)mm< =
;mm= >
returnnn 

BadRequestnn !
(nn! "
$strnn" 0
+nn1 2
exnn3 5
)nn5 6
;nn6 7
}oo 
}pp 	
}rr 
}ss Ë
àC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\HomePageController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class 
HomePageController #
:$ %
ApiController& 3
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
private 
readonly 
IHomePageService )
_hp* -
;- .
public 
HomePageController !
(! "
IHomePageService" 2
homePage3 ;
); <
{ 	
_hp 
= 
homePage 
; 
} 	
[!! 
JwtAuthentication!! 
]!! 
public## 
IHttpActionResult##  
Get##! $
(##$ %
int##% (

CategoryId##) 3
,##3 4
SortingType##5 @
sortingtype##A L
,##L M

FilterType##N X

filtertype##Y c
)##c d
{$$ 	
try&& 
{'' 
var(( 
identity(( 
=(( 
(((  
ClaimsIdentity((  .
)((. /
User((/ 3
.((3 4
Identity((4 <
;((< =
var)) 
userIdClaim)) 
=))  !
identity))" *
.))* +
	FindFirst))+ 4
())4 5

ClaimTypes))5 ?
.))? @
UserData))@ H
)))H I
;))I J
int** 
userid** 
=** 
Int32** "
.**" #
Parse**# (
(**( )
userIdClaim**) 4
?**4 5
.**5 6
Value**6 ;
)**; <
;**< =
var-- 
data-- 
=-- 
_hp-- 
.-- 
HomePagePost-- +
(--+ ,
userid--, 2
,--2 3

CategoryId--4 >
,--> ?
sortingtype--@ K
,--K L

filtertype--M W
)--W X
;--X Y
logger22 
.22 
Info22 
(22 
$str22 I
)22I J
;22J K
return33 
Ok33 
(33 
data33 
)33 
;33  
}44 
catch55 
(55 
	Exception55 
ex55 
)55 
{66 
logger77 
.77 
Info77 
(77 
$str77 I
)77I J
;77J K
logger88 
.88 
Error88 
(88 
$str88 7
+887 8
ex888 :
)88: ;
;88; <
return99 

BadRequest99 !
(99! "
$str99" 0
+991 2
ex993 5
)995 6
;996 7
}:: 
};; 	
}<< 
}== „
çC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\ReportCommentController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class #
ReportCommentController (
:) *
ApiController+ 8
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
public 
readonly !
IReportCommentService -
_data. 3
;3 4
public #
ReportCommentController #
(# $!
IReportCommentService$ 9
value: ?
)? @
{ 	
_data 
= 
value 
; 
} 	
public   
IHttpActionResult    
Post  ! %
(  % &
[  & '
FromBody  ' /
]  / 0
ReportCommentModel  0 B
report  C I
)  I J
{!! 	
try"" 
{## 
logger%% 
.%% 
Info%% 
(%% 
$str%% B
)%%B C
;%%C D
return(( 
Ok(( 
((( 
)(( 
;(( 
})) 
catch** 
(** 
	Exception** 
ex** 
)** 
{++ 
logger-- 
.-- 
Error-- 
(-- 
$str-- >
+--? @
ex--A C
)--C D
;--D E
return.. 

BadRequest.. !
(..! "
$str.." 0
+..1 2
ex..3 5
)..5 6
;..6 7
}// 
}11 	
}33 
}44 º
çC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\ElasticSearchController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class #
ElasticSearchController (
:) *
ApiController+ 8
{ 
private 
readonly 
string 
ElasticSearchUrl  0
=1 2
System3 9
.9 :
Configuration: G
.G H 
ConfigurationManagerH \
.\ ]
AppSettings] h
[h i
$stri }
]} ~
;~ 
private 
readonly !
IElasticSearchService .
_elasticClient/ =
;= >
public #
ElasticSearchController &
(& '!
IElasticSearchService' <
value= B
)B C
{ 	
_elasticClient 
= 
value "
;" #
} 	
public 
IHttpActionResult  
Get! $
($ %
string% +
query, 1
)1 2
{ 	
var   
uri   
=   
new   
Uri   
(   
ElasticSearchUrl   /
)  / 0
;  0 1
return"" 
Ok"" 
("" 
_elasticClient"" $
.""$ %
GetSearchResult""% 4
(""4 5
query""5 :
)"": ;
)""; <
;""< =
}## 	
public** 
void** 
Post** 
(** 
)** 
{++ 	
_elasticClient-- 
.-- 

GetSqlData-- %
(--% &
)--& '
;--' (
Console.. 
... 
	WriteLine.. 
(.. 
$str.. -
)..- .
;... /
}11 	
}44 
}55 œ
ÑC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\LikeController.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Controllers		 )
{

 
public 

class 
LikeController 
:  !
ApiController" /
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
private 
readonly 
ILikeService %
_lp& )
;) *
public 
LikeController 
( 
ILikeService *
like+ /
)/ 0
{ 	
_lp 
= 
like 
; 
} 	
[ 	
JwtAuthentication	 
] 
public   
IHttpActionResult    
Post  ! %
(  % &
[  & '
FromBody  ' /
]  / 0
LikedPostModel  0 >
value  ? D
)  D E
{!! 	
try"" 
{## 
var$$ 
identity$$ 
=$$ 
($$  
ClaimsIdentity$$  .
)$$. /
User$$/ 3
.$$3 4
Identity$$4 <
;$$< =
var%% 
userIdClaim%% 
=%%  !
identity%%" *
.%%* +
	FindFirst%%+ 4
(%%4 5

ClaimTypes%%5 ?
.%%? @
UserData%%@ H
)%%H I
;%%I J
int&& 
userid&& 
=&& 
Int32&& "
.&&" #
Parse&&# (
(&&( )
userIdClaim&&) 4
?&&4 5
.&&5 6
Value&&6 ;
)&&; <
;&&< =
value'' 
.'' 
UserId'' 
='' 
userid'' %
;''% &
logger(( 
.(( 
Info(( 
((( 
$str(( @
)((@ A
;((A B
_lp)) 
.)) 
LikePost)) 
()) 
value)) "
)))" #
;))# $
return,, 
Ok,, 
(,, 
value,, 
),,  
;,,  !
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
).. 
{// 
logger00 
.00 
Error00 
(00 
$str00 4
+005 6
ex007 9
)009 :
;00: ;
return11 

BadRequest11 !
(11! "
$str11" 0
+111 2
ex113 5
)115 6
;116 7
}22 
}33 	
}66 
}77 •
ÖC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\LoginController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class 
LoginController  
:! "
ApiController# 0
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
private 
readonly 
ILoginService &
_ls' *
;* +
public 
LoginController 
( 
ILoginService ,
lp- /
)/ 0
{ 	
_ls 
= 
lp 
; 
} 	
public(( 
async(( 
Task(( 
<(( 
IHttpActionResult(( +
>((+ ,
Post((- 1
(((1 2
string((2 8
token((9 >
)((> ?
{)) 	
try** 
{++ 
logger,, 
.,, 
Info,, 
(,, 
$str,, +
),,+ ,
;,,, -
var-- 
result-- 
=-- 
await-- "
_ls--# &
.--& '
Authenticatetoken--' 8
(--8 9
token--9 >
)--> ?
;--? @
if.. 
(.. 
result.. 
!=.. 
null.. "
).." #
{// 
return00 
Ok00 
(00 
result00 $
)00$ %
;00% &
}11 
return22 
NotFound22 
(22  
)22  !
;22! "
}33 
catch44 
(44 
	Exception44 
ex44 
)44 
{55 
logger66 
.66 
Error66 
(66 
$str66 5
+666 7
ex668 :
)66: ;
;66; <
return77 

BadRequest77 !
(77! "
$str77" 0
+771 2
ex773 5
)775 6
;776 7
}88 
}99 	
publicAA 
IHttpActionResultAA  
DeleteAA! '
(AA' (
)AA( )
{BB 	
varDD 
identityDD 
=DD 
(DD 
ClaimsIdentityDD *
)DD* +
UserDD+ /
.DD/ 0
IdentityDD0 8
;DD8 9
varEE 
userIdClaimEE 
=EE 
identityEE &
.EE& '
	FindFirstEE' 0
(EE0 1

ClaimTypesEE1 ;
.EE; <
UserDataEE< D
)EED E
;EEE F
intFF 
useridFF 
=FF 
Int32FF 
.FF 
ParseFF $
(FF$ %
userIdClaimFF% 0
?FF0 1
.FF1 2
ValueFF2 7
)FF7 8
;FF8 9
_lsGG 
.GG 
LogOutGG 
(GG 
useridGG 
)GG 
;GG 
returnHH 
OkHH 
(HH 
)HH 
;HH 
}II 	
}JJ 
}KK €
ïC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\ModeratorNotificationController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class +
ModeratorNotificationController 0
:1 2
ApiController3 @
{ 
private 
readonly )
IModeratorNotificationService 6"
_moderatorNotification7 M
;M N
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
public +
ModeratorNotificationController .
(. /)
IModeratorNotificationService/ L
resultM S
)S T
{ 	"
_moderatorNotification "
=# $
result% +
;+ ,
} 	
["" 	
JwtAuthentication""	 
]"" 
public## 
IHttpActionResult##  
Get##! $
(##$ %
)##% &
{$$ 	
try%% 
{&& 
var'' 
identity'' 
='' 
(''  
ClaimsIdentity''  .
)''. /
User''/ 3
.''3 4
Identity''4 <
;''< =
var(( 
userIdClaim(( 
=((  !
identity((" *
.((* +
	FindFirst((+ 4
(((4 5

ClaimTypes((5 ?
.((? @
UserData((@ H
)((H I
;((I J
int)) 
userid)) 
=)) 
Int32)) "
.))" #
Parse))# (
())( )
userIdClaim))) 4
?))4 5
.))5 6
Value))6 ;
))); <
;))< =
logger** 
.** 
Info** 
(** 
$str** S
)**S T
;**T U
var,, 
result,, 
=,, "
_moderatorNotification,, 3
.,,3 4$
GetModeratorNotification,,4 L
(,,L M
userid,,M S
),,S T
;,,T U
return-- 
Ok-- 
(-- 
result--  
)--  !
;--! "
}.. 
catch// 
(// 
	Exception// 
ex// 
)// 
{00 
logger11 
.11 
Error11 
(11 
$str11 5
+116 7
ex118 :
)11: ;
;11; <
return22 

BadRequest22 !
(22! "
$str22" 0
+221 2
ex223 5
)225 6
;226 7
}33 
}44 	
}55 
}66 ÀG
ÜC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\MyPostController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class 
MyPostController !
:" #
ApiController$ 1
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
private 
readonly 
IMyPostService '
_myPost( /
;/ 0
public 
MyPostController 
(  
IMyPostService  .
res/ 2
)2 3
{ 	
_myPost 
= 
res 
; 
} 	
["" 	
JwtAuthentication""	 
]"" 
public## 
IHttpActionResult##  
Post##! %
(##% &
[##& '
FromBody##' /
]##/ 0
AddPostRequestModel##0 C
AddPost##D K
)##K L
{$$ 	
try&& 
{'' 
string)) 
username)) 
=))  !
string))" (
.))( )
Empty))) .
;)). /
string** 
userId** 
=** 
string**  &
.**& '
Empty**' ,
;**, -
var++ 
token++ 
=++ 
HttpContext++ '
.++' (
Current++( /
.++/ 0
Request++0 7
.++7 8
Headers++8 ?
[++? @
$str++@ O
]++O P
.++P Q
Split++Q V
(++V W
$char++W Z
)++Z [
[++[ \
$num++\ ]
]++] ^
;++^ _&
JwtAuthenticationAttribute,, *
.,,* +
ValidateToken,,+ 8
(,,8 9
token,,9 >
,,,> ?
out,,@ C
username,,D L
,,,L M
out,,N Q
userId,,R X
),,X Y
;,,Y Z
int-- 
userid-- 
=-- 
Int32-- "
.--" #
Parse--# (
(--( )
userId--) /
)--/ 0
;--0 1
AddPost.. 
... 
UserId.. 
=..  
userid..! '
;..' (
logger// 
.// 
Info// 
(// 
$str// C
)//C D
;//D E
if11 
(11 
AddPost11 
.11 
Title11 !
.11! "
Equals11" (
(11( )
null11) -
)11- .
)11. /
{22 
return33 

BadRequest33 %
(33% &
$str33& 7
)337 8
;338 9
}44 
if55 
(55 
AddPost55 
.55 
Description55 '
.55' (
Equals55( .
(55. /
null55/ 3
)553 4
)554 5
{66 
return77 

BadRequest77 %
(77% &
$str77& 9
)779 :
;77: ;
}88 
if99 
(99 
AddPost99 
.99 
Tags99  
.99  !
Equals99! '
(99' (
null99( ,
)99, -
)99- .
{:: 
return;; 

BadRequest;; %
(;;% &
$str;;& 2
);;2 3
;;;3 4
}<< 
_myPost== 
.== 

AddNewPost== "
(==" #
AddPost==# *
)==* +
;==+ ,
return>> 
Ok>> 
(>> 
)>> 
;>> 
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@ 
{AA 
loggerBB 
.BB 
InfoBB 
(BB 
$strBB K
)BBK L
;BBL M
loggerCC 
.CC 
ErrorCC 
(CC 
$strCC 6
+CC7 8
exCC9 ;
)CC; <
;CC< =
returnDD 

BadRequestDD !
(DD! "
$strDD" 0
+DD1 2
exDD3 5
)DD5 6
;DD6 7
}EE 
}FF 	
[NN 	
JwtAuthenticationNN	 
]NN 
publicOO 
IHttpActionResultOO  
GetOO! $
(OO$ %
)OO% &
{PP 	
tryRR 
{SS 
varUU 
identityUU 
=UU 
(UU 
ClaimsIdentityUU -
)UU- .
UserUU/ 3
.UU3 4
IdentityUU4 <
;UU< =
varVV 
userIdClaimVV 
=VV  !
identityVV" *
.VV* +
	FindFirstVV+ 4
(VV4 5

ClaimTypesVV5 ?
.VV? @
UserDataVV@ H
)VVH I
;VVI J
intWW 
userIdWW 
=WW 
Int32WW "
.WW" #
ParseWW# (
(WW( )
userIdClaimWW) 4
?WW4 5
.WW5 6
ValueWW6 ;
)WW; <
;WW< =
loggerZZ 
.ZZ 
InfoZZ 
(ZZ 
$strZZ C
)ZZC D
;ZZD E
return[[ 
Ok[[ 
([[ 
_myPost[[ !
.[[! "
MySeeRecentPost[[" 1
([[1 2
userId[[2 8
)[[8 9
)[[9 :
;[[: ;
}\\ 
catch]] 
(]] 
	Exception]] 
ex]] 
)]] 
{^^ 
logger__ 
.__ 
Info__ 
(__ 
$str__ K
)__K L
;__L M
logger`` 
.`` 
Error`` 
(`` 
$str`` 5
+``6 7
ex``8 :
)``: ;
;``; <
returnaa 

BadRequestaa !
(aa! "
$straa" 0
+aa1 2
exaa3 5
)aa5 6
;aa6 7
}bb 
}dd 	
[gg 	
JwtAuthenticationgg	 
]gg 
publichh 
IHttpActionResulthh  
Puthh! $
(hh$ %
[hh% &
FromBodyhh& .
]hh. /
EditPostModelhh0 =
editPosthh> F
)hhF G
{ii 	
tryjj 
{kk 
varmm 
identitymm 
=mm 
(mm  
ClaimsIdentitymm  .
)mm. /
Usermm/ 3
.mm3 4
Identitymm4 <
;mm< =
varnn 
userIdClaimnn 
=nn  !
identitynn" *
.nn* +
	FindFirstnn+ 4
(nn4 5

ClaimTypesnn5 ?
.nn? @
UserDatann@ H
)nnH I
;nnI J
intoo 
useridoo 
=oo 
Int32oo "
.oo" #
Parseoo# (
(oo( )
userIdClaimoo) 4
?oo4 5
.oo5 6
Valueoo6 ;
)oo; <
;oo< =
editPostqq 
.qq 
UserIdqq 
=qq  !
useridqq" (
;qq( )
loggerrr 
.rr 
Inforr 
(rr 
$strrr K
)rrK L
;rrL M
varss 
editpostss 
=ss 
_myPostss &
.ss& '

EditMyPostss' 1
(ss1 2
editPostss2 :
)ss: ;
;ss; <
iftt 
(tt 
editposttt 
)tt 
{uu 
returnvv 
Okvv 
(vv 
)vv 
;vv  
}ww 
elsexx 
returnyy 
NotFoundyy #
(yy# $
)yy$ %
;yy% &
}zz 
catch{{ 
({{ 
	Exception{{ 
ex{{ 
){{ 
{|| 
logger}} 
.}} 
Error}} 
(}} 
$str}} 5
+}}6 7
ex}}8 :
)}}: ;
;}}; <
return~~ 

BadRequest~~ !
(~~! "
$str~~" 0
+~~1 2
ex~~3 5
)~~5 6
;~~6 7
} 
}
ÄÄ 	
[
ââ 	
JwtAuthentication
ââ	 
]
ââ 
public
ää 
IHttpActionResult
ää  
Delete
ää! '
(
ää' (
int
ää( +
id
ää, .
)
ää. /
{
ãã 	
try
çç 
{
éé 
logger
ëë 
.
ëë 
Info
ëë 
(
ëë 
$str
ëë J
)
ëëJ K
;
ëëK L
_myPost
íí 
.
íí 
DeleteRecentPost
íí (
(
íí( )
id
íí) +
)
íí+ ,
;
íí, -
return
ìì 
Ok
ìì 
(
ìì 
)
ìì 
;
ìì 
}
îî 
catch
ïï 
(
ïï 
	Exception
ïï 
ex
ïï 
)
ïï 
{
ññ 
logger
óó 
.
óó 
Error
óó 
(
óó 
$str
óó 8
+
óó9 :
ex
óó; =
)
óó= >
;
óó> ?
return
òò 

BadRequest
òò !
(
òò! "
$str
òò" 0
+
òò1 2
ex
òò3 5
)
òò5 6
;
òò6 7
}
ôô 
}
õõ 	
}
úú 
}ûû à
åC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\NotificationController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class "
NotificationController '
:( )
ApiController* 7
{ 
private 
readonly  
INotificationService -
_notification. ;
;; <
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
public "
NotificationController %
(% & 
INotificationService& :
res; >
)> ?
{ 	
_notification 
= 
res 
;  
} 	
["" 	
JwtAuthentication""	 
]"" 
public## 
IHttpActionResult##  
Get##! $
(##$ %
)##% &
{$$ 	
try%% 
{&& 
var'' 
identity'' 
='' 
(''  
ClaimsIdentity''  .
)''. /
User''/ 3
.''3 4
Identity''4 <
;''< =
var(( 
userIdClaim(( 
=((  !
identity((" *
.((* +
	FindFirst((+ 4
(((4 5

ClaimTypes((5 ?
.((? @
UserData((@ H
)((H I
;((I J
int)) 
userid)) 
=)) 
Int32)) "
.))" #
Parse))# (
())( )
userIdClaim))) 4
?))4 5
.))5 6
Value))6 ;
))); <
;))< =
logger** 
.** 
Info** 
(** 
$str** J
)**J K
;**K L
var-- 
result-- 
=-- 
_notification-- *
.--* +
GetUserNotification--+ >
(--> ?
userid--? E
)--E F
;--F G
return.. 
Ok.. 
(.. 
result..  
)..  !
;..! "
}// 
catch00 
(00 
	Exception00 
ex00 
)00 
{11 
logger22 
.22 
Error22 
(22 
$str22 <
+22= >
ex22? A
)22A B
;22B C
return33 

BadRequest33 !
(33! "
$str33" 0
+331 2
ex333 5
)335 6
;336 7
}44 
}55 	
}77 
}88 «$
ÑC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\SpamController.cs
	namespace 	
KnowledgeManagement
 
. 
Controllers )
{ 
public 

class 
SpamController 
:  !
ApiController" /
{ 
private 
static 
Logger 
logger $
=% &
NLog' +
.+ ,

LogManager, 6
.6 7!
GetCurrentClassLogger7 L
(L M
)M N
;N O
private 
readonly 
ISpamService %
_spam& +
;+ ,
public 
SpamController 
( 
ISpamService *
value+ 0
)0 1
{ 	
_spam 
= 
value 
; 
} 	
[## 	
JwtAuthentication##	 
]## 
public$$ 
IHttpActionResult$$  
Get$$! $
($$$ %
)$$% &
{%% 	
try&& 
{'' 
logger(( 
.(( 
Info(( 
((( 
$str(( B
)((B C
;((C D
return)) 
Ok)) 
()) 
_spam)) 
.))  
GetPost))  '
())' (
)))( )
)))) *
;))* +
}** 
catch++ 
(++ 
	Exception++ 
ex++ 
)++ 
{,, 
logger-- 
.-- 
Error-- 
(-- 
$str-- 3
+--4 5
ex--6 8
)--8 9
;--9 :
return.. 

BadRequest.. !
(..! "
$str.." 0
+..1 2
ex..3 5
)..5 6
;..6 7
}// 
}00 	
[88 	
JwtAuthentication88	 
]88 
public99 
IHttpActionResult99  
Post99! %
(99% &
[99& '
FromBody99' /
]99/ 0
	SpamModel990 9
addspam99: A
)99A B
{:: 	
try<< 
{== 
var?? 
identity?? 
=?? 
(??  
ClaimsIdentity??  .
)??. /
User??/ 3
.??3 4
Identity??4 <
;??< =
var@@ 
userIdClaim@@ 
=@@  !
identity@@" *
.@@* +
	FindFirst@@+ 4
(@@4 5

ClaimTypes@@5 ?
.@@? @
UserData@@@ H
)@@H I
;@@I J
intAA 
useridAA 
=AA 
Int32AA "
.AA" #
ParseAA# (
(AA( )
userIdClaimAA) 4
?AA4 5
.AA5 6
ValueAA6 ;
)AA; <
;AA< =
addspamBB 
.BB 
UserIdBB 
=BB  
useridBB! '
;BB' (
loggerCC 
.CC 
InfoCC 
(CC 
$strCC B
)CCB C
;CCC D
_spamDD 
.DD 

AddNewSpamDD  
(DD  !
addspamDD! (
)DD( )
;DD) *
returnEE 
OkEE 
(EE 
)EE 
;EE 
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG 
{HH 
loggerII 
.II 
ErrorII 
(II 
$strII 4
+II5 6
exII7 9
)II9 :
;II: ;
returnJJ 

BadRequestJJ !
(JJ! "
$strJJ" 0
+JJ1 2
exJJ3 5
)JJ5 6
;JJ6 7
}LL 
}NN 	
[VV 	
JwtAuthenticationVV	 
]VV 
publicWW 
IHttpActionResultWW  
DeleteWW! '
(WW' (
intWW( +
idWW, .
)WW. /
{XX 	
try[[ 
{\\ 
logger^^ 
.^^ 
Info^^ 
(^^ 
$str^^ =
)^^= >
;^^> ?
_spam__ 
.__ 
DeleteRecentPost__ &
(__& '
id__' )
)__) *
;__* +
return`` 
Ok`` 
(`` 
)`` 
;`` 
}aa 
catchbb 
(bb 
	Exceptionbb 
exbb 
)bb 
{cc 
loggerdd 
.dd 
Errordd 
(dd 
$strdd 6
+dd7 8
exdd9 ;
)dd; <
;dd< =
returnee 

BadRequestee !
(ee! "
$stree" 0
+ee1 2
exee3 5
)ee5 6
;ee6 7
}ff 
}hh 	
}ii 
}jj ç
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\AddChallengeOnUnauthorizedResult.cs
	namespace 	
KnowledgeManagement
 
. 
Filter $
{ 
public 

class ,
 AddChallengeOnUnauthorizedResult 1
:2 3
IHttpActionResult4 E
{ 
public ,
 AddChallengeOnUnauthorizedResult /
(/ 0%
AuthenticationHeaderValue0 I
	challengeJ S
,S T
IHttpActionResultU f
innerResultg r
)r s
{ 	
	Challenge 
= 
	challenge !
;! "
InnerResult 
= 
innerResult %
;% &
} 	
public %
AuthenticationHeaderValue (
	Challenge) 2
{3 4
get5 8
;8 9
}: ;
public 
IHttpActionResult  
InnerResult! ,
{- .
get/ 2
;2 3
}4 5
public 
async 
Task 
< 
HttpResponseMessage -
>- .
ExecuteAsync/ ;
(; <
CancellationToken< M
cancellationTokenN _
)_ `
{ 	
HttpResponseMessage 
response  (
=) *
await+ 0
InnerResult1 <
.< =
ExecuteAsync= I
(I J
cancellationTokenJ [
)[ \
;\ ]
if 
( 
response 
. 

StatusCode #
==$ &
HttpStatusCode' 5
.5 6
Unauthorized6 B
&&C E
responseF N
.N O
HeadersO V
.V W
WwwAuthenticateW f
.f g
Allg j
(j k
hk l
=>m o
hp q
.q r
Schemer x
!=y {
	Challenge	| Ö
.
Ö Ü
Scheme
Ü å
)
å ç
)
ç é
{ 
response"" 
."" 
Headers"" $
.""$ %
WwwAuthenticate""% 4
.""4 5
Add""5 8
(""8 9
	Challenge""9 B
)""B C
;""C D
}$$ 
return&& 
response&& 
;&& 
}'' 	
}(( 
})) —
åC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\AuthenticationFailureResult.cs
	namespace 	
KnowledgeManagement
 
. 
Filter $
{ 
public 

class '
AuthenticationFailureResult ,
:- .
IHttpActionResult/ @
{ 
public '
AuthenticationFailureResult *
(* +
string+ 1
reasonPhrase2 >
,> ?
HttpRequestMessage@ R
requestS Z
)Z [
{ 	
ReasonPhrase 
= 
reasonPhrase '
;' (
Request 
= 
request 
; 
} 	
public 
string 
ReasonPhrase "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
HttpRequestMessage !
Request" )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 
Task 
< 
HttpResponseMessage '
>' (
ExecuteAsync) 5
(5 6
CancellationToken6 G
cancellationTokenH Y
)Y Z
{ 	
return 
Task 
. 

FromResult "
(" #
Execute# *
(* +
)+ ,
), -
;- .
} 	
private!! 
HttpResponseMessage!! #
Execute!!$ +
(!!+ ,
)!!, -
{"" 	
HttpResponseMessage## 
response##  (
=##) *
new##+ .
HttpResponseMessage##/ B
(##B C
HttpStatusCode##C Q
.##Q R
Unauthorized##R ^
)##^ _
;##_ `
response$$ 
.$$ 
RequestMessage$$ #
=$$$ %
Request$$& -
;$$- .
response%% 
.%% 
ReasonPhrase%% !
=%%" #
ReasonPhrase%%$ 0
;%%0 1
return&& 
response&& 
;&& 
}'' 	
})) 	
}++ Ù
ùC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\HttpAuthenticationChallengeContextExtensions.cs
	namespace 	
KnowledgeManagement
 
. 
Filter $
{		 
public

 

static

 
class

 8
,HttpAuthenticationChallengeContextExtensions

 D
{ 
public 
static 
void 
ChallengeWith (
(( )
this) -.
"HttpAuthenticationChallengeContext. P
contextQ X
,X Y
stringZ `
schemea g
)g h
{ 	
ChallengeWith 
( 
context !
,! "
new# &%
AuthenticationHeaderValue' @
(@ A
schemeA G
)G H
)H I
;I J
} 	
public 
static 
void 
ChallengeWith (
(( )
this) -.
"HttpAuthenticationChallengeContext. P
contextQ X
,X Y
stringZ `
schemea g
,g h
stringi o
	parameterp y
)y z
{ 	
ChallengeWith 
( 
context !
,! "
new# &%
AuthenticationHeaderValue' @
(@ A
schemeA G
,G H
	parameterI R
)R S
)S T
;T U
} 	
public 
static 
void 
ChallengeWith (
(( )
this) -.
"HttpAuthenticationChallengeContext. P
contextQ X
,X Y%
AuthenticationHeaderValueZ s
	challenget }
)} ~
{ 	
if 
( 
context 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
context7 >
)> ?
)? @
;@ A
} 
context 
. 
Result 
= 
new  ,
 AddChallengeOnUnauthorizedResult! A
(A B
	challengeB K
,K L
contextM T
.T U
ResultU [
)[ \
;\ ]
} 	
} 
}   åB
ãC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\JwtAuthenticationAttribute.cs
	namespace 	
KnowledgeManagement
 
. 
Filter $
{ 
public 

class &
JwtAuthenticationAttribute +
:, -
	Attribute. 7
,7 8!
IAuthenticationFilter9 N
{ 
public 
string 
Realm 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
AllowMultiple !
=>" $
false% *
;* +
public 
async 
Task 
AuthenticateAsync +
(+ ,%
HttpAuthenticationContext, E
contextF M
,M N
CancellationTokenO `
cancellationTokena r
)r s
{ 	
var 
request 
= 
context !
.! "
Request" )
;) *
var 
authorization 
= 
request  '
.' (
Headers( /
./ 0
Authorization0 =
;= >
if 
( 
authorization 
==  
null! %
||& (
authorization) 6
.6 7
Scheme7 =
!=> @
$strA I
)I J
return 
; 
if 
( 
string 
. 
IsNullOrEmpty $
($ %
authorization% 2
.2 3
	Parameter3 <
)< =
)= >
{ 
context 
. 
ErrorResult #
=$ %
new& )'
AuthenticationFailureResult* E
(E F
$strF Y
,Y Z
request[ b
)b c
;c d
return   
;   
}!! 
var## 
token## 
=## 
authorization## %
.##% &
	Parameter##& /
;##/ 0
var$$ 
	principal$$ 
=$$ 
await$$ ! 
AuthenticateJwtToken$$" 6
($$6 7
token$$7 <
,$$< =
context$$= D
)$$D E
;$$E F
if&& 
(&& 
	principal&& 
==&& 
null&& !
)&&! "
context'' 
.'' 
ErrorResult'' #
=''$ %
new''& )'
AuthenticationFailureResult''* E
(''E F
$str''F U
,''U V
request''W ^
)''^ _
;''_ `
else)) 
context** 
.** 
	Principal** !
=**" #
	principal**$ -
;**- .
}++ 	
public// 
static// 
bool// 
ValidateToken// (
(//( )
string//) /
token//0 5
,//5 6
out//6 9
string//: @
username//A I
,//I J
out//K N
string//O U
UserId//V \
)//\ ]
{00 	
username11 
=11 
null11 
;11 
UserId22 
=22 
null22 
;22 
var33 
simplePrinciple33 
=33  !

JwtManager33" ,
.33, -
GetPrincipal33- 9
(339 :
token33: ?
)33? @
;33@ A
var44 
identity44 
=44 
simplePrinciple44 *
?44* +
.44+ ,
Identity44, 4
as445 7
ClaimsIdentity448 F
;44F G
if66 
(66 
identity66 
==66 
null66  
)66  !
return77 
false77 
;77 
if99 
(99 
!99 
identity99 
.99 
IsAuthenticated99 )
)99) *
return:: 
false:: 
;:: 
var<< 
usernameClaim<< 
=<< 
identity<<  (
.<<( )
	FindFirst<<) 2
(<<2 3

ClaimTypes<<3 =
.<<= >
Email<<> C
)<<C D
;<<D E
var== 
userIdClaim== 
=== 
identity== &
.==& '
	FindFirst==' 0
(==0 1

ClaimTypes==1 ;
.==; <
UserData==< D
)==D E
;==E F
username?? 
=?? 
usernameClaim?? $
???$ %
.??% &
Value??& +
;??+ ,
UserId@@ 
=@@ 
userIdClaim@@  
?@@  !
.@@! "
Value@@" '
;@@' (
ifFF 
(FF 
stringFF 
.FF 
IsNullOrEmptyFF $
(FF$ %
usernameFF% -
)FF- .
)FF. /
returnGG 
falseGG 
;GG 
returnLL 
trueLL 
;LL 
}MM 	
	protectedQQ 
TaskQQ 
<QQ 

IPrincipalQQ !
>QQ! " 
AuthenticateJwtTokenQQ# 7
(QQ7 8
stringQQ8 >
tokenQQ? D
,QQD E%
HttpAuthenticationContextQQF _
contextQQ` g
)QQg h
{RR 	
stringSS 
usernameSS 
=SS 
$strSS 
;SS 
stringTT 
userIdTT 
=TT 
$strTT 
;TT 
ifUU 
(UU 
ValidateTokenUU 
(UU 
tokenUU #
,UU# $
outUU$ '
usernameUU( 0
,UU0 1
outUU2 5
userIdUU6 <
)UU< =
)UU= >
{VV 
varXX 
claimsXX 
=XX 
newXX  
ListXX! %
<XX% &
ClaimXX& +
>XX+ ,
{YY 
newZZ 
ClaimZZ 
(ZZ 

ClaimTypesZZ (
.ZZ( )
EmailZZ) .
,ZZ. /
usernameZZ0 8
)ZZ8 9
,ZZ9 :
new[[ 
Claim[[ 
([[ 

ClaimTypes[[ (
.[[( )
UserData[[) 1
,[[1 2
userId[[3 9
)[[9 :
}]] 
;]] 
contextaa 
.aa 
Requestaa 
.aa  

Propertiesaa  *
.aa* +
Addaa+ .
(aa. /
$straa/ 7
,aa7 8
userIdaa8 >
)aa> ?
;aa? @
varcc 
identitycc 
=cc 
newcc "
ClaimsIdentitycc# 1
(cc1 2
claimscc2 8
,cc8 9
$strcc: ?
)cc? @
;cc@ A

IPrincipaldd 
userdd 
=dd  !
newdd" %
ClaimsPrincipaldd& 5
(dd5 6
identitydd6 >
)dd> ?
;dd? @
returnff 
Taskff 
.ff 

FromResultff &
(ff& '
userff' +
)ff+ ,
;ff, -
}gg 
returnii 
Taskii 
.ii 

FromResultii "
<ii" #

IPrincipalii# -
>ii- .
(ii. /
nullii/ 3
)ii3 4
;ii4 5
}jj 	
publicll 
Taskll 
ChallengeAsyncll "
(ll" #.
"HttpAuthenticationChallengeContextll# E
contextllF M
,llM N
CancellationTokenllO `
cancellationTokenlla r
)llr s
{mm 	
	Challengenn 
(nn 
contextnn 
)nn 
;nn 
returnoo 
Taskoo 
.oo 

FromResultoo "
(oo" #
$numoo# $
)oo$ %
;oo% &
}pp 	
privaterr 
voidrr 
	Challengerr 
(rr .
"HttpAuthenticationChallengeContextrr A
contextrrB I
)rrI J
{ss 	
stringtt 
	parametertt 
=tt 
nulltt #
;tt# $
ifvv 
(vv 
!vv 
stringvv 
.vv 
IsNullOrEmptyvv %
(vv% &
Realmvv& +
)vv+ ,
)vv, -
	parameterww 
=ww 
$strww &
+ww' (
Realmww) .
+ww/ 0
$strww1 5
;ww5 6
contextyy 
.yy 
ChallengeWithyy !
(yy! "
$stryy" *
,yy* +
	parameteryy, 5
)yy5 6
;yy6 7
}zz 	
}}} 
}~~ “
uC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Global.asax.cs
	namespace

 	
KnowledgeManagement


 
{ 
public 

class 
WebApiApplication "
:# $
System% +
.+ ,
Web, /
./ 0
HttpApplication0 ?
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
UnityConfig 
. 
RegisterComponents *
(* +
)+ ,
;, -
GlobalConfiguration 
.  
	Configure  )
() *
WebApiConfig* 6
.6 7
Register7 ?
)? @
;@ A
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} ÚÈ
åC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Migrations\201909100940477_initial.cs
	namespace 	
KnowledgeManagement
 
. 

Migrations (
{ 
public 

partial 
class 
initial  
:! "
DbMigration# .
{ 
public 
override 
void 
Up 
(  
)  !
{		 	
CreateTable

 
(

 
$str #
,# $
c 
=> 
new 
{ 
AID 
= 
c 
.  
Int  #
(# $
nullable$ ,
:, -
false. 3
,3 4
identity5 =
:= >
true? C
)C D
,D E
GroupId 
=  !
c" #
.# $
Int$ '
(' (
nullable( 0
:0 1
false2 7
)7 8
,8 9
TagId 
= 
c  !
.! "
Int" %
(% &
nullable& .
:. /
false0 5
)5 6
,6 7
	CreatedAt !
=" #
c$ %
.% &
DateTime& .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
	UpdatedAt !
=" #
c$ %
.% &
DateTime& .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
} 
) 
. 

PrimaryKey 
( 
t 
=>  
t! "
." #
AID# &
)& '
. 

ForeignKey 
( 
$str %
,% &
t' (
=>) +
t, -
.- .
TagId. 3
)3 4
. 
Index 
( 
t 
=> 
t 
. 
TagId #
)# $
;$ %
CreateTable 
( 
$str 
, 
c 
=> 
new 
{ 
TagId 
= 
c  !
.! "
Int" %
(% &
nullable& .
:. /
false0 5
,5 6
identity7 ?
:? @
trueA E
)E F
,F G
TagName 
=  !
c" #
.# $
String$ *
(* +
)+ ,
,, -
	CreatedAt !
=" #
c$ %
.% &
DateTime& .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
	UpdatedAt !
=" #
c$ %
.% &
DateTime& .
(. /
nullable/ 7
:7 8
false9 >
)> ?
,? @
}   
)   
.!! 

PrimaryKey!! 
(!! 
t!! 
=>!!  
t!!! "
.!!" #
TagId!!# (
)!!( )
;!!) *
CreateTable## 
(## 
$str$$ 
,$$ 
c%% 
=>%% 
new%% 
{&& 
Id'' 
='' 
c'' 
.'' 
Int'' "
(''" #
nullable''# +
:''+ ,
false''- 2
,''2 3
identity''4 <
:''< =
true''> B
)''B C
,''C D
PostId(( 
=((  
c((! "
.((" #
Int((# &
(((& '
nullable((' /
:((/ 0
false((1 6
)((6 7
,((7 8
TagId)) 
=)) 
c))  !
.))! "
Int))" %
())% &
nullable))& .
:)). /
false))0 5
)))5 6
,))6 7
}** 
)** 
.++ 

PrimaryKey++ 
(++ 
t++ 
=>++  
t++! "
.++" #
Id++# %
)++% &
.,, 

ForeignKey,, 
(,, 
$str,, &
,,,& '
t,,( )
=>,,* ,
t,,- .
.,,. /
PostId,,/ 5
),,5 6
.-- 

ForeignKey-- 
(-- 
$str-- %
,--% &
t--' (
=>--) +
t--, -
.--- .
TagId--. 3
)--3 4
... 
Index.. 
(.. 
t.. 
=>.. 
t.. 
... 
PostId.. $
)..$ %
.// 
Index// 
(// 
t// 
=>// 
t// 
.// 
TagId// #
)//# $
;//$ %
CreateTable11 
(11 
$str22 
,22 
c33 
=>33 
new33 
{44 
PostId55 
=55  
c55! "
.55" #
Int55# &
(55& '
nullable55' /
:55/ 0
false551 6
,556 7
identity558 @
:55@ A
true55B F
)55F G
,55G H
Title66 
=66 
c66  !
.66! "
String66" (
(66( )
)66) *
,66* +
Description77 #
=77$ %
c77& '
.77' (
String77( .
(77. /
)77/ 0
,770 1
PostDate88  
=88! "
c88# $
.88$ %
DateTime88% -
(88- .
nullable88. 6
:886 7
false888 =
)88= >
,88> ?
UserId99 
=99  
c99! "
.99" #
Int99# &
(99& '
nullable99' /
:99/ 0
false991 6
)996 7
,997 8

CategoryId:: "
=::# $
c::% &
.::& '
Int::' *
(::* +
nullable::+ 3
:::3 4
false::5 :
)::: ;
,::; <
	IsDeleted;; !
=;;" #
c;;$ %
.;;% &
Boolean;;& -
(;;- .
nullable;;. 6
:;;6 7
false;;8 =
);;= >
,;;> ?
	UserImage<< !
=<<" #
c<<$ %
.<<% &
String<<& ,
(<<, -
)<<- .
,<<. /
	CreatedAt== !
===" #
c==$ %
.==% &
DateTime==& .
(==. /
nullable==/ 7
:==7 8
false==9 >
)==> ?
,==? @
	UpdatedAt>> !
=>>" #
c>>$ %
.>>% &
DateTime>>& .
(>>. /
nullable>>/ 7
:>>7 8
false>>9 >
)>>> ?
,>>? @
}?? 
)?? 
.@@ 

PrimaryKey@@ 
(@@ 
t@@ 
=>@@  
t@@! "
.@@" #
PostId@@# )
)@@) *
.AA 

ForeignKeyAA 
(AA 
$strAA *
,AA* +
tAA, -
=>AA. 0
tAA1 2
.AA2 3

CategoryIdAA3 =
)AA= >
.BB 

ForeignKeyBB 
(BB 
$strBB &
,BB& '
tBB( )
=>BB* ,
tBB- .
.BB. /
UserIdBB/ 5
)BB5 6
.CC 
IndexCC 
(CC 
tCC 
=>CC 
tCC 
.CC 
UserIdCC $
)CC$ %
.DD 
IndexDD 
(DD 
tDD 
=>DD 
tDD 
.DD 

CategoryIdDD (
)DD( )
;DD) *
CreateTableFF 
(FF 
$strGG 
,GG 
cHH 
=>HH 
newHH 
{II 

CategoryIdJJ "
=JJ# $
cJJ% &
.JJ& '
IntJJ' *
(JJ* +
nullableJJ+ 3
:JJ3 4
falseJJ5 :
,JJ: ;
identityJJ< D
:JJD E
trueJJF J
)JJJ K
,JJK L
TitleKK 
=KK 
cKK  !
.KK! "
StringKK" (
(KK( )
)KK) *
,KK* +
	CreatedAtLL !
=LL" #
cLL$ %
.LL% &
DateTimeLL& .
(LL. /
nullableLL/ 7
:LL7 8
falseLL9 >
)LL> ?
,LL? @
	UpdatedAtMM !
=MM" #
cMM$ %
.MM% &
DateTimeMM& .
(MM. /
nullableMM/ 7
:MM7 8
falseMM9 >
)MM> ?
,MM? @
}NN 
)NN 
.OO 

PrimaryKeyOO 
(OO 
tOO 
=>OO  
tOO! "
.OO" #

CategoryIdOO# -
)OO- .
;OO. /
CreateTableQQ 
(QQ 
$strRR 
,RR 
cSS 
=>SS 
newSS 
{TT 
	CommentIdUU !
=UU" #
cUU$ %
.UU% &
IntUU& )
(UU) *
nullableUU* 2
:UU2 3
falseUU4 9
,UU9 :
identityUU; C
:UUC D
trueUUE I
)UUI J
,UUJ K
ContentVV 
=VV  !
cVV" #
.VV# $
StringVV$ *
(VV* +
)VV+ ,
,VV, -
CommentDateWW #
=WW$ %
cWW& '
.WW' (
DateTimeWW( 0
(WW0 1
nullableWW1 9
:WW9 :
falseWW; @
)WW@ A
,WWA B
PostIdXX 
=XX  
cXX! "
.XX" #
IntXX# &
(XX& '
nullableXX' /
:XX/ 0
falseXX1 6
)XX6 7
,XX7 8
UserIdYY 
=YY  
cYY! "
.YY" #
IntYY# &
(YY& '
nullableYY' /
:YY/ 0
falseYY1 6
)YY6 7
,YY7 8
	IsDeletedZZ !
=ZZ" #
cZZ$ %
.ZZ% &
BooleanZZ& -
(ZZ- .
)ZZ. /
,ZZ/ 0
	CreatedAt[[ !
=[[" #
c[[$ %
.[[% &
DateTime[[& .
([[. /
nullable[[/ 7
:[[7 8
false[[9 >
)[[> ?
,[[? @
	UpdatedAt\\ !
=\\" #
c\\$ %
.\\% &
DateTime\\& .
(\\. /
nullable\\/ 7
:\\7 8
false\\9 >
)\\> ?
,\\? @
}]] 
)]] 
.^^ 

PrimaryKey^^ 
(^^ 
t^^ 
=>^^  
t^^! "
.^^" #
	CommentId^^# ,
)^^, -
.__ 

ForeignKey__ 
(__ 
$str__ &
,__& '
t__( )
=>__* ,
t__- .
.__. /
UserId__/ 5
)__5 6
.`` 

ForeignKey`` 
(`` 
$str`` &
,``& '
t``( )
=>``* ,
t``- .
.``. /
PostId``/ 5
)``5 6
.aa 
Indexaa 
(aa 
taa 
=>aa 
taa 
.aa 
PostIdaa $
)aa$ %
.bb 
Indexbb 
(bb 
tbb 
=>bb 
tbb 
.bb 
UserIdbb $
)bb$ %
;bb% &
CreateTabledd 
(dd 
$stree #
,ee# $
cff 
=>ff 
newff 
{gg 
ReportIdhh  
=hh! "
chh# $
.hh$ %
Inthh% (
(hh( )
nullablehh) 1
:hh1 2
falsehh3 8
,hh8 9
identityhh: B
:hhB C
truehhD H
)hhH I
,hhI J
Commentii 
=ii  !
cii" #
.ii# $
Stringii$ *
(ii* +
)ii+ ,
,ii, -
UserIdjj 
=jj  
cjj! "
.jj" #
Intjj# &
(jj& '
nullablejj' /
:jj/ 0
falsejj1 6
)jj6 7
,jj7 8
	CommentIdkk !
=kk" #
ckk$ %
.kk% &
Intkk& )
(kk) *
nullablekk* 2
:kk2 3
falsekk4 9
)kk9 :
,kk: ;
	CreatedAtll !
=ll" #
cll$ %
.ll% &
DateTimell& .
(ll. /
nullablell/ 7
:ll7 8
falsell9 >
)ll> ?
,ll? @
	UpdatedAtmm !
=mm" #
cmm$ %
.mm% &
DateTimemm& .
(mm. /
nullablemm/ 7
:mm7 8
falsemm9 >
)mm> ?
,mm? @
}nn 
)nn 
.oo 

PrimaryKeyoo 
(oo 
too 
=>oo  
too! "
.oo" #
ReportIdoo# +
)oo+ ,
.pp 

ForeignKeypp 
(pp 
$strpp )
,pp) *
tpp+ ,
=>pp- /
tpp0 1
.pp1 2
	CommentIdpp2 ;
)pp; <
.qq 

ForeignKeyqq 
(qq 
$strqq &
,qq& '
tqq( )
=>qq* ,
tqq- .
.qq. /
UserIdqq/ 5
)qq5 6
.rr 
Indexrr 
(rr 
trr 
=>rr 
trr 
.rr 
UserIdrr $
)rr$ %
.ss 
Indexss 
(ss 
tss 
=>ss 
tss 
.ss 
	CommentIdss '
)ss' (
;ss( )
CreateTableuu 
(uu 
$strvv 
,vv 
cww 
=>ww 
newww 
{xx 
UserIdyy 
=yy  
cyy! "
.yy" #
Intyy# &
(yy& '
nullableyy' /
:yy/ 0
falseyy1 6
,yy6 7
identityyy8 @
:yy@ A
trueyyB F
)yyF G
,yyG H
	FirstNamezz !
=zz" #
czz$ %
.zz% &
Stringzz& ,
(zz, -
)zz- .
,zz. /
LastName{{  
={{! "
c{{# $
.{{$ %
String{{% +
({{+ ,
){{, -
,{{- .
EmailId|| 
=||  !
c||" #
.||# $
String||$ *
(||* +
)||+ ,
,||, -
Password}}  
=}}! "
c}}# $
.}}$ %
String}}% +
(}}+ ,
)}}, -
,}}- .
isActive~~  
=~~! "
c~~# $
.~~$ %
Boolean~~% ,
(~~, -
)~~- .
,~~. /
isModerator #
=$ %
c& '
.' (
Int( +
(+ ,
), -
,- .
Token
ÄÄ 
=
ÄÄ 
c
ÄÄ  !
.
ÄÄ! "
String
ÄÄ" (
(
ÄÄ( )
)
ÄÄ) *
,
ÄÄ* +
	CreatedAt
ÅÅ !
=
ÅÅ" #
c
ÅÅ$ %
.
ÅÅ% &
DateTime
ÅÅ& .
(
ÅÅ. /
nullable
ÅÅ/ 7
:
ÅÅ7 8
false
ÅÅ9 >
)
ÅÅ> ?
,
ÅÅ? @
	UpdatedAt
ÇÇ !
=
ÇÇ" #
c
ÇÇ$ %
.
ÇÇ% &
DateTime
ÇÇ& .
(
ÇÇ. /
nullable
ÇÇ/ 7
:
ÇÇ7 8
false
ÇÇ9 >
)
ÇÇ> ?
,
ÇÇ? @
}
ÉÉ 
)
ÉÉ 
.
ÑÑ 

PrimaryKey
ÑÑ 
(
ÑÑ 
t
ÑÑ 
=>
ÑÑ  
t
ÑÑ! "
.
ÑÑ" #
UserId
ÑÑ# )
)
ÑÑ) *
;
ÑÑ* +
CreateTable
ÜÜ 
(
ÜÜ 
$str
áá 
,
áá 
c
àà 
=>
àà 
new
àà 
{
ââ 
LikeId
ää 
=
ää  
c
ää! "
.
ää" #
Int
ää# &
(
ää& '
nullable
ää' /
:
ää/ 0
false
ää1 6
,
ää6 7
identity
ää8 @
:
ää@ A
true
ääB F
)
ääF G
,
ääG H
PostId
ãã 
=
ãã  
c
ãã! "
.
ãã" #
Int
ãã# &
(
ãã& '
nullable
ãã' /
:
ãã/ 0
false
ãã1 6
)
ãã6 7
,
ãã7 8
UserId
åå 
=
åå  
c
åå! "
.
åå" #
Int
åå# &
(
åå& '
nullable
åå' /
:
åå/ 0
false
åå1 6
)
åå6 7
,
åå7 8
	CreatedAt
çç !
=
çç" #
c
çç$ %
.
çç% &
DateTime
çç& .
(
çç. /
nullable
çç/ 7
:
çç7 8
false
çç9 >
)
çç> ?
,
çç? @
	UpdatedAt
éé !
=
éé" #
c
éé$ %
.
éé% &
DateTime
éé& .
(
éé. /
nullable
éé/ 7
:
éé7 8
false
éé9 >
)
éé> ?
,
éé? @
}
èè 
)
èè 
.
êê 

PrimaryKey
êê 
(
êê 
t
êê 
=>
êê  
t
êê! "
.
êê" #
LikeId
êê# )
)
êê) *
.
ëë 

ForeignKey
ëë 
(
ëë 
$str
ëë &
,
ëë& '
t
ëë( )
=>
ëë* ,
t
ëë- .
.
ëë. /
PostId
ëë/ 5
)
ëë5 6
.
íí 

ForeignKey
íí 
(
íí 
$str
íí &
,
íí& '
t
íí( )
=>
íí* ,
t
íí- .
.
íí. /
UserId
íí/ 5
)
íí5 6
.
ìì 
Index
ìì 
(
ìì 
t
ìì 
=>
ìì 
t
ìì 
.
ìì 
PostId
ìì $
)
ìì$ %
.
îî 
Index
îî 
(
îî 
t
îî 
=>
îî 
t
îî 
.
îî 
UserId
îî $
)
îî$ %
;
îî% &
CreateTable
ññ 
(
ññ 
$str
óó "
,
óó" #
c
òò 
=>
òò 
new
òò 
{
ôô 
NotificationId
öö &
=
öö' (
c
öö) *
.
öö* +
Int
öö+ .
(
öö. /
nullable
öö/ 7
:
öö7 8
false
öö9 >
,
öö> ?
identity
öö@ H
:
ööH I
true
ööJ N
)
ööN O
,
ööO P
NotificationType
õõ (
=
õõ) *
c
õõ+ ,
.
õõ, -
Int
õõ- 0
(
õõ0 1
nullable
õõ1 9
:
õõ9 :
false
õõ; @
)
õõ@ A
,
õõA B
IsRead
úú 
=
úú  
c
úú! "
.
úú" #
Int
úú# &
(
úú& '
nullable
úú' /
:
úú/ 0
false
úú1 6
)
úú6 7
,
úú7 8
PostId
ùù 
=
ùù  
c
ùù! "
.
ùù" #
Int
ùù# &
(
ùù& '
nullable
ùù' /
:
ùù/ 0
false
ùù1 6
)
ùù6 7
,
ùù7 8
UserId
ûû 
=
ûû  
c
ûû! "
.
ûû" #
Int
ûû# &
(
ûû& '
nullable
ûû' /
:
ûû/ 0
false
ûû1 6
)
ûû6 7
,
ûû7 8
	CreatedAt
üü !
=
üü" #
c
üü$ %
.
üü% &
DateTime
üü& .
(
üü. /
nullable
üü/ 7
:
üü7 8
false
üü9 >
)
üü> ?
,
üü? @
	UpdatedAt
†† !
=
††" #
c
††$ %
.
††% &
DateTime
††& .
(
††. /
nullable
††/ 7
:
††7 8
false
††9 >
)
††> ?
,
††? @
}
°° 
)
°° 
.
¢¢ 

PrimaryKey
¢¢ 
(
¢¢ 
t
¢¢ 
=>
¢¢  
t
¢¢! "
.
¢¢" #
NotificationId
¢¢# 1
)
¢¢1 2
.
££ 

ForeignKey
££ 
(
££ 
$str
££ &
,
££& '
t
££( )
=>
££* ,
t
££- .
.
££. /
PostId
££/ 5
)
££5 6
.
§§ 

ForeignKey
§§ 
(
§§ 
$str
§§ &
,
§§& '
t
§§( )
=>
§§* ,
t
§§- .
.
§§. /
UserId
§§/ 5
)
§§5 6
.
•• 
Index
•• 
(
•• 
t
•• 
=>
•• 
t
•• 
.
•• 
PostId
•• $
)
••$ %
.
¶¶ 
Index
¶¶ 
(
¶¶ 
t
¶¶ 
=>
¶¶ 
t
¶¶ 
.
¶¶ 
UserId
¶¶ $
)
¶¶$ %
;
¶¶% &
CreateTable
®® 
(
®® 
$str
©© 
,
©© 
c
™™ 
=>
™™ 
new
™™ 
{
´´ 
ReportId
¨¨  
=
¨¨! "
c
¨¨# $
.
¨¨$ %
Int
¨¨% (
(
¨¨( )
nullable
¨¨) 1
:
¨¨1 2
false
¨¨3 8
,
¨¨8 9
identity
¨¨: B
:
¨¨B C
true
¨¨D H
)
¨¨H I
,
¨¨I J
Comment
≠≠ 
=
≠≠  !
c
≠≠" #
.
≠≠# $
String
≠≠$ *
(
≠≠* +
)
≠≠+ ,
,
≠≠, -
PostId
ÆÆ 
=
ÆÆ  
c
ÆÆ! "
.
ÆÆ" #
Int
ÆÆ# &
(
ÆÆ& '
nullable
ÆÆ' /
:
ÆÆ/ 0
false
ÆÆ1 6
)
ÆÆ6 7
,
ÆÆ7 8
UserId
ØØ 
=
ØØ  
c
ØØ! "
.
ØØ" #
Int
ØØ# &
(
ØØ& '
nullable
ØØ' /
:
ØØ/ 0
false
ØØ1 6
)
ØØ6 7
,
ØØ7 8
Isread
∞∞ 
=
∞∞  
c
∞∞! "
.
∞∞" #
Int
∞∞# &
(
∞∞& '
nullable
∞∞' /
:
∞∞/ 0
false
∞∞1 6
)
∞∞6 7
,
∞∞7 8
	CreatedAt
±± !
=
±±" #
c
±±$ %
.
±±% &
DateTime
±±& .
(
±±. /
nullable
±±/ 7
:
±±7 8
false
±±9 >
)
±±> ?
,
±±? @
	UpdatedAt
≤≤ !
=
≤≤" #
c
≤≤$ %
.
≤≤% &
DateTime
≤≤& .
(
≤≤. /
nullable
≤≤/ 7
:
≤≤7 8
false
≤≤9 >
)
≤≤> ?
,
≤≤? @
}
≥≥ 
)
≥≥ 
.
¥¥ 

PrimaryKey
¥¥ 
(
¥¥ 
t
¥¥ 
=>
¥¥  
t
¥¥! "
.
¥¥" #
ReportId
¥¥# +
)
¥¥+ ,
.
µµ 

ForeignKey
µµ 
(
µµ 
$str
µµ &
,
µµ& '
t
µµ( )
=>
µµ* ,
t
µµ- .
.
µµ. /
PostId
µµ/ 5
)
µµ5 6
.
∂∂ 

ForeignKey
∂∂ 
(
∂∂ 
$str
∂∂ &
,
∂∂& '
t
∂∂( )
=>
∂∂* ,
t
∂∂- .
.
∂∂. /
UserId
∂∂/ 5
)
∂∂5 6
.
∑∑ 
Index
∑∑ 
(
∑∑ 
t
∑∑ 
=>
∑∑ 
t
∑∑ 
.
∑∑ 
PostId
∑∑ $
)
∑∑$ %
.
∏∏ 
Index
∏∏ 
(
∏∏ 
t
∏∏ 
=>
∏∏ 
t
∏∏ 
.
∏∏ 
UserId
∏∏ $
)
∏∏$ %
;
∏∏% &
}
∫∫ 	
public
ºº 
override
ºº 
void
ºº 
Down
ºº !
(
ºº! "
)
ºº" #
{
ΩΩ 	
DropForeignKey
ææ 
(
ææ 
$str
ææ (
,
ææ( )
$str
ææ* 1
,
ææ1 2
$str
ææ3 <
)
ææ< =
;
ææ= >
DropForeignKey
øø 
(
øø 
$str
øø (
,
øø( )
$str
øø* 2
,
øø2 3
$str
øø4 >
)
øø> ?
;
øø? @
DropForeignKey
¿¿ 
(
¿¿ 
$str
¿¿ (
,
¿¿( )
$str
¿¿* 2
,
¿¿2 3
$str
¿¿4 >
)
¿¿> ?
;
¿¿? @
DropForeignKey
¡¡ 
(
¡¡ 
$str
¡¡ '
,
¡¡' (
$str
¡¡) 1
,
¡¡1 2
$str
¡¡3 =
)
¡¡= >
;
¡¡> ?
DropForeignKey
¬¬ 
(
¬¬ 
$str
¬¬ '
,
¬¬' (
$str
¬¬) 1
,
¬¬1 2
$str
¬¬3 =
)
¬¬= >
;
¬¬> ?
DropForeignKey
√√ 
(
√√ 
$str
√√ %
,
√√% &
$str
√√' /
,
√√/ 0
$str
√√1 ;
)
√√; <
;
√√< =
DropForeignKey
ƒƒ 
(
ƒƒ 
$str
ƒƒ -
,
ƒƒ- .
$str
ƒƒ/ 7
,
ƒƒ7 8
$str
ƒƒ9 C
)
ƒƒC D
;
ƒƒD E
DropForeignKey
≈≈ 
(
≈≈ 
$str
≈≈ -
,
≈≈- .
$str
≈≈/ 7
,
≈≈7 8
$str
≈≈9 C
)
≈≈C D
;
≈≈D E
DropForeignKey
∆∆ 
(
∆∆ 
$str
∆∆ %
,
∆∆% &
$str
∆∆' /
,
∆∆/ 0
$str
∆∆1 ;
)
∆∆; <
;
∆∆< =
DropForeignKey
«« 
(
«« 
$str
«« %
,
««% &
$str
««' /
,
««/ 0
$str
««1 ;
)
««; <
;
««< =
DropForeignKey
»» 
(
»» 
$str
»» (
,
»»( )
$str
»»* 2
,
»»2 3
$str
»»4 >
)
»»> ?
;
»»? @
DropForeignKey
…… 
(
…… 
$str
…… .
,
……. /
$str
……0 8
,
……8 9
$str
……: D
)
……D E
;
……E F
DropForeignKey
   
(
   
$str
   .
,
  . /
$str
  0 ;
,
  ; <
$str
  = J
)
  J K
;
  K L
DropForeignKey
ÀÀ 
(
ÀÀ 
$str
ÀÀ %
,
ÀÀ% &
$str
ÀÀ' 3
,
ÀÀ3 4
$str
ÀÀ5 C
)
ÀÀC D
;
ÀÀD E
DropForeignKey
ÃÃ 
(
ÃÃ 
$str
ÃÃ .
,
ÃÃ. /
$str
ÃÃ0 7
,
ÃÃ7 8
$str
ÃÃ9 B
)
ÃÃB C
;
ÃÃC D
	DropIndex
ÕÕ 
(
ÕÕ 
$str
ÕÕ "
,
ÕÕ" #
new
ÕÕ$ '
[
ÕÕ' (
]
ÕÕ( )
{
ÕÕ* +
$str
ÕÕ, 4
}
ÕÕ5 6
)
ÕÕ6 7
;
ÕÕ7 8
	DropIndex
ŒŒ 
(
ŒŒ 
$str
ŒŒ "
,
ŒŒ" #
new
ŒŒ$ '
[
ŒŒ' (
]
ŒŒ( )
{
ŒŒ* +
$str
ŒŒ, 4
}
ŒŒ5 6
)
ŒŒ6 7
;
ŒŒ7 8
	DropIndex
œœ 
(
œœ 
$str
œœ (
,
œœ( )
new
œœ* -
[
œœ- .
]
œœ. /
{
œœ0 1
$str
œœ2 :
}
œœ; <
)
œœ< =
;
œœ= >
	DropIndex
–– 
(
–– 
$str
–– (
,
––( )
new
––* -
[
––- .
]
––. /
{
––0 1
$str
––2 :
}
––; <
)
––< =
;
––= >
	DropIndex
—— 
(
—— 
$str
——  
,
——  !
new
——" %
[
——% &
]
——& '
{
——( )
$str
——* 2
}
——3 4
)
——4 5
;
——5 6
	DropIndex
““ 
(
““ 
$str
““  
,
““  !
new
““" %
[
““% &
]
““& '
{
““( )
$str
““* 2
}
““3 4
)
““4 5
;
““5 6
	DropIndex
”” 
(
”” 
$str
”” )
,
””) *
new
””+ .
[
””. /
]
””/ 0
{
””1 2
$str
””3 >
}
””? @
)
””@ A
;
””A B
	DropIndex
‘‘ 
(
‘‘ 
$str
‘‘ )
,
‘‘) *
new
‘‘+ .
[
‘‘. /
]
‘‘/ 0
{
‘‘1 2
$str
‘‘3 ;
}
‘‘< =
)
‘‘= >
;
‘‘> ?
	DropIndex
’’ 
(
’’ 
$str
’’ #
,
’’# $
new
’’% (
[
’’( )
]
’’) *
{
’’+ ,
$str
’’- 5
}
’’6 7
)
’’7 8
;
’’8 9
	DropIndex
÷÷ 
(
÷÷ 
$str
÷÷ #
,
÷÷# $
new
÷÷% (
[
÷÷( )
]
÷÷) *
{
÷÷+ ,
$str
÷÷- 5
}
÷÷6 7
)
÷÷7 8
;
÷÷8 9
	DropIndex
◊◊ 
(
◊◊ 
$str
◊◊  
,
◊◊  !
new
◊◊" %
[
◊◊% &
]
◊◊& '
{
◊◊( )
$str
◊◊* 6
}
◊◊7 8
)
◊◊8 9
;
◊◊9 :
	DropIndex
ÿÿ 
(
ÿÿ 
$str
ÿÿ  
,
ÿÿ  !
new
ÿÿ" %
[
ÿÿ% &
]
ÿÿ& '
{
ÿÿ( )
$str
ÿÿ* 2
}
ÿÿ3 4
)
ÿÿ4 5
;
ÿÿ5 6
	DropIndex
ŸŸ 
(
ŸŸ 
$str
ŸŸ #
,
ŸŸ# $
new
ŸŸ% (
[
ŸŸ( )
]
ŸŸ) *
{
ŸŸ+ ,
$str
ŸŸ- 4
}
ŸŸ5 6
)
ŸŸ6 7
;
ŸŸ7 8
	DropIndex
⁄⁄ 
(
⁄⁄ 
$str
⁄⁄ #
,
⁄⁄# $
new
⁄⁄% (
[
⁄⁄( )
]
⁄⁄) *
{
⁄⁄+ ,
$str
⁄⁄- 5
}
⁄⁄6 7
)
⁄⁄7 8
;
⁄⁄8 9
	DropIndex
€€ 
(
€€ 
$str
€€ )
,
€€) *
new
€€+ .
[
€€. /
]
€€/ 0
{
€€1 2
$str
€€3 :
}
€€; <
)
€€< =
;
€€= >
	DropTable
‹‹ 
(
‹‹ 
$str
‹‹ "
)
‹‹" #
;
‹‹# $
	DropTable
›› 
(
›› 
$str
›› (
)
››( )
;
››) *
	DropTable
ﬁﬁ 
(
ﬁﬁ 
$str
ﬁﬁ  
)
ﬁﬁ  !
;
ﬁﬁ! "
	DropTable
ﬂﬂ 
(
ﬂﬂ 
$str
ﬂﬂ  
)
ﬂﬂ  !
;
ﬂﬂ! "
	DropTable
‡‡ 
(
‡‡ 
$str
‡‡ )
)
‡‡) *
;
‡‡* +
	DropTable
·· 
(
·· 
$str
·· #
)
··# $
;
··$ %
	DropTable
‚‚ 
(
‚‚ 
$str
‚‚ $
)
‚‚$ %
;
‚‚% &
	DropTable
„„ 
(
„„ 
$str
„„  
)
„„  !
;
„„! "
	DropTable
‰‰ 
(
‰‰ 
$str
‰‰ #
)
‰‰# $
;
‰‰$ %
	DropTable
ÂÂ 
(
ÂÂ 
$str
ÂÂ 
)
ÂÂ  
;
ÂÂ  !
	DropTable
ÊÊ 
(
ÊÊ 
$str
ÊÊ )
)
ÊÊ) *
;
ÊÊ* +
}
ÁÁ 	
}
ËË 
}ÈÈ ˆ
àC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Migrations\201909101014332_new.cs
	namespace 	
KnowledgeManagement
 
. 

Migrations (
{ 
public 

partial 
class 
_new 
: 
DbMigration  +
{ 
public 
override 
void 
Up 
(  
)  !
{		 	

DropColumn

 
(

 
$str

  
,

  !
$str

" -
)

- .
;

. /

DropColumn 
( 
$str  
,  !
$str" -
)- .
;. /
} 	
public 
override 
void 
Down !
(! "
)" #
{ 	
	AddColumn 
( 
$str 
,  
$str! ,
,, -
c. /
=>0 2
c3 4
.4 5
DateTime5 =
(= >
nullable> F
:F G
falseH M
)M N
)N O
;O P
	AddColumn 
( 
$str 
,  
$str! ,
,, -
c. /
=>0 2
c3 4
.4 5
DateTime5 =
(= >
nullable> F
:F G
falseH M
)M N
)N O
;O P
} 	
} 
} Ô
ÇC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Migrations\Configuration.cs
	namespace 	
KnowledgeManagement
 
. 

Migrations (
{ 
internal 
sealed 
class 
Configuration '
:( )%
DbMigrationsConfiguration* C
<C D
KnowledgeManagementD W
.W X
ModelsX ^
.^ _
Entities_ g
.g h'
KnowledgeManagementContext	h Ç
>
Ç É
{		 
public

 
Configuration

 
(

 
)

 
{ 	&
AutomaticMigrationsEnabled &
=' (
false) .
;. /
} 	
	protected 
override 
void 
Seed  $
($ %
KnowledgeManagement% 8
.8 9
Models9 ?
.? @
Entities@ H
.H I&
KnowledgeManagementContextI c
contextd k
)k l
{ 	
} 	
} 
} ƒ
ÑC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\AddPostRequestModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
AddPostRequestModel $
{ 
[ 	
Required	 
] 
public		 
string		 
Title		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[

 	
Required

	 
]

 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
List 
< 
int 
> 
Tags 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Image 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ∂
ÄC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\AssociatedModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
AssociatedModel  
{		 
public

 
List

 
<

 
int

 
>

 
TagId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
int 
GroupId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} §
ÉC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\AssociatedTagModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
AssociatedTagModel #
{		 
public 
List 
< 
int 
> 
TagId 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ï
}C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\CommentModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
CommentModel 
{ 
[ 	
Required	 
] 
public		 
string		 
Content		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime 
CommentDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
	IsDeleted 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}   Â
~C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\EditPostModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
EditPostModel 
{		 
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< 
int 
> 
Tags 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} √
áC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\AssociatedTag.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
AssociatedTag		 
:		  

BaseEntity		! +
{

 
[ 	
Key	 
] 
public 
int 
AID 
{ 
get 
; 
set !
;! "
}# $
public 
int 
GroupId 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
TagId 
{ 
get 
; 
set  #
;# $
}% &
public 
virtual 
Tag 
Tag 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ∫
ÑC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\BaseEntity.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public 

class 

BaseEntity 
{		 
public

 
DateTime

 
	CreatedAt

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
DateTime 
	UpdatedAt !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Â
ÇC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Category.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
Category		 
:		 

BaseEntity		 &
{

 
[ 	
Key	 
] 
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
ICollection "
<" #
Post# '
>' (
Posts) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} ¢
ÅC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Comment.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

partial		 
class		 
Comment		  
:		! "

BaseEntity		# -
{

 
[ 	
Key	 
] 
public 
int 
	CommentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
System 
. 
DateTime 
CommentDate *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
Nullable 
< 
bool 
> 
	IsDeleted '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
ICollection "
<" #
CommentReport# 0
>0 1
CommentReports2 @
{A B
getC F
;F G
setH K
;K L
}M N
} 
} ö
áC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\CommentReport.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
CommentReport		 
:		  

BaseEntity		! +
{

 
[ 	
Key	 
] 
public 
int 
ReportId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
	CommentId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
Comment 
Comment1 '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} í!
ìC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Context\KnowledgeManagementContext.cs
	namespace		 	
KnowledgeManagement		
 
.		 
Models		 $
.		$ %
Entities		% -
{

 
public 

class &
KnowledgeManagementContext +
:, -
	DbContext. 7
{ 
public &
KnowledgeManagementContext )
() *
)* +
:, -
base. 2
(2 3
$str3 U
)U V
{ 	
Database 
. 
SetInitializer "
(" #
new# &*
MigrateDatabaseToLatestVersion' E
<E F&
KnowledgeManagementContextF `
,` a
Configurationa n
>n o
(o p
)p q
)q r
;r s
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
modelBuilder 
. 
Conventions $
.$ %
Remove% +
<+ ,,
 OneToManyCascadeDeleteConvention, L
>L M
(M N
)N O
;O P
modelBuilder 
. 
Conventions $
.$ %
Remove% +
<+ ,-
!ManyToManyCascadeDeleteConvention, M
>M N
(N O
)O P
;P Q
modelBuilder 
. 
Conventions $
.$ %
Remove% +
<+ ,*
PluralizingTableNameConvention, J
>J K
(K L
)L M
;M N
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
} 	
public 
DbSet 
< 
AssociatedTag "
>" #
AssociatedTags$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
DbSet 
< 
Category 
> 

Categories )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
Comment 
> 
Comments &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Like 
> 
Likes  
{! "
get# &
;& '
set( +
;+ ,
}- .
public   
DbSet   
<   
Notification   !
>  ! "
Notifications  # 0
{  1 2
get  3 6
;  6 7
set  8 ;
;  ; <
}  = >
public!! 
DbSet!! 
<!! 
Post!! 
>!! 
Posts!!  
{!!! "
get!!# &
;!!& '
set!!( +
;!!+ ,
}!!- .
public"" 
DbSet"" 
<"" 
PostTag"" 
>"" 
PostTags"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
public## 
DbSet## 
<## 
Report## 
>## 
Reports## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
public$$ 
DbSet$$ 
<$$ 
Tag$$ 
>$$ 
Tags$$ 
{$$  
get$$! $
;$$$ %
set$$& )
;$$) *
}$$+ ,
public%% 
DbSet%% 
<%% 
User%% 
>%% 
Users%%  
{%%! "
get%%# &
;%%& '
set%%( +
;%%+ ,
}%%- .
public&& 
DbSet&& 
<&& 
CommentReport&& "
>&&" #
CommentReports&&$ 2
{&&3 4
get&&5 8
;&&8 9
set&&: =
;&&= >
}&&? @
}(( 
})) ‡	
~C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Like.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
Like		 
:		 

BaseEntity		 "
{

 
[ 	
Key	 
] 
public 
int 
LikeId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ±
ÜC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Notification.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
Notification		 
:		 

BaseEntity		  *
{

 
[ 	
Key	 
] 
public 
int 
NotificationId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
NotificationType #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
IsRead 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ¨
~C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Post.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
Post		 
:		 

BaseEntity		 "
{

 
[ 	
Key	 
] 
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
System 
. 
DateTime 
PostDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	IsDeleted 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	UserImage 
{  !
get" %
;% &
set' *
;* +
}, -
public 
virtual 
Category 
Category  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
ICollection "
<" #
Comment# *
>* +
Comments, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
ICollection "
<" #
Notification# /
>/ 0
Notifications1 >
{? @
getA D
;D E
setF I
;I J
}K L
public 
virtual 
ICollection "
<" #
Report# )
>) *
Reports+ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
virtual 
ICollection "
<" #
PostTag# *
>* +
PostTags, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
ICollection "
<" #
Like# '
>' (
Likes) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public   
virtual   
User   
User    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
}!! 
}"" π	
ÅC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\PostTag.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
PostTag		 
{

 
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
TagId 
{ 
get 
; 
set  #
;# $
}% &
[ 	
Key	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
virtual 
Tag 
Tag 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ô
ÄC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Report.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
Report		 
:		 

BaseEntity		 $
{

 
[ 	
Key	 
] 
public 
int 
ReportId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
Isread 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ¨	
}C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\Tag.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public		 

class		 
Tag		 
{

 
[ 	
Key	 
] 
public 
int 
TagId 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
ICollection "
<" #
PostTag# *
>* +
PostTags, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
ICollection "
<" #
AssociatedTag# 0
>0 1
AssociatedTags22 A
{B C
getD G
;G H
setI L
;L M
}N O
} 
} “
~C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\Entities\User.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
.$ %
Entities% -
{ 
public 

class 
User 
: 

BaseEntity "
{		 
public

 
int

 
UserId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Nullable 
< 
bool 
> 
isActive &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Nullable 
< 
int 
> 
isModerator (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
ICollection "
<" #
Comment# *
>* +
Comments, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
ICollection "
<" #
Like# '
>' (
Likes) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
virtual 
ICollection "
<" #
Notification# /
>/ 0
Notifications1 >
{? @
getA D
;D E
setF I
;I J
}K L
public 
virtual 
ICollection "
<" #
Post# '
>' (
Posts) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
virtual 
ICollection "
<" #
Report# )
>) *
Reports+ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
virtual 
ICollection "
<" #
CommentReport# 0
>0 1
CommentReports2 @
{A B
getC F
;F G
setH K
;K L
}M N
} 
}   ‡
ÑC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\GetPostRequestModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

enum 
SortingType 
{ 

RecentPost		 
,		 
MaxLikes

 
,

 
MaxComments 
, 
} 
public 

enum 

FilterType 
{ 

RecentPost 
, 
ByLikedPost 
, 
ByFollowdTags 
} 
public 

class 
GetPostRequestModel $
{ 
public 
int 

CategoryId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

pageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
public 
SortingType 
SortingType '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 

FilterType 

FilterType %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
List 
< 
string 
> 

FilterTags '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public   
string   
SearchQuery   "
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
}"" 
}## ∂
C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\LikedPostModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
LikedPostModel 
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 

countLikes 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
IsLiked 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ô

ÉC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\ElasticSearchModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
ElasticSearchModel #
{ 
public

 
int

 
PostId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 
string 
> 
Tags  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Image 
{ 
get !
;! "
set# &
;& '
}( )
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
string 
. 
Format  
(  !
$str! K
,K L
PostIdM S
,S T
TitleU Z
,Z [
Tags\ `
)` a
;a b
} 	
} 
} ∑
ÇC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\LoginRequestModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
LoginRequestModel "
{		 
public 
string 
token 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
? 
isModerator 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ó
ÉC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\LogOutRequestModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
LogOutRequestModel #
{		 
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

LoginToken  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} «
|C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\MyPostModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
MyPostModel 
{ 
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< 
int 
> 
TagId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
List 
< 
string 
> 
TagName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public## 
DateTime## 
PostDate##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public'' 
string'' 
Image'' 
{'' 
get'' !
;''! "
set''# &
;''& '
}''( )
public++ 
int++ 
Likes++ 
{++ 
get++ 
;++ 
set++  #
;++# $
}++% &
public// 
int// 
Count// 
{// 
get// 
;// 
set//  #
;//# $
}//% &
public33 
int33 
IsLiked33 
{33 
get33  
;33  !
set33" %
;33% &
}33' (
}66 
}77 æ
ÇC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\NotificationModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
NotificationModel "
{ 
public 
int 
Type 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
IsRead 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
PostName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
DoneBy 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ì
ÉC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\PageParameterModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
PageParameterModel #
{ 
public 
int 

pageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	_pageSize 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} û
ÅC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\PostRequestModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
PostRequestModel !
{ 
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
PostDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
IsLiked 
{ 
get  
;  !
set" %
;% &
}' (
public## 
int## 
UserId## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
public'' 
int'' 
Likes'' 
{'' 
get'' 
;'' 
set''  #
;''# $
}''% &
public++ 
int++ 
Count++ 
{++ 
get++ 
;++ 
set++  #
;++# $
}++% &
public// 
string// 
Image// 
{// 
get// !
;//! "
set//# &
;//& '
}//( )
public33 
List33 
<33 
string33 
>33 
TagName33 #
{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
}99 
}:: ´
ÉC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\ReportCommentModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
ReportCommentModel #
{		 
public

 
int

 
UserId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
int 

CommmentId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ó
ÉC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\ReportRequestModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
ReportRequestModel #
{ 
public

 
int

 
PostId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
PostDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Image 
{ 
get !
;! "
set# &
;& '
}( )
public"" 
string"" 
Name"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
}$$ 
}%% î
zC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\SpamModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
	SpamModel 
{ 
public 
string 
Comment 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ¸
zC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\TagsModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
	TagsModel 
{		 
public

 
int

 
TagId

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ä

ÅC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\UserDetailsModel.cs
	namespace 	
KnowledgeManagement
 
. 
Models $
{ 
public 

class 
UserDetailsModel !
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Lastname 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
isActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
isModerator 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ≠
ÅC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str .
). /
]/ 0
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *√
ãC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IAddTagsData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 	
	interface


 
IAddTagsData

  
{ 
Boolean 
AddTags 
( 
	TagsModel !
tags" &
)& '
;' (
IEnumerable 
< 
	TagsModel 
> 
GetTags &
(& '
int' *
UserId+ 1
)1 2
;2 3
} 
} ≤
íC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IAssociatedTagsData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 

	interface

 
IAssociatedTagsData

 (
{ 
void 
AddAssociatedTags 
( 
AssociatedTagModel 1

associated2 <
)< =
;= >
} 
} —
ãC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ICommentData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 

	interface

 
ICommentData

 !
{ 
List 
< 
CommentModel 
> 
GetCommentById )
() *
int* -
id. 0
)0 1
;1 2
void 

AddComment 
( 
CommentModel $
comment% ,
), -
;- .
bool 
EditMyComment 
( 
CommentModel '
comment( /
)/ 0
;0 1
} 
} ∞
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IElasticSearchData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 
	interface

	 
IElasticSearchData

 %
{ 
void 

GetSqlData 
( 
) 
; 
List 
< 
PostRequestModel 
> 
GetSearchResult .
(. /
string/ 5
query6 ;
); <
;< =
} 
} ä
åC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IHomePageData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 

	interface

 
IHomePageData

 "
{ 
IEnumerable	 
< 
PostRequestModel %
>% &
HomePagePost' 3
(3 4
int4 7
UserId8 >
,> ?
int@ C

CategoryIdD N
,N O
SortingTypeP [
sortingtype\ g
,g h

FilterTypei s

filtertypet ~
)~ 
;	 Ä
} 
} å
àC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ILikeData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 	
	interface

 
	ILikeData

 
{ 
void	 
LikePost 
( 
LikedPostModel %
value& +
)+ ,
;, -
} 
} Ç
âC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ILoginData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 

	interface

 

ILoginData

 
{ 
void 
LogOut 
( 
int 
UserId 
) 
;  
} 
} Ò
ôC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IModeratorNotificationData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 
	interface

	 &
IModeratorNotificationData

 -
{ 
List 
< 
NotificationModel 
> $
GetModeratorNotification  8
(8 9
int9 <
UserId= C
)C D
;D E
} 
} ‚
äC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IMyPostData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 	
	interface


 
IMyPostData

 
{ 
IEnumerable 
< 
MyPostModel 
>  
MySeeRecentPost! 0
(0 1
int1 4
UserId5 ;
); <
;< =
bool 

EditMyPost 
( 
EditPostModel %
editPost& .
). /
;/ 0
void 
DeleteRecentPost 
( 
int !
PostId" (
)( )
;) *
void 

AddNewPost 
( 
AddPostRequestModel +
AddPost, 3
)3 4
;4 5
} 
} ⁄
êC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\INotificationData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 	
	interface


 
INotificationData

 %
{ 
List 
< 
NotificationModel 
> 
GetUserNotification  3
(3 4
int4 7
UserId8 >
)> ?
;? @
} 
} Ø
ëC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IReportcommentData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 	
	interface


 
IReportcommentData

 &
{ 
bool 
EditMyComment 
( 
ReportCommentModel -
reportComment. ;
); <
;< =
} 
} £
àC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ISpamData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
	Interface) 2
{		 
public

 
	interface


 
	ISpamData

 
{ 
void 

AddNewSpam 
( 
	SpamModel !
spam" &
)& '
;' (
void 
DeleteRecentPost 
( 
int !
PostId" (
)( )
;) *
IEnumerable 
< 
ReportRequestModel &
>& '
GetPost( /
(/ 0
)0 1
;1 2
} 
} ƒ
àC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\AddTagsData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
AddTagsData 
: 
IAddTagsData +
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
Boolean 
AddTags 
( 
	TagsModel (
tags) -
)- .
{ 	
int 
w 
= 
$num 
; 
w 
= 
( 
from 
x 
in 
db 
. 
Tags "
where 
x 
. 
TagName  
==! #
tags$ (
.( )
TagName) 0
select 
x 
. 
TagId 
)  
.  !
FirstOrDefault! /
(/ 0
)0 1
;1 2
if 
( 
w 
== 
$num 
) 
{ 
Tag 
obj 
= 
new 
Tag !
{ 
TagName 
= 
tags "
." #
TagName# *
} 
; 
db 
. 
Tags 
. 
Add 
( 
obj 
)  
;  !
db 
. 
SaveChanges 
( 
)  
;  !
tags!! 
.!! 
TagId!! 
=!! 
obj!!  
.!!  !
TagId!!! &
;!!& '
tags"" 
."" 
TagName"" 
="" 
obj"" "
.""" #
TagName""# *
;""* +
return## 
true## 
;## 
}$$ 
else%% 
{&& 
return'' 
false'' 
;'' 
}(( 
}++ 	
public-- 
IEnumerable-- 
<-- 
	TagsModel-- $
>--$ %
GetTags--& -
(--- .
int--. 1
UserId--2 8
)--8 9
{.. 	
var00 
result00 
=00 
(00 
from00 
c00  
in00! #
db00$ &
.00& '
Tags00' +
select11  
new11! $
	TagsModel11% .
{22 
TagId33 #
=33$ %
c33& '
.33' (
TagId33( -
,33- .
TagName44 %
=44& '
c44( )
.44) *
TagName44* 1
}55 
)77 
.77 
ToList77 "
(77" #
)77# $
;77$ %
return;; 
result;; 
;;; 
}<< 	
}?? 
}@@ ”
èC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\AssociatedTagsData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
AssociatedTagsData #
:$ %
IAssociatedTagsData& 9
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
void 
AddAssociatedTags %
(% &
AssociatedTagModel& 8

associated9 C
)C D
{ 	
var 
result 
= 
( 
from 
at !
in" $
db% '
.' (
AssociatedTags( 6
select  
at! #
.# $
GroupId$ +
)+ ,
., -
LastOrDefault- :
(: ;
); <
;< =
result 
++ 
; 
AssociatedTag 
associatedTag '
=( )
new* -
AssociatedTag. ;
(; <
)< =
;= >
{ 
foreach 
( 
int 
x 
in !

associated" ,
., -
TagId- 2
)2 3
{ 
associatedTag !
.! "
TagId" '
=( )
x* +
;+ ,
associatedTag !
.! "
GroupId" )
=* +
result, 2
;2 3
associatedTag   !
.  ! "
	CreatedAt  " +
=  , -
DateTime  . 6
.  6 7
Now  7 :
;  : ;
associatedTag!! !
.!!! "
	UpdatedAt!!" +
=!!, -
DateTime!!. 6
.!!6 7
Now!!7 :
;!!: ;
db## 
.## 
AssociatedTags## %
.##% &
Add##& )
(##) *
associatedTag##* 7
)##7 8
;##8 9
db$$ 
.$$ 
SaveChanges$$ "
($$" #
)$$# $
;$$$ %
}&& 
}(( 
},, 	
}// 
}00 ›5
àC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\CommentData.cs
	namespace

 	
KnowledgeManagement


 
.

 

Repository

 (
.

( )
Service

) 0
{ 
public 

class 
CommentData 
: 
ICommentData +
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
List 
< 
CommentModel  
>  !
GetCommentById" 0
(0 1
int1 4
id5 7
)7 8
{ 	
var 
result 
= 
( 
from 
c  
in! #
db$ &
.& '
Comments' /
join 
u  
in! #
db$ &
.& '
Users' ,
on- /
c0 1
.1 2
UserId2 8
equals9 ?
u@ A
.A B
UserIdB H
where 
c  !
.! "
PostId" (
==) +
id, .
&&/ 1
c2 3
.3 4
	IsDeleted4 =
==> @
falseA F
select  
new! $
CommentModel% 1
{ 
PostId $
=% &
c' (
.( )
PostId) /
,/ 0
Content %
=& '
c( )
.) *
Content* 1
,1 2
UserId   $
=  % &
c  ' (
.  ( )
UserId  ) /
,  / 0
Name!! "
=!!# $
u!!% &
.!!& '
	FirstName!!' 0
,!!0 1
CommentDate"" )
=""* +
c"", -
.""- .
CommentDate"". 9
}## 
)## 
.## 
ToList## #
(### $
)##$ %
;##% &
foreach$$ 
($$ 
CommentModel$$ !
p$$" #
in$$$ &
result$$' -
)$$- .
{%% 
p&& 
.&& 
Count&& 
=&& 
(&& 
from&& 
posts&&  %
in&&& (
db&&) +
.&&+ ,
Comments&&, 4
where''  
posts''! &
.''& '
PostId''' -
==''. 0
p''1 2
.''2 3
PostId''3 9
select(( !
posts((" '
.((' (
UserId((( .
)((. /
.((/ 0
Count((0 5
(((5 6
)((6 7
;((7 8
}** 
return++ 
result++ 
;++ 
},, 	
public77 
void77 

AddComment77 
(77 
CommentModel77 +
comment77, 3
)773 4
{88 	
Comment99 
obj99 
=99 
new99 
Comment99 %
{:: 
UserId;; 
=;; 
comment;;  
.;;  !
UserId;;! '
,;;' (
Content<< 
=<< 
comment<< !
.<<! "
Content<<" )
,<<) *
CommentDate== 
=== 
DateTime== &
.==& '
Now==' *
,==* +
PostId>> 
=>> 
comment>>  
.>>  !
PostId>>! '
,>>' (
	CreatedAt?? 
=?? 
DateTime?? $
.??$ %
Now??% (
,??( )
	UpdatedAt@@ 
=@@ 
DateTime@@ $
.@@$ %
Now@@% (
,@@( )
	IsDeletedAA 
=AA 
falseAA !
}BB 
;BB 
dbCC 
.CC 
CommentsCC 
.CC 
AddCC 
(CC 
objCC 
)CC  
;CC  !
NotificationFF 
obj1FF 
=FF 
newFF  #
NotificationFF$ 0
{GG 
NotificationTypeHH  
=HH! "
$numHH# $
,HH$ %
IsReadII 
=II 
$numII 
,II 
PostIdJJ 
=JJ 
commentJJ  
.JJ  !
PostIdJJ! '
,JJ' (
UserIdKK 
=KK 
commentKK  
.KK  !
UserIdKK! '
,KK' (
	CreatedAtLL 
=LL 
DateTimeLL $
.LL$ %
NowLL% (
,LL( )
	UpdatedAtMM 
=MM 
DateTimeMM $
.MM$ %
NowMM% (
}OO 
;OO 
dbPP 
.PP 
NotificationsPP 
.PP 
AddPP  
(PP  !
obj1PP! %
)PP% &
;PP& '
dbQQ 
.QQ 
SaveChangesQQ 
(QQ 
)QQ 
;QQ 
}SS 	
publicUU 
boolUU 
EditMyCommentUU !
(UU! "
CommentModelUU" .
commentUU/ 6
)UU6 7
{VV 	
varWW 
commenteditWW 
=WW 
dbWW  
.WW  !
CommentsWW! )
.WW) *
WhereWW* /
(WW/ 0
sWW0 1
=>WW2 4
sWW5 6
.WW6 7
PostIdWW7 =
==WW> @
commentWWA H
.WWH I
PostIdWWI O
)WWO P
.WWP Q
FirstOrDefaultWWQ _
(WW_ `
)WW` a
;WWa b
ifXX 
(XX 
commenteditXX 
.XX 
UserIdXX "
!=XX# %
commentXX& -
.XX- .
UserIdXX. 4
)XX4 5
{YY 
returnZZ 
falseZZ 
;ZZ 
}[[ 
commentedit]] 
.]] 
Content]] 
=]]  !
comment]]" )
.]]) *
Content]]* 1
;]]1 2
commentedit^^ 
.^^ 
CommentDate^^ #
=^^$ %
DateTime^^& .
.^^. /
Now^^/ 2
;^^2 3
commentedit__ 
.__ 
	CreatedAt__ !
=__" #
DateTime__$ ,
.__, -
Now__- 0
;__0 1
commentedit`` 
.`` 
	UpdatedAt`` !
=``" #
DateTime``$ ,
.``, -
Now``- 0
;``0 1
dbaa 
.aa 
Entryaa 
(aa 
commenteditaa  
)aa  !
.aa! "
Stateaa" '
=aa( )
Systemaa* 0
.aa0 1
Dataaa1 5
.aa5 6
Entityaa6 <
.aa< =
EntityStateaa= H
.aaH I
ModifiedaaI Q
;aaQ R
dbbb 
.bb 
SaveChangesbb 
(bb 
)bb 
;bb 
returncc 
truecc 
;cc 
}dd 	
}ff 
}gg  e
éC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\ElasticSearchData.cs
	namespace

 	
KnowledgeManagement


 
.

 

Repository

 (
.

( )
Service

) 0
{ 
public 

class 
ElasticSearchData "
:# $
IElasticSearchData% 7
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
private 
readonly 
string 
ElasticSearchUrl  0
=1 2
System3 9
.9 :
Configuration: G
.G H 
ConfigurationManagerH \
.\ ]
AppSettings] h
[h i
$stri }
]} ~
;~ 
private 
readonly 
string 
	IndexName  )
=* +
$str, A
;A B
private 
readonly 
string 
TypePost  (
=) *
$str+ 4
;4 5
public 
IElasticClient 
GetElasticClient .
(. /
)/ 0
{ 	
var 
uri 
= 
new 
Uri 
( 
ElasticSearchUrl .
). /
;/ 0
IElasticClient 
elasticClient (
=) *
new+ .
ElasticClient/ <
(< =
uri= @
)@ A
;A B
return 
elasticClient  
;  !
} 	
public'' 
void'' 

InsertData'' 
('' 
string'' %
	indexName''& /
,''/ 0
string''1 7
typeName''8 @
,''@ A
ElasticSearchModel''B T
post''U Y
)''Y Z
{(( 	
GetElasticClient)) 
()) 
))) 
.)) 
Index)) $
())$ %
post))% )
,))) *
p))+ ,
=>))- /
p))0 1
.))1 2
Index))2 7
())7 8
	indexName))8 A
)))A B
.))B C
Type))C G
())G H
typeName))H P
)))P Q
.))Q R
Id))R T
())T U
post))U Y
.))Y Z
PostId))Z `
)))` a
)))a b
;))b c
}** 	
public// 
void// 

GetSqlData// 
(// 
)//  
{00 	
var22 
	inter_res22 
=22 
from22  
t22! "
in22# %
db22& (
.22( )
Tags22) -
join33  
pt33! #
in33$ &
db33' )
.33) *
PostTags33* 2
on333 5
t336 7
.337 8
TagId338 =
equals33> D
pt33E G
.33G H
TagId33H M
join44  
ps44! #
in44$ &
db44' )
.44) *
Posts44* /
on440 2
pt443 5
.445 6
PostId446 <
equals44= C
ps44D F
.44F G
PostId44G M
select55 "
new55# &
{66 
ps77  "
.77" #
PostId77# )
,77) *
ps88  "
.88" #
Title88# (
,88( )
t99  !
.99! "
TagName99" )
,99) *
}:: 
;:: 
var<< 
res<< 
=<< 
(<< 
from<< 
ir<< 
in<< !
	inter_res<<" +
group== 
ir== 
by==  "
ir==# %
.==% &
PostId==& ,
into==- 1
g==2 3
select>> 
new>> !
ElasticSearchModel>>" 4
{?? 
PostId@@ !
=@@" #
g@@$ %
.@@% &
Key@@& )
,@@) *
TitleAA  
=AA! "
gAA# $
.AA$ %
SelectAA% +
(AA+ ,
eAA, -
=>AA. 0
eAA1 2
.AA2 3
TitleAA3 8
)AA8 9
.AA9 :
FirstOrDefaultAA: H
(AAH I
)AAI J
,AAJ K
TagsBB 
=BB  !
gBB" #
.BB# $
SelectBB$ *
(BB* +
eBB+ ,
=>BB- /
eBB0 1
.BB1 2
TagNameBB2 9
)BB9 :
.BB: ;
ToListBB; A
(BBA B
)BBB C
}CC 
)CC 
.CC 
ToListCC  
(CC  !
)CC! "
;CC" #
foreachEE 
(EE 
varEE 
xEE 
inEE 
resEE !
)EE! "
{FF 
GetElasticClientGG  
(GG  !
)GG! "
.GG" #
IndexGG# (
(GG( )
xGG) *
,GG* +
pGG, -
=>GG. 0
pGG1 2
.GG2 3
IndexGG3 8
(GG8 9
	IndexNameGG9 B
)GGB C
.GGC D
TypeGGD H
(GGH I
TypePostGGI Q
)GGQ R
.GGR S
IdGGS U
(GGU V
xGGV W
.GGW X
PostIdGGX ^
)GG^ _
)GG_ `
;GG` a
}HH 
}II 	
privatePP 
ListPP 
<PP 
ElasticSearchModelPP '
>PP' (
GetAllRecordsPP) 6
(PP6 7
stringPP7 =
queryPP> C
,PPC D
ListPPE I
<PPI J
stringPPJ P
>PPP Q
tagsPPR V
)PPV W
{QQ 	
stringRR 
wildCardQueryRR  
=RR! "
$strRR# &
+RR' (
queryRR) .
+RR/ 0
$strRR1 4
;RR4 5
varSS 
resSS 
=SS 
GetElasticClientSS &
(SS& '
)SS' (
.SS( )
SearchSS) /
<SS/ 0
ElasticSearchModelSS0 B
>SSB C
(SSC D
sSSD E
=>SSF H
sSSI J
.SSJ K
IndexSSK P
(SSP Q
	IndexNameSSQ Z
)SSZ [
.TT 
TypeTT 
(TT 
TypePostTT 
)TT 
.TT 
FromTT  
(TT  !
$numTT! "
)TT" #
.TT# $
SizeTT$ (
(TT( )
$numTT) +
)TT+ ,
.UU 
QueryUU 
(UU 
qUU 
=>UU 
qUU 
.UU 
DisMaxUU  
(UU  !
cUU! "
=>UU# %
cUU& '
.VV 
QueriesVV 
(VV 
qqWW 
=>WW 
qqWW 
.WW 
WildcardWW !
(WW! "
wWW" #
=>WW$ &
wWW' (
.WW( )
TitleWW) .
,WW. /
wildCardQueryWW0 =
)WW= >
,WW> ?
qqXX 
=>XX 
qqXX 
.XX 
TermsXX 
(XX 
mXX  
=>XX! #
mXX$ %
.XX% &
FieldXX& +
(XX+ ,
fXX, -
=>XX. 0
fXX1 2
.XX2 3
TagsXX3 7
)XX7 8
.XX8 9
TermsXX9 >
(XX> ?
tagsXX? C
)XXC D
)XXD E
)YY 
)YY 
)YY 
)YY 
;YY 
var[[ 
records[[ 
=[[ 
new[[ 
List[[ "
<[[" #
ElasticSearchModel[[# 5
>[[5 6
([[6 7
)[[7 8
;[[8 9
foreach]] 
(]] 
var]] 
item]] 
in]]  
res]]! $
.]]$ %
Hits]]% )
)]]) *
{^^ 
records__ 
.__ 
Add__ 
(__ 
item__  
.__  !
Source__! '
)__' (
;__( )
}`` 
returnaa 
recordsaa 
;aa 
}bb 	
privateee 
Listee 
<ee 
stringee 
>ee (
GetAssociatedTagTillTwoLevelee 9
(ee9 :
stringee: @
tagNameeeA H
)eeH I
{ff 	
returnhh 
(hh 
fromhh 
associatedObj1hh '
inhh( *
dbhh+ -
.hh- .
AssociatedTagshh. <
joinii 
associatedObj2ii '
inii( *
dbii+ -
.ii- .
AssociatedTagsii. <
onii= ?
associatedObj1ii@ N
.iiN O
GroupIdiiO V
equalsiiW ]
associatedObj2ii^ l
.iil m
GroupIdiim t
joinjj 
tagjj 
injj 
dbjj  "
.jj" #
Tagsjj# '
onjj( *
associatedObj2jj+ 9
.jj9 :
TagIdjj: ?
equalsjj@ F
tagjjG J
.jjJ K
TagIdjjK P
joinkk 
	tagActualkk "
inkk# %
dbkk& (
.kk( )
Tagskk) -
onkk. 0
associatedObj1kk1 ?
.kk? @
TagIdkk@ E
equalskkF L
	tagActualkkM V
.kkV W
TagIdkkW \
wherell 
	tagActualll #
.ll# $
TagNamell$ +
==ll, .
tagNamell/ 6
selectmm 
tagmm 
.mm 
TagNamemm &
.mm& '
ToLowermm' .
(mm. /
)mm/ 0
)nn 
.nn 
Distinctnn "
(nn" #
)nn# $
.nn$ %
ToListnn% +
(nn+ ,
)nn, -
;nn- .
}oo 	
publicss 
Listss 
<ss 
PostRequestModelss $
>ss$ %
GetSearchResultss& 5
(ss5 6
stringss6 <
queryss= B
)ssB C
{tt 	
varvv 
resultsvv 
=vv 
GetAllRecordsvv '
(vv' (
queryvv( -
,vv- .(
GetAssociatedTagTillTwoLevelvv/ K
(vvK L
queryvvL Q
)vvQ R
)vvR S
;vvS T
varww 
postIdsww 
=ww 
resultsww !
.ww! "
Selectww" (
(ww( )
sww) *
=>ww+ -
sww. /
.ww/ 0
PostIdww0 6
)ww6 7
.ww7 8
ToListww8 >
(ww> ?
)ww? @
;ww@ A
varxx 
recordxx 
=xx 
(xx 
fromxx 
postObjxx &
inxx' )
dbxx* ,
.xx, -
Postsxx- 2
joinyy 
userObjyy &
inyy' )
dbyy* ,
.yy, -
Usersyy- 2
onyy3 5
postObjyy6 =
.yy= >
UserIdyy> D
equalsyyE K
userObjyyL S
.yyS T
UserIdyyT Z
wherezz 
postIdszz  '
.zz' (
Containszz( 0
(zz0 1
postObjzz1 8
.zz8 9
PostIdzz9 ?
)zz? @
&&zzA C
postObjzzD K
.zzK L
	IsDeletedzzL U
select{{  
new{{! $
PostRequestModel{{% 5
{|| 
PostId}} $
=}}% &
postObj}}' .
.}}. /
PostId}}/ 5
,}}5 6
Title~~ #
=~~$ %
postObj~~& -
.~~- .
Title~~. 3
,~~3 4
Description )
=* +
postObj, 3
.3 4
Description4 ?
,? @
PostDate
ÄÄ &
=
ÄÄ' (
postObj
ÄÄ) 0
.
ÄÄ0 1
PostDate
ÄÄ1 9
,
ÄÄ9 :
Name
ÅÅ "
=
ÅÅ# $
userObj
ÅÅ% ,
.
ÅÅ, -
	FirstName
ÅÅ- 6
,
ÅÅ6 7
Image
ÇÇ #
=
ÇÇ$ %
postObj
ÇÇ& -
.
ÇÇ- .
	UserImage
ÇÇ. 7
,
ÇÇ7 8
TagName
ÉÉ %
=
ÉÉ& '
db
ÉÉ( *
.
ÉÉ* +
PostTags
ÉÉ+ 3
.
ÉÉ3 4
Where
ÉÉ4 9
(
ÉÉ9 :
w
ÉÉ: ;
=>
ÉÉ< >
w
ÉÉ? @
.
ÉÉ@ A
PostId
ÉÉA G
==
ÉÉH J
postObj
ÉÉK R
.
ÉÉR S
PostId
ÉÉS Y
)
ÉÉY Z
.
ÑÑ 
Select
ÑÑ %
(
ÑÑ% &
s
ÑÑ& '
=>
ÑÑ( *
s
ÑÑ+ ,
.
ÑÑ, -
Tag
ÑÑ- 0
.
ÑÑ0 1
TagName
ÑÑ1 8
)
ÑÑ8 9
.
ÑÑ9 :
ToList
ÑÑ: @
(
ÑÑ@ A
)
ÑÑA B
,
ÑÑB C
Likes
ÖÖ #
=
ÖÖ$ %
db
ÖÖ& (
.
ÖÖ( )
Likes
ÖÖ) .
.
ÖÖ. /
Where
ÖÖ/ 4
(
ÖÖ4 5
w
ÖÖ5 6
=>
ÖÖ7 9
w
ÖÖ: ;
.
ÖÖ; <
PostId
ÖÖ< B
==
ÖÖC E
postObj
ÖÖF M
.
ÖÖM N
PostId
ÖÖN T
)
ÖÖT U
.
ÖÖU V
Count
ÖÖV [
(
ÖÖ[ \
)
ÖÖ\ ]
}
áá 
)
áá 
.
áá 
ToList
áá #
(
áá# $
)
áá$ %
;
áá% &
return
àà 
record
àà 
;
àà 
}
ââ 	
}
åå 
}éé ÃL
âC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\HomePageData.cs
	namespace

 	
KnowledgeManagement


 
.

 

Repository

 (
.

( )
Service

) 0
{ 
public 

class 
HomePageData 
: 
IHomePageData  -
{ 
private 
readonly &
KnowledgeManagementContext 3
db4 6
=7 8
new9 <&
KnowledgeManagementContext= W
(W X
)X Y
;Y Z
readonly 
private 
int 
PageSize %
=& '
$num( )
;) *
public 
IEnumerable 
< 
PostRequestModel +
>+ ,
HomePagePost- 9
(9 :
int: =
UserId> D
,D E
intF I

CategoryIdJ T
,T U
SortingTypeV a
sortingtypeb m
,m n

FilterTypeo y

filtertype	z Ñ
)
ó ò
{ 	
var 
result 
= 
( 
from 
l  
in! #
db$ &
.& '
Posts' ,
join 
a  
in! #
db$ &
.& '
Users' ,
on- /
l0 1
.1 2
UserId2 8
equals9 ?
a@ A
.A B
UserIdB H
where 
l  !
.! "

CategoryId" ,
==- /

CategoryId0 :
&&; =
l> ?
.? @
	IsDeleted@ I
&&J L
!M N
(N O
dbO Q
.Q R
ReportsR Y
.Y Z
AnyZ ]
(] ^
r^ _
=>` b
rc d
.d e
PostIde k
==l n
lo p
.p q
PostIdq w
&&x z
r{ |
.| }
UserId	} É
==
Ñ Ü
UserId
á ç
)
ç é
)
é è
orderby !
l" #
.# $
PostDate$ ,

descending- 7
select  
new! $
PostRequestModel% 5
{ 
Name "
=# $
a% &
.& '
	FirstName' 0
,0 1
PostDate &
=' (
l) *
.* +
PostDate+ 3
,3 4
Title   #
=  $ %
l  & '
.  ' (
Title  ( -
,  - .
Description!! )
=!!* +
l!!, -
.!!- .
Description!!. 9
,!!9 :
PostId"" $
=""% &
l""' (
.""( )
PostId"") /
,""/ 0
Image## #
=##$ %
l##& '
.##' (
	UserImage##( 1
,##1 2
TagName&& %
=&&& '
db&&( *
.&&* +
PostTags&&+ 3
.&&3 4
Where&&4 9
(&&9 :
w&&: ;
=>&&< >
w&&? @
.&&@ A
PostId&&A G
==&&H J
l&&K L
.&&L M
PostId&&M S
)&&S T
.'' 
Select'' %
(''% &
s''& '
=>''( *
s''+ ,
.'', -
Tag''- 0
.''0 1
TagName''1 8
)''8 9
.''9 :
ToList'': @
(''@ A
)''A B
,''B C
Likes(( #
=(($ %
db((& (
.((( )
Likes(() .
.((. /
Where((/ 4
(((4 5
w((5 6
=>((7 9
w((: ;
.((; <
PostId((< B
==((C E
l((F G
.((G H
PostId((H N
)((N O
.((O P
Count((P U
(((U V
)((V W
,((W X
Count)) #
=))$ %
db))& (
.))( )
Comments))) 1
.))1 2
Where))2 7
())7 8
w))8 9
=>)): <
w))= >
.))> ?
PostId))? E
==))F H
l))I J
.))J K
PostId))K Q
)))Q R
.))R S
Count))S X
())X Y
)))Y Z
}** 
)** 
.** 
ToList** #
(**# $
)**$ %
;**% &
foreach-- 
(-- 
var-- 
item-- 
in--  
result--! '
)--' (
{.. 
var// 
data// 
=// 
db// 
.// 
Likes// #
.//# $
FirstOrDefault//$ 2
(//2 3
l//3 4
=>//5 7
l//8 9
.//9 :
UserId//: @
==//A C
UserId//D J
&&//K M
l//N O
.//O P
PostId//P V
==//W Y
item//Z ^
.//^ _
PostId//_ e
)//e f
;//f g
if00 
(00 
data00 
==00 
null00  
)00  !
item11 
.11 
IsLiked11  
=11! "
$num11# $
;11$ %
else22 
item33 
.33 
IsLiked33  
=33! "
$num33# $
;33$ %
}44 
return77 '
GetResultFilteredAndSorting77 .
(77. /
UserId77/ 5
,775 6

filtertype777 A
,77A B
sortingtype77C N
,77N O
result77P V
)77V W
;77W X
}99 	
private;; 
IEnumerable;; 
<;; 
PostRequestModel;; ,
>;;, -'
GetResultFilteredAndSorting;;. I
(;;I J
int;;J M
userId;;N T
,;;T U

FilterType;;V `

filterType;;a k
,;;k l
SortingType;;m x
sortingType	;;y Ñ
,
;;Ñ Ö
List
;;Ü ä
<
;;ä ã
PostRequestModel
;;ã õ
>
;;õ ú
result
;;ù £
)
;;£ §
{<< 	
if>> 
(>> 

filterType>> 
==>> 

FilterType>> (
.>>( )

RecentPost>>) 3
)>>3 4
{?? 
ifAA 
(AA 
sortingTypeAA 
==AA  "
SortingTypeAA# .
.AA. /
MaxLikesAA/ 7
)AA7 8
{BB 
returnCC 
resultCC !
.CC! "
OrderByDescendingCC" 3
(CC3 4
rCC4 5
=>CC6 8
rCC9 :
.CC: ;
LikesCC; @
)CC@ A
.CCA B
ToListCCB H
(CCH I
)CCI J
;CCJ K
}DD 
elseEE 
ifEE 
(EE 
sortingTypeEE $
==EE% '
SortingTypeEE( 3
.EE3 4
MaxCommentsEE4 ?
)EE? @
{FF 
returnGG 
resultGG !
.GG! "
OrderByDescendingGG" 3
(GG3 4
rGG4 5
=>GG6 8
rGG9 :
.GG: ;
CountGG; @
)GG@ A
.GGA B
ToListGGB H
(GGH I
)GGI J
;GGJ K
}HH 
returnII 
resultII 
;II 
}JJ 
elseKK 
ifKK 
(KK 

filterTypeKK 
==KK  "

FilterTypeKK# -
.KK- .
ByLikedPostKK. 9
)KK9 :
{LL 
varNN 
	LikedPostNN 
=NN 
(NN  !
fromNN! %
lNN& '
inNN( *
dbNN+ -
.NN- .
LikesNN. 3
whereOO! &
lOO' (
.OO( )
UserIdOO) /
==OO0 2
userIdOO3 9
selectPP! '
lPP( )
)QQ! "
.QQ" #
ToListQQ# )
(QQ) *
)QQ* +
;QQ+ ,
ListRR 
<RR 
PostRequestModelRR %
>RR% &
MyPostRR' -
=RR. /
newRR0 3
ListRR4 8
<RR8 9
PostRequestModelRR9 I
>RRI J
(RRJ K
)RRK L
;RRL M
foreachTT 
(TT 
varTT 
mTT 
inTT !
	LikedPostTT" +
)TT+ ,
{UU 
varVV 

LikedPostsVV "
=VV# $
(VV% &
fromVV& *
kVV+ ,
inVV- /
resultVV0 6
whereWW& +
mWW, -
.WW- .
PostIdWW. 4
==WW5 7
kWW8 9
.WW9 :
PostIdWW: @
selectXX& ,
kXX- .
)XX. /
.XX/ 0
ToListXX0 6
(XX6 7
)XX7 8
;XX8 9
MyPostYY 
.YY 
AddRangeYY #
(YY# $

LikedPostsYY$ .
)YY. /
;YY/ 0
}ZZ 
if\\ 
(\\ 
sortingType\\ 
==\\  "
SortingType\\# .
.\\. /
MaxLikes\\/ 7
)\\7 8
{]] 
return^^ 
MyPost^^ !
.^^! "
OrderByDescending^^" 3
(^^3 4
r^^4 5
=>^^6 8
r^^9 :
.^^: ;
Likes^^; @
)^^@ A
.^^A B
ToList^^B H
(^^H I
)^^I J
;^^J K
}__ 
else`` 
if`` 
(`` 
sortingType`` $
==``% '
SortingType``( 3
.``3 4
MaxComments``4 ?
)``? @
{aa 
returnbb 
MyPostbb !
.bb! "
OrderByDescendingbb" 3
(bb3 4
rbb4 5
=>bb6 8
rbb9 :
.bb: ;
Countbb; @
)bb@ A
.bbA B
ToListbbB H
(bbH I
)bbI J
;bbJ K
}cc 
returnee 
MyPostee 
;ee 
}ff 
returngg 
resultgg 
;gg 
}hh 	
}ii 
}jj •5
ÖC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\LikeData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
LikeData 
: 
	ILikeData %
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
void 
LikePost 
( 
LikedPostModel +
value, 1
)1 2
{ 	
var 
entry 
= 
db 
. 
Likes  
.  !
Where! &
(& '
x' (
=>) +
x, -
.- .
UserId. 4
==5 7
value8 =
.= >
UserId> D
&&E G
xH I
.I J
PostIdJ P
==Q S
valueT Y
.Y Z
PostIdZ `
)` a
.a b
FirstOrDefaultb p
(p q
)q r
;r s
if 
( 
entry 
!= 
null 
) 
{ 
db 
. 
Likes 
. 
Remove 
(  
entry  %
)% &
;& '
db 
. 
SaveChanges 
( 
)  
;  !
Notification 
obj1 !
=" #
new$ '
Notification( 4
(4 5
)5 6
;6 7
obj1 
. 
NotificationType %
=& '
$num( )
;) *
obj1 
. 
IsRead 
= 
$num 
;  
obj1 
. 
PostId 
= 
value #
.# $
PostId$ *
;* +
obj1 
. 
UserId 
= 
value #
.# $
UserId$ *
;* +
obj1 
. 
	CreatedAt 
=  
DateTime! )
.) *
Now* -
;- .
obj1 
. 
	UpdatedAt 
=  
DateTime! )
.) *
Now* -
;- .
db 
. 
Notifications  
.  !
Add! $
($ %
obj1% )
)) *
;* +
db 
. 
SaveChanges 
( 
)  
;  !
value   
.   

countLikes    
=  ! "
(  # $
from  $ (
l  ) *
in  + -
db  . 0
.  0 1
Likes  1 6
where!!$ )
l!!* +
.!!+ ,
PostId!!, 2
==!!3 5
value!!6 ;
.!!; <
PostId!!< B
select""$ *
l""+ ,
."", -
UserId""- 3
)## 
.## 
Count## 
(## 
)## 
;## 
}%% 
else&& 
{'' 
Like(( 
	postLiked(( 
=((  
new((! $
Like((% )
((() *
)((* +
;((+ ,
	postLiked)) 
.)) 
UserId))  
=))! "
value))# (
.))( )
UserId))) /
;))/ 0
	postLiked** 
.** 
PostId**  
=**! "
value**# (
.**( )
PostId**) /
;**/ 0
	postLiked++ 
.++ 
	CreatedAt++ #
=++$ %
DateTime++& .
.++. /
Now++/ 2
;++2 3
	postLiked,, 
.,, 
	UpdatedAt,, #
=,,$ %
DateTime,,& .
.,,. /
Now,,/ 2
;,,2 3
db-- 
.-- 
Likes-- 
.-- 
Add-- 
(-- 
	postLiked-- &
)--& '
;--' (
db.. 
... 
SaveChanges.. 
(.. 
)..  
;..  !
Notification00 
obj100 !
=00" #
new00$ '
Notification00( 4
(004 5
)005 6
;006 7
obj111 
.11 
NotificationType11 %
=11& '
$num11( )
;11) *
obj122 
.22 
IsRead22 
=22 
$num22 
;22  
obj133 
.33 
PostId33 
=33 
value33 #
.33# $
PostId33$ *
;33* +
obj144 
.44 
UserId44 
=44 
value44 #
.44# $
UserId44$ *
;44* +
obj155 
.55 
	CreatedAt55 
=55  
DateTime55! )
.55) *
Now55* -
;55- .
obj166 
.66 
	UpdatedAt66 
=66  
DateTime66! )
.66) *
Now66* -
;66- .
db77 
.77 
Notifications77  
.77  !
Add77! $
(77$ %
obj177% )
)77) *
;77* +
db88 
.88 
SaveChanges88 
(88 
)88  
;88  !
value99 
.99 

countLikes99  
=99! "
(99# $
from99$ (
l99) *
in99+ -
db99. 0
.990 1
Likes991 6
where::$ )
l::* +
.::+ ,
PostId::, 2
==::3 5
value::6 ;
.::; <
PostId::< B
select;;$ *
l;;+ ,
.;;, -
UserId;;- 3
)<< 
.<< 
Count<< 
(<< 
)<< 
;<< 
var>> 
data>> 
=>> 
db>> 
.>> 
Likes>> #
.>># $
FirstOrDefault>>$ 2
(>>2 3
l>>3 4
=>>>5 7
l>>8 9
.>>9 :
UserId>>: @
==>>A C
value>>D I
.>>I J
UserId>>J P
&&>>Q S
l>>T U
.>>U V
PostId>>V \
==>>] _
value>>` e
.>>e f
PostId>>f l
)>>l m
;>>m n
if?? 
(?? 
data?? 
==?? 
null??  
)??  !
value@@ 
.@@ 
IsLiked@@ !
=@@" #
$num@@$ %
;@@% &
elseAA 
valueBB 
.BB 
IsLikedBB !
=BB" #
$numBB$ %
;BB% &
}EE 
}HH 	
}KK 
}LL ∞
ÜC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\LoginData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
	LoginData 
: 

ILoginData '
{ 
private 
readonly &
KnowledgeManagementContext 3
db4 6
=7 8
new9 <&
KnowledgeManagementContext= W
(W X
)X Y
;Y Z
public 
void 
LogOut 
( 
int 
UserId %
)% &
{ 	
var 
userdetails 
= 
db  
.  !
Users! &
.& '
Where' ,
(, -
w- .
=>/ 1
w2 3
.3 4
UserId4 :
==; =
UserId> D
)D E
.E F
FirstOrDefaultF T
(T U
)U V
;V W
userdetails 
. 
Token 
= 
null  $
;$ %
db 
. 
Entry 
( 
userdetails  
)  !
.! "
State" '
=( )
System* 0
.0 1
Data1 5
.5 6
Entity6 <
.< =
EntityState= H
.H I
ModifiedI Q
;Q R
db 
. 
SaveChanges 
( 
) 
; 
} 	
} 
} ´
ñC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\ModeratorNotificationData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class %
ModeratorNotificationData *
:+ ,&
IModeratorNotificationData- G
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
List 
< 
NotificationModel %
>% &$
GetModeratorNotification' ?
(? @
int@ C
UserIdD J
)J K
{ 	
var 
user 
= 
db 
. 
Users 
.  
FirstOrDefault  .
(. /
u/ 0
=>1 3
u4 5
.5 6
UserId6 <
=== ?
UserId@ F
&&G I
uJ K
.K L
isModeratorL W
==X Z
$num[ \
)\ ]
;] ^
var 
posts 
= 
( 
from 
p 
in  "
db# %
.% &
Posts& +
where 
p  
.  !
UserId! '
==( *
user+ /
./ 0
UserId0 6
select 
p  !
)! "
." #
ToList# )
() *
)* +
;+ ,
List 
< 
NotificationModel "
>" #
notifs$ *
=+ ,
new- 0
List1 5
<5 6
NotificationModel6 G
>G H
(H I
)I J
;J K
foreach 
( 
var 
p 
in 
posts #
)# $
{ 
var   
notifications   !
=  " #
(  $ %
from  % )
n  * +
in  , .
db  / 1
.  1 2
Notifications  2 ?
join!!% )
u!!* +
in!!, .
db!!/ 1
.!!1 2
Users!!2 7
on!!8 :
n!!; <
.!!< =
UserId!!= C
equals!!D J
u!!K L
.!!L M
UserId!!M S
where""% *
n""+ ,
."", -
PostId""- 3
==""4 6
p""7 8
.""8 9
PostId""9 ?
select##% +
new##, /
NotificationModel##0 A
{$$% &
Type%%) -
=%%. /
n%%0 1
.%%1 2
NotificationType%%2 B
,%%B C
PostName&&) 1
=&&2 3
p&&4 5
.&&5 6
Title&&6 ;
,&&; <
DoneBy'') /
=''0 1
u''2 3
.''3 4
	FirstName''4 =
}))% &
)))& '
.))' (
ToList))( .
()). /
)))/ 0
;))0 1
notifs-- 
.-- 
AddRange-- 
(--  
notifications--  -
)--- .
;--. /
}.. 
return// 
notifs// 
;// 
}00 	
}11 
}22 ﬂi
áC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\MyPostData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{ 
public 

class 

MyPostData 
: 
IMyPostData )
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
private 
ElasticSearchData !
es" $
;$ %
public 
IEnumerable 
< 
MyPostModel &
>& '
MySeeRecentPost( 7
(7 8
int8 ;
UserId< B
)B C
{ 	
var 
username 
= 
( 
from  
h! "
in# %
db& (
.( )
Users) .
where   !
UserId  " (
==  ) +
h  , -
.  - .
UserId  . 4
select!! "
h!!# $
.!!$ %
	FirstName!!% .
)!!. /
.!!/ 0
FirstOrDefault!!0 >
(!!> ?
)!!? @
;!!@ A
var## 
result## 
=## 
(## 
from## 
l##  
in##! #
db##$ &
.##& '
Posts##' ,
join$$ 
p$$  
in$$! #
db$$$ &
.$$& '
PostTags$$' /
on$$0 2
l$$3 4
.$$4 5
PostId$$5 ;
equals$$< B
p$$C D
.$$D E
PostId$$E K
join%% 
ta%% !
in%%" $
db%%% '
.%%' (
Tags%%( ,
on%%- /
p%%0 1
.%%1 2
TagId%%2 7
equals%%8 >
ta%%? A
.%%A B
TagId%%B G
where&& 
l&&  !
.&&! "
UserId&&" (
==&&) +
UserId&&, 2
&&&&3 5
l&&6 7
.&&7 8
	IsDeleted&&8 A
orderby'' !
l''" #
.''# $
PostDate''$ ,

descending''- 7
group(( 
p((  !
by((" $
p((% &
.((& '
PostId((' -
into((. 2
g((3 4
let)) 
query)) #
=))$ %
g))& '
.))' (
FirstOrDefault))( 6
())6 7
)))7 8
let** 
PostId** $
=**% &
query**' ,
.**, -
Post**- 1
let++ 
Title++ #
=++$ %
query++& +
.+++ ,
Post++, 0
let,, 
Description,, )
=,,* +
query,,, 1
.,,1 2
Post,,2 6
let-- 
PostDate-- &
=--' (
query--) .
.--. /
Post--/ 3
select33  
new33! $
MyPostModel33% 0
{44 
	FirstName55 '
=55( )
username55* 2
,552 3
PostId66 $
=66% &
PostId66' -
.66- .
PostId66. 4
,664 5
Title77 #
=77$ %
Title77& +
.77+ ,
Title77, 1
,771 2
Description88 )
=88* +
Description88, 7
.887 8
Description888 C
,88C D
TagId99 #
=99$ %
g99& '
.99' (
Select99( .
(99. /
e99/ 0
=>991 3
e994 5
.995 6
TagId996 ;
)99; <
.99< =
ToList99= C
(99C D
)99D E
,99E F
TagName:: %
=::& '
g::( )
.::) *
Select::* 0
(::0 1
e::1 2
=>::3 5
e::6 7
.::7 8
Tag::8 ;
.::; <
TagName::< C
)::C D
.::D E
ToList::E K
(::K L
)::L M
,::M N
PostDate;; &
=;;' (
PostDate;;) 1
.;;1 2
PostDate;;2 :
}<< 
)<< 
.<< 
ToList<< #
(<<# $
)<<$ %
;<<% &
foreach>> 
(>> 
var>> 
x>> 
in>> 
result>> $
)>>$ %
{?? 
x@@ 
.@@ 
Image@@ 
=@@ 
(@@ 
from@@ 
l@@  !
in@@" $
db@@% '
.@@' (
Posts@@( -
whereAA  
lAA! "
.AA" #
PostIdAA# )
==AA* ,
xAA- .
.AA. /
PostIdAA/ 5
selectBB !
lBB" #
.BB# $
	UserImageBB$ -
)BB- .
.BB. /
FirstOrDefaultBB/ =
(BB= >
)BB> ?
;BB? @
xFF 
.FF 
LikesFF 
=FF 
(FF 
fromFF 
kFF  !
inFF" $
dbFF% '
.FF' (
LikesFF( -
whereGG  
kGG! "
.GG" #
PostIdGG# )
==GG* ,
xGG- .
.GG. /
PostIdGG/ 5
selectHH !
kHH" #
.HH# $
UserIdHH$ *
)HH* +
.HH+ ,
CountHH, 1
(HH1 2
)HH2 3
;HH3 4
xLL 
.LL 
CountLL 
=LL 
(LL 
fromLL 
mLL  !
inLL" $
dbLL% '
.LL' (
CommentsLL( 0
whereMM  
mMM! "
.MM" #
PostIdMM# )
==MM* ,
xMM- .
.MM. /
PostIdMM/ 5
selectNN !
mNN" #
.NN# $
PostIdNN$ *
)NN* +
.NN+ ,
CountNN, 1
(NN1 2
)NN2 3
;NN3 4
varPP 
dataPP 
=PP 
dbPP 
.PP 
LikesPP #
.PP# $
FirstOrDefaultPP$ 2
(PP2 3
lPP3 4
=>PP5 7
lPP8 9
.PP9 :
UserIdPP: @
==PPA C
UserIdPPD J
&&PPK M
lPPN O
.PPO P
PostIdPPP V
==PPW Y
xPPZ [
.PP[ \
PostIdPP\ b
)PPb c
;PPc d
ifQQ 
(QQ 
dataQQ 
==QQ 
nullQQ  
)QQ  !
xRR 
.RR 
IsLikedRR 
=RR 
$numRR  !
;RR! "
elseSS 
xTT 
.TT 
IsLikedTT 
=TT 
$numTT  !
;TT! "
}UU 
returnVV 
resultVV 
;VV 
}WW 	
publicZZ 
boolZZ 

EditMyPostZZ 
(ZZ 
EditPostModelZZ ,
editPostZZ- 5
)ZZ5 6
{[[ 	
var]] 
postedit]] 
=]] 
db]] 
.]] 
Posts]] #
.]]# $
Where]]$ )
(]]) *
s]]* +
=>]], .
s]]/ 0
.]]0 1
PostId]]1 7
==]]8 :
editPost]]; C
.]]C D
PostId]]D J
)]]J K
.]]K L
FirstOrDefault]]L Z
(]]Z [
)]][ \
;]]\ ]
if^^ 
(^^ 
postedit^^ 
.^^ 
UserId^^ 
!=^^  "
editPost^^# +
.^^+ ,
UserId^^, 2
)^^2 3
{__ 
return`` 
false`` 
;`` 
}aa 
posteditdd 
.dd 
Descriptiondd  
=dd! "
editPostdd# +
.dd+ ,
Descriptiondd, 7
;dd7 8
posteditee 
.ee 
PostDateee 
=ee 
DateTimeee  (
.ee( )
Nowee) ,
;ee, -
posteditff 
.ff 
	CreatedAtff 
=ff  
DateTimeff! )
.ff) *
Nowff* -
;ff- .
posteditgg 
.gg 
	UpdatedAtgg 
=gg  
DateTimegg! )
.gg) *
Nowgg* -
;gg- .
dbhh 
.hh 
Entryhh 
(hh 
postedithh 
)hh 
.hh 
Statehh $
=hh% &
Systemhh' -
.hh- .
Datahh. 2
.hh2 3
Entityhh3 9
.hh9 :
EntityStatehh: E
.hhE F
ModifiedhhF N
;hhN O
dbii 
.ii 
SaveChangesii 
(ii 
)ii 
;ii 
foreachkk 
(kk 
intkk 
xkk 
inkk 
editPostkk &
.kk& '
Tagskk' +
)kk+ ,
{ll 
PostTagmm 
posttagsmm  
=mm! "
newmm# &
PostTagmm' .
(mm. /
)mm/ 0
;mm0 1
varnn 
	tagexistsnn 
=nn 
dbnn  "
.nn" #
PostTagsnn# +
.nn+ ,
Wherenn, 1
(nn1 2
ann2 3
=>nn4 6
ann7 8
.nn8 9
TagIdnn9 >
==nn? A
xnnB C
&&nnD F
annG H
.nnH I
PostIdnnI O
==nnP R
editPostnnS [
.nn[ \
PostIdnn\ b
)nnb c
;nnc d
ifpp 
(pp 
	tagexistspp 
.pp 
Countpp #
(pp# $
)pp$ %
==pp& (
$numpp) *
)pp* +
{qq 
posttagsrr 
.rr 
PostIdrr #
=rr$ %
editPostrr& .
.rr. /
PostIdrr/ 5
;rr5 6
posttagsss 
.ss 
TagIdss "
=ss# $
xss% &
;ss& '
dbtt 
.tt 
PostTagstt 
.tt  
Addtt  #
(tt# $
posttagstt$ ,
)tt, -
;tt- .
dbuu 
.uu 
SaveChangesuu "
(uu" #
)uu# $
;uu$ %
}vv 
}xx 
returnzz 
truezz 
;zz 
}{{ 	
public
áá 
void
áá 
DeleteRecentPost
áá $
(
áá$ %
int
áá% (
PostId
áá) /
)
áá/ 0
{
àà 	
var
ââ 

postdelete
ââ 
=
ââ 
db
ââ 
.
ââ  
Posts
ââ  %
.
ââ% &
Where
ââ& +
(
ââ+ ,
s
ââ, -
=>
ââ. 0
s
ââ1 2
.
ââ2 3
PostId
ââ3 9
==
ââ: <
PostId
ââ= C
)
ââC D
.
ââD E
FirstOrDefault
ââE S
(
ââS T
)
ââT U
;
ââU V

postdelete
ää 
.
ää 
	IsDeleted
ää  
=
ää! "
false
ää# (
;
ää( )
db
ãã 
.
ãã 
SaveChanges
ãã 
(
ãã 
)
ãã 
;
ãã 
}
çç 	
public
êê 
void
êê 

AddNewPost
êê 
(
êê !
AddPostRequestModel
êê 2
AddPost
êê3 :
)
êê: ;
{
ëë 	
Post
ìì 
post
ìì 
=
ìì 
new
ìì 
Post
ìì  
{
îî 
Title
ïï 
=
ïï 
AddPost
ïï 
.
ïï  
Title
ïï  %
,
ïï% &
PostDate
ññ 
=
ññ 
DateTime
ññ #
.
ññ# $
Now
ññ$ '
,
ññ' (
Description
óó 
=
óó 
AddPost
óó %
.
óó% &
Description
óó& 1
,
óó1 2
UserId
òò 
=
òò 
AddPost
òò  
.
òò  !
UserId
òò! '
,
òò' (

CategoryId
ôô 
=
ôô 
AddPost
ôô $
.
ôô$ %

CategoryId
ôô% /
,
ôô/ 0
	IsDeleted
öö 
=
öö 
true
öö  
,
öö  !
	UpdatedAt
õõ 
=
õõ 
DateTime
õõ $
.
õõ$ %
Now
õõ% (
,
õõ( )
	CreatedAt
úú 
=
úú 
DateTime
úú $
.
úú$ %
Now
úú% (
,
úú( )
	UserImage
ùù 
=
ùù 
AddPost
ùù #
.
ùù# $
Image
ùù$ )
}
ûû 
;
ûû 
db
üü 
.
üü 
Posts
üü 
.
üü 
Add
üü 
(
üü 
post
üü 
)
üü 
;
üü 
db
†† 
.
†† 
SaveChanges
†† 
(
†† 
)
†† 
;
†† 
foreach
¢¢ 
(
¢¢ 
int
¢¢ 
res
¢¢ 
in
¢¢ 
AddPost
¢¢  '
.
¢¢' (
Tags
¢¢( ,
)
¢¢, -
{
££ 
PostTag
§§ 
posttags
§§  
=
§§! "
new
§§# &
PostTag
§§' .
(
§§. /
)
§§/ 0
;
§§0 1
posttags
•• 
.
•• 
PostId
•• 
=
••  !
post
••" &
.
••& '
PostId
••' -
;
••- .
posttags
¶¶ 
.
¶¶ 
TagId
¶¶ 
=
¶¶  
res
¶¶! $
;
¶¶$ %
db
®® 
.
®® 
PostTags
®® 
.
®® 
Add
®® 
(
®®  
posttags
®®  (
)
®®( )
;
®®) *
db
©© 
.
©© 
SaveChanges
©© 
(
©© 
)
©©  
;
©©  !
}
™™ 
es
¨¨ 
.
¨¨ 

GetSqlData
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
ÆÆ 	
}
ØØ 
}∞∞ Ü
çC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\NotificationData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
NotificationData !
:" #
INotificationData$ 5
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
List 
< 
NotificationModel %
>% &
GetUserNotification' :
(: ;
int; >
UserId? E
)E F
{ 	
var 
user 
= 
db 
. 
Users 
.  
FirstOrDefault  .
(. /
u/ 0
=>1 3
u4 5
.5 6
UserId6 <
=== ?
UserId@ F
)F G
;G H
var 
posts 
= 
( 
from 
p 
in  "
db# %
.% &
Posts& +
where 
p  
.  !
UserId! '
==( *
user+ /
./ 0
UserId0 6
select 
p  !
)! "
." #
ToList# )
() *
)* +
;+ ,
List 
< 
NotificationModel "
>" #
notifs$ *
=+ ,
new- 0
List1 5
<5 6
NotificationModel6 G
>G H
(H I
)I J
;J K
foreach 
( 
var 
p 
in 
posts #
)# $
{ 
var   
notifications   !
=  " #
(  $ %
from  % )
n  * +
in  , .
db  / 1
.  1 2
Notifications  2 ?
join!!% )
u!!* +
in!!, .
db!!/ 1
.!!1 2
Users!!2 7
on!!8 :
n!!; <
.!!< =
UserId!!= C
equals!!D J
u!!K L
.!!L M
UserId!!M S
where""% *
n""+ ,
."", -
PostId""- 3
==""4 6
p""7 8
.""8 9
PostId""9 ?
select##% +
new##, /
NotificationModel##0 A
{$$% &
Type%%) -
=%%. /
n%%0 1
.%%1 2
NotificationType%%2 B
,%%B C
IsRead&&) /
=&&0 1
n&&2 3
.&&3 4
IsRead&&4 :
,&&: ;
PostName'') 1
=''2 3
p''4 5
.''5 6
Title''6 ;
,''; <
DoneBy(() /
=((0 1
u((2 3
.((3 4
	FirstName((4 =
}))% &
)))& '
.))' (
ToList))( .
()). /
)))/ 0
;))0 1
notifs,, 
.,, 
AddRange,, 
(,,  
notifications,,  -
),,- .
;,,. /
}-- 
return.. 
notifs.. 
;.. 
}00 	
}11 
}22 Ø
éC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\ReportcommentData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
ReportcommentData "
:# $
IReportcommentData% 7
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
bool 
EditMyComment !
(! "
ReportCommentModel" 4
reportComment5 B
)B C
{ 	
CommentReport 
commentReport '
=( )
new* -
CommentReport. ;
(; <
)< =
;= >
commentReport 
. 
Comment !
=" #
reportComment$ 1
.1 2
Comment2 9
;9 :
commentReport 
. 
	CommentId #
=$ %
reportComment& 3
.3 4

CommmentId4 >
;> ?
db 
. 
SaveChanges 
( 
) 
; 
return 
true 
; 
} 	
} 
} ¨-
ÖC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\SpamData.cs
	namespace		 	
KnowledgeManagement		
 
.		 

Repository		 (
.		( )
Service		) 0
{

 
public 

class 
SpamData 
: 
	ISpamData %
{ 
readonly &
KnowledgeManagementContext +
db, .
=/ 0
new1 4&
KnowledgeManagementContext5 O
(O P
)P Q
;Q R
public 
void 

AddNewSpam 
( 
	SpamModel (
spam) -
)- .
{ 	
Report 
report 
= 
new 
Report  &
{ 
PostId 
= 
spam 
. 
PostId $
,$ %
Comment 
= 
spam 
. 
Comment &
,& '
UserId 
= 
spam 
. 
UserId $
,$ %
Isread 
= 
$num 
, 
	CreatedAt 
= 
DateTime $
.$ %
Now% (
,( )
	UpdatedAt 
= 
DateTime $
.$ %
Now% (
} 
; 
db 
. 
Reports 
. 
Add 
( 
report !
)! "
;" #
Notification   
notif   
=    
new  ! $
Notification  % 1
{!! 
NotificationType""  
=""! "
$num""# $
,""$ %
IsRead## 
=## 
$num## 
,## 
PostId$$ 
=$$ 
spam$$ 
.$$ 
PostId$$ $
,$$$ %
UserId%% 
=%% 
spam%% 
.%% 
UserId%% $
,%%$ %
	CreatedAt&& 
=&& 
DateTime&& $
.&&$ %
Now&&% (
,&&( )
	UpdatedAt'' 
='' 
DateTime'' $
.''$ %
Now''% (
}(( 
;(( 
db)) 
.)) 
Notifications)) 
.)) 
Add))  
())  !
notif))! &
)))& '
;))' (
db** 
.** 
SaveChanges** 
(** 
)** 
;** 
}++ 	
public11 
void11 
DeleteRecentPost11 $
(11$ %
int11% (
PostId11) /
)11/ 0
{22 	
var33 
rep33 
=33 
db33 
.33 
Reports33  
.33  !
Where33! &
(33& '
s33' (
=>33) +
s33, -
.33- .
PostId33. 4
==335 7
PostId338 >
)33> ?
.33? @
FirstOrDefault33@ N
(33N O
)33O P
;33P Q
rep44 
.44 
Isread44 
=44 
$num44 
;44 
var55 

postdelete55 
=55 
db55 
.55  
Posts55  %
.55% &
Where55& +
(55+ ,
s55, -
=>55. 0
s551 2
.552 3
PostId553 9
==55: <
PostId55= C
)55C D
.55D E
FirstOrDefault55E S
(55S T
)55T U
;55U V

postdelete66 
.66 
	IsDeleted66  
=66! "
false66# (
;66( )
db77 
.77 
SaveChanges77 
(77 
)77 
;77 
}88 	
public>> 
IEnumerable>> 
<>> 
ReportRequestModel>> -
>>>- .
GetPost>>/ 6
(>>6 7
)>>7 8
{?? 	
varAA 
resAA 
=AA 
(AA 
fromAA 
lAA 
inAA  
dbAA! #
.AA# $
ReportsAA$ +
orderbyBB 
lBB  
.BB  !
ReportIdBB! )

descendingBB* 4
joinCC 
pCC 
inCC  
dbCC! #
.CC# $
PostsCC$ )
onCC* ,
lCC- .
.CC. /
PostIdCC/ 5
equalsCC6 <
pCC= >
.CC> ?
PostIdCC? E
joinDD 
uDD 
inDD  
dbDD! #
.DD# $
UsersDD$ )
onDD* ,
lDD- .
.DD. /
UserIdDD/ 5
equalsDD6 <
uDD= >
.DD> ?
UserIdDD? E
whereFF 
lFF 
.FF 
IsreadFF %
==FF& (
$numFF) *
selectGG 
newGG !
ReportRequestModelGG" 4
{HH 
PostIdII !
=II" #
lII$ %
.II% &
PostIdII& ,
,II, -
NameJJ 
=JJ  !
uJJ" #
.JJ# $
	FirstNameJJ$ -
,JJ- .
CommentKK "
=KK# $
lKK% &
.KK& '
CommentKK' .
,KK. /
TitleLL  
=LL! "
pLL# $
.LL$ %
TitleLL% *
,LL* +
DescriptionMM &
=MM' (
pMM) *
.MM* +
DescriptionMM+ 6
,MM6 7
PostDateNN #
=NN$ %
pNN& '
.NN' (
PostDateNN( 0
,NN0 1
ImageOO  
=OO! "
pOO# $
.OO$ %
	UserImageOO% .
,OO. /
}PP 
)PP 
.PP 
ToListPP  
(PP  !
)PP! "
;PP" #
returnRR 
resRR 
;RR 
}TT 	
}UU 
}VV ≤(
xC:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Web\JwtManager.cs
	namespace

 	
KnowledgeManagement


 
.

 
Web

 !
{ 
public 

class 

JwtManager 
{ 
private 
const 
string 
Secret #
=$ %
$str	& Ä
;
Ä Å
public 
static 
string 
GenerateToken *
(* +
string+ 1
username2 :
,: ;
int< ?
UserId@ F
,F G
intH K
expireMinutesL Y
=Z [
$num\ `
)` a
{ 	
var 
symmetricKey 
= 
Convert &
.& '
FromBase64String' 7
(7 8
Secret8 >
)> ?
;? @
var 
tokenHandler 
= 
new "#
JwtSecurityTokenHandler# :
(: ;
); <
;< =
var 
now 
= 
DateTime 
. 
UtcNow %
;% &
var 
tokenDescriptor 
=  !
new" %#
SecurityTokenDescriptor& =
{ 
Subject 
= 
new 
ClaimsIdentity ,
(, -
new- 0
[0 1
]1 2
{ 
new 
Claim  %
(% &

ClaimTypes& 0
.0 1
Email1 6
,6 7
username8 @
)@ A
,A B
new 
Claim  %
(% &

ClaimTypes& 0
.0 1
UserData1 9
,9 :
UserId; A
.A B
ToStringB J
(J K
)K L
)L M
} 
) 
, 
Expires!! 
=!! 
now!! 
.!! 

AddMinutes!! (
(!!( )
Convert!!) 0
.!!0 1
ToInt32!!1 8
(!!8 9
expireMinutes!!9 F
)!!F G
)!!G H
,!!H I
SigningCredentials## "
=### $
new##% (
SigningCredentials##) ;
(##; <
new##< ? 
SymmetricSecurityKey##@ T
(##T U
symmetricKey##U a
)##a b
,##b c
SecurityAlgorithms##d v
.##v w 
HmacSha256Signature	##w ä
)
##ä ã
}$$ 
;$$ 
var** 
stoken** 
=** 
tokenHandler** %
.**% &
CreateToken**& 1
(**1 2
tokenDescriptor**2 A
)**A B
;**B C
var++ 
token++ 
=++ 
tokenHandler++ $
.++$ %

WriteToken++% /
(++/ 0
stoken++0 6
)++6 7
;++7 8
return-- 
token-- 
;-- 
}.. 	
public00 
static00 
ClaimsPrincipal00 %
GetPrincipal00& 2
(002 3
string003 9
token00: ?
)00? @
{11 	
try22 
{33 
var44 
tokenHandler44  
=44! "
new44# &#
JwtSecurityTokenHandler44' >
(44> ?
)44? @
;44@ A
var55 
jwtToken55 
=55 
tokenHandler55 +
.55+ ,
	ReadToken55, 5
(555 6
token556 ;
)55; <
as55= ?
JwtSecurityToken55@ P
;55P Q
if77 
(77 
jwtToken77 
==77 
null77  $
)77$ %
return88 
null88 
;88  
var:: 
symmetricKey::  
=::! "
Convert::# *
.::* +
FromBase64String::+ ;
(::; <
Secret::< B
)::B C
;::C D
var<<  
validationParameters<< (
=<<) *
new<<+ .%
TokenValidationParameters<</ H
(<<H I
)<<I J
{== !
RequireExpirationTime>> )
=>>* +
true>>, 0
,>>0 1
ValidateIssuer?? "
=??# $
false??% *
,??* +
ValidateAudience@@ $
=@@% &
false@@' ,
,@@, -
IssuerSigningKeyAA $
=AA% &
newAA' * 
SymmetricSecurityKeyAA+ ?
(AA? @
symmetricKeyAA@ L
)AAL M
}BB 
;BB 
SecurityTokenDD 
securityTokenDD +
;DD+ ,
varEE 
	principalEE 
=EE 
tokenHandlerEE  ,
.EE, -
ValidateTokenEE- :
(EE: ;
tokenEE; @
,EE@ A 
validationParametersEEB V
,EEV W
outEEX [
securityTokenEE\ i
)EEi j
;EEj k
returnGG 
	principalGG  
;GG  !
}HH 
catchJJ 
(JJ 
	ExceptionJJ 
)JJ 
{KK 
returnLL 
nullLL 
;LL 
}MM 
}NN 	
}OO 
}PP 