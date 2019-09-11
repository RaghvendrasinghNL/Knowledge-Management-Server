å
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
 	
} 	
} 
} À
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
} È

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
c 
. 
SingleApiVersion *
(* +
$str+ /
,/ 0
$str1 F
)F G
;G H
} 
) 
. 
EnableSwaggerUi  
(  !
c! "
=># %
{ 
c 
. 
EnableApiKeySupport -
(- .
$str. 5
,5 6
$str7 ?
)? @
;@ A
}!! 
)!! 
;!! 
}"" 	
}## 
}$$ ¶+
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
}!! ±
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
public 
IEnumerable 
< 
PostRequestModel +
>+ ,
HomePagePost- 9
(9 :
int: =
UserId> D
,D E
intF I

CategoryIdJ T
,T U
SortingTypeV a
sortingtypeb m
,m n

FilterTypeo y

filtertype	z Ñ
)
Ñ Ö
{ 	
return 
_data 
. 
HomePagePost %
(% &
UserId& ,
,, -

CategoryId. 8
,8 9
sortingtype: E
,E F

filtertypeG Q
)Q R
;R S
}!! 	
}"" 
}## ê
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
}## ∫#
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
!GG 
fGG 
)GG 
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
var,, 
data,, 
=,, 
_hp,, 
.,, 
HomePagePost,, +
(,,+ ,
userid,,, 2
,,,2 3

CategoryId,,4 >
,,,> ?
sortingtype,,@ K
,,,K L

filtertype,,M W
),,W X
;,,X Y
logger11 
.11 
Info11 
(11 
$str11 I
)11I J
;11J K
return22 
Ok22 
(22 
data22 
)22 
;22  
}33 
catch44 
(44 
	Exception44 
ex44 
)44 
{55 
logger66 
.66 
Info66 
(66 
$str66 I
)66I J
;66J K
logger77 
.77 
Error77 
(77 
$str77 7
+777 8
ex778 :
)77: ;
;77; <
return88 

BadRequest88 !
(88! "
$str88" 0
+881 2
ex883 5
)885 6
;886 7
}99 
}:: 	
};; 
}<< „
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
}44 û
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
{ 	
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
}éé  K
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
;Y Z
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
Ñ Ö
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
}22 úh
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
;Q R
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
™™ 
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
}VV ∆(
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

static 
class 

JwtManager "
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