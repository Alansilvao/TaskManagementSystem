ê
MC:\repositorio\TaskManagementSystem\src\API\Controllers\CategoryController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
public

 

class

 
CategoryController

 #
:

$ %
ControllerBase

& 4
{ 
private 
readonly 
CategoryService (
_categoryService) 9
;9 :
public 
CategoryController !
(! "
CategoryService" 1
categoryService2 A
)A B
{ 	
_categoryService 
= 
categoryService .
;. /
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
await  
_categoryService! 1
.1 2 
GetCategoryByIdAsync2 F
(F G
idG I
)I J
;J K
if 
( 
category 
== 
null  
)  !
{ 
return 
NotFound 
(  
)  !
;! "
} 
return 
Ok 
( 
category 
) 
;  
} 	
[ 	
HttpPost	 
] 
public   
async   
Task   
<   
IActionResult   '
>  ' (
AddCategory  ) 4
(  4 5
[  5 6
FromBody  6 >
]  > ?
CategoryCreateDto  @ Q
categoryDto  R ]
)  ] ^
{!! 	
var"" 
category"" 
="" 
new"" 
Category"" '
{## 
Name$$ 
=$$ 
categoryDto$$ "
.$$" #
Name$$# '
}%% 
;%% 
await'' 
_categoryService'' "
.''" #
AddCategoryAsync''# 3
(''3 4
category''4 <
)''< =
;''= >
return(( 
CreatedAtAction(( "
(((" #
nameof((# )
((() *
GetCategoryById((* 9
)((9 :
,((: ;
new((< ?
{((@ A
id((B D
=((E F
category((G O
.((O P
Id((P R
}((S T
,((T U
category((V ^
)((^ _
;((_ `
})) 	
}** 
}++ …(
IC:\repositorio\TaskManagementSystem\src\API\Controllers\TaskController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
public

 

class

 
TaskController

 
:

  !
ControllerBase

" 0
{ 
private 
readonly 
TaskService $
_taskService% 1
;1 2
public 
TaskController 
( 
TaskService )
taskService* 5
)5 6
{ 	
_taskService 
= 
taskService &
;& '
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetTasks) 1
(1 2
int2 5
userId6 <
)< =
{ 	
var 
tasks 
= 
await 
_taskService *
.* +!
GetTasksByUserIdAsync+ @
(@ A
userIdA G
)G H
;H I
return 
Ok 
( 
tasks 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (

CreateTask) 3
(3 4
[4 5
FromBody5 =
]= >
TaskCreateDto? L
taskDtoM T
)T U
{ 	
var 
task 
= 
new 
Tasks  
{ 
Title 
= 
taskDto 
.  
Title  %
,% &
Description   
=   
taskDto   %
.  % &
Description  & 1
,  1 2
DueDate!! 
=!! 
taskDto!! !
.!!! "
DueDate!!" )
,!!) *
IsCompleted"" 
="" 
taskDto"" %
.""% &
IsCompleted""& 1
,""1 2

CategoryId## 
=## 
taskDto## $
.##$ %

CategoryId##% /
,##/ 0
UserId$$ 
=$$ 
taskDto$$  
.$$  !
UserId$$! '
}%% 
;%% 
await'' 
_taskService'' 
.'' 
CreateTaskAsync'' .
(''. /
task''/ 3
)''3 4
;''4 5
return(( 
CreatedAtAction(( "
(((" #
nameof((# )
((() *
GetTasks((* 2
)((2 3
,((3 4
new((5 8
{((9 :
userId((; A
=((B C
task((D H
.((H I
UserId((I O
}((P Q
,((Q R
task((S W
)((W X
;((X Y
})) 	
[++ 	
HttpPut++	 
(++ 
$str++ 
)++ 
]++ 
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (

UpdateTask,,) 3
(,,3 4
int,,4 7
id,,8 :
,,,: ;
[,,< =
FromBody,,= E
],,E F
TaskCreateDto,,G T
taskDto,,U \
),,\ ]
{-- 	
var.. 
task.. 
=.. 
new.. 
Tasks..  
{// 
Id00 
=00 
id00 
,00 
Title11 
=11 
taskDto11 
.11  
Title11  %
,11% &
Description22 
=22 
taskDto22 %
.22% &
Description22& 1
,221 2
DueDate33 
=33 
taskDto33 !
.33! "
DueDate33" )
,33) *
IsCompleted44 
=44 
taskDto44 %
.44% &
IsCompleted44& 1
,441 2

CategoryId55 
=55 
taskDto55 $
.55$ %

CategoryId55% /
,55/ 0
UserId66 
=66 
taskDto66  
.66  !
UserId66! '
}77 
;77 
await99 
_taskService99 
.99 
UpdateTaskAsync99 .
(99. /
task99/ 3
)993 4
;994 5
return:: 
	NoContent:: 
(:: 
):: 
;:: 
};; 	
[== 	

HttpDelete==	 
(== 
$str== 
)== 
]== 
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (

DeleteTask>>) 3
(>>3 4
int>>4 7
id>>8 :
)>>: ;
{?? 	
await@@ 
_taskService@@ 
.@@ 
DeleteTaskAsync@@ .
(@@. /
id@@/ 1
)@@1 2
;@@2 3
returnAA 
	NoContentAA 
(AA 
)AA 
;AA 
}BB 	
}CC 
}DD ˝
IC:\repositorio\TaskManagementSystem\src\API\Controllers\UserController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public		 

class		 
UserController		 
:		  !
ControllerBase		" 0
{

 
private 
readonly 
UserService $
_userService% 1
;1 2
public 
UserController 
( 
UserService )
userService* 5
)5 6
{ 	
_userService 
= 
userService &
;& '
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Register) 1
(1 2
[2 3
FromBody3 ;
]; <
RegisterUserDto= L
dtoM P
)P Q
{ 	
var 
user 
= 
await 
_userService )
.) *
RegisterUserAsync* ;
(; <
dto< ?
.? @
Name@ D
,D E
dtoF I
.I J
EmailJ O
,O P
dtoQ T
.T U
PasswordU ]
)] ^
;^ _
return 
Ok 
( 
user 
) 
; 
} 	
[ 	
HttpPost	 
( 
$str  
)  !
]! "
public 
async 
Task 
< 
IActionResult '
>' (
Authenticate) 5
(5 6
[6 7
FromBody7 ?
]? @
AuthenticateUserDtoA T
dtoU X
)X Y
{ 	
var 
user 
= 
await 
_userService )
.) *!
AuthenticateUserAsync* ?
(? @
dto@ C
.C D
EmailD I
,I J
dtoK N
.N O
PasswordO W
)W X
;X Y
if 
( 
user 
== 
null 
) 
return 
Unauthorized #
(# $
)$ %
;% &
return   
Ok   
(   
user   
)   
;   
}!! 	
}"" 
}## ¥
RC:\repositorio\TaskManagementSystem\src\API\Extensions\InfrastructureExtensions.cs
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
}   è
UC:\repositorio\TaskManagementSystem\src\API\Extensions\ServiceCollectionExtensions.cs
	namespace 	
API
 
. 

Extensions 
; 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 
static 
class '
ServiceCollectionExtensions /
{ 
public 
static 
void 
AddUseCases 
(  
this  $
IServiceCollection% 7
services8 @
)@ A
{ 
} 
public 
static 
void 
AddServices 
(  
this  $
IServiceCollection% 7
services8 @
)@ A
{ 
services"" 
."" 
	AddScoped"" 
<"" 
UserService"" &
>""& '
(""' (
)""( )
;"") *
services## 
.## 
	AddScoped## 
<## 
CategoryService## *
>##* +
(##+ ,
)##, -
;##- .
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
TaskService$$ &
>$$& '
($$' (
)$$( )
;$$) *
}%% 
public'' 
static'' 
void''  
AddJwtAuthentication'' (
((( 
this(( 
IServiceCollection(( 
services(( #
,((# $
IConfiguration((% 3
configuration((4 A
)((A B
{)) 
services** 

.++ 
AddAuthentication++ 
(++ 
JwtBearerDefaults++ '
.++' ( 
AuthenticationScheme++( <
)++< =
.,, 
AddJwtBearer,, 
(-- 
x.. 
=>.. 
x// 
.// %
TokenValidationParameters//  
=//! "
new//# &%
TokenValidationParameters//' @
{00 
ValidIssuer11 
=11 
configuration11 !
[11! "
$str11" 6
]116 7
,117 8
ValidAudience22 
=22 
configuration22 #
[22# $
$str22$ :
]22: ;
,22; <
IssuerSigningKey33 
=33 
new33  
SymmetricSecurityKey33 1
(44 
Encoding44 
.44 
UTF844 
.44 
GetBytes44 
(44 
configuration44 ,
[44, -
$str44- D
]44D E
!44E F
)44F G
)44G H
,44H I
ValidateIssuer55 
=55 
true55 
,55 
ValidateAudience66 
=66 
true66 
,66 
ValidateLifetime77 
=77 
true77 
,77 $
ValidateIssuerSigningKey88 
=88  
true88! %
}99 
):: 
;:: 
}== 
}>> Î
PC:\repositorio\TaskManagementSystem\src\API\OptionsSetup\DatabaseOptionsSetup.cs
	namespace 	
API
 
. 
OptionsSetup 
; 
public 
class  
DatabaseOptionsSetup !
:" #
IConfigureOptions$ 5
<5 6
DatabaseOptions6 E
>E F
{ 
private 
readonly	 
IConfiguration  
_configuration! /
;/ 0
public

  
DatabaseOptionsSetup

 
(

 
IConfiguration

 +
configuration

, 9
)

9 :
{ 
_configuration 
= 
configuration  
;  !
} 
public 
void 
	Configure 
( 
DatabaseOptions &
options' .
). /
{ 
_configuration 
. 

GetSection 
( 
$str /
)/ 0
.0 1
Bind1 5
(5 6
options6 =
)= >
;> ?
} 
} ˙
6C:\repositorio\TaskManagementSystem\src\API\Program.cs
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
