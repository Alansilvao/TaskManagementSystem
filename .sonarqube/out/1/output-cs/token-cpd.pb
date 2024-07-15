ê
GC:\git\TaskManagementSystem\src\Application\Dtos\AuthenticateUserDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
AuthenticateUserDto $
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Password		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} Ç
EC:\git\TaskManagementSystem\src\Application\Dtos\CategoryCreateDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
CategoryCreateDto "
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
}

 
} †
CC:\git\TaskManagementSystem\src\Application\Dtos\RegisterUserDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
RegisterUserDto  
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
Password

 
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
+ ,
} 
} Û	
AC:\git\TaskManagementSystem\src\Application\Dtos\TaskCreateDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
TaskCreateDto 
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
DateTime

 
DueDate

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
bool 
IsCompleted 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ‡
CC:\git\TaskManagementSystem\src\Application\Dtos\TaskGenerateDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
TaskGenerateDto  
{ 
public 
bool 
GetTasks 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
bool		 

CreateTask		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
bool

 

UpdateTask

 
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
public 
bool 

DeleteTask 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
TaskCreateDto 
Task !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} â
MC:\git\TaskManagementSystem\src\Application\Exceptions\HttpStatusException.cs
	namespace 	
Application
 
. 

Exceptions  
;  !
[ #
ExcludeFromCodeCoverage 
] 
public 
class 
HttpStatusException  
:! "
	Exception# ,
{ 
public 
int 

StatusCode 
{ 
get 
; 
set !
;! "
}# $
public

 
HttpStatusException

 
(

 
int

 

statusCode

  *
,

* +
string

, 2
message

3 :
)

: ;
:

< =
base

> B
(

B C
message

C J
)

J K
{ 

StatusCode 
= 

statusCode 
; 
} 
} Õ
ZC:\git\TaskManagementSystem\src\Application\Interfaces\Repositories\ICategoryRepository.cs
	namespace 	
Application
 
. 
	Interface 
{ 
public 

	interface 
ICategoryRepository (
{ 
Task 
< 
IEnumerable 
< 
Category !
>! "
>" #!
GetAllCategoriesAsync$ 9
(9 :
): ;
;; <
Task 
< 
Category 
>  
GetCategoryByIdAsync +
(+ ,
int, /
id0 2
)2 3
;3 4
Task		 
AddCategoryAsync		 
(		 
Category		 &
category		' /
)		/ 0
;		0 1
Task

 
UpdateCategoryAsync

  
(

  !
Category

! )
category

* 2
)

2 3
;

3 4
Task 
DeleteCategoryAsync  
(  !
int! $
id% '
)' (
;( )
} 
} ∆
VC:\git\TaskManagementSystem\src\Application\Interfaces\Repositories\ITaskRepository.cs
	namespace 	
Application
 
. 
	Interface 
{ 
public 	
	interface
 
ITaskRepository #
{ 
Task 
< 
Tasks 
> 
GetTaskByIdAsync $
($ %
int% (
id) +
)+ ,
;, -
Task 
AddTaskAsync 
( 
Tasks 
task  $
)$ %
;% &
Task		 
UpdateTaskAsync		 
(		 
Tasks		 "
task		# '
)		' (
;		( )
Task

 
DeleteTaskAsync

 
(

 
int

  
id

! #
)

# $
;

$ %
Task 
< 
IEnumerable 
< 
Tasks 
> 
>  !
GetTasksByUserIdAsync! 6
(6 7
int7 :
userId; A
)A B
;B C
} 
} é
VC:\git\TaskManagementSystem\src\Application\Interfaces\Repositories\IUserRepository.cs
	namespace 	
Application
 
. 
	Interface 
{ 
public 

	interface 
IUserRepository $
{ 
Task 
< 
User 
> 
GetUserByIdAsync #
(# $
int$ '
id( *
)* +
;+ ,
Task 
AddUserAsync 
( 
User 
user #
)# $
;$ %
Task		 
<		 
User		 
>		 
GetUserByEmailAsync		 &
(		& '
string		' -
email		. 3
)		3 4
;		4 5
}

 
} ◊
SC:\git\TaskManagementSystem\src\Application\Interfaces\UseCases\ICategoryUseCase.cs
	namespace 	
Application
 
. 

Interfaces  
.  !
UseCases! )
{ 
public 

	interface 
ICategoryUseCase %
:& '
IUseCase( 0
<0 1
CategoryCreateDto1 B
,B C
CategoryD L
>L M
{ 
} 
}		 «
NC:\git\TaskManagementSystem\src\Application\Interfaces\UseCases\ICreateUser.cs
	namespace 	
Application
 
. 

Interfaces  
.  !
UseCases! )
{ 
public 

	interface 
ICreateUser  
:! "
IUseCase# +
<+ ,
RegisterUserDto, ;
,; <
User= A
>A B
{ 
} 
}		 Å
OC:\git\TaskManagementSystem\src\Application\Interfaces\UseCases\ITaskUseCase.cs
	namespace 	
Application
 
. 

Interfaces  
.  !
UseCases! )
{ 
public 

	interface 
ITaskUseCase !
:" #
IUseCase$ ,
<, -
TaskGenerateDto- <
,< =
IEnumerable> I
<I J
TasksJ O
>O P
>P Q
{ 
} 
}		 ‘
KC:\git\TaskManagementSystem\src\Application\Interfaces\UseCases\IUseCase.cs
	namespace 	
Application
 
. 

Interfaces  
.  !
UseCases! )
{ 
public 

	interface 
IUseCase 
< 
in  
TRequest! )
,) *
	TResponse+ 4
>4 5
{ 
Task 
< 
	TResponse 
> 
ExecuteAsync $
( 
TRequest 
request 
, 
CancellationToken 0
cancellationToken1 B
=C D
defaultE L
)L M
;M N
} 
} ë
GC:\git\TaskManagementSystem\src\Application\Services\CategoryService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
CategoryService  
{ 
private 
readonly 
ICategoryRepository ,
_categoryRepository- @
;@ A
public

 
CategoryService

 
(

 
ICategoryRepository

 2
categoryRepository

3 E
)

E F
{ 	
_categoryRepository 
=  !
categoryRepository" 4
;4 5
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Category& .
>. /
>/ 0!
GetAllCategoriesAsync1 F
(F G
)G H
{ 	
return 
await 
_categoryRepository ,
., -!
GetAllCategoriesAsync- B
(B C
)C D
;D E
} 	
public 
async 
Task 
< 
Category "
>" # 
GetCategoryByIdAsync$ 8
(8 9
int9 <
id= ?
)? @
{ 	
return 
await 
_categoryRepository ,
., - 
GetCategoryByIdAsync- A
(A B
idB D
)D E
;E F
} 	
public 
async 
Task 
AddCategoryAsync *
(* +
Category+ 3
category4 <
)< =
{ 	
await 
_categoryRepository %
.% &
AddCategoryAsync& 6
(6 7
category7 ?
)? @
;@ A
} 	
public 
async 
Task 
UpdateCategoryAsync -
(- .
Category. 6
category7 ?
)? @
{ 	
await   
_categoryRepository   %
.  % &
UpdateCategoryAsync  & 9
(  9 :
category  : B
)  B C
;  C D
}!! 	
public## 
async## 
Task## 
DeleteCategoryAsync## -
(##- .
int##. 1
id##2 4
)##4 5
{$$ 	
await%% 
_categoryRepository%% %
.%%% &
DeleteCategoryAsync%%& 9
(%%9 :
id%%: <
)%%< =
;%%= >
}&& 	
}'' 
}(( ø
CC:\git\TaskManagementSystem\src\Application\Services\TaskService.cs
	namespace 	
Domain
 
. 
Service 
{ 
public 

class 
TaskService 
{		 
public

 
readonly

 
ITaskRepository

 '
_taskRepository

( 7
;

7 8
public 
TaskService 
( 
ITaskRepository *
taskRepository+ 9
)9 :
{ 	
_taskRepository 
= 
taskRepository ,
;, -
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Tasks& +
>+ ,
>, -!
GetTasksByUserIdAsync. C
(C D
intD G
userIdH N
)N O
{ 	
return 
await 
_taskRepository (
.( )!
GetTasksByUserIdAsync) >
(> ?
userId? E
)E F
;F G
} 	
public 
async 
Task 
CreateTaskAsync )
() *
Tasks* /
task0 4
)4 5
{ 	
await 
_taskRepository !
.! "
AddTaskAsync" .
(. /
task/ 3
)3 4
;4 5
} 	
public 
async 
Task 
UpdateTaskAsync )
() *
Tasks* /
task0 4
)4 5
{ 	
await 
_taskRepository !
.! "
UpdateTaskAsync" 1
(1 2
task2 6
)6 7
;7 8
} 	
public   
async   
Task   
DeleteTaskAsync   )
(  ) *
int  * -
id  . 0
)  0 1
{!! 	
await"" 
_taskRepository"" !
.""! "
DeleteTaskAsync""" 1
(""1 2
id""2 4
)""4 5
;""5 6
}## 	
}$$ 
}%% µ
CC:\git\TaskManagementSystem\src\Application\Services\UserService.cs
	namespace 	
Application
 
. 
Services 
{ 
public 

class 
UserService 
{ 
private 
readonly 
IUserRepository (
_userRepository) 8
;8 9
public

 
UserService

 
(

 
IUserRepository

 *
userRepository

+ 9
)

9 :
{ 	
_userRepository 
= 
userRepository ,
;, -
} 	
public 
async 
Task 
< 
User 
> 
RegisterUserAsync  1
(1 2
string2 8
name9 =
,= >
string? E
emailF K
,K L
stringM S
passwordT \
)\ ]
{ 	
var 
existingUser 
= 
await $
_userRepository% 4
.4 5
GetUserByEmailAsync5 H
(H I
emailI N
)N O
;O P
if 
( 
existingUser 
!= 
null  $
)$ %
{ 
throw 
new %
InvalidOperationException 3
(3 4
$str4 Z
)Z [
;[ \
} 
var 
user 
= 
new 
User 
{ 
Name 
= 
name 
, 
Email 
= 
email 
, 
Password 
= 
password #
} 
; 
await 
_userRepository !
.! "
AddUserAsync" .
(. /
user/ 3
)3 4
;4 5
return 
user 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
User"" 
>"" !
AuthenticateUserAsync""  5
(""5 6
string""6 <
email""= B
,""B C
string""D J
password""K S
)""S T
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userRepository$$ ,
.$$, -
GetUserByEmailAsync$$- @
($$@ A
email$$A F
)$$F G
;$$G H
if%% 
(%% 
user%% 
==%% 
null%% 
||%% 
user%%  $
.%%$ %
Password%%% -
!=%%. 0
password%%1 9
)%%9 :
{&& 
return'' 
null'' 
;'' 
}(( 
return** 
user** 
;** 
}++ 	
public-- 
async-- 
Task-- 
<-- 
User-- 
>-- 
GetUserByIdAsync--  0
(--0 1
int--1 4
id--5 7
)--7 8
{.. 	
return// 
await// 
_userRepository// (
.//( )
GetUserByIdAsync//) 9
(//9 :
id//: <
)//< =
;//= >
}00 	
}11 
}22 Ÿ
GC:\git\TaskManagementSystem\src\Application\UseCases\CategoryUseCase.cs
	namespace 	
Application
 
. 
UseCases 
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
CategoryUseCase

  
:

! "
ICategoryUseCase

# 3
{ 
private 
readonly 
CategoryService (
_service) 1
;1 2
public 
CategoryUseCase 
( 
CategoryService .
service/ 6
)6 7
{ 	
_service 
= 
service 
; 
} 	
public 
async 
Task 
< 
Category "
>" #
ExecuteAsync$ 0
(0 1
CategoryCreateDto1 B
requestC J
,J K
CancellationTokenL ]
cancellationToken^ o
=p q
defaultr y
)y z
{ 	
if 
( 
! 
request 
. 
Id 
. 
Equals !
(! "
$num" #
)# $
)$ %
{ 
return 
await 
_service &
.& ' 
GetCategoryByIdAsync' ;
(; <
request< C
.C D
IdD F
)F G
;G H
} 
else 
{ 
var 
category 
= 
new "
Category# +
{ 
Name 
= 
request "
." #
Name# '
} 
; 
await 
_service 
. 
AddCategoryAsync /
(/ 0
category0 8
)8 9
;9 :
return   
category   
;    
}!! 
}"" 	
}## 
}$$ Á
BC:\git\TaskManagementSystem\src\Application\UseCases\CreateUser.cs
	namespace 	
Application
 
. 
UseCases 
{		 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

class 

CreateUser 
: 
ICreateUser *
{ 
private 
readonly 
UserService $
_userService% 1
;1 2
public 

CreateUser 
( 
UserService %
userService& 1
)1 2
{ 	
_userService 
= 
userService &
;& '
} 	
public 
async 
Task 
< 
User 
> 
ExecuteAsync  ,
(, -
RegisterUserDto- <
request= D
,D E
CancellationTokenF W
cancellationTokenX i
=j k
defaultl s
)s t
{ 	
var 
user 
= 
await 
_userService )
.) *
RegisterUserAsync* ;
(; <
request< C
.C D
NameD H
,H I
requestJ Q
.Q R
EmailR W
,W X
requestY `
.` a
Passworda i
)i j
;j k
return 
user 
; 
} 	
} 
} Ú+
CC:\git\TaskManagementSystem\src\Application\UseCases\TaskUseCase.cs
	namespace 	
Application
 
. 
UseCases 
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
TaskUseCase

 
:

 
ITaskUseCase

 +
{ 
private 
readonly 
TaskService $
_service% -
;- .
public 
TaskUseCase 
( 
TaskService &
service' .
). /
{ 	
_service 
= 
service 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Tasks& +
>+ ,
>, -
ExecuteAsync. :
(: ;
TaskGenerateDto; J
requestK R
,R S
CancellationTokenT e
cancellationTokenf w
=x y
default	z Å
)
Å Ç
{ 	
if 
( 
request 
. 
GetTasks  
)  !
{ 
return 
await 
_service %
.% &!
GetTasksByUserIdAsync& ;
(; <
request< C
.C D
TaskD H
.H I
UserIdI O
)O P
;P Q
} 
if 
( 
request 
. 

CreateTask "
)" #
{ 
var 
task 
= 
new 
Tasks $
{ 
Title 
= 
request #
.# $
Task$ (
.( )
Title) .
,. /
Description 
=  !
request" )
.) *
Task* .
.. /
Description/ :
,: ;
DueDate 
= 
request %
.% &
Task& *
.* +
DueDate+ 2
,2 3
IsCompleted   
=    !
request  " )
.  ) *
Task  * .
.  . /
IsCompleted  / :
,  : ;

CategoryId!! 
=!!  
request!!! (
.!!( )
Task!!) -
.!!- .

CategoryId!!. 8
,!!8 9
UserId"" 
="" 
request"" $
.""$ %
Task""% )
."") *
UserId""* 0
}## 
;## 
await$$ 
_service$$ 
.$$ 
CreateTaskAsync$$ .
($$. /
task$$/ 3
)$$3 4
;$$4 5
var%% 
listTask%% 
=%% 
new%% "
List%%# '
<%%' (
Tasks%%( -
>%%- .
(%%. /
)%%/ 0
;%%0 1
listTask&& 
.&& 
Add&& 
(&& 
task&& !
)&&! "
;&&" #
return(( 
listTask(( 
;((  
})) 
if** 
(** 
request** 
.** 

UpdateTask** "
)**" #
{++ 
var,, 
task,, 
=,, 
new,, 
Tasks,, $
{-- 
Id.. 
=.. 
request..  
...  !
Task..! %
...% &
UserId..& ,
,.., -
Title// 
=// 
request// #
.//# $
Task//$ (
.//( )
Title//) .
,//. /
Description00 
=00  !
request00" )
.00) *
Task00* .
.00. /
Description00/ :
,00: ;
DueDate11 
=11 
request11 %
.11% &
Task11& *
.11* +
DueDate11+ 2
,112 3
IsCompleted22 
=22  !
request22" )
.22) *
Task22* .
.22. /
IsCompleted22/ :
,22: ;

CategoryId33 
=33  
request33! (
.33( )
Task33) -
.33- .

CategoryId33. 8
,338 9
UserId44 
=44 
request44 $
.44$ %
Task44% )
.44) *
UserId44* 0
}55 
;55 
await77 
_service77 
.77 
UpdateTaskAsync77 .
(77. /
task77/ 3
)773 4
;774 5
var88 
listTask88 
=88 
new88 "
List88# '
<88' (
Tasks88( -
>88- .
(88. /
)88/ 0
;880 1
listTask99 
.99 
Add99 
(99 
task99 !
)99! "
;99" #
return;; 
listTask;; 
;;;  
}== 
if>> 
(>> 
request>> 
.>> 

DeleteTask>> "
)>>" #
{?? 
await@@ 
_service@@ 
.@@ 
DeleteTaskAsync@@ .
(@@. /
request@@/ 6
.@@6 7
Task@@7 ;
.@@; <
UserId@@< B
)@@B C
;@@C D
varBB 
listTaskBB 
=BB 
newBB "
ListBB# '
<BB' (
TasksBB( -
>BB- .
(BB. /
)BB/ 0
;BB0 1
returnDD 
listTaskDD 
;DD  
}FF 
returnHH 
newHH 
ListHH 
<HH 
TasksHH !
>HH! "
(HH" #
)HH# $
;HH$ %
}II 	
}JJ 
}KK 