Ò
EC:\git\TaskManagementSystem\src\API\Controllers\CategoryController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ #
ExcludeFromCodeCoverage 
] 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
CategoryController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ICategoryUseCase )
_useCase* 2
;2 3
public 
CategoryController !
(! "
ICategoryUseCase" 2
useCase3 :
): ;
{ 	
_useCase 
= 
useCase 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetCategoryById) 8
(8 9
int9 <
id= ?
)? @
{ 	
var 
category 
= 
await  
_useCase! )
.) *
ExecuteAsync* 6
(6 7
new7 :
CategoryCreateDto; L
{ 
Id 
= 
id 
} 
) 
; 
if 
( 
category 
== 
null  
)  !
{ 
return 
NotFound 
(  
)  !
;! "
} 
return   
Ok   
(   
category   
)   
;    
}!! 	
[## 	
HttpPost##	 
]## 
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
AddCategory$$) 4
($$4 5
[$$5 6
FromBody$$6 >
]$$> ?
CategoryCreateDto$$@ Q
categoryDto$$R ]
)$$] ^
{%% 	
var&& 
category&& 
=&& 
await&& "
_useCase&&# +
.&&+ ,
ExecuteAsync&&, 8
(&&8 9
categoryDto&&9 D
)&&D E
;&&E F
return'' 
CreatedAtAction'' "
(''" #
nameof''# )
('') *
GetCategoryById''* 9
)''9 :
,'': ;
new''< ?
{''@ A
id''B D
=''E F
category''G O
.''O P
Id''P R
}''S T
,''T U
category''V ^
)''^ _
;''_ `
}(( 	
})) 
}** Ÿ3
AC:\git\TaskManagementSystem\src\API\Controllers\TaskController.cs
	namespace 	
API
 
. 
Controllers 
{		 
[

 #
ExcludeFromCodeCoverage

 
]

 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
TaskController 
:  !
ControllerBase" 0
{ 
private 
readonly 
TaskService $
_taskService% 1
;1 2
private 
readonly 
ITaskUseCase %
_useCase& .
;. /
public 
TaskController 
( 
ITaskUseCase *
useCase+ 2
)2 3
{ 	
_useCase 
= 
useCase 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetTasks) 1
(1 2
int2 5
userId6 <
)< =
{ 	
var 
task 
= 
new 
TaskGenerateDto *
{ 
GetTasks 
= 
true 
,  
Task 
= 
new 
TaskCreateDto (
{) *
UserId+ 1
=2 3
userId4 :
}; <
} 
; 
var   
tasks   
=   
await   
_useCase   &
.  & '
ExecuteAsync  ' 3
(  3 4
task  4 8
)  8 9
;  9 :
return!! 
Ok!! 
(!! 
tasks!! 
)!! 
;!! 
}"" 	
[$$ 	
HttpPost$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (

CreateTask%%) 3
(%%3 4
[%%4 5
FromBody%%5 =
]%%= >
TaskCreateDto%%? L
taskDto%%M T
)%%T U
{&& 	
var'' 
task'' 
='' 
new'' 
TaskGenerateDto'' *
{(( 

CreateTask)) 
=)) 
true)) !
,))! "
Task** 
=** 
new** 
TaskCreateDto** (
{++ 
Title,, 
=,, 
taskDto,, #
.,,# $
Title,,$ )
,,,) *
Description-- 
=--  !
taskDto--" )
.--) *
Description--* 5
,--5 6
DueDate.. 
=.. 
taskDto.. %
...% &
DueDate..& -
,..- .
IsCompleted// 
=//  !
taskDto//" )
.//) *
IsCompleted//* 5
,//5 6

CategoryId00 
=00  
taskDto00! (
.00( )

CategoryId00) 3
,003 4
UserId11 
=11 
taskDto11 $
.11$ %
UserId11% +
}22 
}33 
;33 
var55 
tasks55 
=55 
await55 
_useCase55 &
.55& '
ExecuteAsync55' 3
(553 4
task554 8
)558 9
;559 :
return66 
CreatedAtAction66 "
(66" #
nameof66# )
(66) *
GetTasks66* 2
)662 3
,663 4
new665 8
{669 :
userId66; A
=66B C
task66D H
.66H I
Task66I M
.66M N
UserId66N T
}66U V
,66V W
task66X \
)66\ ]
;66] ^
}77 	
[99 	
HttpPut99	 
(99 
$str99 
)99 
]99 
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (

UpdateTask::) 3
(::3 4
int::4 7
id::8 :
,::: ;
[::< =
FromBody::= E
]::E F
TaskCreateDto::G T
taskDto::U \
)::\ ]
{;; 	
var<< 
task<< 
=<< 
new<< 
TaskGenerateDto<< *
{== 

UpdateTask>> 
=>> 
true>> !
,>>! "
Task?? 
=?? 
new?? 
TaskCreateDto?? (
{@@ 
TitleAA 
=AA 
taskDtoAA #
.AA# $
TitleAA$ )
,AA) *
DescriptionBB 
=BB  !
taskDtoBB" )
.BB) *
DescriptionBB* 5
,BB5 6
DueDateCC 
=CC 
taskDtoCC %
.CC% &
DueDateCC& -
,CC- .
IsCompletedDD 
=DD  !
taskDtoDD" )
.DD) *
IsCompletedDD* 5
,DD5 6

CategoryIdEE 
=EE  
taskDtoEE! (
.EE( )

CategoryIdEE) 3
,EE3 4
UserIdFF 
=FF 
taskDtoFF $
.FF$ %
UserIdFF% +
}GG 
}HH 
;HH 
varJJ 
tasksJJ 
=JJ 
awaitJJ 
_useCaseJJ &
.JJ& '
ExecuteAsyncJJ' 3
(JJ3 4
taskJJ4 8
)JJ8 9
;JJ9 :
returnLL 
	NoContentLL 
(LL 
)LL 
;LL 
}MM 	
[OO 	

HttpDeleteOO	 
(OO 
$strOO 
)OO 
]OO 
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (

DeleteTaskPP) 3
(PP3 4
intPP4 7
idPP8 :
)PP: ;
{QQ 	
varRR 
taskRR 
=RR 
newRR 
TaskGenerateDtoRR *
{SS 

DeleteTaskTT 
=TT 
trueTT !
,TT! "
TaskUU 
=UU 
newUU 
TaskCreateDtoUU (
{VV 
UserIdWW 
=WW 
idWW 
}XX 
}YY 
;YY 
var[[ 
tasks[[ 
=[[ 
await[[ 
_useCase[[ &
.[[& '
ExecuteAsync[[' 3
([[3 4
task[[4 8
)[[8 9
;[[9 :
return\\ 
	NoContent\\ 
(\\ 
)\\ 
;\\ 
}]] 	
}^^ 
}__ Ð
AC:\git\TaskManagementSystem\src\API\Controllers\UserController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ #
ExcludeFromCodeCoverage 
] 
[		 
ApiController		 
]		 
[

 
Route

 

(


 
$str

 
)

 
]

 
public 

class 
UserController 
:  !
ControllerBase" 0
{ 
private 
readonly 
ICreateUser $
_createUser% 0
;0 1
public 
UserController 
( 
ICreateUser )

createUser* 4
)4 5
{ 	
_createUser 
= 

createUser $
;$ %
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Register) 1
(1 2
[2 3
FromBody3 ;
]; <
RegisterUserDto= L
dtoM P
)P Q
{ 	
var 
user 
= 
await 
_createUser (
.( )
ExecuteAsync) 5
(5 6
dto6 9
)9 :
;: ;
return 
Ok 
( 
user 
) 
; 
} 	
[ 	
HttpPost	 
( 
$str  
)  !
]! "
public 
async 
Task 
< 
IActionResult '
>' (
Authenticate) 5
(5 6
[6 7
FromBody7 ?
]? @
AuthenticateUserDtoA T
dtoU X
)X Y
{ 	
var 
user 
= 
await 
_createUser (
.( )
ExecuteAsync) 5
(5 6
new6 9
RegisterUserDto: I
(I J
)J K
)K L
;L M
if 
( 
user 
== 
null 
) 
return   
Unauthorized   #
(  # $
)  $ %
;  % &
return"" 
Ok"" 
("" 
user"" 
)"" 
;"" 
}## 	
}$$ 
}%% ¬
JC:\git\TaskManagementSystem\src\API\Extensions\InfrastructureExtensions.cs
	namespace 	
API
 
. 

Extensions 
; 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 
static

 
class

 $
InfrastructureExtensions

 ,
{ 
public 
static 
void 
AddInfrastructure %
( 
this 
IServiceCollection 
services #
,# $
IConfiguration% 3
configuration4 A
)A B
{ 
services 

.
 
AddMySql 
( 
configuration !
)! "
;" #
services 

.
 
AddRepositories 
( 
) 
; 
} 
private 
static	 
void 
AddMySql 
( 
this "
IServiceCollection# 5
services6 >
,> ?
IConfiguration@ N
configurationO \
)\ ]
{ 
var 
connectionString 
= 
configuration &
.& '
GetConnectionString' :
(: ;
$str; G
)G H
;H I
services 
. 
AddDbContext 
<  
ApplicationDbContext 2
>2 3
(3 4
options4 ;
=>< >
options? F
.F G
UseSqlServerG S
(S T
connectionStringT d
)d e
)e f
;f g
} 
private 
static 
void 
AddRepositories '
(' (
this( ,
IServiceCollection- ?
services@ H
)H I
{ 
services 

. 
	AddScoped 
< 
ICategoryRepository !
,! "
CategoryRepository# 5
>5 6
(6 7
)7 8
. 
	AddScoped 
< 
ITaskRepository 
, 
TaskRepository -
>- .
(. /
)/ 0
. 
	AddScoped 
< 
IUserRepository 
, 
UserRepository -
>- .
(. /
)/ 0
;0 1
} 
}   è
MC:\git\TaskManagementSystem\src\API\Extensions\ServiceCollectionExtensions.cs
	namespace

 	
API


 
.

 

Extensions

 
;

 
[ #
ExcludeFromCodeCoverage 
] 
public 
static 
class '
ServiceCollectionExtensions /
{ 
public 

static 
void 
AddUseCases "
(" #
this# '
IServiceCollection( :
services; C
)C D
{ 
services 
. 
	AddScoped 
< 
ICreateUser &
,& '

CreateUser( 2
>2 3
(3 4
)4 5
;5 6
services 
. 
	AddScoped 
< 
ICategoryUseCase +
,+ ,
CategoryUseCase- <
>< =
(= >
)> ?
;? @
services 
. 
	AddScoped 
< 
ITaskUseCase '
,' (
TaskUseCase) 4
>4 5
(5 6
)6 7
;7 8
} 
public 

static 
void 
AddServices "
(" #
this# '
IServiceCollection( :
services; C
)C D
{ 
services 
. 
	AddScoped 
< 
UserService &
>& '
(' (
)( )
;) *
services 
. 
	AddScoped 
< 
CategoryService *
>* +
(+ ,
), -
;- .
services 
. 
	AddScoped 
< 
TaskService &
>& '
(' (
)( )
;) *
} 
public 

static 
void  
AddJwtAuthentication +
( 	
this	 
IServiceCollection  
services! )
,) *
IConfiguration+ 9
configuration: G
)G H
{ 
services   
.!! 
AddAuthentication!! 
(!! 
JwtBearerDefaults!! 0
.!!0 1 
AuthenticationScheme!!1 E
)!!E F
."" 
AddJwtBearer"" 
(## 
x$$ 
=>$$ 
x%% 
.%% %
TokenValidationParameters%% /
=%%0 1
new%%2 5%
TokenValidationParameters%%6 O
{&& 
ValidIssuer'' #
=''$ %
configuration''& 3
[''3 4
$str''4 H
]''H I
,''I J
ValidAudience(( %
=((& '
configuration((( 5
[((5 6
$str((6 L
]((L M
,((M N
IssuerSigningKey)) (
=))) *
new))+ . 
SymmetricSecurityKey))/ C
(** 
Encoding** %
.**% &
UTF8**& *
.*** +
GetBytes**+ 3
(**3 4
configuration**4 A
[**A B
$str**B Y
]**Y Z
!**Z [
)**[ \
)**\ ]
,**] ^
ValidateIssuer++ &
=++' (
true++) -
,++- .
ValidateAudience,, (
=,,) *
true,,+ /
,,,/ 0
ValidateLifetime-- (
=--) *
true--+ /
,--/ 0$
ValidateIssuerSigningKey.. 0
=..1 2
true..3 7
}// 
)00 
;00 
}11 
}22 ò
.C:\git\TaskManagementSystem\src\API\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
.  
AddJwtAuthentication %
(% &
builder& -
.- .
Configuration. ;
); <
;< =
builder 
. 
Services 
. 
AddServices 
( 
) 
; 
builder		 
.		 
Services		 
.		 
AddUseCases		 
(		 
)		 
;		 
builder

 
.

 
Services

 
.

 
AddControllers

 
(

  
)

  !
;

! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder 
. 
Services 
. 
AddInfrastructure "
(" #
builder# *
.* +
Configuration+ 8
)8 9
;9 :
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthentication 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app   
.   
MapControllers   
(   
)   
;   
app"" 
."" 
Run"" 
("" 
)"" 	
;""	 
