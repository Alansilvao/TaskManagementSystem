›
`C:\repositorio\TaskManagementSystem\src\Application\Commons\Interfaces\IAuthenticatedUseCases.cs
	namespace 	
Application
 
. 
Commons 
. 

Interfaces (
;( )
public 
	interface "
IAuthenticatedUseCases '
<' (
in( *
TRequest+ 3
,3 4
	TResponse5 >
>> ?
{ 
Task 
< 
	TResponse 
> 
ExecuteAsync 
( 
TRequest 
request 
, 
string 
token !
,! "
CancellationToken# 4
cancellationToken5 F
=G H
defaultI P
)P Q
;Q R
} É
RC:\repositorio\TaskManagementSystem\src\Application\Commons\Interfaces\IUseCase.cs
	namespace 	
Application
 
. 
Commons 
. 

Interfaces (
;( )
public 
	interface 
IUseCase 
< 
in 
TRequest %
,% &
	TResponse' 0
>0 1
{ 
Task 
< 
	TResponse 
> 
ExecuteAsync 
( 
TRequest 
request 
, 
CancellationToken &
cancellationToken' 8
=9 :
default; B
)B C
;C D
} Õ
OC:\repositorio\TaskManagementSystem\src\Application\Dtos\AuthenticateUserDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
public 

class 
AuthenticateUserDto $
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ´
MC:\repositorio\TaskManagementSystem\src\Application\Dtos\CategoryCreateDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
public 

class 
CategoryCreateDto "
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} å
KC:\repositorio\TaskManagementSystem\src\Application\Dtos\RegisterUserDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
public 

class 
RegisterUserDto  
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 ¸	
IC:\repositorio\TaskManagementSystem\src\Application\Dtos\TaskCreateDto.cs
	namespace 	
Application
 
. 
Dtos 
{ 
public 

class 
TaskCreateDto 
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
DueDate 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
IsCompleted 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
int		 

CategoryId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
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
& '
} 
} Ð
UC:\repositorio\TaskManagementSystem\src\Application\Exceptions\HttpStatusException.cs
	namespace 	
Application
 
. 

Exceptions  
;  !
public 
class 
HttpStatusException  
:! "
	Exception# ,
{ 
public 
int 

StatusCode 
{ 
get 
; 
set !
;! "
}# $
public 
HttpStatusException 
( 
int 

statusCode  *
,* +
string, 2
message3 :
): ;
:< =
base> B
(B C
messageC J
)J K
{ 

StatusCode		 
=		 

statusCode		 
;		 
}

 
} Õ
bC:\repositorio\TaskManagementSystem\src\Application\Interfaces\Repositories\ICategoryRepository.cs
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
} Î
^C:\repositorio\TaskManagementSystem\src\Application\Interfaces\Repositories\ITaskRepository.cs
	namespace 	
Application
 
. 
	Interface 
{ 
public 

	interface 
ITaskRepository $
{ 
Task 
< 
Tasks 
> 
GetTaskByIdAsync $
($ %
int% (
id) +
)+ ,
;, -
Task		 
AddTaskAsync		 
(		 
Tasks		 
task		  $
)		$ %
;		% &
Task

 
UpdateTaskAsync

 
(

 
Tasks

 "
task

# '
)

' (
;

( )
Task 
DeleteTaskAsync 
( 
int  
id! #
)# $
;$ %
Task 
< 
IEnumerable 
< 
Tasks 
> 
>  !
GetTasksByUserIdAsync! 6
(6 7
int7 :
userId; A
)A B
;B C
} 
} –
^C:\repositorio\TaskManagementSystem\src\Application\Interfaces\Repositories\IUserRepository.cs
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
} ™
OC:\repositorio\TaskManagementSystem\src\Application\Services\CategoryService.cs
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
}(( È
KC:\repositorio\TaskManagementSystem\src\Application\Services\TaskService.cs
	namespace 	
Domain
 
. 
Service 
{ 
public 

class 
TaskService 
{ 
private		 
readonly		 
ITaskRepository		 (
_taskRepository		) 8
;		8 9
public 
TaskService 
( 
ITaskRepository *
taskRepository+ 9
)9 :
{ 	
_taskRepository 
= 
taskRepository ,
;, -
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
Tasks& +
>+ ,
>, -!
GetTasksByUserIdAsync. C
(C D
intD G
userIdH N
)N O
{ 	
return 
await 
_taskRepository (
.( )!
GetTasksByUserIdAsync) >
(> ?
userId? E
)E F
;F G
} 	
public 
async 
Task 
CreateTaskAsync )
() *
Tasks* /
task0 4
)4 5
{ 	
await 
_taskRepository !
.! "
AddTaskAsync" .
(. /
task/ 3
)3 4
;4 5
} 	
public 
async 
Task 
UpdateTaskAsync )
() *
Tasks* /
task0 4
)4 5
{ 	
await 
_taskRepository !
.! "
UpdateTaskAsync" 1
(1 2
task2 6
)6 7
;7 8
} 	
public 
async 
Task 
DeleteTaskAsync )
() *
int* -
id. 0
)0 1
{   	
await!! 
_taskRepository!! !
.!!! "
DeleteTaskAsync!!" 1
(!!1 2
id!!2 4
)!!4 5
;!!5 6
}"" 	
}## 
}$$ ½
KC:\repositorio\TaskManagementSystem\src\Application\Services\UserService.cs
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
}22 ê

JC:\repositorio\TaskManagementSystem\src\Application\UseCases\CreateUser.cs
	namespace 	
Application
 
. 
UseCases 
{ 
public 

class 

CreateUser 
{ 
private		 
readonly		 
IUserRepository		 (
_userRepository		) 8
;		8 9
public 

CreateUser 
( 
IUserRepository )
userRepository* 8
)8 9
{ 	
_userRepository 
= 
userRepository ,
;, -
} 	
public 
async 
Task 
ExecuteAsync &
(& '
string' -
username. 6
,6 7
string8 >
password? G
,G H
intI L
idM O
)O P
{ 	
var 
user 
= 
new 
User 
{ 
Id 
= 
id 
, 
Name 
= 
username 
,  
Password 
= 
password #
} 
; 
_userRepository 
. 
AddUserAsync )
() *
user* .
). /
;/ 0
} 	
} 
} 