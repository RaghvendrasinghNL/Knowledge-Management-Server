�
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\BundleConfig.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\FilterConfig.cs
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
} �	
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\SwaggerConfig.cs
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
�� 
)
�� 
.
�� 
EnableSwaggerUi
��  
(
��  !
c
��! "
=>
��# %
{
�� 
c
�� 
.
�� !
EnableApiKeySupport
�� -
(
��- .
$str
��. 5
,
��5 6
$str
��7 ?
)
��? @
;
��@ A
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �+
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
}>> �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\App_Start\WebApiConfig.cs
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
}!! �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ApiDescriptionExtensions.cs
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
}'' �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\App_Start\HelpPageConfig.cs
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
}pp �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\Controllers\HelpController.cs
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
}?? �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\HelpPageAreaRegistration.cs
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
} ϳ
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\HelpPageConfigurationExtensions.cs
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
)	 �
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
string	33z �
controllerName
33� �
,
33� �
string
33� �

actionName
33� �
)
33� �
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
controllerName	55| �
,
55� �

actionName
55� �
,
55� �
new
55� �
[
55� �
]
55� �
{
55� �
$str
55� �
}
55� �
)
55� �
,
55� �
sample
55� �
)
55� �
;
55� �
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
string	AAz �
controllerName
AA� �
,
AA� �
string
AA� �

actionName
AA� �
,
AA� �
params
AA� �
string
AA� �
[
AA� �
]
AA� �
parameterNames
AA� �
)
AA� �
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
controllerName	CC| �
,
CC� �

actionName
CC� �
,
CC� �
parameterNames
CC� �
)
CC� �
,
CC� �
sample
CC� �
)
CC� �
;
CC� �
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
string	NN{ �
controllerName
NN� �
,
NN� �
string
NN� �

actionName
NN� �
)
NN� �
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
controllerName	PP} �
,
PP� �

actionName
PP� �
,
PP� �
new
PP� �
[
PP� �
]
PP� �
{
PP� �
$str
PP� �
}
PP� �
)
PP� �
,
PP� �
sample
PP� �
)
PP� �
;
PP� �
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
string	\\{ �
controllerName
\\� �
,
\\� �
string
\\� �

actionName
\\� �
,
\\� �
params
\\� �
string
\\� �
[
\\� �
]
\\� �
parameterNames
\\� �
)
\\� �
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
controllerName	^^} �
,
^^� �

actionName
^^� �
,
^^� �
parameterNames
^^� �
)
^^� �
,
^^� �
sample
^^� �
)
^^� �
;
^^� �
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
type	ss �
)
ss� �
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
�� 
static
�� 
void
�� "
SetActualRequestType
�� /
(
��/ 0
this
��0 4
HttpConfiguration
��5 F
config
��G M
,
��M N
Type
��O S
type
��T X
,
��X Y
string
��Z `
controllerName
��a o
,
��o p
string
��q w

actionName��x �
)��� �
{
�� 	
config
�� 
.
�� (
GetHelpPageSampleGenerator
�� -
(
��- .
)
��. /
.
��/ 0$
ActualHttpMessageTypes
��0 F
.
��F G
Add
��G J
(
��J K
new
��K N
HelpPageSampleKey
��O `
(
��` a
SampleDirection
��a p
.
��p q
Request
��q x
,
��x y
controllerName��z �
,��� �

actionName��� �
,��� �
new��� �
[��� �
]��� �
{��� �
$str��� �
}��� �
)��� �
,��� �
type��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
void
�� "
SetActualRequestType
�� /
(
��/ 0
this
��0 4
HttpConfiguration
��5 F
config
��G M
,
��M N
Type
��O S
type
��T X
,
��X Y
string
��Z `
controllerName
��a o
,
��o p
string
��q w

actionName��x �
,��� �
params��� �
string��� �
[��� �
]��� �
parameterNames��� �
)��� �
{
�� 	
config
�� 
.
�� (
GetHelpPageSampleGenerator
�� -
(
��- .
)
��. /
.
��/ 0$
ActualHttpMessageTypes
��0 F
.
��F G
Add
��G J
(
��J K
new
��K N
HelpPageSampleKey
��O `
(
��` a
SampleDirection
��a p
.
��p q
Request
��q x
,
��x y
controllerName��z �
,��� �

actionName��� �
,��� �
parameterNames��� �
)��� �
,��� �
type��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
void
�� #
SetActualResponseType
�� 0
(
��0 1
this
��1 5
HttpConfiguration
��6 G
config
��H N
,
��N O
Type
��P T
type
��U Y
,
��Y Z
string
��[ a
controllerName
��b p
,
��p q
string
��r x

actionName��y �
)��� �
{
�� 	
config
�� 
.
�� (
GetHelpPageSampleGenerator
�� -
(
��- .
)
��. /
.
��/ 0$
ActualHttpMessageTypes
��0 F
.
��F G
Add
��G J
(
��J K
new
��K N
HelpPageSampleKey
��O `
(
��` a
SampleDirection
��a p
.
��p q
Response
��q y
,
��y z
controllerName��{ �
,��� �

actionName��� �
,��� �
new��� �
[��� �
]��� �
{��� �
$str��� �
}��� �
)��� �
,��� �
type��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� 
void
�� #
SetActualResponseType
�� 0
(
��0 1
this
��1 5
HttpConfiguration
��6 G
config
��H N
,
��N O
Type
��P T
type
��U Y
,
��Y Z
string
��[ a
controllerName
��b p
,
��p q
string
��r x

actionName��y �
,��� �
params��� �
string��� �
[��� �
]��� �
parameterNames��� �
)��� �
{
�� 	
config
�� 
.
�� (
GetHelpPageSampleGenerator
�� -
(
��- .
)
��. /
.
��/ 0$
ActualHttpMessageTypes
��0 F
.
��F G
Add
��G J
(
��J K
new
��K N
HelpPageSampleKey
��O `
(
��` a
SampleDirection
��a p
.
��p q
Response
��q y
,
��y z
controllerName��{ �
,��� �

actionName��� �
,��� �
parameterNames��� �
)��� �
,��� �
type��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� %
HelpPageSampleGenerator
�� -(
GetHelpPageSampleGenerator
��. H
(
��H I
this
��I M
HttpConfiguration
��N _
config
��` f
)
��f g
{
�� 	
return
�� 
(
�� %
HelpPageSampleGenerator
�� +
)
��+ ,
config
��, 2
.
��2 3

Properties
��3 =
.
��= >
GetOrAdd
��> F
(
��F G
typeof
�� 
(
�� %
HelpPageSampleGenerator
�� .
)
��. /
,
��/ 0
k
�� 
=>
�� 
new
�� %
HelpPageSampleGenerator
�� 0
(
��0 1
)
��1 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
static
�� 
void
�� (
SetHelpPageSampleGenerator
�� 5
(
��5 6
this
��6 :
HttpConfiguration
��; L
config
��M S
,
��S T%
HelpPageSampleGenerator
��U l
sampleGenerator
��m |
)
��| }
{
�� 	
config
�� 
.
�� 

Properties
�� 
.
�� 
AddOrUpdate
�� )
(
��) *
typeof
�� 
(
�� %
HelpPageSampleGenerator
�� .
)
��. /
,
��/ 0
k
�� 
=>
�� 
sampleGenerator
�� $
,
��$ %
(
�� 
k
�� 
,
�� 
o
�� 
)
�� 
=>
�� 
sampleGenerator
�� )
)
��) *
;
��* +
}
�� 	
public
�� 
static
�� '
ModelDescriptionGenerator
�� /*
GetModelDescriptionGenerator
��0 L
(
��L M
this
��M Q
HttpConfiguration
��R c
config
��d j
)
��j k
{
�� 	
return
�� 
(
�� '
ModelDescriptionGenerator
�� -
)
��- .
config
��. 4
.
��4 5

Properties
��5 ?
.
��? @
GetOrAdd
��@ H
(
��H I
typeof
�� 
(
�� '
ModelDescriptionGenerator
�� 0
)
��0 1
,
��1 2
k
�� 
=>
�� 1
#InitializeModelDescriptionGenerator
�� 8
(
��8 9
config
��9 ?
)
��? @
)
��@ A
;
��A B
}
�� 	
public
�� 
static
�� 
HelpPageApiModel
�� &!
GetHelpPageApiModel
��' :
(
��: ;
this
��; ?
HttpConfiguration
��@ Q
config
��R X
,
��X Y
string
��Z `
apiDescriptionId
��a q
)
��q r
{
�� 	
object
�� 
model
�� 
;
�� 
string
�� 
modelId
�� 
=
�� 
ApiModelPrefix
�� +
+
��, -
apiDescriptionId
��. >
;
��> ?
if
�� 
(
�� 
!
�� 
config
�� 
.
�� 

Properties
�� "
.
��" #
TryGetValue
��# .
(
��. /
modelId
��/ 6
,
��6 7
out
��8 ;
model
��< A
)
��A B
)
��B C
{
�� 

Collection
�� 
<
�� 
ApiDescription
�� )
>
��) *
apiDescriptions
��+ :
=
��; <
config
��= C
.
��C D
Services
��D L
.
��L M
GetApiExplorer
��M [
(
��[ \
)
��\ ]
.
��] ^
ApiDescriptions
��^ m
;
��m n
ApiDescription
�� 
apiDescription
�� -
=
��. /
apiDescriptions
��0 ?
.
��? @
FirstOrDefault
��@ N
(
��N O
api
��O R
=>
��S U
String
��V \
.
��\ ]
Equals
��] c
(
��c d
api
��d g
.
��g h
GetFriendlyId
��h u
(
��u v
)
��v w
,
��w x
apiDescriptionId��y �
,��� � 
StringComparison��� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
if
�� 
(
�� 
apiDescription
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
model
�� 
=
�� 
GenerateApiModel
�� ,
(
��, -
apiDescription
��- ;
,
��; <
config
��= C
)
��C D
;
��D E
config
�� 
.
�� 

Properties
�� %
.
��% &
TryAdd
��& ,
(
��, -
modelId
��- 4
,
��4 5
model
��6 ;
)
��; <
;
��< =
}
�� 
}
�� 
return
�� 
(
�� 
HelpPageApiModel
�� $
)
��$ %
model
��% *
;
��* +
}
�� 	
private
�� 
static
�� 
HelpPageApiModel
�� '
GenerateApiModel
��( 8
(
��8 9
ApiDescription
��9 G
apiDescription
��H V
,
��V W
HttpConfiguration
��X i
config
��j p
)
��p q
{
�� 	
HelpPageApiModel
�� 
apiModel
�� %
=
��& '
new
��( +
HelpPageApiModel
��, <
(
��< =
)
��= >
{
�� 
ApiDescription
�� 
=
��  
apiDescription
��! /
,
��/ 0
}
�� 
;
�� '
ModelDescriptionGenerator
�� %
modelGenerator
��& 4
=
��5 6
config
��7 =
.
��= >*
GetModelDescriptionGenerator
��> Z
(
��Z [
)
��[ \
;
��\ ]%
HelpPageSampleGenerator
�� #
sampleGenerator
��$ 3
=
��4 5
config
��6 <
.
��< =(
GetHelpPageSampleGenerator
��= W
(
��W X
)
��X Y
;
��Y Z#
GenerateUriParameters
�� !
(
��! "
apiModel
��" *
,
��* +
modelGenerator
��, :
)
��: ;
;
��; <-
GenerateRequestModelDescription
�� +
(
��+ ,
apiModel
��, 4
,
��4 5
modelGenerator
��6 D
,
��D E
sampleGenerator
��F U
)
��U V
;
��V W)
GenerateResourceDescription
�� '
(
��' (
apiModel
��( 0
,
��0 1
modelGenerator
��2 @
)
��@ A
;
��A B
GenerateSamples
�� 
(
�� 
apiModel
�� $
,
��$ %
sampleGenerator
��& 5
)
��5 6
;
��6 7
return
�� 
apiModel
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� #
GenerateUriParameters
�� 1
(
��1 2
HelpPageApiModel
��2 B
apiModel
��C K
,
��K L'
ModelDescriptionGenerator
��M f
modelGenerator
��g u
)
��u v
{
�� 	
ApiDescription
�� 
apiDescription
�� )
=
��* +
apiModel
��, 4
.
��4 5
ApiDescription
��5 C
;
��C D
foreach
�� 
(
�� %
ApiParameterDescription
�� ,
apiParameter
��- 9
in
��: <
apiDescription
��= K
.
��K L#
ParameterDescriptions
��L a
)
��a b
{
�� 
if
�� 
(
�� 
apiParameter
��  
.
��  !
Source
��! '
==
��( * 
ApiParameterSource
��+ =
.
��= >
FromUri
��> E
)
��E F
{
�� %
HttpParameterDescriptor
�� +!
parameterDescriptor
��, ?
=
��@ A
apiParameter
��B N
.
��N O!
ParameterDescriptor
��O b
;
��b c
Type
�� 
parameterType
�� &
=
��' (
null
��) -
;
��- .
ModelDescription
�� $
typeDescription
��% 4
=
��5 6
null
��7 ;
;
��; <)
ComplexTypeModelDescription
�� /$
complexTypeDescription
��0 F
=
��G H
null
��I M
;
��M N
if
�� 
(
�� !
parameterDescriptor
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� 
parameterType
�� %
=
��& '!
parameterDescriptor
��( ;
.
��; <
ParameterType
��< I
;
��I J
typeDescription
�� '
=
��( )
modelGenerator
��* 8
.
��8 9)
GetOrCreateModelDescription
��9 T
(
��T U
parameterType
��U b
)
��b c
;
��c d$
complexTypeDescription
�� .
=
��/ 0
typeDescription
��1 @
as
��A C)
ComplexTypeModelDescription
��D _
;
��_ `
}
�� 
if
�� 
(
�� $
complexTypeDescription
�� .
!=
��/ 1
null
��2 6
&&
�� 
!
�� )
IsBindableWithTypeConverter
�� 7
(
��7 8
parameterType
��8 E
)
��E F
)
��F G
{
�� 
foreach
�� 
(
��  !"
ParameterDescription
��! 5
uriParameter
��6 B
in
��C E$
complexTypeDescription
��F \
.
��\ ]

Properties
��] g
)
��g h
{
�� 
apiModel
�� $
.
��$ %
UriParameters
��% 2
.
��2 3
Add
��3 6
(
��6 7
uriParameter
��7 C
)
��C D
;
��D E
}
�� 
}
�� 
else
�� 
if
�� 
(
�� !
parameterDescriptor
�� 0
!=
��1 3
null
��4 8
)
��8 9
{
�� "
ParameterDescription
�� ,
uriParameter
��- 9
=
��: ;%
AddParameterDescription
�� 3
(
��3 4
apiModel
��4 <
,
��< =
apiParameter
��> J
,
��J K
typeDescription
��L [
)
��[ \
;
��\ ]
if
�� 
(
�� 
!
�� !
parameterDescriptor
�� 0
.
��0 1

IsOptional
��1 ;
)
��; <
{
�� 
uriParameter
�� (
.
��( )
Annotations
��) 4
.
��4 5
Add
��5 8
(
��8 9
new
��9 <!
ParameterAnnotation
��= P
(
��P Q
)
��Q R
{
��S T
Documentation
��U b
=
��c d
$str
��e o
}
��p q
)
��q r
;
��r s
}
�� 
object
�� 
defaultValue
�� +
=
��, -!
parameterDescriptor
��. A
.
��A B
DefaultValue
��B N
;
��N O
if
�� 
(
�� 
defaultValue
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 
uriParameter
�� (
.
��( )
Annotations
��) 4
.
��4 5
Add
��5 8
(
��8 9
new
��9 <!
ParameterAnnotation
��= P
(
��P Q
)
��Q R
{
��S T
Documentation
��U b
=
��c d
$str
��e x
+
��y z
Convert��{ �
.��� �
ToString��� �
(��� �
defaultValue��� �
,��� �
CultureInfo��� �
.��� � 
InvariantCulture��� �
)��� �
}��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
Debug
�� 
.
�� 
Assert
�� $
(
��$ %!
parameterDescriptor
��% 8
==
��9 ;
null
��< @
)
��@ A
;
��A B
ModelDescription
�� (
modelDescription
��) 9
=
��: ;
modelGenerator
��< J
.
��J K)
GetOrCreateModelDescription
��K f
(
��f g
typeof
��g m
(
��m n
string
��n t
)
��t u
)
��u v
;
��v w%
AddParameterDescription
�� /
(
��/ 0
apiModel
��0 8
,
��8 9
apiParameter
��: F
,
��F G
modelDescription
��H X
)
��X Y
;
��Y Z
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� )
IsBindableWithTypeConverter
�� 7
(
��7 8
Type
��8 <
parameterType
��= J
)
��J K
{
�� 	
if
�� 
(
�� 
parameterType
�� 
==
��  
null
��! %
)
��% &
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
TypeDescriptor
�� !
.
��! "
GetConverter
��" .
(
��. /
parameterType
��/ <
)
��< =
.
��= >
CanConvertFrom
��> L
(
��L M
typeof
��M S
(
��S T
string
��T Z
)
��Z [
)
��[ \
;
��\ ]
}
�� 	
private
�� 
static
�� "
ParameterDescription
�� +%
AddParameterDescription
��, C
(
��C D
HelpPageApiModel
��D T
apiModel
��U ]
,
��] ^%
ApiParameterDescription
�� #
apiParameter
��$ 0
,
��0 1
ModelDescription
��2 B
typeDescription
��C R
)
��R S
{
�� 	"
ParameterDescription
��  "
parameterDescription
��! 5
=
��6 7
new
��8 ;"
ParameterDescription
��< P
{
�� 
Name
�� 
=
�� 
apiParameter
�� #
.
��# $
Name
��$ (
,
��( )
Documentation
�� 
=
�� 
apiParameter
��  ,
.
��, -
Documentation
��- :
,
��: ;
TypeDescription
�� 
=
��  !
typeDescription
��" 1
,
��1 2
}
�� 
;
�� 
apiModel
�� 
.
�� 
UriParameters
�� "
.
��" #
Add
��# &
(
��& '"
parameterDescription
��' ;
)
��; <
;
��< =
return
�� "
parameterDescription
�� '
;
��' (
}
�� 	
private
�� 
static
�� 
void
�� -
GenerateRequestModelDescription
�� ;
(
��; <
HelpPageApiModel
��< L
apiModel
��M U
,
��U V'
ModelDescriptionGenerator
��W p
modelGenerator
��q 
,�� �'
HelpPageSampleGenerator��� �
sampleGenerator��� �
)��� �
{
�� 	
ApiDescription
�� 
apiDescription
�� )
=
��* +
apiModel
��, 4
.
��4 5
ApiDescription
��5 C
;
��C D
foreach
�� 
(
�� %
ApiParameterDescription
�� ,
apiParameter
��- 9
in
��: <
apiDescription
��= K
.
��K L#
ParameterDescriptions
��L a
)
��a b
{
�� 
if
�� 
(
�� 
apiParameter
��  
.
��  !
Source
��! '
==
��( * 
ApiParameterSource
��+ =
.
��= >
FromBody
��> F
)
��F G
{
�� 
Type
�� 
parameterType
�� &
=
��' (
apiParameter
��) 5
.
��5 6!
ParameterDescriptor
��6 I
.
��I J
ParameterType
��J W
;
��W X
apiModel
�� 
.
�� %
RequestModelDescription
�� 4
=
��5 6
modelGenerator
��7 E
.
��E F)
GetOrCreateModelDescription
��F a
(
��a b
parameterType
��b o
)
��o p
;
��p q
apiModel
�� 
.
�� "
RequestDocumentation
�� 1
=
��2 3
apiParameter
��4 @
.
��@ A
Documentation
��A N
;
��N O
}
�� 
else
�� 
if
�� 
(
�� 
apiParameter
�� %
.
��% &!
ParameterDescriptor
��& 9
!=
��: <
null
��= A
&&
��B D
apiParameter
��  
.
��  !!
ParameterDescriptor
��! 4
.
��4 5
ParameterType
��5 B
==
��C E
typeof
��F L
(
��L M 
HttpRequestMessage
��M _
)
��_ `
)
��` a
{
�� 
Type
�� 
parameterType
�� &
=
��' (
sampleGenerator
��) 8
.
��8 9+
ResolveHttpRequestMessageType
��9 V
(
��V W
apiDescription
��W e
)
��e f
;
��f g
if
�� 
(
�� 
parameterType
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
apiModel
��  
.
��  !%
RequestModelDescription
��! 8
=
��9 :
modelGenerator
��; I
.
��I J)
GetOrCreateModelDescription
��J e
(
��e f
parameterType
��f s
)
��s t
;
��t u
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� )
GenerateResourceDescription
�� 7
(
��7 8
HelpPageApiModel
��8 H
apiModel
��I Q
,
��Q R'
ModelDescriptionGenerator
��S l
modelGenerator
��m {
)
��{ |
{
�� 	!
ResponseDescription
�� 
response
��  (
=
��) *
apiModel
��+ 3
.
��3 4
ApiDescription
��4 B
.
��B C!
ResponseDescription
��C V
;
��V W
Type
�� 
responseType
�� 
=
�� 
response
��  (
.
��( )
ResponseType
��) 5
??
��6 8
response
��9 A
.
��A B
DeclaredType
��B N
;
��N O
if
�� 
(
�� 
responseType
�� 
!=
�� 
null
��  $
&&
��% '
responseType
��( 4
!=
��5 7
typeof
��8 >
(
��> ?
void
��? C
)
��C D
)
��D E
{
�� 
apiModel
�� 
.
�� !
ResourceDescription
�� ,
=
��- .
modelGenerator
��/ =
.
��= >)
GetOrCreateModelDescription
��> Y
(
��Y Z
responseType
��Z f
)
��f g
;
��g h
}
�� 
}
�� 	
[
�� 	
SuppressMessage
��	 
(
�� 
$str
�� +
,
��+ ,
$str
��- U
,
��U V
Justification
��W d
=
��e f
$str��g �
)��� �
]��� �
private
�� 
static
�� 
void
�� 
GenerateSamples
�� +
(
��+ ,
HelpPageApiModel
��, <
apiModel
��= E
,
��E F%
HelpPageSampleGenerator
��G ^
sampleGenerator
��_ n
)
��n o
{
�� 	
try
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
sampleGenerator
��% 4
.
��4 5
GetSampleRequests
��5 F
(
��F G
apiModel
��G O
.
��O P
ApiDescription
��P ^
)
��^ _
)
��_ `
{
�� 
apiModel
�� 
.
�� 
SampleRequests
�� +
.
��+ ,
Add
��, /
(
��/ 0
item
��0 4
.
��4 5
Key
��5 8
,
��8 9
item
��: >
.
��> ?
Value
��? D
)
��D E
;
��E F%
LogInvalidSampleAsError
�� +
(
��+ ,
apiModel
��, 4
,
��4 5
item
��6 :
.
��: ;
Value
��; @
)
��@ A
;
��A B
}
�� 
foreach
�� 
(
�� 
var
�� 
item
�� !
in
��" $
sampleGenerator
��% 4
.
��4 5 
GetSampleResponses
��5 G
(
��G H
apiModel
��H P
.
��P Q
ApiDescription
��Q _
)
��_ `
)
��` a
{
�� 
apiModel
�� 
.
�� 
SampleResponses
�� ,
.
��, -
Add
��- 0
(
��0 1
item
��1 5
.
��5 6
Key
��6 9
,
��9 :
item
��; ?
.
��? @
Value
��@ E
)
��E F
;
��F G%
LogInvalidSampleAsError
�� +
(
��+ ,
apiModel
��, 4
,
��4 5
item
��6 :
.
��: ;
Value
��; @
)
��@ A
;
��A B
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
apiModel
�� 
.
�� 
ErrorMessages
�� &
.
��& '
Add
��' *
(
��* +
String
��+ 1
.
��1 2
Format
��2 8
(
��8 9
CultureInfo
��9 D
.
��D E
CurrentCulture
��E S
,
��S T
$str
�� c
,
��c d%
HelpPageSampleGenerator
�� +
.
��+ ,
UnwrapException
��, ;
(
��; <
e
��< =
)
��= >
.
��> ?
Message
��? F
)
��F G
)
��G H
;
��H I
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� %
TryGetResourceParameter
�� 3
(
��3 4
ApiDescription
��4 B
apiDescription
��C Q
,
��Q R
HttpConfiguration
��S d
config
��e k
,
��k l
out
��m p&
ApiParameterDescription��q �$
parameterDescription��� �
,��� �
out��� �
Type��� �
resourceType��� �
)��� �
{
�� 	"
parameterDescription
��  
=
��! "
apiDescription
��# 1
.
��1 2#
ParameterDescriptions
��2 G
.
��G H
FirstOrDefault
��H V
(
��V W
p
�� 
=>
�� 
p
�� 
.
�� 
Source
�� 
==
��   
ApiParameterSource
��! 3
.
��3 4
FromBody
��4 <
||
��= ?
(
�� 
p
�� 
.
�� !
ParameterDescriptor
�� *
!=
��+ -
null
��. 2
&&
��3 5
p
��6 7
.
��7 8!
ParameterDescriptor
��8 K
.
��K L
ParameterType
��L Y
==
��Z \
typeof
��] c
(
��c d 
HttpRequestMessage
��d v
)
��v w
)
��w x
)
��x y
;
��y z
if
�� 
(
�� "
parameterDescription
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
resourceType
�� 
=
�� 
null
�� #
;
��# $
return
�� 
false
�� 
;
�� 
}
�� 
resourceType
�� 
=
�� "
parameterDescription
�� /
.
��/ 0!
ParameterDescriptor
��0 C
.
��C D
ParameterType
��D Q
;
��Q R
if
�� 
(
�� 
resourceType
�� 
==
�� 
typeof
��  &
(
��& ' 
HttpRequestMessage
��' 9
)
��9 :
)
��: ;
{
�� %
HelpPageSampleGenerator
�� '
sampleGenerator
��( 7
=
��8 9
config
��: @
.
��@ A(
GetHelpPageSampleGenerator
��A [
(
��[ \
)
��\ ]
;
��] ^
resourceType
�� 
=
�� 
sampleGenerator
�� .
.
��. /+
ResolveHttpRequestMessageType
��/ L
(
��L M
apiDescription
��M [
)
��[ \
;
��\ ]
}
�� 
if
�� 
(
�� 
resourceType
�� 
==
�� 
null
��  $
)
��$ %
{
�� "
parameterDescription
�� $
=
��% &
null
��' +
;
��+ ,
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
static
�� '
ModelDescriptionGenerator
�� 01
#InitializeModelDescriptionGenerator
��1 T
(
��T U
HttpConfiguration
��U f
config
��g m
)
��m n
{
�� 	'
ModelDescriptionGenerator
�� %
modelGenerator
��& 4
=
��5 6
new
��7 :'
ModelDescriptionGenerator
��; T
(
��T U
config
��U [
)
��[ \
;
��\ ]

Collection
�� 
<
�� 
ApiDescription
�� %
>
��% &
apis
��' +
=
��, -
config
��. 4
.
��4 5
Services
��5 =
.
��= >
GetApiExplorer
��> L
(
��L M
)
��M N
.
��N O
ApiDescriptions
��O ^
;
��^ _
foreach
�� 
(
�� 
ApiDescription
�� #
api
��$ '
in
��( *
apis
��+ /
)
��/ 0
{
�� %
ApiParameterDescription
�� '"
parameterDescription
��( <
;
��< =
Type
�� 
parameterType
�� "
;
��" #
if
�� 
(
�� %
TryGetResourceParameter
�� +
(
��+ ,
api
��, /
,
��/ 0
config
��1 7
,
��7 8
out
��9 <"
parameterDescription
��= Q
,
��Q R
out
��S V
parameterType
��W d
)
��d e
)
��e f
{
�� 
modelGenerator
�� "
.
��" #)
GetOrCreateModelDescription
��# >
(
��> ?
parameterType
��? L
)
��L M
;
��M N
}
�� 
}
�� 
return
�� 
modelGenerator
�� !
;
��! "
}
�� 	
private
�� 
static
�� 
void
�� %
LogInvalidSampleAsError
�� 3
(
��3 4
HelpPageApiModel
��4 D
apiModel
��E M
,
��M N
object
��O U
sample
��V \
)
��\ ]
{
�� 	
InvalidSample
�� 
invalidSample
�� '
=
��( )
sample
��* 0
as
��1 3
InvalidSample
��4 A
;
��A B
if
�� 
(
�� 
invalidSample
�� 
!=
��  
null
��! %
)
��% &
{
�� 
apiModel
�� 
.
�� 
ErrorMessages
�� &
.
��& '
Add
��' *
(
��* +
invalidSample
��+ 8
.
��8 9
ErrorMessage
��9 E
)
��E F
;
��F G
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\CollectionModelDescription.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ComplexTypeModelDescription.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\DictionaryModelDescription.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\EnumTypeModelDescription.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\EnumValueDescription.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\IModelDocumentationProvider.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\KeyValuePairModelDescription.cs
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
}		 �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelDescription.cs
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
} ��
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelDescriptionGenerator.cs
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
string	} �
>
� �
>
� �
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
range	| �
.
� �
Maximum
� �
)
� �
;
� �
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
MinimumLength	.. �
,
..� �
	strLength
..� �
.
..� �
MaximumLength
..� �
)
..� �
;
..� �
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
DataType	44{ �
.
44� �
ToString
44� �
(
44� �
)
44� �
)
44� �
;
44� �
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
regularExpression	::q �
.
::� �
Pattern
::� �
)
::� �
;
::� �
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
IModelDocumentationProvider	`` �
)
``� �
;
``� �
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
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
String
�� 
.
�� 
Format
�� %
(
��% &
CultureInfo
�� '
.
��' (
CurrentCulture
��( 6
,
��6 7
$str�� �
+��� �
$str�� �
,��� �
	modelName
�� %
,
��% &
modelDescription
�� ,
.
��, -
	ModelType
��- 6
.
��6 7
FullName
��7 ?
,
��? @
	modelType
�� %
.
��% &
FullName
��& .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
modelDescription
�� '
;
��' (
}
�� 
if
�� 
(
�� &
DefaultTypeDocumentation
�� (
.
��( )
ContainsKey
��) 4
(
��4 5
	modelType
��5 >
)
��> ?
)
��? @
{
�� 
return
�� 0
"GenerateSimpleTypeModelDescription
�� 9
(
��9 :
	modelType
��: C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 
	modelType
�� 
.
�� 
IsEnum
��  
)
��  !
{
�� 
return
�� .
 GenerateEnumTypeModelDescription
�� 7
(
��7 8
	modelType
��8 A
)
��A B
;
��B C
}
�� 
if
�� 
(
�� 
	modelType
�� 
.
�� 
IsGenericType
�� '
)
��' (
{
�� 
Type
�� 
[
�� 
]
�� 
genericArguments
�� '
=
��( )
	modelType
��* 3
.
��3 4!
GetGenericArguments
��4 G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
genericArguments
�� $
.
��$ %
Length
��% +
==
��, .
$num
��/ 0
)
��0 1
{
�� 
Type
�� 
enumerableType
�� '
=
��( )
typeof
��* 0
(
��0 1
IEnumerable
��1 <
<
��< =
>
��= >
)
��> ?
.
��? @
MakeGenericType
��@ O
(
��O P
genericArguments
��P `
)
��` a
;
��a b
if
�� 
(
�� 
enumerableType
�� &
.
��& '
IsAssignableFrom
��' 7
(
��7 8
	modelType
��8 A
)
��A B
)
��B C
{
�� 
return
�� 0
"GenerateCollectionModelDescription
�� A
(
��A B
	modelType
��B K
,
��K L
genericArguments
��M ]
[
��] ^
$num
��^ _
]
��_ `
)
��` a
;
��a b
}
�� 
}
�� 
if
�� 
(
�� 
genericArguments
�� $
.
��$ %
Length
��% +
==
��, .
$num
��/ 0
)
��0 1
{
�� 
Type
�� 
dictionaryType
�� '
=
��( )
typeof
��* 0
(
��0 1
IDictionary
��1 <
<
��< =
,
��= >
>
��> ?
)
��? @
.
��@ A
MakeGenericType
��A P
(
��P Q
genericArguments
��Q a
)
��a b
;
��b c
if
�� 
(
�� 
dictionaryType
�� &
.
��& '
IsAssignableFrom
��' 7
(
��7 8
	modelType
��8 A
)
��A B
)
��B C
{
�� 
return
�� 0
"GenerateDictionaryModelDescription
�� A
(
��A B
	modelType
��B K
,
��K L
genericArguments
��M ]
[
��] ^
$num
��^ _
]
��_ `
,
��` a
genericArguments
��b r
[
��r s
$num
��s t
]
��t u
)
��u v
;
��v w
}
�� 
Type
�� 
keyValuePairType
�� )
=
��* +
typeof
��, 2
(
��2 3
KeyValuePair
��3 ?
<
��? @
,
��@ A
>
��A B
)
��B C
.
��C D
MakeGenericType
��D S
(
��S T
genericArguments
��T d
)
��d e
;
��e f
if
�� 
(
�� 
keyValuePairType
�� (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
	modelType
��: C
)
��C D
)
��D E
{
�� 
return
�� 2
$GenerateKeyValuePairModelDescription
�� C
(
��C D
	modelType
��D M
,
��M N
genericArguments
��O _
[
��_ `
$num
��` a
]
��a b
,
��b c
genericArguments
��d t
[
��t u
$num
��u v
]
��v w
)
��w x
;
��x y
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
	modelType
�� 
.
�� 
IsArray
�� !
)
��! "
{
�� 
Type
�� 
elementType
��  
=
��! "
	modelType
��# ,
.
��, -
GetElementType
��- ;
(
��; <
)
��< =
;
��= >
return
�� 0
"GenerateCollectionModelDescription
�� 9
(
��9 :
	modelType
��: C
,
��C D
elementType
��E P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
	modelType
�� 
==
�� 
typeof
�� #
(
��# $!
NameValueCollection
��$ 7
)
��7 8
)
��8 9
{
�� 
return
�� 0
"GenerateDictionaryModelDescription
�� 9
(
��9 :
	modelType
��: C
,
��C D
typeof
��E K
(
��K L
string
��L R
)
��R S
,
��S T
typeof
��U [
(
��[ \
string
��\ b
)
��b c
)
��c d
;
��d e
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
IDictionary
�� "
)
��" #
.
��# $
IsAssignableFrom
��$ 4
(
��4 5
	modelType
��5 >
)
��> ?
)
��? @
{
�� 
return
�� 0
"GenerateDictionaryModelDescription
�� 9
(
��9 :
	modelType
��: C
,
��C D
typeof
��E K
(
��K L
object
��L R
)
��R S
,
��S T
typeof
��U [
(
��[ \
object
��\ b
)
��b c
)
��c d
;
��d e
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
IEnumerable
�� "
)
��" #
.
��# $
IsAssignableFrom
��$ 4
(
��4 5
	modelType
��5 >
)
��> ?
)
��? @
{
�� 
return
�� 0
"GenerateCollectionModelDescription
�� 9
(
��9 :
	modelType
��: C
,
��C D
typeof
��E K
(
��K L
object
��L R
)
��R S
)
��S T
;
��T U
}
�� 
return
�� 1
#GenerateComplexTypeModelDescription
�� 6
(
��6 7
	modelType
��7 @
)
��@ A
;
��A B
}
�� 	
private
�� 
static
�� 
string
�� 
GetMemberName
�� +
(
��+ ,

MemberInfo
��, 6
member
��7 =
,
��= >
bool
��? C&
hasDataContractAttribute
��D \
)
��\ ]
{
�� 	#
JsonPropertyAttribute
�� !
jsonProperty
��" .
=
��/ 0
member
��1 7
.
��7 8 
GetCustomAttribute
��8 J
<
��J K#
JsonPropertyAttribute
��K `
>
��` a
(
��a b
)
��b c
;
��c d
if
�� 
(
�� 
jsonProperty
�� 
!=
�� 
null
��  $
&&
��% '
!
��( )
String
��) /
.
��/ 0
IsNullOrEmpty
��0 =
(
��= >
jsonProperty
��> J
.
��J K
PropertyName
��K W
)
��W X
)
��X Y
{
�� 
return
�� 
jsonProperty
�� #
.
��# $
PropertyName
��$ 0
;
��0 1
}
�� 
if
�� 
(
�� &
hasDataContractAttribute
�� (
)
��( )
{
�� !
DataMemberAttribute
�� #

dataMember
��$ .
=
��/ 0
member
��1 7
.
��7 8 
GetCustomAttribute
��8 J
<
��J K!
DataMemberAttribute
��K ^
>
��^ _
(
��_ `
)
��` a
;
��a b
if
�� 
(
�� 

dataMember
�� 
!=
�� !
null
��" &
&&
��' )
!
��* +
String
��+ 1
.
��1 2
IsNullOrEmpty
��2 ?
(
��? @

dataMember
��@ J
.
��J K
Name
��K O
)
��O P
)
��P Q
{
�� 
return
�� 

dataMember
�� %
.
��% &
Name
��& *
;
��* +
}
�� 
}
�� 
return
�� 
member
�� 
.
�� 
Name
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� !
ShouldDisplayMember
�� /
(
��/ 0

MemberInfo
��0 :
member
��; A
,
��A B
bool
��C G&
hasDataContractAttribute
��H `
)
��` a
{
�� 	!
JsonIgnoreAttribute
�� 

jsonIgnore
��  *
=
��+ ,
member
��- 3
.
��3 4 
GetCustomAttribute
��4 F
<
��F G!
JsonIgnoreAttribute
��G Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^ 
XmlIgnoreAttribute
�� 
	xmlIgnore
�� (
=
��) *
member
��+ 1
.
��1 2 
GetCustomAttribute
��2 D
<
��D E 
XmlIgnoreAttribute
��E W
>
��W X
(
��X Y
)
��Y Z
;
��Z ['
IgnoreDataMemberAttribute
�� %
ignoreDataMember
��& 6
=
��7 8
member
��9 ?
.
��? @ 
GetCustomAttribute
��@ R
<
��R S'
IgnoreDataMemberAttribute
��S l
>
��l m
(
��m n
)
��n o
;
��o p$
NonSerializedAttribute
�� "
nonSerialized
��# 0
=
��1 2
member
��3 9
.
��9 : 
GetCustomAttribute
��: L
<
��L M$
NonSerializedAttribute
��M c
>
��c d
(
��d e
)
��e f
;
��f g*
ApiExplorerSettingsAttribute
�� ( 
apiExplorerSetting
��) ;
=
��< =
member
��> D
.
��D E 
GetCustomAttribute
��E W
<
��W X*
ApiExplorerSettingsAttribute
��X t
>
��t u
(
��u v
)
��v w
;
��w x
bool
��  
hasMemberAttribute
�� #
=
��$ %
member
��& ,
.
��, -
DeclaringType
��- :
.
��: ;
IsEnum
��; A
?
��B C
member
�� 
.
��  
GetCustomAttribute
�� )
<
��) *!
EnumMemberAttribute
��* =
>
��= >
(
��> ?
)
��? @
!=
��A C
null
��D H
:
��I J
member
�� 
.
��  
GetCustomAttribute
�� )
<
��) *!
DataMemberAttribute
��* =
>
��= >
(
��> ?
)
��? @
!=
��A C
null
��D H
;
��H I
return
�� 

jsonIgnore
�� 
==
��  
null
��! %
&&
��& (
	xmlIgnore
�� 
==
�� 
null
�� !
&&
��" $
ignoreDataMember
��  
==
��! #
null
��$ (
&&
��) +
nonSerialized
�� 
==
��  
null
��! %
&&
��& (
(
��  
apiExplorerSetting
�� #
==
��$ &
null
��' +
||
��, .
!
��/ 0 
apiExplorerSetting
��0 B
.
��B C
	IgnoreApi
��C L
)
��L M
&&
��N P
(
�� 
!
�� &
hasDataContractAttribute
�� *
||
��+ - 
hasMemberAttribute
��. @
)
��@ A
;
��A B
}
�� 	
private
�� 
string
�� (
CreateDefaultDocumentation
�� 1
(
��1 2
Type
��2 6
type
��7 ;
)
��; <
{
�� 	
string
�� 
documentation
��  
;
��  !
if
�� 
(
�� &
DefaultTypeDocumentation
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
type
��5 9
,
��9 :
out
��; >
documentation
��? L
)
��L M
)
��M N
{
�� 
return
�� 
documentation
�� $
;
��$ %
}
�� 
if
�� 
(
�� #
DocumentationProvider
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
documentation
�� 
=
�� #
DocumentationProvider
��  5
.
��5 6
GetDocumentation
��6 F
(
��F G
type
��G K
)
��K L
;
��L M
}
�� 
return
�� 
documentation
��  
;
��  !
}
�� 	
private
�� 
void
�� !
GenerateAnnotations
�� (
(
��( )

MemberInfo
��) 3
property
��4 <
,
��< ="
ParameterDescription
��> R
propertyModel
��S `
)
��` a
{
�� 	
List
�� 
<
�� !
ParameterAnnotation
�� $
>
��$ %
annotations
��& 1
=
��2 3
new
��4 7
List
��8 <
<
��< =!
ParameterAnnotation
��= P
>
��P Q
(
��Q R
)
��R S
;
��S T
IEnumerable
�� 
<
�� 
	Attribute
�� !
>
��! "

attributes
��# -
=
��. /
property
��0 8
.
��8 9!
GetCustomAttributes
��9 L
(
��L M
)
��M N
;
��N O
foreach
�� 
(
�� 
	Attribute
�� 
	attribute
�� (
in
��) +

attributes
��, 6
)
��6 7
{
�� 
Func
�� 
<
�� 
object
�� 
,
�� 
string
�� #
>
��# $
textGenerator
��% 2
;
��2 3
if
�� 
(
�� %
AnnotationTextGenerator
�� +
.
��+ ,
TryGetValue
��, 7
(
��7 8
	attribute
��8 A
.
��A B
GetType
��B I
(
��I J
)
��J K
,
��K L
out
��M P
textGenerator
��Q ^
)
��^ _
)
��_ `
{
�� 
annotations
�� 
.
��  
Add
��  #
(
��# $
new
�� !
ParameterAnnotation
�� /
{
�� !
AnnotationAttribute
�� /
=
��0 1
	attribute
��2 ;
,
��; <
Documentation
�� )
=
��* +
textGenerator
��, 9
(
��9 :
	attribute
��: C
)
��C D
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
annotations
�� 
.
�� 
Sort
�� 
(
�� 
(
�� 
x
�� 
,
��  
y
��! "
)
��" #
=>
��$ &
{
�� 
if
�� 
(
�� 
x
�� 
.
�� !
AnnotationAttribute
�� )
is
��* ,
RequiredAttribute
��- >
)
��> ?
{
�� 
return
�� 
-
�� 
$num
�� 
;
�� 
}
�� 
if
�� 
(
�� 
y
�� 
.
�� !
AnnotationAttribute
�� )
is
��* ,
RequiredAttribute
��- >
)
��> ?
{
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
return
�� 
String
�� 
.
�� 
Compare
�� %
(
��% &
x
��& '
.
��' (
Documentation
��( 5
,
��5 6
y
��7 8
.
��8 9
Documentation
��9 F
,
��F G
StringComparison
��H X
.
��X Y
OrdinalIgnoreCase
��Y j
)
��j k
;
��k l
}
�� 
)
�� 
;
�� 
foreach
�� 
(
�� !
ParameterAnnotation
�� (

annotation
��) 3
in
��4 6
annotations
��7 B
)
��B C
{
�� 
propertyModel
�� 
.
�� 
Annotations
�� )
.
��) *
Add
��* -
(
��- .

annotation
��. 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
private
�� (
CollectionModelDescription
�� *0
"GenerateCollectionModelDescription
��+ M
(
��M N
Type
��N R
	modelType
��S \
,
��\ ]
Type
��^ b
elementType
��c n
)
��n o
{
�� 	
ModelDescription
�� (
collectionModelDescription
�� 7
=
��8 9)
GetOrCreateModelDescription
��: U
(
��U V
elementType
��V a
)
��a b
;
��b c
if
�� 
(
�� (
collectionModelDescription
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
return
�� 
new
�� (
CollectionModelDescription
�� 5
{
�� 
Name
�� 
=
�� 
ModelNameHelper
�� *
.
��* +
GetModelName
��+ 7
(
��7 8
	modelType
��8 A
)
��A B
,
��B C
	ModelType
�� 
=
�� 
	modelType
��  )
,
��) * 
ElementDescription
�� &
=
��' ((
collectionModelDescription
��) C
}
�� 
;
�� 
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
ModelDescription
��  1
#GenerateComplexTypeModelDescription
��! D
(
��D E
Type
��E I
	modelType
��J S
)
��S T
{
�� 	)
ComplexTypeModelDescription
�� '%
complexModelDescription
��( ?
=
��@ A
new
��B E)
ComplexTypeModelDescription
��F a
{
�� 
Name
�� 
=
�� 
ModelNameHelper
�� &
.
��& '
GetModelName
��' 3
(
��3 4
	modelType
��4 =
)
��= >
,
��> ?
	ModelType
�� 
=
�� 
	modelType
�� %
,
��% &
Documentation
�� 
=
�� (
CreateDefaultDocumentation
��  :
(
��: ;
	modelType
��; D
)
��D E
}
�� 
;
�� 
GeneratedModels
�� 
.
�� 
Add
�� 
(
��  %
complexModelDescription
��  7
.
��7 8
Name
��8 <
,
��< =%
complexModelDescription
��> U
)
��U V
;
��V W
bool
�� &
hasDataContractAttribute
�� )
=
��* +
	modelType
��, 5
.
��5 6 
GetCustomAttribute
��6 H
<
��H I#
DataContractAttribute
��I ^
>
��^ _
(
��_ `
)
��` a
!=
��b d
null
��e i
;
��i j
PropertyInfo
�� 
[
�� 
]
�� 

properties
�� %
=
��& '
	modelType
��( 1
.
��1 2
GetProperties
��2 ?
(
��? @
BindingFlags
��@ L
.
��L M
Public
��M S
|
��T U
BindingFlags
��V b
.
��b c
Instance
��c k
)
��k l
;
��l m
foreach
�� 
(
�� 
PropertyInfo
�� !
property
��" *
in
��+ -

properties
��. 8
)
��8 9
{
�� 
if
�� 
(
�� !
ShouldDisplayMember
�� '
(
��' (
property
��( 0
,
��0 1&
hasDataContractAttribute
��2 J
)
��J K
)
��K L
{
�� "
ParameterDescription
�� (
propertyModel
��) 6
=
��7 8
new
��9 <"
ParameterDescription
��= Q
{
�� 
Name
�� 
=
�� 
GetMemberName
�� ,
(
��, -
property
��- 5
,
��5 6&
hasDataContractAttribute
��7 O
)
��O P
}
�� 
;
�� 
if
�� 
(
�� #
DocumentationProvider
�� -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
propertyModel
�� %
.
��% &
Documentation
��& 3
=
��4 5#
DocumentationProvider
��6 K
.
��K L
GetDocumentation
��L \
(
��\ ]
property
��] e
)
��e f
;
��f g
}
�� !
GenerateAnnotations
�� '
(
��' (
property
��( 0
,
��0 1
propertyModel
��2 ?
)
��? @
;
��@ A%
complexModelDescription
�� +
.
��+ ,

Properties
��, 6
.
��6 7
Add
��7 :
(
��: ;
propertyModel
��; H
)
��H I
;
��I J
propertyModel
�� !
.
��! "
TypeDescription
��" 1
=
��2 3)
GetOrCreateModelDescription
��4 O
(
��O P
property
��P X
.
��X Y
PropertyType
��Y e
)
��e f
;
��f g
}
�� 
}
�� 
	FieldInfo
�� 
[
�� 
]
�� 
fields
�� 
=
��  
	modelType
��! *
.
��* +
	GetFields
��+ 4
(
��4 5
BindingFlags
��5 A
.
��A B
Public
��B H
|
��I J
BindingFlags
��K W
.
��W X
Instance
��X `
)
��` a
;
��a b
foreach
�� 
(
�� 
	FieldInfo
�� 
field
�� $
in
��% '
fields
��( .
)
��. /
{
�� 
if
�� 
(
�� !
ShouldDisplayMember
�� '
(
��' (
field
��( -
,
��- .&
hasDataContractAttribute
��/ G
)
��G H
)
��H I
{
�� "
ParameterDescription
�� (
propertyModel
��) 6
=
��7 8
new
��9 <"
ParameterDescription
��= Q
{
�� 
Name
�� 
=
�� 
GetMemberName
�� ,
(
��, -
field
��- 2
,
��2 3&
hasDataContractAttribute
��4 L
)
��L M
}
�� 
;
�� 
if
�� 
(
�� #
DocumentationProvider
�� -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
propertyModel
�� %
.
��% &
Documentation
��& 3
=
��4 5#
DocumentationProvider
��6 K
.
��K L
GetDocumentation
��L \
(
��\ ]
field
��] b
)
��b c
;
��c d
}
�� %
complexModelDescription
�� +
.
��+ ,

Properties
��, 6
.
��6 7
Add
��7 :
(
��: ;
propertyModel
��; H
)
��H I
;
��I J
propertyModel
�� !
.
��! "
TypeDescription
��" 1
=
��2 3)
GetOrCreateModelDescription
��4 O
(
��O P
field
��P U
.
��U V
	FieldType
��V _
)
��_ `
;
��` a
}
�� 
}
�� 
return
�� %
complexModelDescription
�� *
;
��* +
}
�� 	
private
�� (
DictionaryModelDescription
�� *0
"GenerateDictionaryModelDescription
��+ M
(
��M N
Type
��N R
	modelType
��S \
,
��\ ]
Type
��^ b
keyType
��c j
,
��j k
Type
��l p
	valueType
��q z
)
��z {
{
�� 	
ModelDescription
�� !
keyModelDescription
�� 0
=
��1 2)
GetOrCreateModelDescription
��3 N
(
��N O
keyType
��O V
)
��V W
;
��W X
ModelDescription
�� #
valueModelDescription
�� 2
=
��3 4)
GetOrCreateModelDescription
��5 P
(
��P Q
	valueType
��Q Z
)
��Z [
;
��[ \
return
�� 
new
�� (
DictionaryModelDescription
�� 1
{
�� 
Name
�� 
=
�� 
ModelNameHelper
�� &
.
��& '
GetModelName
��' 3
(
��3 4
	modelType
��4 =
)
��= >
,
��> ?
	ModelType
�� 
=
�� 
	modelType
�� %
,
��% &!
KeyModelDescription
�� #
=
��$ %!
keyModelDescription
��& 9
,
��9 :#
ValueModelDescription
�� %
=
��& '#
valueModelDescription
��( =
}
�� 
;
�� 
}
�� 	
private
�� &
EnumTypeModelDescription
�� (.
 GenerateEnumTypeModelDescription
��) I
(
��I J
Type
��J N
	modelType
��O X
)
��X Y
{
�� 	&
EnumTypeModelDescription
�� $
enumDescription
��% 4
=
��5 6
new
��7 :&
EnumTypeModelDescription
��; S
{
�� 
Name
�� 
=
�� 
ModelNameHelper
�� &
.
��& '
GetModelName
��' 3
(
��3 4
	modelType
��4 =
)
��= >
,
��> ?
	ModelType
�� 
=
�� 
	modelType
�� %
,
��% &
Documentation
�� 
=
�� (
CreateDefaultDocumentation
��  :
(
��: ;
	modelType
��; D
)
��D E
}
�� 
;
�� 
bool
�� &
hasDataContractAttribute
�� )
=
��* +
	modelType
��, 5
.
��5 6 
GetCustomAttribute
��6 H
<
��H I#
DataContractAttribute
��I ^
>
��^ _
(
��_ `
)
��` a
!=
��b d
null
��e i
;
��i j
foreach
�� 
(
�� 
	FieldInfo
�� 
field
�� $
in
��% '
	modelType
��( 1
.
��1 2
	GetFields
��2 ;
(
��; <
BindingFlags
��< H
.
��H I
Public
��I O
|
��P Q
BindingFlags
��R ^
.
��^ _
Static
��_ e
)
��e f
)
��f g
{
�� 
if
�� 
(
�� !
ShouldDisplayMember
�� '
(
��' (
field
��( -
,
��- .&
hasDataContractAttribute
��/ G
)
��G H
)
��H I
{
�� "
EnumValueDescription
�� (
	enumValue
��) 2
=
��3 4
new
��5 8"
EnumValueDescription
��9 M
{
�� 
Name
�� 
=
�� 
field
�� $
.
��$ %
Name
��% )
,
��) *
Value
�� 
=
�� 
field
��  %
.
��% &!
GetRawConstantValue
��& 9
(
��9 :
)
��: ;
.
��; <
ToString
��< D
(
��D E
)
��E F
}
�� 
;
�� 
if
�� 
(
�� #
DocumentationProvider
�� -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
	enumValue
�� !
.
��! "
Documentation
��" /
=
��0 1#
DocumentationProvider
��2 G
.
��G H
GetDocumentation
��H X
(
��X Y
field
��Y ^
)
��^ _
;
��_ `
}
�� 
enumDescription
�� #
.
��# $
Values
��$ *
.
��* +
Add
��+ .
(
��. /
	enumValue
��/ 8
)
��8 9
;
��9 :
}
�� 
}
�� 
GeneratedModels
�� 
.
�� 
Add
�� 
(
��  
enumDescription
��  /
.
��/ 0
Name
��0 4
,
��4 5
enumDescription
��6 E
)
��E F
;
��F G
return
�� 
enumDescription
�� "
;
��" #
}
�� 	
private
�� *
KeyValuePairModelDescription
�� ,2
$GenerateKeyValuePairModelDescription
��- Q
(
��Q R
Type
��R V
	modelType
��W `
,
��` a
Type
��b f
keyType
��g n
,
��n o
Type
��p t
	valueType
��u ~
)
��~ 
{
�� 	
ModelDescription
�� !
keyModelDescription
�� 0
=
��1 2)
GetOrCreateModelDescription
��3 N
(
��N O
keyType
��O V
)
��V W
;
��W X
ModelDescription
�� #
valueModelDescription
�� 2
=
��3 4)
GetOrCreateModelDescription
��5 P
(
��P Q
	valueType
��Q Z
)
��Z [
;
��[ \
return
�� 
new
�� *
KeyValuePairModelDescription
�� 3
{
�� 
Name
�� 
=
�� 
ModelNameHelper
�� &
.
��& '
GetModelName
��' 3
(
��3 4
	modelType
��4 =
)
��= >
,
��> ?
	ModelType
�� 
=
�� 
	modelType
�� %
,
��% &!
KeyModelDescription
�� #
=
��$ %!
keyModelDescription
��& 9
,
��9 :#
ValueModelDescription
�� %
=
��& '#
valueModelDescription
��( =
}
�� 
;
�� 
}
�� 	
private
�� 
ModelDescription
��  0
"GenerateSimpleTypeModelDescription
��! C
(
��C D
Type
��D H
	modelType
��I R
)
��R S
{
�� 	(
SimpleTypeModelDescription
�� &$
simpleModelDescription
��' =
=
��> ?
new
��@ C(
SimpleTypeModelDescription
��D ^
{
�� 
Name
�� 
=
�� 
ModelNameHelper
�� &
.
��& '
GetModelName
��' 3
(
��3 4
	modelType
��4 =
)
��= >
,
��> ?
	ModelType
�� 
=
�� 
	modelType
�� %
,
��% &
Documentation
�� 
=
�� (
CreateDefaultDocumentation
��  :
(
��: ;
	modelType
��; D
)
��D E
}
�� 
;
�� 
GeneratedModels
�� 
.
�� 
Add
�� 
(
��  $
simpleModelDescription
��  6
.
��6 7
Name
��7 ;
,
��; <$
simpleModelDescription
��= S
)
��S T
;
��T U
return
�� $
simpleModelDescription
�� )
;
��) *
}
�� 	
}
�� 
}�� �

�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelNameAttribute.cs
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
=	 �
false
� �
)
� �
]
� �
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ModelNameHelper.cs
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
argumentTypeNames	x �
)
� �
)
� �
;
� �
} 
return!! 
	modelName!! 
;!! 
}"" 	
}## 
}$$ �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ParameterAnnotation.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\ParameterDescription.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\ModelDescriptions\SimpleTypeModelDescription.cs
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
} �*
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\Models\HelpPageApiModel.cs
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
}ll ��
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\HelpPageSampleGenerator.cs
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
	mediaType	yyy �
,
yy� �
sampleDirection
yy� �
)
yy� �
;
yy� �
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
�� #
.
��# $
Add
��$ '
(
��' (
	mediaType
��( 1
,
��1 2 
WrapSampleIfString
��3 E
(
��E F
sample
��F L
)
��L M
)
��M N
;
��N O
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
samples
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
object
�� 
GetActionSample
�� -
(
��- .
string
��. 4
controllerName
��5 C
,
��C D
string
��E K

actionName
��L V
,
��V W
IEnumerable
��X c
<
��c d
string
��d j
>
��j k
parameterNames
��l z
,
��z {
Type��| �
type��� �
,��� �"
MediaTypeFormatter��� �
	formatter��� �
,��� �$
MediaTypeHeaderValue��� �
	mediaType��� �
,��� �
SampleDirection��� �
sampleDirection��� �
)��� �
{
�� 	
object
�� 
sample
�� 
;
�� 
if
�� 
(
�� 
ActionSamples
�� 
.
�� 
TryGetValue
�� )
(
��) *
new
��* -
HelpPageSampleKey
��. ?
(
��? @
	mediaType
��@ I
,
��I J
sampleDirection
��K Z
,
��Z [
controllerName
��\ j
,
��j k

actionName
��l v
,
��v w
parameterNames��x �
)��� �
,��� �
out��� �
sample��� �
)��� �
||��� �
ActionSamples
�� 
.
�� 
TryGetValue
�� )
(
��) *
new
��* -
HelpPageSampleKey
��. ?
(
��? @
	mediaType
��@ I
,
��I J
sampleDirection
��K Z
,
��Z [
controllerName
��\ j
,
��j k

actionName
��l v
,
��v w
new
��x {
[
��{ |
]
��| }
{
��~ 
$str��� �
}��� �
)��� �
,��� �
out��� �
sample��� �
)��� �
||��� �
ActionSamples
�� 
.
�� 
TryGetValue
�� )
(
��) *
new
��* -
HelpPageSampleKey
��. ?
(
��? @
	mediaType
��@ I
,
��I J
type
��K O
)
��O P
,
��P Q
out
��R U
sample
��V \
)
��\ ]
||
��^ `
ActionSamples
�� 
.
�� 
TryGetValue
�� )
(
��) *
new
��* -
HelpPageSampleKey
��. ?
(
��? @
	mediaType
��@ I
)
��I J
,
��J K
out
��L O
sample
��P V
)
��V W
)
��W X
{
�� 
return
�� 
sample
�� 
;
�� 
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
[
�� 	
SuppressMessage
��	 
(
�� 
$str
�� +
,
��+ ,
$str
��- U
,
��U V
Justification
�� 
=
�� 
$str
�� z
)
��z {
]
��{ |
public
�� 
virtual
�� 
object
�� 
GetSampleObject
�� -
(
��- .
Type
��. 2
type
��3 7
)
��7 8
{
�� 	
object
�� 
sampleObject
�� 
;
��  
if
�� 
(
�� 
!
�� 
SampleObjects
�� 
.
�� 
TryGetValue
�� *
(
��* +
type
��+ /
,
��/ 0
out
��1 4
sampleObject
��5 A
)
��A B
)
��B C
{
�� 
foreach
�� 
(
�� 
Func
�� 
<
�� %
HelpPageSampleGenerator
�� 5
,
��5 6
Type
��7 ;
,
��; <
object
��= C
>
��C D
factory
��E L
in
��M O#
SampleObjectFactories
��P e
)
��e f
{
�� 
if
�� 
(
�� 
factory
�� 
==
��  "
null
��# '
)
��' (
{
�� 
continue
��  
;
��  !
}
�� 
try
�� 
{
�� 
sampleObject
�� $
=
��% &
factory
��' .
(
��. /
this
��/ 3
,
��3 4
type
��5 9
)
��9 :
;
��: ;
if
�� 
(
�� 
sampleObject
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 
break
�� !
;
��! "
}
�� 
}
�� 
catch
�� 
{
�� 
}
�� 
}
�� 
}
�� 
return
�� 
sampleObject
�� 
;
��  
}
�� 	
public
�� 
virtual
�� 
Type
�� +
ResolveHttpRequestMessageType
�� 9
(
��9 :
ApiDescription
��: H
api
��I L
)
��L M
{
�� 	
string
�� 
controllerName
�� !
=
��" #
api
��$ '
.
��' (
ActionDescriptor
��( 8
.
��8 9"
ControllerDescriptor
��9 M
.
��M N
ControllerName
��N \
;
��\ ]
string
�� 

actionName
�� 
=
�� 
api
��  #
.
��# $
ActionDescriptor
��$ 4
.
��4 5

ActionName
��5 ?
;
��? @
IEnumerable
�� 
<
�� 
string
�� 
>
�� 
parameterNames
��  .
=
��/ 0
api
��1 4
.
��4 5#
ParameterDescriptions
��5 J
.
��J K
Select
��K Q
(
��Q R
p
��R S
=>
��T V
p
��W X
.
��X Y
Name
��Y ]
)
��] ^
;
��^ _

Collection
�� 
<
��  
MediaTypeFormatter
�� )
>
��) *

formatters
��+ 5
;
��5 6
return
�� 
ResolveType
�� 
(
�� 
api
�� "
,
��" #
controllerName
��$ 2
,
��2 3

actionName
��4 >
,
��> ?
parameterNames
��@ N
,
��N O
SampleDirection
��P _
.
��_ `
Request
��` g
,
��g h
out
��i l

formatters
��m w
)
��w x
;
��x y
}
�� 	
[
�� 	
SuppressMessage
��	 
(
�� 
$str
�� +
,
��+ ,
$str
��- H
,
��H I
Justification
��J W
=
��X Y
$str��Z �
)��� �
]��� �
public
�� 
virtual
�� 
Type
�� 
ResolveType
�� '
(
��' (
ApiDescription
��( 6
api
��7 :
,
��: ;
string
��< B
controllerName
��C Q
,
��Q R
string
��S Y

actionName
��Z d
,
��d e
IEnumerable
��f q
<
��q r
string
��r x
>
��x y
parameterNames��z �
,��� �
SampleDirection��� �
sampleDirection��� �
,��� �
out��� �

Collection��� �
<��� �"
MediaTypeFormatter��� �
>��� �

formatters��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
Enum
�� 
.
�� 
	IsDefined
�� 
(
��  
typeof
��  &
(
��& '
SampleDirection
��' 6
)
��6 7
,
��7 8
sampleDirection
��9 H
)
��H I
)
��I J
{
�� 
throw
�� 
new
�� *
InvalidEnumArgumentException
�� 6
(
��6 7
$str
��7 H
,
��H I
(
��J K
int
��K N
)
��N O
sampleDirection
��O ^
,
��^ _
typeof
��` f
(
��f g
SampleDirection
��g v
)
��v w
)
��w x
;
��x y
}
�� 
if
�� 
(
�� 
api
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 5
)
��5 6
;
��6 7
}
�� 
Type
�� 
type
�� 
;
�� 
if
�� 
(
�� $
ActualHttpMessageTypes
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
new
��3 6
HelpPageSampleKey
��7 H
(
��H I
sampleDirection
��I X
,
��X Y
controllerName
��Z h
,
��h i

actionName
��j t
,
��t u
parameterNames��v �
)��� �
,��� �
out��� �
type��� �
)��� �
||��� �$
ActualHttpMessageTypes
�� &
.
��& '
TryGetValue
��' 2
(
��2 3
new
��3 6
HelpPageSampleKey
��7 H
(
��H I
sampleDirection
��I X
,
��X Y
controllerName
��Z h
,
��h i

actionName
��j t
,
��t u
new
��v y
[
��y z
]
��z {
{
��| }
$str��~ �
}��� �
)��� �
,��� �
out��� �
type��� �
)��� �
)��� �
{
�� 

Collection
�� 
<
��  
MediaTypeFormatter
�� -
>
��- .
newFormatters
��/ <
=
��= >
new
��? B

Collection
��C M
<
��M N 
MediaTypeFormatter
��N `
>
��` a
(
��a b
)
��b c
;
��c d
foreach
�� 
(
�� 
var
�� 
	formatter
�� &
in
��' )
api
��* -
.
��- .
ActionDescriptor
��. >
.
��> ?
Configuration
��? L
.
��L M

Formatters
��M W
)
��W X
{
�� 
if
�� 
(
�� 
IsFormatSupported
�� )
(
��) *
sampleDirection
��* 9
,
��9 :
	formatter
��; D
,
��D E
type
��F J
)
��J K
)
��K L
{
�� 
newFormatters
�� %
.
��% &
Add
��& )
(
��) *
	formatter
��* 3
)
��3 4
;
��4 5
}
�� 
}
�� 

formatters
�� 
=
�� 
newFormatters
�� *
;
��* +
}
�� 
else
�� 
{
�� 
switch
�� 
(
�� 
sampleDirection
�� '
)
��' (
{
�� 
case
�� 
SampleDirection
�� (
.
��( )
Request
��) 0
:
��0 1%
ApiParameterDescription
�� /"
requestBodyParameter
��0 D
=
��E F
api
��G J
.
��J K#
ParameterDescriptions
��K `
.
��` a
FirstOrDefault
��a o
(
��o p
p
��p q
=>
��r t
p
��u v
.
��v w
Source
��w }
==��~ �"
ApiParameterSource��� �
.��� �
FromBody��� �
)��� �
;��� �
type
�� 
=
�� "
requestBodyParameter
�� 3
==
��4 6
null
��7 ;
?
��< =
null
��> B
:
��C D"
requestBodyParameter
��E Y
.
��Y Z!
ParameterDescriptor
��Z m
.
��m n
ParameterType
��n {
;
��{ |

formatters
�� "
=
��# $
api
��% (
.
��( ),
SupportedRequestBodyFormatters
��) G
;
��G H
break
�� 
;
�� 
default
�� 
:
�� 
type
�� 
=
�� 
api
�� "
.
��" #!
ResponseDescription
��# 6
.
��6 7
ResponseType
��7 C
??
��D F
api
��G J
.
��J K!
ResponseDescription
��K ^
.
��^ _
DeclaredType
��_ k
;
��k l

formatters
�� "
=
��# $
api
��% (
.
��( ))
SupportedResponseFormatters
��) D
;
��D E
break
�� 
;
�� 
}
�� 
}
�� 
return
�� 
type
�� 
;
�� 
}
�� 	
[
�� 	
SuppressMessage
��	 
(
�� 
$str
�� +
,
��+ ,
$str
��- U
,
��U V
Justification
��W d
=
��e f
$str��g �
)��� �
]��� �
public
�� 
virtual
�� 
object
�� -
WriteSampleObjectUsingFormatter
�� =
(
��= > 
MediaTypeFormatter
��> P
	formatter
��Q Z
,
��Z [
object
��\ b
value
��c h
,
��h i
Type
��j n
type
��o s
,
��s t#
MediaTypeHeaderValue��u �
	mediaType��� �
)��� �
{
�� 	
if
�� 
(
�� 
	formatter
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
	mediaType
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 ;
)
��; <
;
��< =
}
�� 
object
�� 
sample
�� 
=
�� 
String
�� "
.
��" #
Empty
��# (
;
��( )
MemoryStream
�� 
ms
�� 
=
�� 
null
�� "
;
��" #
HttpContent
�� 
content
�� 
=
��  !
null
��" &
;
��& '
try
�� 
{
�� 
if
�� 
(
�� 
	formatter
�� 
.
�� 
CanWriteType
�� *
(
��* +
type
��+ /
)
��/ 0
)
��0 1
{
�� 
ms
�� 
=
�� 
new
�� 
MemoryStream
�� )
(
��) *
)
��* +
;
��+ ,
content
�� 
=
�� 
new
�� !
ObjectContent
��" /
(
��/ 0
type
��0 4
,
��4 5
value
��6 ;
,
��; <
	formatter
��= F
,
��F G
	mediaType
��H Q
)
��Q R
;
��R S
	formatter
�� 
.
��  
WriteToStreamAsync
�� 0
(
��0 1
type
��1 5
,
��5 6
value
��7 <
,
��< =
ms
��> @
,
��@ A
content
��B I
,
��I J
null
��K O
)
��O P
.
��P Q
Wait
��Q U
(
��U V
)
��V W
;
��W X
ms
�� 
.
�� 
Position
�� 
=
��  !
$num
��" #
;
��# $
StreamReader
��  
reader
��! '
=
��( )
new
��* -
StreamReader
��. :
(
��: ;
ms
��; =
)
��= >
;
��> ?
string
�� $
serializedSampleString
�� 1
=
��2 3
reader
��4 :
.
��: ;
	ReadToEnd
��; D
(
��D E
)
��E F
;
��F G
if
�� 
(
�� 
	mediaType
�� !
.
��! "
	MediaType
��" +
.
��+ ,
ToUpperInvariant
��, <
(
��< =
)
��= >
.
��> ?
Contains
��? G
(
��G H
$str
��H M
)
��M N
)
��N O
{
�� $
serializedSampleString
�� .
=
��/ 0
TryFormatXml
��1 =
(
��= >$
serializedSampleString
��> T
)
��T U
;
��U V
}
�� 
else
�� 
if
�� 
(
�� 
	mediaType
�� &
.
��& '
	MediaType
��' 0
.
��0 1
ToUpperInvariant
��1 A
(
��A B
)
��B C
.
��C D
Contains
��D L
(
��L M
$str
��M S
)
��S T
)
��T U
{
�� $
serializedSampleString
�� .
=
��/ 0
TryFormatJson
��1 >
(
��> ?$
serializedSampleString
��? U
)
��U V
;
��V W
}
�� 
sample
�� 
=
�� 
new
��  

TextSample
��! +
(
��+ ,$
serializedSampleString
��, B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
sample
�� 
=
�� 
new
��  
InvalidSample
��! .
(
��. /
String
��/ 5
.
��5 6
Format
��6 <
(
��< =
CultureInfo
�� #
.
��# $
CurrentCulture
��$ 2
,
��2 3
$str
�� }
,
��} ~
	mediaType
�� !
,
��! "
	formatter
�� !
.
��! "
GetType
��" )
(
��) *
)
��* +
.
��+ ,
Name
��, 0
,
��0 1
type
�� 
.
�� 
Name
�� !
)
��! "
)
��" #
;
��# $
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
sample
�� 
=
�� 
new
�� 
InvalidSample
�� *
(
��* +
String
��+ 1
.
��1 2
Format
��2 8
(
��8 9
CultureInfo
�� 
.
��  
CurrentCulture
��  .
,
��. /
$str�� �
,��� �
	formatter
�� 
.
�� 
GetType
�� %
(
��% &
)
��& '
.
��' (
Name
��( ,
,
��, -
	mediaType
�� 
.
�� 
	MediaType
�� '
,
��' (
UnwrapException
�� #
(
��# $
e
��$ %
)
��% &
.
��& '
Message
��' .
)
��. /
)
��/ 0
;
��0 1
}
�� 
finally
�� 
{
�� 
if
�� 
(
�� 
ms
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
ms
�� 
.
�� 
Dispose
�� 
(
�� 
)
��  
;
��  !
}
�� 
if
�� 
(
�� 
content
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
content
�� 
.
�� 
Dispose
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
�� 
return
�� 
sample
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
	Exception
�� !
UnwrapException
��" 1
(
��1 2
	Exception
��2 ;
	exception
��< E
)
��E F
{
�� 	 
AggregateException
��  
aggregateException
�� 1
=
��2 3
	exception
��4 =
as
��> @ 
AggregateException
��A S
;
��S T
if
�� 
(
��  
aggregateException
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
return
��  
aggregateException
�� )
.
��) *
Flatten
��* 1
(
��1 2
)
��2 3
.
��3 4
InnerException
��4 B
;
��B C
}
�� 
return
�� 
	exception
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
�� (
DefaultSampleObjectFactory
�� 8
(
��8 9%
HelpPageSampleGenerator
��9 P
sampleGenerator
��Q `
,
��` a
Type
��b f
type
��g k
)
��k l
{
�� 	
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
return
�� 
objectGenerator
�� "
.
��" #
GenerateObject
��# 1
(
��1 2
type
��2 6
)
��6 7
;
��7 8
}
�� 	
[
�� 	
SuppressMessage
��	 
(
�� 
$str
�� +
,
��+ ,
$str
��- U
,
��U V
Justification
��W d
=
��e f
$str��g �
)��� �
]��� �
private
�� 
static
�� 
string
�� 
TryFormatJson
�� +
(
��+ ,
string
��, 2
str
��3 6
)
��6 7
{
�� 	
try
�� 
{
�� 
object
�� 

parsedJson
�� !
=
��" #
JsonConvert
��$ /
.
��/ 0
DeserializeObject
��0 A
(
��A B
str
��B E
)
��E F
;
��F G
return
�� 
JsonConvert
�� "
.
��" #
SerializeObject
��# 2
(
��2 3

parsedJson
��3 =
,
��= >

Formatting
��? I
.
��I J
Indented
��J R
)
��R S
;
��S T
}
�� 
catch
�� 
{
�� 
return
�� 
str
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	
SuppressMessage
��	 
(
�� 
$str
�� +
,
��+ ,
$str
��- U
,
��U V
Justification
��W d
=
��e f
$str��g �
)��� �
]��� �
private
�� 
static
�� 
string
�� 
TryFormatXml
�� *
(
��* +
string
��+ 1
str
��2 5
)
��5 6
{
�� 	
try
�� 
{
�� 
	XDocument
�� 
xml
�� 
=
�� 
	XDocument
��  )
.
��) *
Parse
��* /
(
��/ 0
str
��0 3
)
��3 4
;
��4 5
return
�� 
xml
�� 
.
�� 
ToString
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
catch
�� 
{
�� 
return
�� 
str
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsFormatSupported
�� -
(
��- .
SampleDirection
��. =
sampleDirection
��> M
,
��M N 
MediaTypeFormatter
��O a
	formatter
��b k
,
��k l
Type
��m q
type
��r v
)
��v w
{
�� 	
switch
�� 
(
�� 
sampleDirection
�� #
)
��# $
{
�� 
case
�� 
SampleDirection
�� $
.
��$ %
Request
��% ,
:
��, -
return
�� 
	formatter
�� $
.
��$ %
CanReadType
��% 0
(
��0 1
type
��1 5
)
��5 6
;
��6 7
case
�� 
SampleDirection
�� $
.
��$ %
Response
��% -
:
��- .
return
�� 
	formatter
�� $
.
��$ %
CanWriteType
��% 1
(
��1 2
type
��2 6
)
��6 7
;
��7 8
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
KeyValuePair
�� (
<
��( )
HelpPageSampleKey
��) :
,
��: ;
object
��< B
>
��B C
>
��C D!
GetAllActionSamples
��E X
(
��X Y
string
��Y _
controllerName
��` n
,
��n o
string
��p v

actionName��w �
,��� �
IEnumerable��� �
<��� �
string��� �
>��� �
parameterNames��� �
,��� �
SampleDirection��� �
sampleDirection��� �
)��� �
{
�� 	
HashSet
�� 
<
�� 
string
�� 
>
�� 
parameterNamesSet
�� -
=
��. /
new
��0 3
HashSet
��4 ;
<
��; <
string
��< B
>
��B C
(
��C D
parameterNames
��D R
,
��R S
StringComparer
��T b
.
��b c
OrdinalIgnoreCase
��c t
)
��t u
;
��u v
foreach
�� 
(
�� 
var
�� 
sample
�� 
in
��  "
ActionSamples
��# 0
)
��0 1
{
�� 
HelpPageSampleKey
�� !
	sampleKey
��" +
=
��, -
sample
��. 4
.
��4 5
Key
��5 8
;
��8 9
if
�� 
(
�� 
String
�� 
.
�� 
Equals
�� !
(
��! "
controllerName
��" 0
,
��0 1
	sampleKey
��2 ;
.
��; <
ControllerName
��< J
,
��J K
StringComparison
��L \
.
��\ ]
OrdinalIgnoreCase
��] n
)
��n o
&&
��p r
String
�� 
.
�� 
Equals
�� !
(
��! "

actionName
��" ,
,
��, -
	sampleKey
��. 7
.
��7 8

ActionName
��8 B
,
��B C
StringComparison
��D T
.
��T U
OrdinalIgnoreCase
��U f
)
��f g
&&
��h j
(
�� 
	sampleKey
�� 
.
�� 
ParameterNames
�� -
.
��- .
	SetEquals
��. 7
(
��7 8
new
��8 ;
[
��; <
]
��< =
{
��> ?
$str
��@ C
}
��D E
)
��E F
||
��G I
parameterNamesSet
��J [
.
��[ \
	SetEquals
��\ e
(
��e f
	sampleKey
��f o
.
��o p
ParameterNames
��p ~
)
��~ 
)�� �
&&��� �
sampleDirection
�� #
==
��$ &
	sampleKey
��' 0
.
��0 1
SampleDirection
��1 @
)
��@ A
{
�� 
yield
�� 
return
��  
sample
��! '
;
��' (
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
object
��  
WrapSampleIfString
�� 0
(
��0 1
object
��1 7
sample
��8 >
)
��> ?
{
�� 	
string
�� 
stringSample
�� 
=
��  !
sample
��" (
as
��) +
string
��, 2
;
��2 3
if
�� 
(
�� 
stringSample
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
return
�� 
new
�� 

TextSample
�� %
(
��% &
stringSample
��& 2
)
��2 3
;
��3 4
}
�� 
return
�� 
sample
�� 
;
�� 
}
�� 	
}
�� 
}�� �U
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\HelpPageSampleKey.cs
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
55� �
)
55� �
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
VV� �
,
VV� �
IEnumerable
VV� �
<
VV� �
string
VV� �
>
VV� �
parameterNames
VV� �
)
VV� �
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
�� 
SampleDirection
�� 
?
�� 
SampleDirection
��  /
{
��0 1
get
��2 5
;
��5 6
private
��7 >
set
��? B
;
��B C
}
��D E
public
�� 
override
�� 
bool
�� 
Equals
�� #
(
��# $
object
��$ *
obj
��+ .
)
��. /
{
�� 	
HelpPageSampleKey
�� 
otherKey
�� &
=
��' (
obj
��) ,
as
��- /
HelpPageSampleKey
��0 A
;
��A B
if
�� 
(
�� 
otherKey
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
String
�� 
.
�� 
Equals
��  
(
��  !
ControllerName
��! /
,
��/ 0
otherKey
��1 9
.
��9 :
ControllerName
��: H
,
��H I
StringComparison
��J Z
.
��Z [
OrdinalIgnoreCase
��[ l
)
��l m
&&
��n p
String
�� 
.
�� 
Equals
�� 
(
�� 

ActionName
�� (
,
��( )
otherKey
��* 2
.
��2 3

ActionName
��3 =
,
��= >
StringComparison
��? O
.
��O P
OrdinalIgnoreCase
��P a
)
��a b
&&
��c e
(
�� 
	MediaType
�� 
==
�� 
otherKey
�� &
.
��& '
	MediaType
��' 0
||
��1 3
(
��4 5
	MediaType
��5 >
!=
��? A
null
��B F
&&
��G I
	MediaType
��J S
.
��S T
Equals
��T Z
(
��Z [
otherKey
��[ c
.
��c d
	MediaType
��d m
)
��m n
)
��n o
)
��o p
&&
��q s
ParameterType
�� 
==
��  
otherKey
��! )
.
��) *
ParameterType
��* 7
&&
��8 :
SampleDirection
�� 
==
��  "
otherKey
��# +
.
��+ ,
SampleDirection
��, ;
&&
��< >
ParameterNames
�� 
.
�� 
	SetEquals
�� (
(
��( )
otherKey
��) 1
.
��1 2
ParameterNames
��2 @
)
��@ A
;
��A B
}
�� 	
public
�� 
override
�� 
int
�� 
GetHashCode
�� '
(
��' (
)
��( )
{
�� 	
int
�� 
hashCode
�� 
=
�� 
ControllerName
�� )
.
��) *
ToUpperInvariant
��* :
(
��: ;
)
��; <
.
��< =
GetHashCode
��= H
(
��H I
)
��I J
^
��K L

ActionName
��M W
.
��W X
ToUpperInvariant
��X h
(
��h i
)
��i j
.
��j k
GetHashCode
��k v
(
��v w
)
��w x
;
��x y
if
�� 
(
�� 
	MediaType
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
hashCode
�� 
^=
�� 
	MediaType
�� %
.
��% &
GetHashCode
��& 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
SampleDirection
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
hashCode
�� 
^=
�� 
SampleDirection
�� +
.
��+ ,
GetHashCode
��, 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
ParameterType
�� 
!=
��  
null
��! %
)
��% &
{
�� 
hashCode
�� 
^=
�� 
ParameterType
�� )
.
��) *
GetHashCode
��* 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
foreach
�� 
(
�� 
string
�� 
parameterName
�� )
in
��* ,
ParameterNames
��- ;
)
��; <
{
�� 
hashCode
�� 
^=
�� 
parameterName
�� )
.
��) *
ToUpperInvariant
��* :
(
��: ;
)
��; <
.
��< =
GetHashCode
��= H
(
��H I
)
��I J
;
��J K
}
�� 
return
�� 
hashCode
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\ImageSample.cs
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
})) �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\InvalidSample.cs
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
}%% Ç
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\ObjectGenerator.cs
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
$str	&&g �
)
&&� �
]
&&� �
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
createdObjectReferences	hhj �
)
hh� �
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
�� 
Type
�� 
collectionType
�� '
=
��( )
typeof
��* 0
(
��0 1
List
��1 5
<
��5 6
>
��6 7
)
��7 8
.
��8 9
MakeGenericType
��9 H
(
��H I
genericArguments
��I Y
)
��Y Z
;
��Z [
return
��  
GenerateCollection
�� -
(
��- .
collectionType
��. <
,
��< =
collectionSize
��> L
,
��L M%
createdObjectReferences
��N e
)
��e f
;
��f g
}
�� 
if
�� 
(
�� #
genericTypeDefinition
�� )
==
��* ,
typeof
��- 3
(
��3 4

IQueryable
��4 >
<
��> ?
>
��? @
)
��@ A
)
��A B
{
�� 
return
�� 
GenerateQueryable
�� ,
(
��, -
type
��- 1
,
��1 2
collectionSize
��3 A
,
��A B%
createdObjectReferences
��C Z
)
��Z [
;
��[ \
}
�� 
Type
�� "
closedCollectionType
�� )
=
��* +
typeof
��, 2
(
��2 3
ICollection
��3 >
<
��> ?
>
��? @
)
��@ A
.
��A B
MakeGenericType
��B Q
(
��Q R
genericArguments
��R b
[
��b c
$num
��c d
]
��d e
)
��e f
;
��f g
if
�� 
(
�� "
closedCollectionType
�� (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
type
��: >
)
��> ?
)
��? @
{
�� 
return
��  
GenerateCollection
�� -
(
��- .
type
��. 2
,
��2 3
collectionSize
��4 B
,
��B C%
createdObjectReferences
��D [
)
��[ \
;
��\ ]
}
�� 
}
�� 
if
�� 
(
�� 
genericArguments
��  
.
��  !
Length
��! '
==
��( *
$num
��+ ,
)
��, -
{
�� 
if
�� 
(
�� #
genericTypeDefinition
�� )
==
��* ,
typeof
��- 3
(
��3 4
IDictionary
��4 ?
<
��? @
,
��@ A
>
��A B
)
��B C
)
��C D
{
�� 
Type
�� 
dictionaryType
�� '
=
��( )
typeof
��* 0
(
��0 1

Dictionary
��1 ;
<
��; <
,
��< =
>
��= >
)
��> ?
.
��? @
MakeGenericType
��@ O
(
��O P
genericArguments
��P `
)
��` a
;
��a b
return
��  
GenerateDictionary
�� -
(
��- .
dictionaryType
��. <
,
��< =
collectionSize
��> L
,
��L M%
createdObjectReferences
��N e
)
��e f
;
��f g
}
�� 
Type
�� "
closedDictionaryType
�� )
=
��* +
typeof
��, 2
(
��2 3
IDictionary
��3 >
<
��> ?
,
��? @
>
��@ A
)
��A B
.
��B C
MakeGenericType
��C R
(
��R S
genericArguments
��S c
[
��c d
$num
��d e
]
��e f
,
��f g
genericArguments
��h x
[
��x y
$num
��y z
]
��z {
)
��{ |
;
��| }
if
�� 
(
�� "
closedDictionaryType
�� (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
type
��: >
)
��> ?
)
��? @
{
�� 
return
��  
GenerateDictionary
�� -
(
��- .
type
��. 2
,
��2 3
collectionSize
��4 B
,
��B C%
createdObjectReferences
��D [
)
��[ \
;
��\ ]
}
�� 
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsPublic
�� 
||
��  
type
��! %
.
��% &
IsNestedPublic
��& 4
)
��4 5
{
�� 
return
�� #
GenerateComplexObject
�� ,
(
��, -
type
��- 1
,
��1 2%
createdObjectReferences
��3 J
)
��J K
;
��K L
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
�� 
GenerateTuple
�� +
(
��+ ,
Type
��, 0
type
��1 5
,
��5 6

Dictionary
��7 A
<
��A B
Type
��B F
,
��F G
object
��H N
>
��N O%
createdObjectReferences
��P g
)
��g h
{
�� 	
Type
�� 
[
�� 
]
�� 
genericArgs
�� 
=
��  
type
��! %
.
��% &!
GetGenericArguments
��& 9
(
��9 :
)
��: ;
;
��; <
object
�� 
[
�� 
]
�� 
parameterValues
�� $
=
��% &
new
��' *
object
��+ 1
[
��1 2
genericArgs
��2 =
.
��= >
Length
��> D
]
��D E
;
��E F
bool
�� !
failedToCreateTuple
�� $
=
��% &
true
��' +
;
��+ ,
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
genericArgs
��  +
.
��+ ,
Length
��, 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 
parameterValues
�� 
[
��  
i
��  !
]
��! "
=
��# $
objectGenerator
��% 4
.
��4 5
GenerateObject
��5 C
(
��C D
genericArgs
��D O
[
��O P
i
��P Q
]
��Q R
,
��R S%
createdObjectReferences
��T k
)
��k l
;
��l m!
failedToCreateTuple
�� #
&=
��$ &
parameterValues
��' 6
[
��6 7
i
��7 8
]
��8 9
==
��: <
null
��= A
;
��A B
}
�� 
if
�� 
(
�� !
failedToCreateTuple
�� #
)
��# $
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
object
�� 
result
�� 
=
�� 
	Activator
�� %
.
��% &
CreateInstance
��& 4
(
��4 5
type
��5 9
,
��9 :
parameterValues
��; J
)
��J K
;
��K L
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsTuple
�� #
(
��# $
Type
��$ (#
genericTypeDefinition
��) >
)
��> ?
{
�� 	
return
�� #
genericTypeDefinition
�� (
==
��) +
typeof
��, 2
(
��2 3
Tuple
��3 8
<
��8 9
>
��9 :
)
��: ;
||
��< >#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
>
��7 8
)
��8 9
||
��: <#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
,
��7 8
>
��8 9
)
��9 :
||
��; =#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
,
��7 8
,
��8 9
>
��9 :
)
��: ;
||
��< >#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
,
��7 8
,
��8 9
,
��9 :
>
��: ;
)
��; <
||
��= ?#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
,
��7 8
,
��8 9
,
��9 :
,
��: ;
>
��; <
)
��< =
||
��> @#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
,
��7 8
,
��8 9
,
��9 :
,
��: ;
,
��; <
>
��< =
)
��= >
||
��? A#
genericTypeDefinition
�� %
==
��& (
typeof
��) /
(
��/ 0
Tuple
��0 5
<
��5 6
,
��6 7
,
��7 8
,
��8 9
,
��9 :
,
��: ;
,
��; <
,
��< =
>
��= >
)
��> ?
;
��? @
}
�� 	
private
�� 
static
�� 
object
�� "
GenerateKeyValuePair
�� 2
(
��2 3
Type
��3 7
keyValuePairType
��8 H
,
��H I

Dictionary
��J T
<
��T U
Type
��U Y
,
��Y Z
object
��[ a
>
��a b%
createdObjectReferences
��c z
)
��z {
{
�� 	
Type
�� 
[
�� 
]
�� 
genericArgs
�� 
=
��  
keyValuePairType
��! 1
.
��1 2!
GetGenericArguments
��2 E
(
��E F
)
��F G
;
��G H
Type
�� 
typeK
�� 
=
�� 
genericArgs
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
Type
�� 
typeV
�� 
=
�� 
genericArgs
�� $
[
��$ %
$num
��% &
]
��& '
;
��' (
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
object
�� 
	keyObject
�� 
=
�� 
objectGenerator
�� .
.
��. /
GenerateObject
��/ =
(
��= >
typeK
��> C
,
��C D%
createdObjectReferences
��E \
)
��\ ]
;
��] ^
object
�� 
valueObject
�� 
=
��  
objectGenerator
��! 0
.
��0 1
GenerateObject
��1 ?
(
��? @
typeV
��@ E
,
��E F%
createdObjectReferences
��G ^
)
��^ _
;
��_ `
if
�� 
(
�� 
	keyObject
�� 
==
�� 
null
�� !
&&
��" $
valueObject
��% 0
==
��1 3
null
��4 8
)
��8 9
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
object
�� 
result
�� 
=
�� 
	Activator
�� %
.
��% &
CreateInstance
��& 4
(
��4 5
keyValuePairType
��5 E
,
��E F
	keyObject
��G P
,
��P Q
valueObject
��R ]
)
��] ^
;
��^ _
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
�� 
GenerateArray
�� +
(
��+ ,
Type
��, 0
	arrayType
��1 :
,
��: ;
int
��< ?
size
��@ D
,
��D E

Dictionary
��F P
<
��P Q
Type
��Q U
,
��U V
object
��W ]
>
��] ^%
createdObjectReferences
��_ v
)
��v w
{
�� 	
Type
�� 
type
�� 
=
�� 
	arrayType
�� !
.
��! "
GetElementType
��" 0
(
��0 1
)
��1 2
;
��2 3
Array
�� 
result
�� 
=
�� 
Array
��  
.
��  !
CreateInstance
��! /
(
��/ 0
type
��0 4
,
��4 5
size
��6 :
)
��: ;
;
��; <
bool
��  
areAllElementsNull
�� #
=
��$ %
true
��& *
;
��* +
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
size
��  $
;
��$ %
i
��& '
++
��' )
)
��) *
{
�� 
object
�� 
element
�� 
=
��  
objectGenerator
��! 0
.
��0 1
GenerateObject
��1 ?
(
��? @
type
��@ D
,
��D E%
createdObjectReferences
��F ]
)
��] ^
;
��^ _
result
�� 
.
�� 
SetValue
�� 
(
��  
element
��  '
,
��' (
i
��) *
)
��* +
;
��+ , 
areAllElementsNull
�� "
&=
��# %
element
��& -
==
��. 0
null
��1 5
;
��5 6
}
�� 
if
�� 
(
��  
areAllElementsNull
�� "
)
��" #
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
��  
GenerateDictionary
�� 0
(
��0 1
Type
��1 5
dictionaryType
��6 D
,
��D E
int
��F I
size
��J N
,
��N O

Dictionary
��P Z
<
��Z [
Type
��[ _
,
��_ `
object
��a g
>
��g h&
createdObjectReferences��i �
)��� �
{
�� 	
Type
�� 
typeK
�� 
=
�� 
typeof
�� 
(
��  
object
��  &
)
��& '
;
��' (
Type
�� 
typeV
�� 
=
�� 
typeof
�� 
(
��  
object
��  &
)
��& '
;
��' (
if
�� 
(
�� 
dictionaryType
�� 
.
�� 
IsGenericType
�� ,
)
��, -
{
�� 
Type
�� 
[
�� 
]
�� 
genericArgs
�� "
=
��# $
dictionaryType
��% 3
.
��3 4!
GetGenericArguments
��4 G
(
��G H
)
��H I
;
��I J
typeK
�� 
=
�� 
genericArgs
�� #
[
��# $
$num
��$ %
]
��% &
;
��& '
typeV
�� 
=
�� 
genericArgs
�� #
[
��# $
$num
��$ %
]
��% &
;
��& '
}
�� 
object
�� 
result
�� 
=
�� 
	Activator
�� %
.
��% &
CreateInstance
��& 4
(
��4 5
dictionaryType
��5 C
)
��C D
;
��D E

MethodInfo
�� 
	addMethod
��  
=
��! "
dictionaryType
��# 1
.
��1 2
	GetMethod
��2 ;
(
��; <
$str
��< A
)
��A B
??
��C E
dictionaryType
��F T
.
��T U
	GetMethod
��U ^
(
��^ _
$str
��_ g
)
��g h
;
��h i

MethodInfo
�� 
containsMethod
�� %
=
��& '
dictionaryType
��( 6
.
��6 7
	GetMethod
��7 @
(
��@ A
$str
��A K
)
��K L
??
��M O
dictionaryType
��P ^
.
��^ _
	GetMethod
��_ h
(
��h i
$str
��i v
)
��v w
;
��w x
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
size
��  $
;
��$ %
i
��& '
++
��' )
)
��) *
{
�� 
object
�� 
newKey
�� 
=
�� 
objectGenerator
��  /
.
��/ 0
GenerateObject
��0 >
(
��> ?
typeK
��? D
,
��D E%
createdObjectReferences
��F ]
)
��] ^
;
��^ _
if
�� 
(
�� 
newKey
�� 
==
�� 
null
�� "
)
��" #
{
�� 
return
�� 
null
�� 
;
��  
}
�� 
bool
�� 
containsKey
��  
=
��! "
(
��# $
bool
��$ (
)
��( )
containsMethod
��) 7
.
��7 8
Invoke
��8 >
(
��> ?
result
��? E
,
��E F
new
��G J
object
��K Q
[
��Q R
]
��R S
{
��T U
newKey
��V \
}
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
containsKey
��  
)
��  !
{
�� 
object
�� 
newValue
�� #
=
��$ %
objectGenerator
��& 5
.
��5 6
GenerateObject
��6 D
(
��D E
typeV
��E J
,
��J K%
createdObjectReferences
��L c
)
��c d
;
��d e
	addMethod
�� 
.
�� 
Invoke
�� $
(
��$ %
result
��% +
,
��+ ,
new
��- 0
object
��1 7
[
��7 8
]
��8 9
{
��: ;
newKey
��< B
,
��B C
newValue
��D L
}
��M N
)
��N O
;
��O P
}
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
�� 
GenerateEnum
�� *
(
��* +
Type
��+ /
enumType
��0 8
)
��8 9
{
�� 	
Array
�� 
possibleValues
��  
=
��! "
Enum
��# '
.
��' (
	GetValues
��( 1
(
��1 2
enumType
��2 :
)
��: ;
;
��; <
if
�� 
(
�� 
possibleValues
�� 
.
�� 
Length
�� %
>
��& '
$num
��( )
)
��) *
{
�� 
return
�� 
possibleValues
�� %
.
��% &
GetValue
��& .
(
��. /
$num
��/ 0
)
��0 1
;
��1 2
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
�� 
GenerateQueryable
�� /
(
��/ 0
Type
��0 4
queryableType
��5 B
,
��B C
int
��D G
size
��H L
,
��L M

Dictionary
��N X
<
��X Y
Type
��Y ]
,
��] ^
object
��_ e
>
��e f%
createdObjectReferences
��g ~
)
��~ 
{
�� 	
bool
�� 
	isGeneric
�� 
=
�� 
queryableType
�� *
.
��* +
IsGenericType
��+ 8
;
��8 9
object
�� 
list
�� 
;
�� 
if
�� 
(
�� 
	isGeneric
�� 
)
�� 
{
�� 
Type
�� 
listType
�� 
=
�� 
typeof
��  &
(
��& '
List
��' +
<
��+ ,
>
��, -
)
��- .
.
��. /
MakeGenericType
��/ >
(
��> ?
queryableType
��? L
.
��L M!
GetGenericArguments
��M `
(
��` a
)
��a b
)
��b c
;
��c d
list
�� 
=
��  
GenerateCollection
�� )
(
��) *
listType
��* 2
,
��2 3
size
��4 8
,
��8 9%
createdObjectReferences
��: Q
)
��Q R
;
��R S
}
�� 
else
�� 
{
�� 
list
�� 
=
�� 
GenerateArray
�� $
(
��$ %
typeof
��% +
(
��+ ,
object
��, 2
[
��2 3
]
��3 4
)
��4 5
,
��5 6
size
��7 ;
,
��; <%
createdObjectReferences
��= T
)
��T U
;
��U V
}
�� 
if
�� 
(
�� 
list
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
if
�� 
(
�� 
	isGeneric
�� 
)
�� 
{
�� 
Type
�� 
argumentType
�� !
=
��" #
typeof
��$ *
(
��* +
IEnumerable
��+ 6
<
��6 7
>
��7 8
)
��8 9
.
��9 :
MakeGenericType
��: I
(
��I J
queryableType
��J W
.
��W X!
GetGenericArguments
��X k
(
��k l
)
��l m
)
��m n
;
��n o

MethodInfo
�� 
asQueryableMethod
�� ,
=
��- .
typeof
��/ 5
(
��5 6
	Queryable
��6 ?
)
��? @
.
��@ A
	GetMethod
��A J
(
��J K
$str
��K X
,
��X Y
new
��Z ]
[
��] ^
]
��^ _
{
��` a
argumentType
��b n
}
��o p
)
��p q
;
��q r
return
�� 
asQueryableMethod
�� (
.
��( )
Invoke
��) /
(
��/ 0
null
��0 4
,
��4 5
new
��6 9
[
��9 :
]
��: ;
{
��< =
list
��> B
}
��C D
)
��D E
;
��E F
}
�� 
return
�� 
	Queryable
�� 
.
�� 
AsQueryable
�� (
(
��( )
(
��) *
IEnumerable
��* 5
)
��5 6
list
��6 :
)
��: ;
;
��; <
}
�� 	
private
�� 
static
�� 
object
��  
GenerateCollection
�� 0
(
��0 1
Type
��1 5
collectionType
��6 D
,
��D E
int
��F I
size
��J N
,
��N O

Dictionary
��P Z
<
��Z [
Type
��[ _
,
��_ `
object
��a g
>
��g h&
createdObjectReferences��i �
)��� �
{
�� 	
Type
�� 
type
�� 
=
�� 
collectionType
�� &
.
��& '
IsGenericType
��' 4
?
��5 6
collectionType
�� 
.
�� !
GetGenericArguments
�� 2
(
��2 3
)
��3 4
[
��4 5
$num
��5 6
]
��6 7
:
��8 9
typeof
�� 
(
�� 
object
�� 
)
�� 
;
�� 
object
�� 
result
�� 
=
�� 
	Activator
�� %
.
��% &
CreateInstance
��& 4
(
��4 5
collectionType
��5 C
)
��C D
;
��D E

MethodInfo
�� 
	addMethod
��  
=
��! "
collectionType
��# 1
.
��1 2
	GetMethod
��2 ;
(
��; <
$str
��< A
)
��A B
;
��B C
bool
��  
areAllElementsNull
�� #
=
��$ %
true
��& *
;
��* +
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
size
��  $
;
��$ %
i
��& '
++
��' )
)
��) *
{
�� 
object
�� 
element
�� 
=
��  
objectGenerator
��! 0
.
��0 1
GenerateObject
��1 ?
(
��? @
type
��@ D
,
��D E%
createdObjectReferences
��F ]
)
��] ^
;
��^ _
	addMethod
�� 
.
�� 
Invoke
��  
(
��  !
result
��! '
,
��' (
new
��) ,
object
��- 3
[
��3 4
]
��4 5
{
��6 7
element
��8 ?
}
��@ A
)
��A B
;
��B C 
areAllElementsNull
�� "
&=
��# %
element
��& -
==
��. 0
null
��1 5
;
��5 6
}
�� 
if
�� 
(
��  
areAllElementsNull
�� "
)
��" #
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
object
�� 
GenerateNullable
�� .
(
��. /
Type
��/ 3
nullableType
��4 @
,
��@ A

Dictionary
��B L
<
��L M
Type
��M Q
,
��Q R
object
��S Y
>
��Y Z%
createdObjectReferences
��[ r
)
��r s
{
�� 	
Type
�� 
type
�� 
=
�� 
nullableType
�� $
.
��$ %!
GetGenericArguments
��% 8
(
��8 9
)
��9 :
[
��: ;
$num
��; <
]
��< =
;
��= >
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
return
�� 
objectGenerator
�� "
.
��" #
GenerateObject
��# 1
(
��1 2
type
��2 6
,
��6 7%
createdObjectReferences
��8 O
)
��O P
;
��P Q
}
�� 	
private
�� 
static
�� 
object
�� #
GenerateComplexObject
�� 3
(
��3 4
Type
��4 8
type
��9 =
,
��= >

Dictionary
��? I
<
��I J
Type
��J N
,
��N O
object
��P V
>
��V W%
createdObjectReferences
��X o
)
��o p
{
�� 	
object
�� 
result
�� 
=
�� 
null
��  
;
��  !
if
�� 
(
�� %
createdObjectReferences
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
type
��4 8
,
��8 9
out
��: =
result
��> D
)
��D E
)
��E F
{
�� 
return
�� 
result
�� 
;
�� 
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsValueType
��  
)
��  !
{
�� 
result
�� 
=
�� 
	Activator
�� "
.
��" #
CreateInstance
��# 1
(
��1 2
type
��2 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
ConstructorInfo
�� 
defaultCtor
��  +
=
��, -
type
��. 2
.
��2 3
GetConstructor
��3 A
(
��A B
Type
��B F
.
��F G

EmptyTypes
��G Q
)
��Q R
;
��R S
if
�� 
(
�� 
defaultCtor
�� 
==
��  "
null
��# '
)
��' (
{
�� 
return
�� 
null
�� 
;
��  
}
�� 
result
�� 
=
�� 
defaultCtor
�� $
.
��$ %
Invoke
��% +
(
��+ ,
new
��, /
object
��0 6
[
��6 7
$num
��7 8
]
��8 9
)
��9 :
;
��: ;
}
�� %
createdObjectReferences
�� #
.
��# $
Add
��$ '
(
��' (
type
��( ,
,
��, -
result
��. 4
)
��4 5
;
��5 6!
SetPublicProperties
�� 
(
��  
type
��  $
,
��$ %
result
��& ,
,
��, -%
createdObjectReferences
��. E
)
��E F
;
��F G
SetPublicFields
�� 
(
�� 
type
��  
,
��  !
result
��" (
,
��( )%
createdObjectReferences
��* A
)
��A B
;
��B C
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� !
SetPublicProperties
�� /
(
��/ 0
Type
��0 4
type
��5 9
,
��9 :
object
��; A
obj
��B E
,
��E F

Dictionary
��G Q
<
��Q R
Type
��R V
,
��V W
object
��X ^
>
��^ _%
createdObjectReferences
��` w
)
��w x
{
�� 	
PropertyInfo
�� 
[
�� 
]
�� 

properties
�� %
=
��& '
type
��( ,
.
��, -
GetProperties
��- :
(
��: ;
BindingFlags
��; G
.
��G H
Public
��H N
|
��O P
BindingFlags
��Q ]
.
��] ^
Instance
��^ f
)
��f g
;
��g h
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
PropertyInfo
�� !
property
��" *
in
��+ -

properties
��. 8
)
��8 9
{
�� 
if
�� 
(
�� 
property
�� 
.
�� 
CanWrite
�� %
)
��% &
{
�� 
object
�� 
propertyValue
�� (
=
��) *
objectGenerator
��+ :
.
��: ;
GenerateObject
��; I
(
��I J
property
��J R
.
��R S
PropertyType
��S _
,
��_ `%
createdObjectReferences
��a x
)
��x y
;
��y z
property
�� 
.
�� 
SetValue
�� %
(
��% &
obj
��& )
,
��) *
propertyValue
��+ 8
,
��8 9
null
��: >
)
��> ?
;
��? @
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
SetPublicFields
�� +
(
��+ ,
Type
��, 0
type
��1 5
,
��5 6
object
��7 =
obj
��> A
,
��A B

Dictionary
��C M
<
��M N
Type
��N R
,
��R S
object
��T Z
>
��Z [%
createdObjectReferences
��\ s
)
��s t
{
�� 	
	FieldInfo
�� 
[
�� 
]
�� 
fields
�� 
=
��  
type
��! %
.
��% &
	GetFields
��& /
(
��/ 0
BindingFlags
��0 <
.
��< =
Public
��= C
|
��D E
BindingFlags
��F R
.
��R S
Instance
��S [
)
��[ \
;
��\ ]
ObjectGenerator
�� 
objectGenerator
�� +
=
��, -
new
��. 1
ObjectGenerator
��2 A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
	FieldInfo
�� 
field
�� $
in
��% '
fields
��( .
)
��. /
{
�� 
object
�� 

fieldValue
�� !
=
��" #
objectGenerator
��$ 3
.
��3 4
GenerateObject
��4 B
(
��B C
field
��C H
.
��H I
	FieldType
��I R
,
��R S%
createdObjectReferences
��T k
)
��k l
;
��l m
field
�� 
.
�� 
SetValue
�� 
(
�� 
obj
�� "
,
��" #

fieldValue
��$ .
)
��. /
;
��/ 0
}
�� 
}
�� 	
private
�� 
class
�� '
SimpleTypeObjectGenerator
�� /
{
�� 	
private
�� 
long
�� 
_index
�� 
=
��  !
$num
��" #
;
��# $
private
�� 
static
�� 
readonly
�� #

Dictionary
��$ .
<
��. /
Type
��/ 3
,
��3 4
Func
��5 9
<
��9 :
long
��: >
,
��> ?
object
��@ F
>
��F G
>
��G H
DefaultGenerators
��I Z
=
��[ \"
InitializeGenerators
��] q
(
��q r
)
��r s
;
��s t
[
�� 
SuppressMessage
�� 
(
�� 
$str
�� 8
,
��8 9
$str
��: [
,
��[ \
Justification
��] j
=
��k l
$str��m �
)��� �
]��� �
private
�� 
static
�� 

Dictionary
�� %
<
��% &
Type
��& *
,
��* +
Func
��, 0
<
��0 1
long
��1 5
,
��5 6
object
��7 =
>
��= >
>
��> ?"
InitializeGenerators
��@ T
(
��T U
)
��U V
{
�� 
return
�� 
new
�� 

Dictionary
�� %
<
��% &
Type
��& *
,
��* +
Func
��, 0
<
��0 1
long
��1 5
,
��5 6
object
��7 =
>
��= >
>
��> ?
{
�� 
{
�� 
typeof
�� 
(
�� 
Boolean
�� $
)
��$ %
,
��% &
index
��' ,
=>
��- /
true
��0 4
}
��5 6
,
��6 7
{
�� 
typeof
�� 
(
�� 
Byte
�� !
)
��! "
,
��" #
index
��$ )
=>
��* ,
(
��- .
Byte
��. 2
)
��2 3
$num
��3 5
}
��6 7
,
��7 8
{
�� 
typeof
�� 
(
�� 
Char
�� !
)
��! "
,
��" #
index
��$ )
=>
��* ,
(
��- .
Char
��. 2
)
��2 3
$num
��3 5
}
��6 7
,
��7 8
{
�� 
typeof
�� 
(
�� 
DateTime
�� %
)
��% &
,
��& '
index
��( -
=>
��. 0
DateTime
��1 9
.
��9 :
Now
��: =
}
��> ?
,
��? @
{
�� 
typeof
�� 
(
�� 
DateTimeOffset
�� +
)
��+ ,
,
��, -
index
��. 3
=>
��4 6
new
��7 :
DateTimeOffset
��; I
(
��I J
DateTime
��J R
.
��R S
Now
��S V
)
��V W
}
��X Y
,
��Y Z
{
�� 
typeof
�� 
(
�� 
DBNull
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
DBNull
��/ 5
.
��5 6
Value
��6 ;
}
��< =
,
��= >
{
�� 
typeof
�� 
(
�� 
Decimal
�� $
)
��$ %
,
��% &
index
��' ,
=>
��- /
(
��0 1
Decimal
��1 8
)
��8 9
index
��9 >
}
��? @
,
��@ A
{
�� 
typeof
�� 
(
�� 
Double
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
(
��/ 0
Double
��0 6
)
��6 7
(
��7 8
index
��8 =
+
��> ?
$num
��@ C
)
��C D
}
��E F
,
��F G
{
�� 
typeof
�� 
(
�� 
Guid
�� !
)
��! "
,
��" #
index
��$ )
=>
��* ,
Guid
��- 1
.
��1 2
NewGuid
��2 9
(
��9 :
)
��: ;
}
��< =
,
��= >
{
�� 
typeof
�� 
(
�� 
Int16
�� "
)
��" #
,
��# $
index
��% *
=>
��+ -
(
��. /
Int16
��/ 4
)
��4 5
(
��5 6
index
��6 ;
%
��< =
Int16
��> C
.
��C D
MaxValue
��D L
)
��L M
}
��N O
,
��O P
{
�� 
typeof
�� 
(
�� 
Int32
�� "
)
��" #
,
��# $
index
��% *
=>
��+ -
(
��. /
Int32
��/ 4
)
��4 5
(
��5 6
index
��6 ;
%
��< =
Int32
��> C
.
��C D
MaxValue
��D L
)
��L M
}
��N O
,
��O P
{
�� 
typeof
�� 
(
�� 
Int64
�� "
)
��" #
,
��# $
index
��% *
=>
��+ -
(
��. /
Int64
��/ 4
)
��4 5
index
��5 :
}
��; <
,
��< =
{
�� 
typeof
�� 
(
�� 
Object
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
new
��/ 2
object
��3 9
(
��9 :
)
��: ;
}
��< =
,
��= >
{
�� 
typeof
�� 
(
�� 
SByte
�� "
)
��" #
,
��# $
index
��% *
=>
��+ -
(
��. /
SByte
��/ 4
)
��4 5
$num
��5 7
}
��8 9
,
��9 :
{
�� 
typeof
�� 
(
�� 
Single
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
(
��/ 0
Single
��0 6
)
��6 7
(
��7 8
index
��8 =
+
��> ?
$num
��@ C
)
��C D
}
��E F
,
��F G
{
�� 
typeof
�� 
(
�� 
String
�� %
)
��% &
,
��& '
index
��( -
=>
��. 0
{
�� 
return
�� "
String
��# )
.
��) *
Format
��* 0
(
��0 1
CultureInfo
��1 <
.
��< =
CurrentCulture
��= K
,
��K L
$str
��M `
,
��` a
index
��b g
)
��g h
;
��h i
}
�� 
}
�� 
,
�� 
{
�� 
typeof
�� 
(
�� 
TimeSpan
�� '
)
��' (
,
��( )
index
��* /
=>
��0 2
{
�� 
return
�� "
TimeSpan
��# +
.
��+ ,
	FromTicks
��, 5
(
��5 6
$num
��6 =
)
��= >
;
��> ?
}
�� 
}
�� 
,
�� 
{
�� 
typeof
�� 
(
�� 
UInt16
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
(
��/ 0
UInt16
��0 6
)
��6 7
(
��7 8
index
��8 =
%
��> ?
UInt16
��@ F
.
��F G
MaxValue
��G O
)
��O P
}
��Q R
,
��R S
{
�� 
typeof
�� 
(
�� 
UInt32
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
(
��/ 0
UInt32
��0 6
)
��6 7
(
��7 8
index
��8 =
%
��> ?
UInt32
��@ F
.
��F G
MaxValue
��G O
)
��O P
}
��Q R
,
��R S
{
�� 
typeof
�� 
(
�� 
UInt64
�� #
)
��# $
,
��$ %
index
��& +
=>
��, .
(
��/ 0
UInt64
��0 6
)
��6 7
index
��7 <
}
��= >
,
��> ?
{
�� 
typeof
�� 
(
�� 
Uri
�� "
)
��" #
,
��# $
index
��% *
=>
��+ -
{
�� 
return
�� "
new
��# &
Uri
��' *
(
��* +
String
��+ 1
.
��1 2
Format
��2 8
(
��8 9
CultureInfo
��9 D
.
��D E
CurrentCulture
��E S
,
��S T
$str
��U s
,
��s t
index
��u z
)
��z {
)
��{ |
;
��| }
}
�� 
}
�� 
,
�� 
}
�� 
;
�� 
}
�� 
public
�� 
static
�� 
bool
�� 
CanGenerateObject
�� 0
(
��0 1
Type
��1 5
type
��6 :
)
��: ;
{
�� 
return
�� 
DefaultGenerators
�� (
.
��( )
ContainsKey
��) 4
(
��4 5
type
��5 9
)
��9 :
;
��: ;
}
�� 
public
�� 
object
�� 
GenerateObject
�� (
(
��( )
Type
��) -
type
��. 2
)
��2 3
{
�� 
return
�� 
DefaultGenerators
�� (
[
��( )
type
��) -
]
��- .
(
��. /
++
��/ 1
_index
��1 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\SampleDirection.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\SampleGeneration\TextSample.cs
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
}%% �w
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Areas\HelpPage\XmlDocumentationProvider.cs
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
 ReflectedHttpParameterDescriptor	44c �
;
44� �
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
ParameterExpression	;;{ �
,
;;� �
parameterName
;;� �
)
;;� �
)
;;� �
;
;;� �
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
member	NNz �
.
NN� �
Name
NN� �
)
NN� �
;
NN� �
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
reflectedActionDescriptor	``v �
.
``� �

MethodInfo
``� �
)
``� �
)
``� �
;
``� �
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
)	ii �
;
ii� �
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
�� 	
private
�� 
XPathNavigator
�� 
GetTypeNode
�� *
(
��* +
Type
��+ /
type
��0 4
)
��4 5
{
�� 	
string
��  
controllerTypeName
�� %
=
��& '
GetTypeName
��( 3
(
��3 4
type
��4 8
)
��8 9
;
��9 :
string
�� 
selectExpression
�� #
=
��$ %
String
��& ,
.
��, -
Format
��- 3
(
��3 4
CultureInfo
��4 ?
.
��? @
InvariantCulture
��@ P
,
��P Q
TypeExpression
��R `
,
��` a 
controllerTypeName
��b t
)
��t u
;
��u v
return
��  
_documentNavigator
�� %
.
��% &
SelectSingleNode
��& 6
(
��6 7
selectExpression
��7 G
)
��G H
;
��H I
}
�� 	
private
�� 
static
�� 
string
�� 
GetTypeName
�� )
(
��) *
Type
��* .
type
��/ 3
)
��3 4
{
�� 	
string
�� 
name
�� 
=
�� 
type
�� 
.
�� 
FullName
�� '
;
��' (
if
�� 
(
�� 
type
�� 
.
�� 
IsGenericType
�� "
)
��" #
{
�� 
Type
�� 
genericType
��  
=
��! "
type
��# '
.
��' (&
GetGenericTypeDefinition
��( @
(
��@ A
)
��A B
;
��B C
Type
�� 
[
�� 
]
�� 
genericArguments
�� '
=
��( )
type
��* .
.
��. /!
GetGenericArguments
��/ B
(
��B C
)
��C D
;
��D E
string
�� 
genericTypeName
�� &
=
��' (
genericType
��) 4
.
��4 5
FullName
��5 =
;
��= >
genericTypeName
�� 
=
��  !
genericTypeName
��" 1
.
��1 2
	Substring
��2 ;
(
��; <
$num
��< =
,
��= >
genericTypeName
��? N
.
��N O
IndexOf
��O V
(
��V W
$char
��W Z
)
��Z [
)
��[ \
;
��\ ]
string
�� 
[
�� 
]
�� 
argumentTypeNames
�� *
=
��+ ,
genericArguments
��- =
.
��= >
Select
��> D
(
��D E
t
��E F
=>
��G I
GetTypeName
��J U
(
��U V
t
��V W
)
��W X
)
��X Y
.
��Y Z
ToArray
��Z a
(
��a b
)
��b c
;
��c d
name
�� 
=
�� 
String
�� 
.
�� 
Format
�� $
(
��$ %
CultureInfo
��% 0
.
��0 1
InvariantCulture
��1 A
,
��A B
$str
��C O
,
��O P
genericTypeName
��Q `
,
��` a
String
��b h
.
��h i
Join
��i m
(
��m n
$str
��n q
,
��q r 
argumentTypeNames��s �
)��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
IsNested
�� 
)
�� 
{
�� 
name
�� 
=
�� 
name
�� 
.
�� 
Replace
�� #
(
��# $
$str
��$ '
,
��' (
$str
��) ,
)
��, -
;
��- .
}
�� 
return
�� 
name
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IAddTagsService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IAssociatedTagsService.cs
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
;= >
Task 
< 
IEnumerable 
< 
AssociatedModel (
>( )
>) *
GetAssociatedTags+ <
(< =
int= @
UserIdA G
)G H
;H I
} 
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ICommentService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IElasticSearchService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IHomePageService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ILikeService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ILoginService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IModeratorNotificationService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IMyPostService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\INotificationService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\IReportCommentService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Interface\ISpamService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\AddTagsService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\AssociatedTagsService.cs
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
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
AssociatedModel& 5
>5 6
>6 7
GetAssociatedTags8 I
(I J
intJ M
UserIdN T
)T U
{ 	
return 
await 
Task 
. 
Run  
<  !
IEnumerable! ,
<, -
AssociatedModel- <
>< =
>= >
(> ?
(? @
)@ A
=>B D
_dataE J
.J K
GetAssociatedTagsK \
(\ ]
UserId] c
)c d
)d e
;e f
} 	
} 
}   �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\CommentService.cs
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
}## �

�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\ElasticSearch.cs
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
}## �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\HomePageService.cs
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

filtertype	""z �
)
""� �
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
}++ �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\LikeService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\LoginService.cs
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
class 
LoginService 
: 
ILoginService  -
{ 
public 
readonly 

ILoginData "
_data# (
;( )
public 
LoginService 
( 

ILoginData &
value' ,
), -
{ 	
_data 
= 
value 
; 
} 	
public 
async 
Task 
< 
LoginRequestModel +
>+ ,
Authenticatetoken- >
(> ?
string? E
tokenF K
)K L
{ 	"
GoogleJsonWebSignature "
." #
Payload# *
pyload+ 1
=2 3
await4 9"
GoogleJsonWebSignature: P
.P Q
ValidateAsyncQ ^
(^ _
token_ d
)d e
;e f*
KnowledgeManagementDevEntities *
db+ -
=. /
new0 3*
KnowledgeManagementDevEntities4 R
(R S
)S T
;T U
int 
h 
= 
( 
from 
n 
in 
db !
.! "
Users" '
where 
pyload !
.! "
Email" '
==( *
n+ ,
., -
EmailId- 4
select 
n 
. 
UserId $
)$ %
.% &
FirstOrDefault& 4
(4 5
)5 6
;6 7
var!! 
	moderator!! 
=!! 
(!! 
from!!  
k!!! "
in!!# %
db!!& (
.!!( )
Users!!) .
where"" 
pyload"" !
.""! "
Email""" '
==""( *
k""+ ,
."", -
EmailId""- 4
select## 
k## 
.## 
isModerator## )
)##) *
.##* +
FirstOrDefault##+ 9
(##9 :
)##: ;
;##; <
var&& 
jwtToken&& 
=&& 

JwtManager&& &
.&&& '
GenerateToken&&' 4
(&&4 5
pyload&&5 ;
.&&; <
Email&&< A
,&&A B
h&&B C
)&&C D
;&&D E
LoginRequestModel'' 
lrmodel'' %
=''& '
new''( +
LoginRequestModel'', =
(''= >
)''> ?
{(( 
token)) 
=)) 
jwtToken))  
,))  !
isModerator** 
=** 
	moderator** '
,**' (
UserId++ 
=++ 
h++ 
},, 
;,, 
return-- 
lrmodel-- 
;-- 
}.. 	
public00 
void00 
LogOut00 
(00 
int00 
UserId00 %
)00% &
{11 	
_data22 
.22 
LogOut22 
(22 
UserId22 
)22  
;22  !
}33 	
}44 
}55 �	
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\ModeratorNotificationService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\MyPostService.cs
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
})) �	
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\NotificationService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\ReportcommentService.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Business Layer\Service\SpamService.cs
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
}## �#
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\AddTagsController.cs
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
}dd �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\AssociatedTagsController.cs
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
[(( 	
JwtAuthentication((	 
](( 
public)) 
async)) 
Task)) 
<)) 
IHttpActionResult)) +
>))+ ,
Get))- 0
())0 1
)))1 2
{** 	
string++ 
username++ 
=++ 
string++ $
.++$ %
Empty++% *
;++* +
string,, 
userId,, 
=,, 
string,, "
.,," #
Empty,,# (
;,,( )
var-- 
token-- 
=-- 
HttpContext-- #
.--# $
Current--$ +
.--+ ,
Request--, 3
.--3 4
Headers--4 ;
[--; <
$str--< K
]--K L
.--L M
Split--M R
(--R S
$char--S V
)--V W
[--W X
$num--X Y
]--Y Z
;--Z [&
JwtAuthenticationAttribute.. &
...& '
ValidateToken..' 4
(..4 5
token..5 :
,..: ;
out..< ?
username..@ H
,..H I
out..J M
userId..N T
)..T U
;..U V
int// 
userid// 
=// 
Int32// 
.// 
Parse// $
(//$ %
userId//% +
)//+ ,
;//, -
await00 
_at00 
.00 
GetAssociatedTags00 '
(00' (
userid00( .
)00. /
;00/ 0
return11 
Ok11 
(11 
)11 
;11 
}33 	
}44 
}55 �/
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\CommentController.cs
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
}ss �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\HomePageController.cs
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
}== �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\ReportCommentController.cs
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
}44 �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\ElasticSearchController.cs
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
}55 �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\LikeController.cs
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
}77 �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\LoginController.cs
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
}KK �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\ModeratorNotificationController.cs
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
}66 �G
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\MyPostController.cs
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
�� 	
[
�� 	
JwtAuthentication
��	 
]
�� 
public
�� 
IHttpActionResult
��  
Delete
��! '
(
��' (
int
��( +
id
��, .
)
��. /
{
�� 	
try
�� 
{
�� 
logger
�� 
.
�� 
Info
�� 
(
�� 
$str
�� J
)
��J K
;
��K L
_myPost
�� 
.
�� 
DeleteRecentPost
�� (
(
��( )
id
��) +
)
��+ ,
;
��, -
return
�� 
Ok
�� 
(
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
logger
�� 
.
�� 
Error
�� 
(
�� 
$str
�� 8
+
��9 :
ex
��; =
)
��= >
;
��> ?
return
�� 

BadRequest
�� !
(
��! "
$str
��" 0
+
��1 2
ex
��3 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\NotificationController.cs
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
}88 �$
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Controllers\SpamController.cs
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
}jj �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\AddChallengeOnUnauthorizedResult.cs
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
	Challenge	| �
.
� �
Scheme
� �
)
� �
)
� �
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
})) �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\AuthenticationFailureResult.cs
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
}++ �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\HttpAuthenticationChallengeContextExtensions.cs
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
}   �B
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Filter\JwtAuthenticationAttribute.cs
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
}~~ �
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\AddPostRequestModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\AssociatedModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\AssociatedTagModel.cs
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
} �
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
}   �
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\GetPostRequestModel.cs
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
}## �
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
} �

�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\ElasticSearchModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\LoginRequestModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\LogOutRequestModel.cs
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
} �
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
}77 �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\NotificationModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\PageParameterModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\PostRequestModel.cs
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
}:: �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\ReportCommentModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\ReportRequestModel.cs
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
}%% �
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
} �
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
} �

�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Models\UserDetailsModel.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Properties\AssemblyInfo.cs
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
]##) *�
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IAddTagsData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IAssociatedTagsData.cs
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
;= >
IEnumerable	 
< 
AssociatedModel $
>$ %
GetAssociatedTags& 7
(7 8
int8 ;
UserId< B
)B C
;C D
} 
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ICommentData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IElasticSearchData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IHomePageData.cs
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
;	 �
} 
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ILikeData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ILoginData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IModeratorNotificationData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IMyPostData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\INotificationData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\IReportcommentData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Interface\ISpamData.cs
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
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\AddTagsData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
AddTagsData

 
:

 
IAddTagsData

 +
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
public 
Boolean 
AddTags 
( 
	TagsModel (
tags) -
)- .
{ 	
int 
w 
= 
$num 
; 
w 
= 
( 
from 
x 
in 
db 
. 
Tags "
where 
x 
. 
TagName  
==! #
tags$ (
.( )
TagName) 0
select 
x 
. 
TagId 
)  
.  !
FirstOrDefault! /
(/ 0
)0 1
;1 2
if 
( 
w 
== 
$num 
) 
{ 
Tag 
obj 
= 
new 
Tag !
{ 
TagName 
= 
tags "
." #
TagName# *
} 
; 
db 
. 
Tags 
. 
Add 
( 
obj 
)  
;  !
db 
. 
SaveChanges 
( 
)  
;  !
tags   
.   
TagId   
=   
obj    
.    !
TagId  ! &
;  & '
tags!! 
.!! 
TagName!! 
=!! 
obj!! "
.!!" #
TagName!!# *
;!!* +
return"" 
true"" 
;"" 
}## 
else$$ 
{%% 
return&& 
false&& 
;&& 
}'' 
}** 	
public,, 
IEnumerable,, 
<,, 
	TagsModel,, $
>,,$ %
GetTags,,& -
(,,- .
int,,. 1
UserId,,2 8
),,8 9
{-- 	
var// 
result// 
=// 
(// 
from// 
c//  
in//! #
db//$ &
.//& '
Tags//' +
select00  
new00! $
	TagsModel00% .
{11 
TagId22 #
=22$ %
c22& '
.22' (
TagId22( -
,22- .
TagName33 %
=33& '
c33( )
.33) *
TagName33* 1
}44 
)66 
.66 
ToList66 "
(66" #
)66# $
;66$ %
return:: 
result:: 
;:: 
};; 	
}>> 
}?? �"
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\AssociatedTagsData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
AssociatedTagsData

 #
:

$ %
IAssociatedTagsData

& 9
{ 
readonly	 *
KnowledgeManagementDevEntities 0
db1 3
=4 5
new6 9*
KnowledgeManagementDevEntities: X
(X Y
)Y Z
;Z [
public 
void 
AddAssociatedTags %
(% &
AssociatedTagModel& 8

associated9 C
)C D
{ 	
var 
result 
= 
( 
from 
at !
in" $
db% '
.' (
AssociatedTags1( 7
select  
at! #
.# $
GroupId$ +
)+ ,
., -
LastOrDefault- :
(: ;
); <
;< =
result 
++ 
; 
AssociatedTag1 
associatedTag1 )
=* +
new, /
AssociatedTag10 >
(> ?
)? @
;@ A
{ 
foreach 
( 
int 
x 
in !

associated" ,
., -
TagId- 2
)2 3
{ 
associatedTag1 "
." #
TagId# (
=) *
x+ ,
;, -
associatedTag1 "
." #
GroupId# *
=+ ,
result- 3
;3 4
db   
.   
AssociatedTags1   &
.  & '
Add  ' *
(  * +
associatedTag1  + 9
)  9 :
;  : ;
db!! 
.!! 
SaveChanges!! "
(!!" #
)!!# $
;!!$ %
}## 
}%% 
})) 	
public++ 
IEnumerable++ 
<++ 
AssociatedModel++ *
>++* +
GetAssociatedTags++, =
(++= >
int++> A
UserId++B H
)++H I
{,, 	
var.. 
record.. 
=.. 
(.. 
from.. 
j..  
in..! #
db..$ &
...& '
AssociatedTags1..' 6
select//  
j//! "
.//" #
GroupId//# *
)//* +
.//+ ,
ToList//, 2
(//2 3
)//3 4
;//4 5
List00 
<00 
AssociatedModel00  
>00  !
associateds00" -
=00. /
new000 3
List004 8
<008 9
AssociatedModel009 H
>00H I
(00I J
)00J K
;00K L
foreach11 
(11 
var11 
t11 
in11 
record11 $
)11$ %
{22 
var33 
result33 
=33 
(33 
from33 "
y33# $
in33% '
db33( *
.33* +
AssociatedTags133+ :
where44 #
y44$ %
.44% &
GroupId44& -
==44. 0
t441 2
group55 #
y55$ %
by55& (
y55) *
.55* +
GroupId55+ 2
into553 7
g558 9
let66 !
query66" '
=66( )
g66* +
.66+ ,
FirstOrDefault66, :
(66: ;
)66; <
let77 !
GroupId77" )
=77* +
query77, 1
.771 2
GroupId772 9
select88 $
new88% (
AssociatedModel88) 8
{99 
GroupId::" )
=::* +
GroupId::, 3
,::3 4
TagId;;" '
=;;( )
g;;* +
.;;+ ,
Select;;, 2
(;;2 3
e;;3 4
=>;;5 7
e;;8 9
.;;9 :
TagId;;: ?
);;? @
.;;@ A
ToList;;A G
(;;G H
);;H I
}<< 
)<<  
.<<  !
ToList<<! '
(<<' (
)<<( )
;<<) *
associateds== 
.== 
AddRange== $
(==$ %
result==% +
)==+ ,
;==, -
}>> 
return?? 
associateds?? 
;?? 
}@@ 	
}AA 
}BB �0
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\CommentData.cs
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
CommentData 
: 
ICommentData +
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
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
{ 	
var 
result 
= 
( 
from 
c  
in! #
db$ &
.& '
Comments' /
join 
u  
in! #
db$ &
.& '
Users' ,
on- /
c0 1
.1 2
UserId2 8
equals9 ?
u@ A
.A B
UserIdB H
where 
c  !
.! "
PostId" (
==) +
id, .
&&/ 1
c2 3
.3 4
	IsDeleted4 =
==> @
falseA F
select  
new! $
CommentModel% 1
{ 
PostId $
=% &
c' (
.( )
PostId) /
,/ 0
Content %
=& '
c( )
.) *
Content* 1
,1 2
UserId #
=$ %
c& '
.' (
UserId( .
,. /
Name   "
=  # $
u  % &
.  & '
	FirstName  ' 0
,  0 1
CommentDate!! )
=!!* +
c!!, -
.!!- .
CommentDate!!. 9
}"" 
)"" 
."" 
ToList"" #
(""# $
)""$ %
;""% &
foreach## 
(## 
CommentModel## !
p##" #
in##$ &
result##' -
)##- .
{$$ 
p%% 
.%% 
Count%% 
=%% 
(%% 
from%% 
posts%%  %
in%%& (
db%%) +
.%%+ ,
Comments%%, 4
where&&  
posts&&! &
.&&& '
PostId&&' -
==&&. 0
p&&1 2
.&&2 3
PostId&&3 9
select'' !
posts''" '
.''' (
UserId''( .
)''. /
.''/ 0
Count''0 5
(''5 6
)''6 7
;''7 8
})) 
return** 
result** 
;** 
}++ 	
public66 
void66 

AddComment66 
(66 
CommentModel66 +
comment66, 3
)663 4
{77 	
Comment88 
obj88 
=88 
new88 
Comment88 %
{99 
UserId:: 
=:: 
comment::  
.::  !
UserId::! '
,::' (
Content;; 
=;; 
comment;; !
.;;! "
Content;;" )
,;;) *
CommentDate<< 
=<< 
DateTime<< &
.<<& '
Now<<' *
,<<* +
PostId== 
=== 
comment==  
.==  !
PostId==! '
,==' (
	IsDeleted>> 
=>> 
false>> !
}?? 
;?? 
db@@ 
.@@ 
Comments@@ 
.@@ 
Add@@ 
(@@ 
obj@@ 
)@@  
;@@  !
NotificationCC 
obj1CC 
=CC 
newCC  #
NotificationCC$ 0
{DD 
NotificationTypeEE  
=EE! "
$numEE# $
,EE$ %
IsReadFF 
=FF 
$numFF 
,FF 
PostIdGG 
=GG 
commentGG  
.GG  !
PostIdGG! '
,GG' (
UserIdHH 
=HH 
commentHH  
.HH  !
UserIdHH! '
}II 
;II 
dbJJ 
.JJ 
NotificationsJJ 
.JJ 
AddJJ  
(JJ  !
obj1JJ! %
)JJ% &
;JJ& '
dbKK 
.KK 
SaveChangesKK 
(KK 
)KK 
;KK 
}MM 	
publicOO 
boolOO 
EditMyCommentOO !
(OO! "
CommentModelOO" .
commentOO/ 6
)OO6 7
{PP 	
varQQ 
commenteditQQ 
=QQ 
dbQQ  
.QQ  !
CommentsQQ! )
.QQ) *
WhereQQ* /
(QQ/ 0
sQQ0 1
=>QQ2 4
sQQ5 6
.QQ6 7
PostIdQQ7 =
==QQ> @
commentQQA H
.QQH I
PostIdQQI O
)QQO P
.QQP Q
FirstOrDefaultQQQ _
(QQ_ `
)QQ` a
;QQa b
ifRR 
(RR 
commenteditRR 
.RR 
UserIdRR "
!=RR# %
commentRR& -
.RR- .
UserIdRR. 4
)RR4 5
{SS 
returnTT 
falseTT 
;TT 
}UU 
commenteditWW 
.WW 
ContentWW 
=WW  !
commentWW" )
.WW) *
ContentWW* 1
;WW1 2
commenteditXX 
.XX 
CommentDateXX #
=XX$ %
DateTimeXX& .
.XX. /
NowXX/ 2
;XX2 3
dbYY 
.YY 
EntryYY 
(YY 
commenteditYY  
)YY  !
.YY! "
StateYY" '
=YY( )
SystemYY* 0
.YY0 1
DataYY1 5
.YY5 6
EntityYY6 <
.YY< =
EntityStateYY= H
.YYH I
ModifiedYYI Q
;YYQ R
dbZZ 
.ZZ 
SaveChangesZZ 
(ZZ 
)ZZ 
;ZZ 
return[[ 
true[[ 
;[[ 
}\\ 	
}^^ 
}__ �e
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\ElasticSearchData.cs
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
ElasticSearchData "
:# $
IElasticSearchData% 7
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
private 
readonly 
string 
ElasticSearchUrl  0
=1 2
System3 9
.9 :
Configuration: G
.G H 
ConfigurationManagerH \
.\ ]
AppSettings] h
[h i
$stri }
]} ~
;~ 
private 
readonly 
string 
	IndexName  )
=* +
$str, A
;A B
private 
readonly 
string 
TypePost  (
=) *
$str+ 4
;4 5
public 
IElasticClient 
GetElasticClient .
(. /
)/ 0
{ 	
var 
uri 
= 
new 
Uri 
( 
ElasticSearchUrl .
). /
;/ 0
IElasticClient 
elasticClient (
=) *
new+ .
ElasticClient/ <
(< =
uri= @
)@ A
;A B
return 
elasticClient  
;  !
} 	
public&& 
void&& 

InsertData&& 
(&& 
string&& %
	indexName&&& /
,&&/ 0
string&&1 7
typeName&&8 @
,&&@ A
ElasticSearchModel&&B T
post&&U Y
)&&Y Z
{'' 	
GetElasticClient(( 
((( 
)(( 
.(( 
Index(( #
(((# $
post(($ (
,((( )
p((* +
=>((, .
p((/ 0
.((0 1
Index((1 6
(((6 7
	indexName((7 @
)((@ A
.((A B
Type((B F
(((F G
typeName((G O
)((O P
.((P Q
Id((Q S
(((S T
post((T X
.((X Y
PostId((Y _
)((_ `
)((` a
;((a b
})) 	
public.. 
void.. 

GetSqlData.. 
(.. 
)..  
{// 	
var11 
	inter_res11 
=11 
from11  
t11! "
in11# %
db11& (
.11( )
Tags11) -
join22  
pt22! #
in22$ &
db22' )
.22) *
PostTags22* 2
on223 5
t226 7
.227 8
TagId228 =
equals22> D
pt22E G
.22G H
TagId22H M
join33  
ps33! #
in33$ &
db33' )
.33) *
Posts33* /
on330 2
pt333 5
.335 6
PostId336 <
equals33= C
ps33D F
.33F G
PostId33G M
select44 "
new44# &
{55 
ps66  "
.66" #
PostId66# )
,66) *
ps77  "
.77" #
Title77# (
,77( )
t88  !
.88! "
TagName88" )
,88) *
}99 
;99 
var;; 
res;; 
=;; 
(;; 
from;; 
ir;; 
in;; !
	inter_res;;" +
group<< 
ir<< 
by<<  "
ir<<# %
.<<% &
PostId<<& ,
into<<- 1
g<<2 3
select== 
new== !
ElasticSearchModel==" 4
{>> 
PostId?? !
=??" #
g??$ %
.??% &
Key??& )
,??) *
Title@@  
=@@! "
g@@# $
.@@$ %
Select@@% +
(@@+ ,
e@@, -
=>@@. 0
e@@1 2
.@@2 3
Title@@3 8
)@@8 9
.@@9 :
FirstOrDefault@@: H
(@@H I
)@@I J
,@@J K
TagsAA 
=AA  !
gAA" #
.AA# $
SelectAA$ *
(AA* +
eAA+ ,
=>AA- /
eAA0 1
.AA1 2
TagNameAA2 9
)AA9 :
.AA: ;
ToListAA; A
(AAA B
)AAB C
}BB 
)BB 
.BB 
ToListBB  
(BB  !
)BB! "
;BB" #
foreachDD 
(DD 
varDD 
xDD 
inDD 
resDD !
)DD! "
{EE 
GetElasticClientFF  
(FF  !
)FF! "
.FF" #
IndexFF# (
(FF( )
xFF) *
,FF* +
pFF, -
=>FF. 0
pFF1 2
.FF2 3
IndexFF3 8
(FF8 9
	IndexNameFF9 B
)FFB C
.FFC D
TypeFFD H
(FFH I
TypePostFFI Q
)FFQ R
.FFR S
IdFFS U
(FFU V
xFFV W
.FFW X
PostIdFFX ^
)FF^ _
)FF_ `
;FF` a
}GG 
}HH 	
privateOO 
ListOO 
<OO 
ElasticSearchModelOO '
>OO' (
GetAllRecordsOO) 6
(OO6 7
stringOO7 =
queryOO> C
,OOC D
ListOOE I
<OOI J
stringOOJ P
>OOP Q
tagsOOR V
)OOV W
{PP 	
stringQQ 
wildCardQueryQQ  
=QQ! "
$strQQ# &
+QQ' (
queryQQ) .
+QQ/ 0
$strQQ1 4
;QQ4 5
varRR 
resRR 
=RR 
GetElasticClientRR &
(RR& '
)RR' (
.RR( )
SearchRR) /
<RR/ 0
ElasticSearchModelRR0 B
>RRB C
(RRC D
sRRD E
=>RRF H
sRRI J
.RRJ K
IndexRRK P
(RRP Q
	IndexNameRRQ Z
)RRZ [
.SS 
TypeSS 
(SS 
TypePostSS 
)SS 
.SS 
FromSS  
(SS  !
$numSS! "
)SS" #
.SS# $
SizeSS$ (
(SS( )
$numSS) +
)SS+ ,
.TT 
QueryTT 
(TT 
qTT 
=>TT 
qTT 
.TT 
DisMaxTT  
(TT  !
cTT! "
=>TT# %
cTT& '
.UU 
QueriesUU 
(UU 
qqVV 
=>VV 
qqVV 
.VV 
WildcardVV !
(VV! "
wVV" #
=>VV$ &
wVV' (
.VV( )
TitleVV) .
,VV. /
wildCardQueryVV0 =
)VV= >
,VV> ?
qqWW 
=>WW 
qqWW 
.WW 
TermsWW 
(WW 
mWW  
=>WW! #
mWW$ %
.WW% &
FieldWW& +
(WW+ ,
fWW, -
=>WW. 0
fWW1 2
.WW2 3
TagsWW3 7
)WW7 8
.WW8 9
TermsWW9 >
(WW> ?
tagsWW? C
)WWC D
)WWD E
)XX 
)XX 
)XX 
)XX 
;XX 
varZZ 
recordsZZ 
=ZZ 
newZZ 
ListZZ "
<ZZ" #
ElasticSearchModelZZ# 5
>ZZ5 6
(ZZ6 7
)ZZ7 8
;ZZ8 9
foreach\\ 
(\\ 
var\\ 
item\\ 
in\\  
res\\! $
.\\$ %
Hits\\% )
)\\) *
{]] 
records^^ 
.^^ 
Add^^ 
(^^ 
item^^  
.^^  !
Source^^! '
)^^' (
;^^( )
}__ 
return`` 
records`` 
;`` 
}aa 	
privatedd 
Listdd 
<dd 
stringdd 
>dd (
GetAssociatedTagTillTwoLeveldd 9
(dd9 :
stringdd: @
tagNameddA H
)ddH I
{ee 	
returngg 
(gg 
fromgg 
associatedObj1gg '
ingg( *
dbgg+ -
.gg- .
AssociatedTags1gg. =
joinhh 
associatedObj2hh '
inhh( *
dbhh+ -
.hh- .
AssociatedTags1hh. =
onhh> @
associatedObj1hhA O
.hhO P
GroupIdhhP W
equalshhX ^
associatedObj2hh_ m
.hhm n
GroupIdhhn u
joinii 
tagii 
inii 
dbii  "
.ii" #
Tagsii# '
onii( *
associatedObj2ii+ 9
.ii9 :
TagIdii: ?
equalsii@ F
tagiiG J
.iiJ K
TagIdiiK P
joinjj 
	tagActualjj "
injj# %
dbjj& (
.jj( )
Tagsjj) -
onjj. 0
associatedObj1jj1 ?
.jj? @
TagIdjj@ E
equalsjjF L
	tagActualjjM V
.jjV W
TagIdjjW \
wherekk 
	tagActualkk #
.kk# $
TagNamekk$ +
==kk, .
tagNamekk/ 6
selectll 
tagll 
.ll 
TagNamell &
.ll& '
ToLowerll' .
(ll. /
)ll/ 0
)mm 
.mm 
Distinctmm "
(mm" #
)mm# $
.mm$ %
ToListmm% +
(mm+ ,
)mm, -
;mm- .
}nn 	
publicrr 
Listrr 
<rr 
PostRequestModelrr $
>rr$ %
GetSearchResultrr& 5
(rr5 6
stringrr6 <
queryrr= B
)rrB C
{ss 	
varuu 
resultsuu 
=uu 
GetAllRecordsuu '
(uu' (
queryuu( -
,uu- .(
GetAssociatedTagTillTwoLeveluu/ K
(uuK L
queryuuL Q
)uuQ R
)uuR S
;uuS T
varvv 
postIdsvv 
=vv 
resultsvv !
.vv! "
Selectvv" (
(vv( )
svv) *
=>vv+ -
svv. /
.vv/ 0
PostIdvv0 6
)vv6 7
.vv7 8
ToListvv8 >
(vv> ?
)vv? @
;vv@ A
varww 
recordww 
=ww 
(ww 
fromww 
postObjww &
inww' )
dbww* ,
.ww, -
Postsww- 2
joinxx 
userObjxx &
inxx' )
dbxx* ,
.xx, -
Usersxx- 2
onxx3 5
postObjxx6 =
.xx= >
UserIdxx> D
equalsxxE K
userObjxxL S
.xxS T
UserIdxxT Z
whereyy 
postIdsyy  '
.yy' (
Containsyy( 0
(yy0 1
postObjyy1 8
.yy8 9
PostIdyy9 ?
)yy? @
&&yyA C
postObjyyD K
.yyK L
	IsDeletedyyL U
selectzz  
newzz! $
PostRequestModelzz% 5
{{{ 
PostId|| $
=||% &
postObj||' .
.||. /
PostId||/ 5
,||5 6
Title}} #
=}}$ %
postObj}}& -
.}}- .
Title}}. 3
,}}3 4
Description~~ )
=~~* +
postObj~~, 3
.~~3 4
Description~~4 ?
,~~? @
PostDate &
=' (
postObj) 0
.0 1
PostDate1 9
,9 :
Name
�� "
=
��# $
userObj
��% ,
.
��, -
	FirstName
��- 6
,
��6 7
Image
�� #
=
��$ %
postObj
��& -
.
��- .
	UserImage
��. 7
,
��7 8
TagName
�� %
=
��& '
db
��( *
.
��* +
PostTags
��+ 3
.
��3 4
Where
��4 9
(
��9 :
w
��: ;
=>
��< >
w
��? @
.
��@ A
PostId
��A G
==
��H J
postObj
��K R
.
��R S
PostId
��S Y
)
��Y Z
.
�� 
Select
�� %
(
��% &
s
��& '
=>
��( *
s
��+ ,
.
��, -
Tag
��- 0
.
��0 1
TagName
��1 8
)
��8 9
.
��9 :
ToList
��: @
(
��@ A
)
��A B
,
��B C
Likes
�� #
=
��$ %
db
��& (
.
��( )
Likes
��) .
.
��. /
Where
��/ 4
(
��4 5
w
��5 6
=>
��7 9
w
��: ;
.
��; <
PostId
��< B
==
��C E
postObj
��F M
.
��M N
PostId
��N T
)
��T U
.
��U V
Count
��V [
(
��[ \
)
��\ ]
}
�� 
)
�� 
.
�� 
ToList
�� #
(
��# $
)
��$ %
;
��% &
return
�� 
record
�� 
;
�� 
}
�� 	
}
�� 
}
�� �L
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\HomePageData.cs
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
readonly *
KnowledgeManagementDevEntities 7
db8 :
=; <
new= @*
KnowledgeManagementDevEntitiesA _
(_ `
)` a
;a b
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

filtertype	z �
)
� �
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
UserId	} �
==
� �
UserId
� �
)
� �
)
� �
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
return77
 '
GetResultFilteredAndSorting77 -
(77- .
UserId77. 4
,774 5

filtertype776 @
,77@ A
sortingtype77B M
,77M N
result77O U
)77U V
;77V W
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
sortingType	;;y �
,
;;� �
List
;;� �
<
;;� �
PostRequestModel
;;� �
>
;;� �
result
;;� �
)
;;� �
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
}jj �.
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\LikeData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
LikeData

 
:

 
	ILikeData

 %
{ 
readonly *
KnowledgeManagementDevEntities /
db0 2
=3 4
new5 8*
KnowledgeManagementDevEntities9 W
(W X
)X Y
;Y Z
public 
void 
LikePost 
( 
LikedPostModel +
value, 1
)1 2
{ 	
var 
entry 
= 
db 
. 
Likes  
.  !
Where! &
(& '
x' (
=>) +
x, -
.- .
UserId. 4
==5 7
value8 =
.= >
UserId> D
&&E G
xH I
.I J
PostIdJ P
==Q S
valueT Y
.Y Z
PostIdZ `
)` a
.a b
FirstOrDefaultb p
(p q
)q r
;r s
if 
( 
entry 
!= 
null 
) 
{ 
db 
. 
Likes 
. 
Remove 
(  
entry  %
)% &
;& '
db 
. 
SaveChanges 
( 
)  
;  !
Notification 
obj1 !
=" #
new$ '
Notification( 4
(4 5
)5 6
;6 7
obj1 
. 
NotificationType %
=& '
$num( )
;) *
obj1 
. 
IsRead 
= 
$num 
;  
obj1 
. 
PostId 
= 
value #
.# $
PostId$ *
;* +
obj1 
. 
UserId 
= 
value #
.# $
UserId$ *
;* +
db 
. 
Notifications  
.  !
Add! $
($ %
obj1% )
)) *
;* +
db 
. 
SaveChanges 
( 
)  
;  !
value 
. 

countLikes  
=! "
(# $
from$ (
l) *
in+ -
db. 0
.0 1
Likes1 6
where$ )
l* +
.+ ,
PostId, 2
==3 5
value6 ;
.; <
PostId< B
select$ *
l+ ,
., -
UserId- 3
)   
.   
Count   
(   
)   
;   
}"" 
else## 
{$$ 
Like%% 
	postLiked%% 
=%%  
new%%! $
Like%%% )
(%%) *
)%%* +
;%%+ ,
	postLiked&& 
.&& 
UserId&&  
=&&! "
value&&# (
.&&( )
UserId&&) /
;&&/ 0
	postLiked'' 
.'' 
PostId''  
=''! "
value''# (
.''( )
PostId'') /
;''/ 0
db(( 
.(( 
Likes(( 
.(( 
Add(( 
((( 
	postLiked(( &
)((& '
;((' (
db)) 
.)) 
SaveChanges)) 
()) 
)))  
;))  !
Notification++ 
obj1++ !
=++" #
new++$ '
Notification++( 4
(++4 5
)++5 6
;++6 7
obj1,, 
.,, 
NotificationType,, %
=,,& '
$num,,( )
;,,) *
obj1-- 
.-- 
IsRead-- 
=-- 
$num-- 
;--  
obj1.. 
... 
PostId.. 
=.. 
value.. #
...# $
PostId..$ *
;..* +
obj1// 
.// 
UserId// 
=// 
value// #
.//# $
UserId//$ *
;//* +
db00 
.00 
Notifications00  
.00  !
Add00! $
(00$ %
obj100% )
)00) *
;00* +
db11 
.11 
SaveChanges11 
(11 
)11  
;11  !
value22 
.22 

countLikes22  
=22! "
(22" #
from22# '
l22( )
in22* ,
db22- /
.22/ 0
Likes220 5
where331 6
l337 8
.338 9
PostId339 ?
==33@ B
value33C H
.33H I
PostId33I O
select441 7
l448 9
.449 :
UserId44: @
)55 
.55 
Count55 
(55 
)55 
;55 
var77 
data77 
=77 
db77 
.77 
Likes77 "
.77" #
FirstOrDefault77# 1
(771 2
l772 3
=>774 6
l777 8
.778 9
UserId779 ?
==77@ B
value77C H
.77H I
UserId77I O
&&77P R
l77S T
.77T U
PostId77U [
==77\ ^
value77_ d
.77d e
PostId77e k
)77k l
;77l m
if88 
(88 
data88 
==88 
null88  
)88  !
value99 
.99 
IsLiked99 !
=99" #
$num99$ %
;99% &
else:: 
value;; 
.;; 
IsLiked;; !
=;;" #
$num;;$ %
;;;% &
}>> 
}AA 	
}DD 
}EE �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\LoginData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
	LoginData

 
:

 

ILoginData

 '
{ 
private 
readonly *
KnowledgeManagementDevEntities 7
db8 :
=; <
new= @*
KnowledgeManagementDevEntitiesA _
(_ `
)` a
;a b
public 
void 
LogOut 
( 
int 
UserId %
)% &
{ 	
var 
userdetails 
= 
db  
.  !
Users! &
.& '
Where' ,
(, -
w- .
=>/ 1
w2 3
.3 4
UserId4 :
==; =
UserId> D
)D E
.E F
FirstOrDefaultF T
(T U
)U V
;V W
userdetails 
. 
Token 
= 
null  $
;$ %
db 
. 
Entry 
( 
userdetails  
)  !
.! "
State" '
=( )
System* 0
.0 1
Data1 5
.5 6
Entity6 <
.< =
EntityState= H
.H I
ModifiedI Q
;Q R
db 
. 
SaveChanges 
( 
) 
; 
} 	
} 
} �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\ModeratorNotificationData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 %
ModeratorNotificationData

 *
:

+ ,&
IModeratorNotificationData

- G
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
public 
List 
< 
NotificationModel %
>% &$
GetModeratorNotification' ?
(? @
int@ C
UserIdD J
)J K
{ 	
var 
user 
= 
db 
. 
Users 
.  
FirstOrDefault  .
(. /
u/ 0
=>1 3
u4 5
.5 6
UserId6 <
=== ?
UserId@ F
&&G I
uJ K
.K L
isModeratorL W
==X Z
$num[ \
)\ ]
;] ^
var 
posts 
= 
( 
from 
p 
in  "
db# %
.% &
Posts& +
where 
p  
.  !
UserId! '
==( *
user+ /
./ 0
UserId0 6
select 
p  !
)! "
." #
ToList# )
() *
)* +
;+ ,
List 
< 
NotificationModel "
>" #
notifs$ *
=+ ,
new- 0
List1 5
<5 6
NotificationModel6 G
>G H
(H I
)I J
;J K
foreach 
( 
var 
p 
in 
posts #
)# $
{ 
var 
notifications !
=" #
($ %
from% )
n* +
in, .
db/ 1
.1 2
Notifications2 ?
join  % )
u  * +
in  , .
db  / 1
.  1 2
Users  2 7
on  8 :
n  ; <
.  < =
UserId  = C
equals  D J
u  K L
.  L M
UserId  M S
where!!% *
n!!+ ,
.!!, -
PostId!!- 3
==!!4 6
p!!7 8
.!!8 9
PostId!!9 ?
select""% +
new"", /
NotificationModel""0 A
{##% &
Type$$) -
=$$. /
n$$0 1
.$$1 2
NotificationType$$2 B
,$$B C
PostName%%) 1
=%%2 3
p%%4 5
.%%5 6
Title%%6 ;
,%%; <
DoneBy&&) /
=&&0 1
u&&2 3
.&&3 4
	FirstName&&4 =
}((% &
)((& '
.((' (
ToList((( .
(((. /
)((/ 0
;((0 1
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
}// 	
}00 
}11 �e
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\MyPostData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{ 
public 

class 

MyPostData 
: 
IMyPostData )
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
private	 
ElasticSearchData "
es# %
;% &
public 
IEnumerable 
< 
MyPostModel &
>& '
MySeeRecentPost( 7
(7 8
int8 ;
UserId< B
)B C
{ 	
var 
username 
= 
( 
from  
h! "
in# %
db& (
.( )
Users) .
where !
UserId" (
==) +
h, -
.- .
UserId. 4
select   "
h  # $
.  $ %
	FirstName  % .
)  . /
.  / 0
FirstOrDefault  0 >
(  > ?
)  ? @
;  @ A
var"" 
result"" 
="" 
("" 
from"" 
l""  
in""! #
db""$ &
.""& '
Posts""' ,
join## 
p##  
in##! #
db##$ &
.##& '
PostTags##' /
on##0 2
l##3 4
.##4 5
PostId##5 ;
equals##< B
p##C D
.##D E
PostId##E K
join$$ 
ta$$ !
in$$" $
db$$% '
.$$' (
Tags$$( ,
on$$- /
p$$0 1
.$$1 2
TagId$$2 7
equals$$8 >
ta$$? A
.$$A B
TagId$$B G
where%% 
l%%  !
.%%! "
UserId%%" (
==%%) +
UserId%%, 2
&&%%3 5
l%%6 7
.%%7 8
	IsDeleted%%8 A
orderby&& !
l&&" #
.&&# $
PostDate&&$ ,

descending&&- 7
group'' 
p''  !
by''" $
p''% &
.''& '
PostId''' -
into''. 2
g''3 4
let(( 
query(( #
=(($ %
g((& '
.((' (
FirstOrDefault((( 6
(((6 7
)((7 8
let)) 
PostId)) $
=))% &
query))' ,
.)), -
Post))- 1
let** 
Title** #
=**$ %
query**& +
.**+ ,
Post**, 0
let++ 
Description++ )
=++* +
query++, 1
.++1 2
Post++2 6
let,, 
PostDate,, &
=,,' (
query,,) .
.,,. /
Post,,/ 3
select22  
new22! $
MyPostModel22% 0
{33 
	FirstName44 '
=44( )
username44* 2
,442 3
PostId55 $
=55% &
PostId55' -
.55- .
PostId55. 4
,554 5
Title66 #
=66$ %
Title66& +
.66+ ,
Title66, 1
,661 2
Description77 )
=77* +
Description77, 7
.777 8
Description778 C
,77C D
TagId88 #
=88$ %
g88& '
.88' (
Select88( .
(88. /
e88/ 0
=>881 3
e884 5
.885 6
TagId886 ;
)88; <
.88< =
ToList88= C
(88C D
)88D E
,88E F
TagName99 %
=99& '
g99( )
.99) *
Select99* 0
(990 1
e991 2
=>993 5
e996 7
.997 8
Tag998 ;
.99; <
TagName99< C
)99C D
.99D E
ToList99E K
(99K L
)99L M
,99M N
PostDate:: &
=::' (
PostDate::) 1
.::1 2
PostDate::2 :
};; 
);; 
.;; 
ToList;; #
(;;# $
);;$ %
;;;% &
foreach== 
(== 
var== 
x== 
in== 
result== $
)==$ %
{>> 
x?? 
.?? 
Image?? 
=?? 
(?? 
from?? 
l??  !
in??" $
db??% '
.??' (
Posts??( -
where@@  
l@@! "
.@@" #
PostId@@# )
==@@* ,
x@@- .
.@@. /
PostId@@/ 5
selectAA !
lAA" #
.AA# $
	UserImageAA$ -
)AA- .
.AA. /
FirstOrDefaultAA/ =
(AA= >
)AA> ?
;AA? @
xEE 
.EE 
LikesEE 
=EE 
(EE 
fromEE 
kEE  !
inEE" $
dbEE% '
.EE' (
LikesEE( -
whereFF  
kFF! "
.FF" #
PostIdFF# )
==FF* ,
xFF- .
.FF. /
PostIdFF/ 5
selectGG !
kGG" #
.GG# $
UserIdGG$ *
)GG* +
.GG+ ,
CountGG, 1
(GG1 2
)GG2 3
;GG3 4
xKK 
.KK 
CountKK 
=KK 
(KK 
fromKK 
mKK  !
inKK" $
dbKK% '
.KK' (
CommentsKK( 0
whereLL  
mLL! "
.LL" #
PostIdLL# )
==LL* ,
xLL- .
.LL. /
PostIdLL/ 5
selectMM !
mMM" #
.MM# $
PostIdMM$ *
)MM* +
.MM+ ,
CountMM, 1
(MM1 2
)MM2 3
;MM3 4
varOO 
dataOO 
=OO 
dbOO 
.OO 
LikesOO #
.OO# $
FirstOrDefaultOO$ 2
(OO2 3
lOO3 4
=>OO5 7
lOO8 9
.OO9 :
UserIdOO: @
==OOA C
UserIdOOD J
&&OOK M
lOON O
.OOO P
PostIdOOP V
==OOW Y
xOOZ [
.OO[ \
PostIdOO\ b
)OOb c
;OOc d
ifPP 
(PP 
dataPP 
==PP 
nullPP  
)PP  !
xQQ 
.QQ 
IsLikedQQ 
=QQ 
$numQQ  !
;QQ! "
elseRR 
xSS 
.SS 
IsLikedSS 
=SS 
$numSS  !
;SS! "
}TT 
returnUU 
resultUU 
;UU 
}VV 	
publicYY 
boolYY 

EditMyPostYY 
(YY 
EditPostModelYY ,
editPostYY- 5
)YY5 6
{ZZ 	
var\\ 
postedit\\ 
=\\ 
db\\ 
.\\ 
Posts\\ #
.\\# $
Where\\$ )
(\\) *
s\\* +
=>\\, .
s\\/ 0
.\\0 1
PostId\\1 7
==\\8 :
editPost\\; C
.\\C D
PostId\\D J
)\\J K
.\\K L
FirstOrDefault\\L Z
(\\Z [
)\\[ \
;\\\ ]
if]] 
(]] 
postedit]] 
.]] 
UserId]] 
!=]]  "
editPost]]# +
.]]+ ,
UserId]], 2
)]]2 3
{^^ 
return__ 
false__ 
;__ 
}`` 
posteditcc 
.cc 
Descriptioncc  
=cc! "
editPostcc# +
.cc+ ,
Descriptioncc, 7
;cc7 8
posteditdd 
.dd 
PostDatedd 
=dd 
DateTimedd  (
.dd( )
Nowdd) ,
;dd, -
dbee 
.ee 
Entryee 
(ee 
posteditee 
)ee 
.ee 
Stateee $
=ee% &
Systemee' -
.ee- .
Dataee. 2
.ee2 3
Entityee3 9
.ee9 :
EntityStateee: E
.eeE F
ModifiedeeF N
;eeN O
dbff 
.ff 
SaveChangesff 
(ff 
)ff 
;ff 
foreachhh 
(hh 
inthh 
xhh 
inhh 
editPosthh &
.hh& '
Tagshh' +
)hh+ ,
{ii 
PostTagjj 
posttagsjj  
=jj! "
newjj# &
PostTagjj' .
(jj. /
)jj/ 0
;jj0 1
varkk 
	tagexistskk 
=kk 
dbkk  "
.kk" #
PostTagskk# +
.kk+ ,
Wherekk, 1
(kk1 2
akk2 3
=>kk4 6
akk7 8
.kk8 9
TagIdkk9 >
==kk? A
xkkB C
&&kkD F
akkG H
.kkH I
PostIdkkI O
==kkP R
editPostkkS [
.kk[ \
PostIdkk\ b
)kkb c
;kkc d
ifmm 
(mm 
	tagexistsmm 
.mm 
Countmm #
(mm# $
)mm$ %
==mm& (
$nummm) *
)mm* +
{nn 
posttagsoo 
.oo 
PostIdoo #
=oo$ %
editPostoo& .
.oo. /
PostIdoo/ 5
;oo5 6
posttagspp 
.pp 
TagIdpp "
=pp# $
xpp% &
;pp& '
dbqq 
.qq 
PostTagsqq 
.qq  
Addqq  #
(qq# $
posttagsqq$ ,
)qq, -
;qq- .
dbrr 
.rr 
SaveChangesrr "
(rr" #
)rr# $
;rr$ %
}ss 
}uu 
returnww 
trueww 
;ww 
}xx 	
public
�� 
void
�� 
DeleteRecentPost
�� $
(
��$ %
int
��% (
PostId
��) /
)
��/ 0
{
�� 	
var
�� 

postdelete
�� 
=
�� 
db
�� 
.
��  
Posts
��  %
.
��% &
Where
��& +
(
��+ ,
s
��, -
=>
��. 0
s
��1 2
.
��2 3
PostId
��3 9
==
��: <
PostId
��= C
)
��C D
.
��D E
FirstOrDefault
��E S
(
��S T
)
��T U
;
��U V

postdelete
�� 
.
�� 
	IsDeleted
��  
=
��! "
false
��# (
;
��( )
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 

AddNewPost
�� 
(
�� !
AddPostRequestModel
�� 2
AddPost
��3 :
)
��: ;
{
�� 	
Post
�� 
post
�� 
=
�� 
new
�� 
Post
��  
{
�� 
Title
�� 
=
�� 
AddPost
�� 
.
��  
Title
��  %
,
��% &
PostDate
�� 
=
�� 
DateTime
�� #
.
��# $
Now
��$ '
,
��' (
Description
�� 
=
�� 
AddPost
�� %
.
��% &
Description
��& 1
,
��1 2
UserId
�� 
=
�� 
AddPost
��  
.
��  !
UserId
��! '
,
��' (

CategoryId
�� 
=
�� 
AddPost
�� $
.
��$ %

CategoryId
��% /
,
��/ 0
	IsDeleted
�� 
=
�� 
true
��  
,
��  !
	UserImage
�� 
=
�� 
AddPost
�� #
.
��# $
Image
��$ )
}
�� 
;
�� 
db
�� 
.
�� 
Posts
�� 
.
�� 
Add
�� 
(
�� 
post
�� 
)
�� 
;
�� 
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
int
�� 
res
�� 
in
�� 
AddPost
��  '
.
��' (
Tags
��( ,
)
��, -
{
�� 
PostTag
�� 
posttags
��  
=
��! "
new
��# &
PostTag
��' .
(
��. /
)
��/ 0
;
��0 1
posttags
�� 
.
�� 
PostId
�� 
=
��  !
post
��" &
.
��& '
PostId
��' -
;
��- .
posttags
�� 
.
�� 
TagId
�� 
=
��  
res
��! $
;
��$ %
db
�� 
.
�� 
PostTags
�� 
.
�� 
Add
�� 
(
��  
posttags
��  (
)
��( )
;
��) *
db
�� 
.
�� 
SaveChanges
�� 
(
�� 
)
��  
;
��  !
}
�� 
es
�� 
.
�� 

GetSqlData
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\NotificationData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
NotificationData

 !
:

" #
INotificationData

$ 5
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
public 
List 
< 
NotificationModel %
>% &
GetUserNotification' :
(: ;
int; >
UserId? E
)E F
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
UserId@ F
)F G
;G H
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
List 
< 
NotificationModel "
>" #
notifs$ *
=+ ,
new- 0
List1 5
<5 6
NotificationModel6 G
>G H
(H I
)I J
;J K
foreach 
( 
var 
p 
in 
posts #
)# $
{ 
var 
notifications !
=" #
($ %
from% )
n* +
in, .
db/ 1
.1 2
Notifications2 ?
join  % )
u  * +
in  , .
db  / 1
.  1 2
Users  2 7
on  8 :
n  ; <
.  < =
UserId  = C
equals  D J
u  K L
.  L M
UserId  M S
where!!% *
n!!+ ,
.!!, -
PostId!!- 3
==!!4 6
p!!7 8
.!!8 9
PostId!!9 ?
select""% +
new"", /
NotificationModel""0 A
{##% &
Type$$) -
=$$. /
n$$0 1
.$$1 2
NotificationType$$2 B
,$$B C
IsRead%%) /
=%%0 1
n%%2 3
.%%3 4
IsRead%%4 :
,%%: ;
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
}((% &
)((& '
.((' (
ToList((( .
(((. /
)((/ 0
;((0 1
notifs++ 
.++ 
AddRange++ 
(++  
notifications++  -
)++- .
;++. /
},, 
return-- 
notifs-- 
;-- 
}// 	
}00 
}11 �
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\ReportcommentData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
ReportcommentData

 "
:

# $
IReportcommentData

% 7
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
public 
bool 
EditMyComment !
(! "
ReportCommentModel" 4
reportComment5 B
)B C
{ 	
CommentReport 
commentReport '
=( )
new* -
CommentReport. ;
(; <
)< =
;= >
commentReport 
. 
Comment !
=" #
reportComment$ 1
.1 2
Comment2 9
;9 :
commentReport 
. 
	CommentId #
=$ %
reportComment& 3
.3 4

CommmentId4 >
;> ?
db 
. 
SaveChanges 
( 
) 
; 
return 
true 
; 
} 	
} 
} �*
�C:\Users\NINELEAPS\Desktop\project\Knowledge-Management-Server\KnowledgeManagement\KnowledgeManagement\Repository\Service\SpamData.cs
	namespace 	
KnowledgeManagement
 
. 

Repository (
.( )
Service) 0
{		 
public

 

class

 
SpamData

 
:

 
	ISpamData

 %
{ 
readonly *
KnowledgeManagementDevEntities .
db/ 1
=2 3
new4 7*
KnowledgeManagementDevEntities8 V
(V W
)W X
;X Y
public 
void 

AddNewSpam 
( 
	SpamModel (
spam) -
)- .
{ 	
Report 
report 
= 
new 
Report  &
{ 
PostId 
= 
spam 
. 
PostId $
,$ %
Comment 
= 
spam 
. 
Comment &
,& '
UserId 
= 
spam 
. 
UserId $
,$ %
Isread 
= 
$num 
} 
; 
db 
. 
Reports 
. 
Add 
( 
report !
)! "
;" #
Notification 
notif 
=  
new! $
Notification% 1
{ 
NotificationType  
=! "
$num# $
,$ %
IsRead   
=   
$num   
,   
PostId!! 
=!! 
spam!! 
.!! 
PostId!! $
,!!$ %
UserId"" 
="" 
spam"" 
."" 
UserId"" $
}## 
;## 
db$$ 
.$$ 
Notifications$$ 
.$$ 
Add$$  
($$  !
notif$$! &
)$$& '
;$$' (
db%% 
.%% 
SaveChanges%% 
(%% 
)%% 
;%% 
}&& 	
public,, 
void,, 
DeleteRecentPost,, $
(,,$ %
int,,% (
PostId,,) /
),,/ 0
{-- 	
var.. 
rep.. 
=.. 
db.. 
... 
Reports..  
...  !
Where..! &
(..& '
s..' (
=>..) +
s.., -
...- .
PostId... 4
==..5 7
PostId..8 >
)..> ?
...? @
FirstOrDefault..@ N
(..N O
)..O P
;..P Q
rep// 
.// 
Isread// 
=// 
$num// 
;// 
var00 

postdelete00 
=00 
db00 
.00  
Posts00  %
.00% &
Where00& +
(00+ ,
s00, -
=>00. 0
s001 2
.002 3
PostId003 9
==00: <
PostId00= C
)00C D
.00D E
FirstOrDefault00E S
(00S T
)00T U
;00U V

postdelete11 
.11 
	IsDeleted11  
=11! "
false11# (
;11( )
db22 
.22 
SaveChanges22 
(22 
)22 
;22 
}33 	
public99 
IEnumerable99 
<99 
ReportRequestModel99 -
>99- .
GetPost99/ 6
(996 7
)997 8
{:: 	
var<< 
res<< 
=<< 
(<< 
from<< 
l<< 
in<<  
db<<! #
.<<# $
Reports<<$ +
orderby== 
l==  
.==  !
ReportId==! )

descending==* 4
join>> 
p>> 
in>>  
db>>! #
.>># $
Posts>>$ )
on>>* ,
l>>- .
.>>. /
PostId>>/ 5
equals>>6 <
p>>= >
.>>> ?
PostId>>? E
join?? 
u?? 
in??  
db??! #
.??# $
Users??$ )
on??* ,
l??- .
.??. /
UserId??/ 5
equals??6 <
u??= >
.??> ?
UserId??? E
whereAA 
lAA 
.AA 
IsreadAA %
==AA& (
$numAA) *
selectBB 
newBB !
ReportRequestModelBB" 4
{CC 
PostIdDD !
=DD" #
lDD$ %
.DD% &
PostIdDD& ,
,DD, -
NameEE 
=EE  !
uEE" #
.EE# $
	FirstNameEE$ -
,EE- .
CommentFF "
=FF# $
lFF% &
.FF& '
CommentFF' .
,FF. /
TitleGG  
=GG! "
pGG# $
.GG$ %
TitleGG% *
,GG* +
DescriptionHH &
=HH' (
pHH) *
.HH* +
DescriptionHH+ 6
,HH6 7
PostDateII #
=II$ %
pII& '
.II' (
PostDateII( 0
,II0 1
ImageJJ  
=JJ! "
pJJ# $
.JJ$ %
	UserImageJJ% .
,JJ. /
}KK 
)KK 
.KK 
ToListKK  
(KK  !
)KK! "
;KK" #
returnMM 
resMM 
;MM 
}OO 	
}PP 
}QQ �(
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
$str	& �
;
� �
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
HmacSha256Signature	##w �
)
##� �
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