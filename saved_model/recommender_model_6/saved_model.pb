܋
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( "
grad_xbool( "
grad_ybool( 
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.19.02v2.19.0-rc0-6-ge36baa302928�
�
-item_nn/batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *>

debug_name0.item_nn/batch_normalization_5/moving_variance/*
dtype0*
shape:@*>
shared_name/-item_nn/batch_normalization_5/moving_variance
�
Aitem_nn/batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp-item_nn/batch_normalization_5/moving_variance*
_output_shapes
:@*
dtype0
�
'user_nn/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *8

debug_name*(user_nn/batch_normalization/moving_mean/*
dtype0*
shape:�*8
shared_name)'user_nn/batch_normalization/moving_mean
�
;user_nn/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp'user_nn/batch_normalization/moving_mean*
_output_shapes	
:�*
dtype0
�
)user_nn/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *:

debug_name,*user_nn/batch_normalization_1/moving_mean/*
dtype0*
shape:�*:
shared_name+)user_nn/batch_normalization_1/moving_mean
�
=user_nn/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp)user_nn/batch_normalization_1/moving_mean*
_output_shapes	
:�*
dtype0
�
+user_nn/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *<

debug_name.,user_nn/batch_normalization/moving_variance/*
dtype0*
shape:�*<
shared_name-+user_nn/batch_normalization/moving_variance
�
?user_nn/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp+user_nn/batch_normalization/moving_variance*
_output_shapes	
:�*
dtype0
�
)item_nn/batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *:

debug_name,*item_nn/batch_normalization_5/moving_mean/*
dtype0*
shape:@*:
shared_name+)item_nn/batch_normalization_5/moving_mean
�
=item_nn/batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp)item_nn/batch_normalization_5/moving_mean*
_output_shapes
:@*
dtype0
�
-item_nn/batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *>

debug_name0.item_nn/batch_normalization_4/moving_variance/*
dtype0*
shape:�*>
shared_name/-item_nn/batch_normalization_4/moving_variance
�
Aitem_nn/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp-item_nn/batch_normalization_4/moving_variance*
_output_shapes	
:�*
dtype0
�
-item_nn/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *>

debug_name0.item_nn/batch_normalization_3/moving_variance/*
dtype0*
shape:�*>
shared_name/-item_nn/batch_normalization_3/moving_variance
�
Aitem_nn/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp-item_nn/batch_normalization_3/moving_variance*
_output_shapes	
:�*
dtype0
�
)item_nn/batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *:

debug_name,*item_nn/batch_normalization_4/moving_mean/*
dtype0*
shape:�*:
shared_name+)item_nn/batch_normalization_4/moving_mean
�
=item_nn/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp)item_nn/batch_normalization_4/moving_mean*
_output_shapes	
:�*
dtype0
�
)item_nn/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *:

debug_name,*item_nn/batch_normalization_3/moving_mean/*
dtype0*
shape:�*:
shared_name+)item_nn/batch_normalization_3/moving_mean
�
=item_nn/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp)item_nn/batch_normalization_3/moving_mean*
_output_shapes	
:�*
dtype0
�
-user_nn/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *>

debug_name0.user_nn/batch_normalization_2/moving_variance/*
dtype0*
shape:@*>
shared_name/-user_nn/batch_normalization_2/moving_variance
�
Auser_nn/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp-user_nn/batch_normalization_2/moving_variance*
_output_shapes
:@*
dtype0
�
-user_nn/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *>

debug_name0.user_nn/batch_normalization_1/moving_variance/*
dtype0*
shape:�*>
shared_name/-user_nn/batch_normalization_1/moving_variance
�
Auser_nn/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp-user_nn/batch_normalization_1/moving_variance*
_output_shapes	
:�*
dtype0
�
)user_nn/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *:

debug_name,*user_nn/batch_normalization_2/moving_mean/*
dtype0*
shape:@*:
shared_name+)user_nn/batch_normalization_2/moving_mean
�
=user_nn/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp)user_nn/batch_normalization_2/moving_mean*
_output_shapes
:@*
dtype0
�
item_nn/dense_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameitem_nn/dense_5/bias/*
dtype0*
shape:�*%
shared_nameitem_nn/dense_5/bias
z
(item_nn/dense_5/bias/Read/ReadVariableOpReadVariableOpitem_nn/dense_5/bias*
_output_shapes	
:�*
dtype0
�
#item_nn/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$item_nn/batch_normalization_3/gamma/*
dtype0*
shape:�*4
shared_name%#item_nn/batch_normalization_3/gamma
�
7item_nn/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp#item_nn/batch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
item_nn/dense_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_5/kernel/*
dtype0*
shape:
��*'
shared_nameitem_nn/dense_5/kernel
�
*item_nn/dense_5/kernel/Read/ReadVariableOpReadVariableOpitem_nn/dense_5/kernel* 
_output_shapes
:
��*
dtype0
�
item_nn/dense_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_4/kernel/*
dtype0*
shape:
��*'
shared_nameitem_nn/dense_4/kernel
�
*item_nn/dense_4/kernel/Read/ReadVariableOpReadVariableOpitem_nn/dense_4/kernel* 
_output_shapes
:
��*
dtype0
�
user_nn/dense_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense_2/kernel/*
dtype0*
shape:	�@*'
shared_nameuser_nn/dense_2/kernel
�
*user_nn/dense_2/kernel/Read/ReadVariableOpReadVariableOpuser_nn/dense_2/kernel*
_output_shapes
:	�@*
dtype0
�
user_nn/dense_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense_1/kernel/*
dtype0*
shape:
��*'
shared_nameuser_nn/dense_1/kernel
�
*user_nn/dense_1/kernel/Read/ReadVariableOpReadVariableOpuser_nn/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
item_nn/dense_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_7/kernel/*
dtype0*
shape
:@ *'
shared_nameitem_nn/dense_7/kernel
�
*item_nn/dense_7/kernel/Read/ReadVariableOpReadVariableOpitem_nn/dense_7/kernel*
_output_shapes

:@ *
dtype0
�
user_nn/dense_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameuser_nn/dense_3/bias/*
dtype0*
shape: *%
shared_nameuser_nn/dense_3/bias
y
(user_nn/dense_3/bias/Read/ReadVariableOpReadVariableOpuser_nn/dense_3/bias*
_output_shapes
: *
dtype0
�
#user_nn/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$user_nn/batch_normalization_2/gamma/*
dtype0*
shape:@*4
shared_name%#user_nn/batch_normalization_2/gamma
�
7user_nn/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp#user_nn/batch_normalization_2/gamma*
_output_shapes
:@*
dtype0
�
user_nn/dense/kernelVarHandleOp*
_output_shapes
: *%

debug_nameuser_nn/dense/kernel/*
dtype0*
shape:	 �*%
shared_nameuser_nn/dense/kernel
~
(user_nn/dense/kernel/Read/ReadVariableOpReadVariableOpuser_nn/dense/kernel*
_output_shapes
:	 �*
dtype0
�
#item_nn/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$item_nn/batch_normalization_5/gamma/*
dtype0*
shape:@*4
shared_name%#item_nn/batch_normalization_5/gamma
�
7item_nn/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp#item_nn/batch_normalization_5/gamma*
_output_shapes
:@*
dtype0
�
item_nn/dense_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameitem_nn/dense_4/bias/*
dtype0*
shape:�*%
shared_nameitem_nn/dense_4/bias
z
(item_nn/dense_4/bias/Read/ReadVariableOpReadVariableOpitem_nn/dense_4/bias*
_output_shapes	
:�*
dtype0
�
user_nn/dense_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense_3/kernel/*
dtype0*
shape
:@ *'
shared_nameuser_nn/dense_3/kernel
�
*user_nn/dense_3/kernel/Read/ReadVariableOpReadVariableOpuser_nn/dense_3/kernel*
_output_shapes

:@ *
dtype0
�
user_nn/dense_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameuser_nn/dense_1/bias/*
dtype0*
shape:�*%
shared_nameuser_nn/dense_1/bias
z
(user_nn/dense_1/bias/Read/ReadVariableOpReadVariableOpuser_nn/dense_1/bias*
_output_shapes	
:�*
dtype0
�
 user_nn/batch_normalization/betaVarHandleOp*
_output_shapes
: *1

debug_name#!user_nn/batch_normalization/beta/*
dtype0*
shape:�*1
shared_name" user_nn/batch_normalization/beta
�
4user_nn/batch_normalization/beta/Read/ReadVariableOpReadVariableOp user_nn/batch_normalization/beta*
_output_shapes	
:�*
dtype0
�
item_nn/dense_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameitem_nn/dense_7/bias/*
dtype0*
shape: *%
shared_nameitem_nn/dense_7/bias
y
(item_nn/dense_7/bias/Read/ReadVariableOpReadVariableOpitem_nn/dense_7/bias*
_output_shapes
: *
dtype0
�
"item_nn/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *3

debug_name%#item_nn/batch_normalization_5/beta/*
dtype0*
shape:@*3
shared_name$"item_nn/batch_normalization_5/beta
�
6item_nn/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp"item_nn/batch_normalization_5/beta*
_output_shapes
:@*
dtype0
�
item_nn/dense_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_6/kernel/*
dtype0*
shape:	�@*'
shared_nameitem_nn/dense_6/kernel
�
*item_nn/dense_6/kernel/Read/ReadVariableOpReadVariableOpitem_nn/dense_6/kernel*
_output_shapes
:	�@*
dtype0
�
"user_nn/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *3

debug_name%#user_nn/batch_normalization_2/beta/*
dtype0*
shape:@*3
shared_name$"user_nn/batch_normalization_2/beta
�
6user_nn/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp"user_nn/batch_normalization_2/beta*
_output_shapes
:@*
dtype0
�
!user_nn/batch_normalization/gammaVarHandleOp*
_output_shapes
: *2

debug_name$"user_nn/batch_normalization/gamma/*
dtype0*
shape:�*2
shared_name#!user_nn/batch_normalization/gamma
�
5user_nn/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp!user_nn/batch_normalization/gamma*
_output_shapes	
:�*
dtype0
�
#item_nn/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$item_nn/batch_normalization_4/gamma/*
dtype0*
shape:�*4
shared_name%#item_nn/batch_normalization_4/gamma
�
7item_nn/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp#item_nn/batch_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
item_nn/dense_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameitem_nn/dense_6/bias/*
dtype0*
shape:@*%
shared_nameitem_nn/dense_6/bias
y
(item_nn/dense_6/bias/Read/ReadVariableOpReadVariableOpitem_nn/dense_6/bias*
_output_shapes
:@*
dtype0
�
"item_nn/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *3

debug_name%#item_nn/batch_normalization_4/beta/*
dtype0*
shape:�*3
shared_name$"item_nn/batch_normalization_4/beta
�
6item_nn/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp"item_nn/batch_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
"item_nn/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *3

debug_name%#item_nn/batch_normalization_3/beta/*
dtype0*
shape:�*3
shared_name$"item_nn/batch_normalization_3/beta
�
6item_nn/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp"item_nn/batch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
user_nn/dense_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameuser_nn/dense_2/bias/*
dtype0*
shape:@*%
shared_nameuser_nn/dense_2/bias
y
(user_nn/dense_2/bias/Read/ReadVariableOpReadVariableOpuser_nn/dense_2/bias*
_output_shapes
:@*
dtype0
�
#user_nn/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$user_nn/batch_normalization_1/gamma/*
dtype0*
shape:�*4
shared_name%#user_nn/batch_normalization_1/gamma
�
7user_nn/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp#user_nn/batch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
user_nn/dense/biasVarHandleOp*
_output_shapes
: *#

debug_nameuser_nn/dense/bias/*
dtype0*
shape:�*#
shared_nameuser_nn/dense/bias
v
&user_nn/dense/bias/Read/ReadVariableOpReadVariableOpuser_nn/dense/bias*
_output_shapes	
:�*
dtype0
�
"user_nn/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *3

debug_name%#user_nn/batch_normalization_1/beta/*
dtype0*
shape:�*3
shared_name$"user_nn/batch_normalization_1/beta
�
6user_nn/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp"user_nn/batch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
item_nn/dense_7/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_7/bias_1/*
dtype0*
shape: *'
shared_nameitem_nn/dense_7/bias_1
}
*item_nn/dense_7/bias_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_7/bias_1*
_output_shapes
: *
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_7/bias_1*
_class
loc:@Variable*
_output_shapes
: *
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
�
item_nn/dense_7/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameitem_nn/dense_7/kernel_1/*
dtype0*
shape
:@ *)
shared_nameitem_nn/dense_7/kernel_1
�
,item_nn/dense_7/kernel_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_7/kernel_1*
_output_shapes

:@ *
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_7/kernel_1*
_class
loc:@Variable_1*
_output_shapes

:@ *
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@ *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@ *
dtype0
�
/item_nn/batch_normalization_5/moving_variance_1VarHandleOp*
_output_shapes
: *@

debug_name20item_nn/batch_normalization_5/moving_variance_1/*
dtype0*
shape:@*@
shared_name1/item_nn/batch_normalization_5/moving_variance_1
�
Citem_nn/batch_normalization_5/moving_variance_1/Read/ReadVariableOpReadVariableOp/item_nn/batch_normalization_5/moving_variance_1*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp/item_nn/batch_normalization_5/moving_variance_1*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
+item_nn/batch_normalization_5/moving_mean_1VarHandleOp*
_output_shapes
: *<

debug_name.,item_nn/batch_normalization_5/moving_mean_1/*
dtype0*
shape:@*<
shared_name-+item_nn/batch_normalization_5/moving_mean_1
�
?item_nn/batch_normalization_5/moving_mean_1/Read/ReadVariableOpReadVariableOp+item_nn/batch_normalization_5/moving_mean_1*
_output_shapes
:@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOp+item_nn/batch_normalization_5/moving_mean_1*
_class
loc:@Variable_3*
_output_shapes
:@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:@*
dtype0
�
$item_nn/batch_normalization_5/beta_1VarHandleOp*
_output_shapes
: *5

debug_name'%item_nn/batch_normalization_5/beta_1/*
dtype0*
shape:@*5
shared_name&$item_nn/batch_normalization_5/beta_1
�
8item_nn/batch_normalization_5/beta_1/Read/ReadVariableOpReadVariableOp$item_nn/batch_normalization_5/beta_1*
_output_shapes
:@*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp$item_nn/batch_normalization_5/beta_1*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:@*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:@*
dtype0
�
%item_nn/batch_normalization_5/gamma_1VarHandleOp*
_output_shapes
: *6

debug_name(&item_nn/batch_normalization_5/gamma_1/*
dtype0*
shape:@*6
shared_name'%item_nn/batch_normalization_5/gamma_1
�
9item_nn/batch_normalization_5/gamma_1/Read/ReadVariableOpReadVariableOp%item_nn/batch_normalization_5/gamma_1*
_output_shapes
:@*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp%item_nn/batch_normalization_5/gamma_1*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:@*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
�
item_nn/dense_6/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_6/bias_1/*
dtype0*
shape:@*'
shared_nameitem_nn/dense_6/bias_1
}
*item_nn/dense_6/bias_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_6/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_6/bias_1*
_class
loc:@Variable_6*
_output_shapes
:@*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:@*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:@*
dtype0
�
item_nn/dense_6/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameitem_nn/dense_6/kernel_1/*
dtype0*
shape:	�@*)
shared_nameitem_nn/dense_6/kernel_1
�
,item_nn/dense_6/kernel_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_6/kernel_1*
_output_shapes
:	�@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_6/kernel_1*
_class
loc:@Variable_7*
_output_shapes
:	�@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:	�@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
j
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:	�@*
dtype0
�
%seed_generator_3/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_3/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_3/seed_generator_state
�
9seed_generator_3/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_3/seed_generator_state*
_output_shapes
:*
dtype0	
�
%Variable_8/Initializer/ReadVariableOpReadVariableOp%seed_generator_3/seed_generator_state*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0	
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0	*
shape:*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0	
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:*
dtype0	
�
/item_nn/batch_normalization_4/moving_variance_1VarHandleOp*
_output_shapes
: *@

debug_name20item_nn/batch_normalization_4/moving_variance_1/*
dtype0*
shape:�*@
shared_name1/item_nn/batch_normalization_4/moving_variance_1
�
Citem_nn/batch_normalization_4/moving_variance_1/Read/ReadVariableOpReadVariableOp/item_nn/batch_normalization_4/moving_variance_1*
_output_shapes	
:�*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOp/item_nn/batch_normalization_4/moving_variance_1*
_class
loc:@Variable_9*
_output_shapes	
:�*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:�*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
f
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes	
:�*
dtype0
�
+item_nn/batch_normalization_4/moving_mean_1VarHandleOp*
_output_shapes
: *<

debug_name.,item_nn/batch_normalization_4/moving_mean_1/*
dtype0*
shape:�*<
shared_name-+item_nn/batch_normalization_4/moving_mean_1
�
?item_nn/batch_normalization_4/moving_mean_1/Read/ReadVariableOpReadVariableOp+item_nn/batch_normalization_4/moving_mean_1*
_output_shapes	
:�*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOp+item_nn/batch_normalization_4/moving_mean_1*
_class
loc:@Variable_10*
_output_shapes	
:�*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:�*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
h
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes	
:�*
dtype0
�
$item_nn/batch_normalization_4/beta_1VarHandleOp*
_output_shapes
: *5

debug_name'%item_nn/batch_normalization_4/beta_1/*
dtype0*
shape:�*5
shared_name&$item_nn/batch_normalization_4/beta_1
�
8item_nn/batch_normalization_4/beta_1/Read/ReadVariableOpReadVariableOp$item_nn/batch_normalization_4/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOp$item_nn/batch_normalization_4/beta_1*
_class
loc:@Variable_11*
_output_shapes	
:�*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:�*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
h
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes	
:�*
dtype0
�
%item_nn/batch_normalization_4/gamma_1VarHandleOp*
_output_shapes
: *6

debug_name(&item_nn/batch_normalization_4/gamma_1/*
dtype0*
shape:�*6
shared_name'%item_nn/batch_normalization_4/gamma_1
�
9item_nn/batch_normalization_4/gamma_1/Read/ReadVariableOpReadVariableOp%item_nn/batch_normalization_4/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp%item_nn/batch_normalization_4/gamma_1*
_class
loc:@Variable_12*
_output_shapes	
:�*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:�*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
h
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes	
:�*
dtype0
�
item_nn/dense_5/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_5/bias_1/*
dtype0*
shape:�*'
shared_nameitem_nn/dense_5/bias_1
~
*item_nn/dense_5/bias_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_5/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_5/bias_1*
_class
loc:@Variable_13*
_output_shapes	
:�*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:�*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
h
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes	
:�*
dtype0
�
item_nn/dense_5/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameitem_nn/dense_5/kernel_1/*
dtype0*
shape:
��*)
shared_nameitem_nn/dense_5/kernel_1
�
,item_nn/dense_5/kernel_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_5/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_5/kernel_1*
_class
loc:@Variable_14* 
_output_shapes
:
��*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:
��*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
m
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14* 
_output_shapes
:
��*
dtype0
�
%seed_generator_2/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_2/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_2/seed_generator_state
�
9seed_generator_2/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_2/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_15/Initializer/ReadVariableOpReadVariableOp%seed_generator_2/seed_generator_state*
_class
loc:@Variable_15*
_output_shapes
:*
dtype0	
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0	*
shape:*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0	
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:*
dtype0	
�
/item_nn/batch_normalization_3/moving_variance_1VarHandleOp*
_output_shapes
: *@

debug_name20item_nn/batch_normalization_3/moving_variance_1/*
dtype0*
shape:�*@
shared_name1/item_nn/batch_normalization_3/moving_variance_1
�
Citem_nn/batch_normalization_3/moving_variance_1/Read/ReadVariableOpReadVariableOp/item_nn/batch_normalization_3/moving_variance_1*
_output_shapes	
:�*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp/item_nn/batch_normalization_3/moving_variance_1*
_class
loc:@Variable_16*
_output_shapes	
:�*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:�*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
h
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes	
:�*
dtype0
�
+item_nn/batch_normalization_3/moving_mean_1VarHandleOp*
_output_shapes
: *<

debug_name.,item_nn/batch_normalization_3/moving_mean_1/*
dtype0*
shape:�*<
shared_name-+item_nn/batch_normalization_3/moving_mean_1
�
?item_nn/batch_normalization_3/moving_mean_1/Read/ReadVariableOpReadVariableOp+item_nn/batch_normalization_3/moving_mean_1*
_output_shapes	
:�*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp+item_nn/batch_normalization_3/moving_mean_1*
_class
loc:@Variable_17*
_output_shapes	
:�*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape:�*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
h
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes	
:�*
dtype0
�
$item_nn/batch_normalization_3/beta_1VarHandleOp*
_output_shapes
: *5

debug_name'%item_nn/batch_normalization_3/beta_1/*
dtype0*
shape:�*5
shared_name&$item_nn/batch_normalization_3/beta_1
�
8item_nn/batch_normalization_3/beta_1/Read/ReadVariableOpReadVariableOp$item_nn/batch_normalization_3/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp$item_nn/batch_normalization_3/beta_1*
_class
loc:@Variable_18*
_output_shapes	
:�*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:�*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
h
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes	
:�*
dtype0
�
%item_nn/batch_normalization_3/gamma_1VarHandleOp*
_output_shapes
: *6

debug_name(&item_nn/batch_normalization_3/gamma_1/*
dtype0*
shape:�*6
shared_name'%item_nn/batch_normalization_3/gamma_1
�
9item_nn/batch_normalization_3/gamma_1/Read/ReadVariableOpReadVariableOp%item_nn/batch_normalization_3/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOp%item_nn/batch_normalization_3/gamma_1*
_class
loc:@Variable_19*
_output_shapes	
:�*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:�*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
h
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes	
:�*
dtype0
�
item_nn/dense_4/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameitem_nn/dense_4/bias_1/*
dtype0*
shape:�*'
shared_nameitem_nn/dense_4/bias_1
~
*item_nn/dense_4/bias_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_4/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_4/bias_1*
_class
loc:@Variable_20*
_output_shapes	
:�*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:�*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
h
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes	
:�*
dtype0
�
item_nn/dense_4/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameitem_nn/dense_4/kernel_1/*
dtype0*
shape:
��*)
shared_nameitem_nn/dense_4/kernel_1
�
,item_nn/dense_4/kernel_1/Read/ReadVariableOpReadVariableOpitem_nn/dense_4/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOpitem_nn/dense_4/kernel_1*
_class
loc:@Variable_21* 
_output_shapes
:
��*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:
��*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
m
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21* 
_output_shapes
:
��*
dtype0
�
user_nn/dense_3/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense_3/bias_1/*
dtype0*
shape: *'
shared_nameuser_nn/dense_3/bias_1
}
*user_nn/dense_3/bias_1/Read/ReadVariableOpReadVariableOpuser_nn/dense_3/bias_1*
_output_shapes
: *
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpuser_nn/dense_3/bias_1*
_class
loc:@Variable_22*
_output_shapes
: *
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape: *
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
g
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
: *
dtype0
�
user_nn/dense_3/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameuser_nn/dense_3/kernel_1/*
dtype0*
shape
:@ *)
shared_nameuser_nn/dense_3/kernel_1
�
,user_nn/dense_3/kernel_1/Read/ReadVariableOpReadVariableOpuser_nn/dense_3/kernel_1*
_output_shapes

:@ *
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpuser_nn/dense_3/kernel_1*
_class
loc:@Variable_23*
_output_shapes

:@ *
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape
:@ *
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
k
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*
_output_shapes

:@ *
dtype0
�
/user_nn/batch_normalization_2/moving_variance_1VarHandleOp*
_output_shapes
: *@

debug_name20user_nn/batch_normalization_2/moving_variance_1/*
dtype0*
shape:@*@
shared_name1/user_nn/batch_normalization_2/moving_variance_1
�
Cuser_nn/batch_normalization_2/moving_variance_1/Read/ReadVariableOpReadVariableOp/user_nn/batch_normalization_2/moving_variance_1*
_output_shapes
:@*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp/user_nn/batch_normalization_2/moving_variance_1*
_class
loc:@Variable_24*
_output_shapes
:@*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:@*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
g
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes
:@*
dtype0
�
+user_nn/batch_normalization_2/moving_mean_1VarHandleOp*
_output_shapes
: *<

debug_name.,user_nn/batch_normalization_2/moving_mean_1/*
dtype0*
shape:@*<
shared_name-+user_nn/batch_normalization_2/moving_mean_1
�
?user_nn/batch_normalization_2/moving_mean_1/Read/ReadVariableOpReadVariableOp+user_nn/batch_normalization_2/moving_mean_1*
_output_shapes
:@*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOp+user_nn/batch_normalization_2/moving_mean_1*
_class
loc:@Variable_25*
_output_shapes
:@*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:@*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
g
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes
:@*
dtype0
�
$user_nn/batch_normalization_2/beta_1VarHandleOp*
_output_shapes
: *5

debug_name'%user_nn/batch_normalization_2/beta_1/*
dtype0*
shape:@*5
shared_name&$user_nn/batch_normalization_2/beta_1
�
8user_nn/batch_normalization_2/beta_1/Read/ReadVariableOpReadVariableOp$user_nn/batch_normalization_2/beta_1*
_output_shapes
:@*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOp$user_nn/batch_normalization_2/beta_1*
_class
loc:@Variable_26*
_output_shapes
:@*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:@*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
g
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*
_output_shapes
:@*
dtype0
�
%user_nn/batch_normalization_2/gamma_1VarHandleOp*
_output_shapes
: *6

debug_name(&user_nn/batch_normalization_2/gamma_1/*
dtype0*
shape:@*6
shared_name'%user_nn/batch_normalization_2/gamma_1
�
9user_nn/batch_normalization_2/gamma_1/Read/ReadVariableOpReadVariableOp%user_nn/batch_normalization_2/gamma_1*
_output_shapes
:@*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOp%user_nn/batch_normalization_2/gamma_1*
_class
loc:@Variable_27*
_output_shapes
:@*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:@*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
g
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*
_output_shapes
:@*
dtype0
�
user_nn/dense_2/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense_2/bias_1/*
dtype0*
shape:@*'
shared_nameuser_nn/dense_2/bias_1
}
*user_nn/dense_2/bias_1/Read/ReadVariableOpReadVariableOpuser_nn/dense_2/bias_1*
_output_shapes
:@*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOpuser_nn/dense_2/bias_1*
_class
loc:@Variable_28*
_output_shapes
:@*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:@*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
g
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
:@*
dtype0
�
user_nn/dense_2/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameuser_nn/dense_2/kernel_1/*
dtype0*
shape:	�@*)
shared_nameuser_nn/dense_2/kernel_1
�
,user_nn/dense_2/kernel_1/Read/ReadVariableOpReadVariableOpuser_nn/dense_2/kernel_1*
_output_shapes
:	�@*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOpuser_nn/dense_2/kernel_1*
_class
loc:@Variable_29*
_output_shapes
:	�@*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:	�@*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
l
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes
:	�@*
dtype0
�
%seed_generator_1/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_1/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_1/seed_generator_state
�
9seed_generator_1/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_1/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_30/Initializer/ReadVariableOpReadVariableOp%seed_generator_1/seed_generator_state*
_class
loc:@Variable_30*
_output_shapes
:*
dtype0	
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0	*
shape:*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0	
g
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*
_output_shapes
:*
dtype0	
�
/user_nn/batch_normalization_1/moving_variance_1VarHandleOp*
_output_shapes
: *@

debug_name20user_nn/batch_normalization_1/moving_variance_1/*
dtype0*
shape:�*@
shared_name1/user_nn/batch_normalization_1/moving_variance_1
�
Cuser_nn/batch_normalization_1/moving_variance_1/Read/ReadVariableOpReadVariableOp/user_nn/batch_normalization_1/moving_variance_1*
_output_shapes	
:�*
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOp/user_nn/batch_normalization_1/moving_variance_1*
_class
loc:@Variable_31*
_output_shapes	
:�*
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape:�*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
h
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*
_output_shapes	
:�*
dtype0
�
+user_nn/batch_normalization_1/moving_mean_1VarHandleOp*
_output_shapes
: *<

debug_name.,user_nn/batch_normalization_1/moving_mean_1/*
dtype0*
shape:�*<
shared_name-+user_nn/batch_normalization_1/moving_mean_1
�
?user_nn/batch_normalization_1/moving_mean_1/Read/ReadVariableOpReadVariableOp+user_nn/batch_normalization_1/moving_mean_1*
_output_shapes	
:�*
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOp+user_nn/batch_normalization_1/moving_mean_1*
_class
loc:@Variable_32*
_output_shapes	
:�*
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape:�*
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
h
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes	
:�*
dtype0
�
$user_nn/batch_normalization_1/beta_1VarHandleOp*
_output_shapes
: *5

debug_name'%user_nn/batch_normalization_1/beta_1/*
dtype0*
shape:�*5
shared_name&$user_nn/batch_normalization_1/beta_1
�
8user_nn/batch_normalization_1/beta_1/Read/ReadVariableOpReadVariableOp$user_nn/batch_normalization_1/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOp$user_nn/batch_normalization_1/beta_1*
_class
loc:@Variable_33*
_output_shapes	
:�*
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape:�*
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
h
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes	
:�*
dtype0
�
%user_nn/batch_normalization_1/gamma_1VarHandleOp*
_output_shapes
: *6

debug_name(&user_nn/batch_normalization_1/gamma_1/*
dtype0*
shape:�*6
shared_name'%user_nn/batch_normalization_1/gamma_1
�
9user_nn/batch_normalization_1/gamma_1/Read/ReadVariableOpReadVariableOp%user_nn/batch_normalization_1/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOp%user_nn/batch_normalization_1/gamma_1*
_class
loc:@Variable_34*
_output_shapes	
:�*
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape:�*
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
h
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*
_output_shapes	
:�*
dtype0
�
user_nn/dense_1/bias_1VarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense_1/bias_1/*
dtype0*
shape:�*'
shared_nameuser_nn/dense_1/bias_1
~
*user_nn/dense_1/bias_1/Read/ReadVariableOpReadVariableOpuser_nn/dense_1/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOpuser_nn/dense_1/bias_1*
_class
loc:@Variable_35*
_output_shapes	
:�*
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape:�*
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
h
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35*
_output_shapes	
:�*
dtype0
�
user_nn/dense_1/kernel_1VarHandleOp*
_output_shapes
: *)

debug_nameuser_nn/dense_1/kernel_1/*
dtype0*
shape:
��*)
shared_nameuser_nn/dense_1/kernel_1
�
,user_nn/dense_1/kernel_1/Read/ReadVariableOpReadVariableOpuser_nn/dense_1/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_36/Initializer/ReadVariableOpReadVariableOpuser_nn/dense_1/kernel_1*
_class
loc:@Variable_36* 
_output_shapes
:
��*
dtype0
�
Variable_36VarHandleOp*
_class
loc:@Variable_36*
_output_shapes
: *

debug_nameVariable_36/*
dtype0*
shape:
��*
shared_nameVariable_36
g
,Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_36*
_output_shapes
: 
h
Variable_36/AssignAssignVariableOpVariable_36&Variable_36/Initializer/ReadVariableOp*
dtype0
m
Variable_36/Read/ReadVariableOpReadVariableOpVariable_36* 
_output_shapes
:
��*
dtype0
�
#seed_generator/seed_generator_stateVarHandleOp*
_output_shapes
: *4

debug_name&$seed_generator/seed_generator_state/*
dtype0	*
shape:*4
shared_name%#seed_generator/seed_generator_state
�
7seed_generator/seed_generator_state/Read/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_37/Initializer/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_class
loc:@Variable_37*
_output_shapes
:*
dtype0	
�
Variable_37VarHandleOp*
_class
loc:@Variable_37*
_output_shapes
: *

debug_nameVariable_37/*
dtype0	*
shape:*
shared_nameVariable_37
g
,Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_37*
_output_shapes
: 
h
Variable_37/AssignAssignVariableOpVariable_37&Variable_37/Initializer/ReadVariableOp*
dtype0	
g
Variable_37/Read/ReadVariableOpReadVariableOpVariable_37*
_output_shapes
:*
dtype0	
�
-user_nn/batch_normalization/moving_variance_1VarHandleOp*
_output_shapes
: *>

debug_name0.user_nn/batch_normalization/moving_variance_1/*
dtype0*
shape:�*>
shared_name/-user_nn/batch_normalization/moving_variance_1
�
Auser_nn/batch_normalization/moving_variance_1/Read/ReadVariableOpReadVariableOp-user_nn/batch_normalization/moving_variance_1*
_output_shapes	
:�*
dtype0
�
&Variable_38/Initializer/ReadVariableOpReadVariableOp-user_nn/batch_normalization/moving_variance_1*
_class
loc:@Variable_38*
_output_shapes	
:�*
dtype0
�
Variable_38VarHandleOp*
_class
loc:@Variable_38*
_output_shapes
: *

debug_nameVariable_38/*
dtype0*
shape:�*
shared_nameVariable_38
g
,Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_38*
_output_shapes
: 
h
Variable_38/AssignAssignVariableOpVariable_38&Variable_38/Initializer/ReadVariableOp*
dtype0
h
Variable_38/Read/ReadVariableOpReadVariableOpVariable_38*
_output_shapes	
:�*
dtype0
�
)user_nn/batch_normalization/moving_mean_1VarHandleOp*
_output_shapes
: *:

debug_name,*user_nn/batch_normalization/moving_mean_1/*
dtype0*
shape:�*:
shared_name+)user_nn/batch_normalization/moving_mean_1
�
=user_nn/batch_normalization/moving_mean_1/Read/ReadVariableOpReadVariableOp)user_nn/batch_normalization/moving_mean_1*
_output_shapes	
:�*
dtype0
�
&Variable_39/Initializer/ReadVariableOpReadVariableOp)user_nn/batch_normalization/moving_mean_1*
_class
loc:@Variable_39*
_output_shapes	
:�*
dtype0
�
Variable_39VarHandleOp*
_class
loc:@Variable_39*
_output_shapes
: *

debug_nameVariable_39/*
dtype0*
shape:�*
shared_nameVariable_39
g
,Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_39*
_output_shapes
: 
h
Variable_39/AssignAssignVariableOpVariable_39&Variable_39/Initializer/ReadVariableOp*
dtype0
h
Variable_39/Read/ReadVariableOpReadVariableOpVariable_39*
_output_shapes	
:�*
dtype0
�
"user_nn/batch_normalization/beta_1VarHandleOp*
_output_shapes
: *3

debug_name%#user_nn/batch_normalization/beta_1/*
dtype0*
shape:�*3
shared_name$"user_nn/batch_normalization/beta_1
�
6user_nn/batch_normalization/beta_1/Read/ReadVariableOpReadVariableOp"user_nn/batch_normalization/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_40/Initializer/ReadVariableOpReadVariableOp"user_nn/batch_normalization/beta_1*
_class
loc:@Variable_40*
_output_shapes	
:�*
dtype0
�
Variable_40VarHandleOp*
_class
loc:@Variable_40*
_output_shapes
: *

debug_nameVariable_40/*
dtype0*
shape:�*
shared_nameVariable_40
g
,Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_40*
_output_shapes
: 
h
Variable_40/AssignAssignVariableOpVariable_40&Variable_40/Initializer/ReadVariableOp*
dtype0
h
Variable_40/Read/ReadVariableOpReadVariableOpVariable_40*
_output_shapes	
:�*
dtype0
�
#user_nn/batch_normalization/gamma_1VarHandleOp*
_output_shapes
: *4

debug_name&$user_nn/batch_normalization/gamma_1/*
dtype0*
shape:�*4
shared_name%#user_nn/batch_normalization/gamma_1
�
7user_nn/batch_normalization/gamma_1/Read/ReadVariableOpReadVariableOp#user_nn/batch_normalization/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_41/Initializer/ReadVariableOpReadVariableOp#user_nn/batch_normalization/gamma_1*
_class
loc:@Variable_41*
_output_shapes	
:�*
dtype0
�
Variable_41VarHandleOp*
_class
loc:@Variable_41*
_output_shapes
: *

debug_nameVariable_41/*
dtype0*
shape:�*
shared_nameVariable_41
g
,Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_41*
_output_shapes
: 
h
Variable_41/AssignAssignVariableOpVariable_41&Variable_41/Initializer/ReadVariableOp*
dtype0
h
Variable_41/Read/ReadVariableOpReadVariableOpVariable_41*
_output_shapes	
:�*
dtype0
�
user_nn/dense/bias_1VarHandleOp*
_output_shapes
: *%

debug_nameuser_nn/dense/bias_1/*
dtype0*
shape:�*%
shared_nameuser_nn/dense/bias_1
z
(user_nn/dense/bias_1/Read/ReadVariableOpReadVariableOpuser_nn/dense/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_42/Initializer/ReadVariableOpReadVariableOpuser_nn/dense/bias_1*
_class
loc:@Variable_42*
_output_shapes	
:�*
dtype0
�
Variable_42VarHandleOp*
_class
loc:@Variable_42*
_output_shapes
: *

debug_nameVariable_42/*
dtype0*
shape:�*
shared_nameVariable_42
g
,Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_42*
_output_shapes
: 
h
Variable_42/AssignAssignVariableOpVariable_42&Variable_42/Initializer/ReadVariableOp*
dtype0
h
Variable_42/Read/ReadVariableOpReadVariableOpVariable_42*
_output_shapes	
:�*
dtype0
�
user_nn/dense/kernel_1VarHandleOp*
_output_shapes
: *'

debug_nameuser_nn/dense/kernel_1/*
dtype0*
shape:	 �*'
shared_nameuser_nn/dense/kernel_1
�
*user_nn/dense/kernel_1/Read/ReadVariableOpReadVariableOpuser_nn/dense/kernel_1*
_output_shapes
:	 �*
dtype0
�
&Variable_43/Initializer/ReadVariableOpReadVariableOpuser_nn/dense/kernel_1*
_class
loc:@Variable_43*
_output_shapes
:	 �*
dtype0
�
Variable_43VarHandleOp*
_class
loc:@Variable_43*
_output_shapes
: *

debug_nameVariable_43/*
dtype0*
shape:	 �*
shared_nameVariable_43
g
,Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_43*
_output_shapes
: 
h
Variable_43/AssignAssignVariableOpVariable_43&Variable_43/Initializer/ReadVariableOp*
dtype0
l
Variable_43/Read/ReadVariableOpReadVariableOpVariable_43*
_output_shapes
:	 �*
dtype0
u
serve_item_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
s
serve_user_inputPlaceholder*'
_output_shapes
:��������� *
dtype0*
shape:��������� 
�
StatefulPartitionedCallStatefulPartitionedCallserve_item_inputserve_user_inputuser_nn/dense/kernel_1user_nn/dense/bias_1)user_nn/batch_normalization/moving_mean_1-user_nn/batch_normalization/moving_variance_1#user_nn/batch_normalization/gamma_1"user_nn/batch_normalization/beta_1user_nn/dense_1/kernel_1user_nn/dense_1/bias_1+user_nn/batch_normalization_1/moving_mean_1/user_nn/batch_normalization_1/moving_variance_1%user_nn/batch_normalization_1/gamma_1$user_nn/batch_normalization_1/beta_1user_nn/dense_2/kernel_1user_nn/dense_2/bias_1+user_nn/batch_normalization_2/moving_mean_1/user_nn/batch_normalization_2/moving_variance_1%user_nn/batch_normalization_2/gamma_1$user_nn/batch_normalization_2/beta_1user_nn/dense_3/kernel_1user_nn/dense_3/bias_1item_nn/dense_4/kernel_1item_nn/dense_4/bias_1+item_nn/batch_normalization_3/moving_mean_1/item_nn/batch_normalization_3/moving_variance_1%item_nn/batch_normalization_3/gamma_1$item_nn/batch_normalization_3/beta_1item_nn/dense_5/kernel_1item_nn/dense_5/bias_1+item_nn/batch_normalization_4/moving_mean_1/item_nn/batch_normalization_4/moving_variance_1%item_nn/batch_normalization_4/gamma_1$item_nn/batch_normalization_4/beta_1item_nn/dense_6/kernel_1item_nn/dense_6/bias_1+item_nn/batch_normalization_5/moving_mean_1/item_nn/batch_normalization_5/moving_variance_1%item_nn/batch_normalization_5/gamma_1$item_nn/batch_normalization_5/beta_1item_nn/dense_7/kernel_1item_nn/dense_7/bias_1*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___334602

serving_default_item_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
}
serving_default_user_inputPlaceholder*'
_output_shapes
:��������� *
dtype0*
shape:��������� 
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_item_inputserving_default_user_inputuser_nn/dense/kernel_1user_nn/dense/bias_1)user_nn/batch_normalization/moving_mean_1-user_nn/batch_normalization/moving_variance_1#user_nn/batch_normalization/gamma_1"user_nn/batch_normalization/beta_1user_nn/dense_1/kernel_1user_nn/dense_1/bias_1+user_nn/batch_normalization_1/moving_mean_1/user_nn/batch_normalization_1/moving_variance_1%user_nn/batch_normalization_1/gamma_1$user_nn/batch_normalization_1/beta_1user_nn/dense_2/kernel_1user_nn/dense_2/bias_1+user_nn/batch_normalization_2/moving_mean_1/user_nn/batch_normalization_2/moving_variance_1%user_nn/batch_normalization_2/gamma_1$user_nn/batch_normalization_2/beta_1user_nn/dense_3/kernel_1user_nn/dense_3/bias_1item_nn/dense_4/kernel_1item_nn/dense_4/bias_1+item_nn/batch_normalization_3/moving_mean_1/item_nn/batch_normalization_3/moving_variance_1%item_nn/batch_normalization_3/gamma_1$item_nn/batch_normalization_3/beta_1item_nn/dense_5/kernel_1item_nn/dense_5/bias_1+item_nn/batch_normalization_4/moving_mean_1/item_nn/batch_normalization_4/moving_variance_1%item_nn/batch_normalization_4/gamma_1$item_nn/batch_normalization_4/beta_1item_nn/dense_6/kernel_1item_nn/dense_6/bias_1+item_nn/batch_normalization_5/moving_mean_1/item_nn/batch_normalization_5/moving_variance_1%item_nn/batch_normalization_5/gamma_1$item_nn/batch_normalization_5/beta_1item_nn/dense_7/kernel_1item_nn/dense_7/bias_1*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___334688

NoOpNoOp
�E
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�E
value�EB�E B�E
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29
&30
'31
(32
)33
*34
+35
,36
-37
.38
/39
040
141
242
343*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
%18
&19
'20
(21
,22
-23
.24
/25
226
327*
z
0
1
2
3
4
5
6
7
"8
#9
$10
)11
*12
+13
014
115*
�
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19
H20
I21
J22
K23
L24
M25
N26
O27
P28
Q29
R30
S31
T32
U33
V34
W35
X36
Y37
Z38
[39*
* 

\trace_0* 
"
	]serve
^serving_default* 
KE
VARIABLE_VALUEVariable_43&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_42&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_41&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_40&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_39&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_38&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_37&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_36&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_35&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_34&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_33'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_32'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_31'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_30'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_29'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_28'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_27'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_26'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_25'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_24'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_23'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_22'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_21'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_20'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_19'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_18'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_17'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_16'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_15'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_14'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_13'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_12'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_11'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_10'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_9'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_8'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_7'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_6'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_5'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_4'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE$user_nn/batch_normalization_1/beta_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEuser_nn/dense/bias_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE%user_nn/batch_normalization_1/gamma_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEuser_nn/dense_2/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE$item_nn/batch_normalization_3/beta_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE$item_nn/batch_normalization_4/beta_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEitem_nn/dense_6/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE%item_nn/batch_normalization_4/gamma_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE#user_nn/batch_normalization/gamma_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE$user_nn/batch_normalization_2/beta_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEitem_nn/dense_6/kernel_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE$item_nn/batch_normalization_5/beta_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEitem_nn/dense_7/bias_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE"user_nn/batch_normalization/beta_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEuser_nn/dense_1/bias_1,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEuser_nn/dense_3/kernel_1,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEitem_nn/dense_4/bias_1,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE%item_nn/batch_normalization_5/gamma_1,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEuser_nn/dense/kernel_1,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE%user_nn/batch_normalization_2/gamma_1,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEuser_nn/dense_3/bias_1,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEitem_nn/dense_7/kernel_1,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEuser_nn/dense_1/kernel_1,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEuser_nn/dense_2/kernel_1,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEitem_nn/dense_4/kernel_1,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEitem_nn/dense_5/kernel_1,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE%item_nn/batch_normalization_3/gamma_1,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEitem_nn/dense_5/bias_1,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE+user_nn/batch_normalization_2/moving_mean_1,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE/user_nn/batch_normalization_1/moving_variance_1,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE/user_nn/batch_normalization_2/moving_variance_1,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE+item_nn/batch_normalization_3/moving_mean_1,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE+item_nn/batch_normalization_4/moving_mean_1,_all_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE/item_nn/batch_normalization_3/moving_variance_1,_all_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE/item_nn/batch_normalization_4/moving_variance_1,_all_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE+item_nn/batch_normalization_5/moving_mean_1,_all_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE-user_nn/batch_normalization/moving_variance_1,_all_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE+user_nn/batch_normalization_1/moving_mean_1,_all_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE)user_nn/batch_normalization/moving_mean_1,_all_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE/item_nn/batch_normalization_5/moving_variance_1,_all_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable$user_nn/batch_normalization_1/beta_1user_nn/dense/bias_1%user_nn/batch_normalization_1/gamma_1user_nn/dense_2/bias_1$item_nn/batch_normalization_3/beta_1$item_nn/batch_normalization_4/beta_1item_nn/dense_6/bias_1%item_nn/batch_normalization_4/gamma_1#user_nn/batch_normalization/gamma_1$user_nn/batch_normalization_2/beta_1item_nn/dense_6/kernel_1$item_nn/batch_normalization_5/beta_1item_nn/dense_7/bias_1"user_nn/batch_normalization/beta_1user_nn/dense_1/bias_1user_nn/dense_3/kernel_1item_nn/dense_4/bias_1%item_nn/batch_normalization_5/gamma_1user_nn/dense/kernel_1%user_nn/batch_normalization_2/gamma_1user_nn/dense_3/bias_1item_nn/dense_7/kernel_1user_nn/dense_1/kernel_1user_nn/dense_2/kernel_1item_nn/dense_4/kernel_1item_nn/dense_5/kernel_1%item_nn/batch_normalization_3/gamma_1item_nn/dense_5/bias_1+user_nn/batch_normalization_2/moving_mean_1/user_nn/batch_normalization_1/moving_variance_1/user_nn/batch_normalization_2/moving_variance_1+item_nn/batch_normalization_3/moving_mean_1+item_nn/batch_normalization_4/moving_mean_1/item_nn/batch_normalization_3/moving_variance_1/item_nn/batch_normalization_4/moving_variance_1+item_nn/batch_normalization_5/moving_mean_1-user_nn/batch_normalization/moving_variance_1+user_nn/batch_normalization_1/moving_mean_1)user_nn/batch_normalization/moving_mean_1/item_nn/batch_normalization_5/moving_variance_1Const*a
TinZ
X2V*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_save_335394
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable$user_nn/batch_normalization_1/beta_1user_nn/dense/bias_1%user_nn/batch_normalization_1/gamma_1user_nn/dense_2/bias_1$item_nn/batch_normalization_3/beta_1$item_nn/batch_normalization_4/beta_1item_nn/dense_6/bias_1%item_nn/batch_normalization_4/gamma_1#user_nn/batch_normalization/gamma_1$user_nn/batch_normalization_2/beta_1item_nn/dense_6/kernel_1$item_nn/batch_normalization_5/beta_1item_nn/dense_7/bias_1"user_nn/batch_normalization/beta_1user_nn/dense_1/bias_1user_nn/dense_3/kernel_1item_nn/dense_4/bias_1%item_nn/batch_normalization_5/gamma_1user_nn/dense/kernel_1%user_nn/batch_normalization_2/gamma_1user_nn/dense_3/bias_1item_nn/dense_7/kernel_1user_nn/dense_1/kernel_1user_nn/dense_2/kernel_1item_nn/dense_4/kernel_1item_nn/dense_5/kernel_1%item_nn/batch_normalization_3/gamma_1item_nn/dense_5/bias_1+user_nn/batch_normalization_2/moving_mean_1/user_nn/batch_normalization_1/moving_variance_1/user_nn/batch_normalization_2/moving_variance_1+item_nn/batch_normalization_3/moving_mean_1+item_nn/batch_normalization_4/moving_mean_1/item_nn/batch_normalization_3/moving_variance_1/item_nn/batch_normalization_4/moving_variance_1+item_nn/batch_normalization_5/moving_mean_1-user_nn/batch_normalization/moving_variance_1+user_nn/batch_normalization_1/moving_mean_1)user_nn/batch_normalization/moving_mean_1/item_nn/batch_normalization_5/moving_variance_1*`
TinY
W2U*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_restore_335655��

��
�1
__inference___call___334515

user_input

item_inputP
=functional_2_1_user_nn_1_dense_1_cast_readvariableop_resource:	 �O
@functional_2_1_user_nn_1_dense_1_biasadd_readvariableop_resource:	�Z
Kfunctional_2_1_user_nn_1_batch_normalization_1_cast_readvariableop_resource:	�\
Mfunctional_2_1_user_nn_1_batch_normalization_1_cast_1_readvariableop_resource:	�\
Mfunctional_2_1_user_nn_1_batch_normalization_1_cast_2_readvariableop_resource:	�\
Mfunctional_2_1_user_nn_1_batch_normalization_1_cast_3_readvariableop_resource:	�S
?functional_2_1_user_nn_1_dense_1_2_cast_readvariableop_resource:
��Q
Bfunctional_2_1_user_nn_1_dense_1_2_biasadd_readvariableop_resource:	�\
Mfunctional_2_1_user_nn_1_batch_normalization_1_2_cast_readvariableop_resource:	�^
Ofunctional_2_1_user_nn_1_batch_normalization_1_2_cast_1_readvariableop_resource:	�^
Ofunctional_2_1_user_nn_1_batch_normalization_1_2_cast_2_readvariableop_resource:	�^
Ofunctional_2_1_user_nn_1_batch_normalization_1_2_cast_3_readvariableop_resource:	�R
?functional_2_1_user_nn_1_dense_2_1_cast_readvariableop_resource:	�@P
Bfunctional_2_1_user_nn_1_dense_2_1_biasadd_readvariableop_resource:@[
Mfunctional_2_1_user_nn_1_batch_normalization_2_1_cast_readvariableop_resource:@]
Ofunctional_2_1_user_nn_1_batch_normalization_2_1_cast_1_readvariableop_resource:@]
Ofunctional_2_1_user_nn_1_batch_normalization_2_1_cast_2_readvariableop_resource:@]
Ofunctional_2_1_user_nn_1_batch_normalization_2_1_cast_3_readvariableop_resource:@Q
?functional_2_1_user_nn_1_dense_3_1_cast_readvariableop_resource:@ P
Bfunctional_2_1_user_nn_1_dense_3_1_biasadd_readvariableop_resource: S
?functional_2_1_item_nn_1_dense_4_1_cast_readvariableop_resource:
��Q
Bfunctional_2_1_item_nn_1_dense_4_1_biasadd_readvariableop_resource:	�\
Mfunctional_2_1_item_nn_1_batch_normalization_3_1_cast_readvariableop_resource:	�^
Ofunctional_2_1_item_nn_1_batch_normalization_3_1_cast_1_readvariableop_resource:	�^
Ofunctional_2_1_item_nn_1_batch_normalization_3_1_cast_2_readvariableop_resource:	�^
Ofunctional_2_1_item_nn_1_batch_normalization_3_1_cast_3_readvariableop_resource:	�S
?functional_2_1_item_nn_1_dense_5_1_cast_readvariableop_resource:
��Q
Bfunctional_2_1_item_nn_1_dense_5_1_biasadd_readvariableop_resource:	�\
Mfunctional_2_1_item_nn_1_batch_normalization_4_1_cast_readvariableop_resource:	�^
Ofunctional_2_1_item_nn_1_batch_normalization_4_1_cast_1_readvariableop_resource:	�^
Ofunctional_2_1_item_nn_1_batch_normalization_4_1_cast_2_readvariableop_resource:	�^
Ofunctional_2_1_item_nn_1_batch_normalization_4_1_cast_3_readvariableop_resource:	�R
?functional_2_1_item_nn_1_dense_6_1_cast_readvariableop_resource:	�@P
Bfunctional_2_1_item_nn_1_dense_6_1_biasadd_readvariableop_resource:@[
Mfunctional_2_1_item_nn_1_batch_normalization_5_1_cast_readvariableop_resource:@]
Ofunctional_2_1_item_nn_1_batch_normalization_5_1_cast_1_readvariableop_resource:@]
Ofunctional_2_1_item_nn_1_batch_normalization_5_1_cast_2_readvariableop_resource:@]
Ofunctional_2_1_item_nn_1_batch_normalization_5_1_cast_3_readvariableop_resource:@Q
?functional_2_1_item_nn_1_dense_7_1_cast_readvariableop_resource:@ P
Bfunctional_2_1_item_nn_1_dense_7_1_biasadd_readvariableop_resource: 
identity��Dfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_1/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_2/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_3/ReadVariableOp�Dfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_1/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_2/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_3/ReadVariableOp�Dfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_1/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_2/ReadVariableOp�Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_3/ReadVariableOp�9functional_2_1/item_nn_1/dense_4_1/BiasAdd/ReadVariableOp�6functional_2_1/item_nn_1/dense_4_1/Cast/ReadVariableOp�9functional_2_1/item_nn_1/dense_5_1/BiasAdd/ReadVariableOp�6functional_2_1/item_nn_1/dense_5_1/Cast/ReadVariableOp�9functional_2_1/item_nn_1/dense_6_1/BiasAdd/ReadVariableOp�6functional_2_1/item_nn_1/dense_6_1/Cast/ReadVariableOp�9functional_2_1/item_nn_1/dense_7_1/BiasAdd/ReadVariableOp�6functional_2_1/item_nn_1/dense_7_1/Cast/ReadVariableOp�Bfunctional_2_1/user_nn_1/batch_normalization_1/Cast/ReadVariableOp�Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_1/ReadVariableOp�Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_2/ReadVariableOp�Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_3/ReadVariableOp�Dfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast/ReadVariableOp�Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_1/ReadVariableOp�Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_2/ReadVariableOp�Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_3/ReadVariableOp�Dfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast/ReadVariableOp�Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_1/ReadVariableOp�Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_2/ReadVariableOp�Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_3/ReadVariableOp�7functional_2_1/user_nn_1/dense_1/BiasAdd/ReadVariableOp�4functional_2_1/user_nn_1/dense_1/Cast/ReadVariableOp�9functional_2_1/user_nn_1/dense_1_2/BiasAdd/ReadVariableOp�6functional_2_1/user_nn_1/dense_1_2/Cast/ReadVariableOp�9functional_2_1/user_nn_1/dense_2_1/BiasAdd/ReadVariableOp�6functional_2_1/user_nn_1/dense_2_1/Cast/ReadVariableOp�9functional_2_1/user_nn_1/dense_3_1/BiasAdd/ReadVariableOp�6functional_2_1/user_nn_1/dense_3_1/Cast/ReadVariableOp�
4functional_2_1/user_nn_1/dense_1/Cast/ReadVariableOpReadVariableOp=functional_2_1_user_nn_1_dense_1_cast_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
'functional_2_1/user_nn_1/dense_1/MatMulMatMul
user_input<functional_2_1/user_nn_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7functional_2_1/user_nn_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp@functional_2_1_user_nn_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(functional_2_1/user_nn_1/dense_1/BiasAddBiasAdd1functional_2_1/user_nn_1/dense_1/MatMul:product:0?functional_2_1/user_nn_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%functional_2_1/user_nn_1/dense_1/ReluRelu1functional_2_1/user_nn_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Bfunctional_2_1/user_nn_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOpKfunctional_2_1_user_nn_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpMfunctional_2_1_user_nn_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpMfunctional_2_1_user_nn_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpMfunctional_2_1_user_nn_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>functional_2_1/user_nn_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
<functional_2_1/user_nn_1/batch_normalization_1/batchnorm/addAddV2Lfunctional_2_1/user_nn_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0Gfunctional_2_1/user_nn_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
>functional_2_1/user_nn_1/batch_normalization_1/batchnorm/RsqrtRsqrt@functional_2_1/user_nn_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
<functional_2_1/user_nn_1/batch_normalization_1/batchnorm/mulMulBfunctional_2_1/user_nn_1/batch_normalization_1/batchnorm/Rsqrt:y:0Lfunctional_2_1/user_nn_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
>functional_2_1/user_nn_1/batch_normalization_1/batchnorm/mul_1Mul3functional_2_1/user_nn_1/dense_1/Relu:activations:0@functional_2_1/user_nn_1/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
>functional_2_1/user_nn_1/batch_normalization_1/batchnorm/mul_2MulJfunctional_2_1/user_nn_1/batch_normalization_1/Cast/ReadVariableOp:value:0@functional_2_1/user_nn_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
<functional_2_1/user_nn_1/batch_normalization_1/batchnorm/subSubLfunctional_2_1/user_nn_1/batch_normalization_1/Cast_3/ReadVariableOp:value:0Bfunctional_2_1/user_nn_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
>functional_2_1/user_nn_1/batch_normalization_1/batchnorm/add_1AddV2Bfunctional_2_1/user_nn_1/batch_normalization_1/batchnorm/mul_1:z:0@functional_2_1/user_nn_1/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
6functional_2_1/user_nn_1/dense_1_2/Cast/ReadVariableOpReadVariableOp?functional_2_1_user_nn_1_dense_1_2_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)functional_2_1/user_nn_1/dense_1_2/MatMulMatMulBfunctional_2_1/user_nn_1/batch_normalization_1/batchnorm/add_1:z:0>functional_2_1/user_nn_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9functional_2_1/user_nn_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_user_nn_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*functional_2_1/user_nn_1/dense_1_2/BiasAddBiasAdd3functional_2_1/user_nn_1/dense_1_2/MatMul:product:0Afunctional_2_1/user_nn_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'functional_2_1/user_nn_1/dense_1_2/ReluRelu3functional_2_1/user_nn_1/dense_1_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Dfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpMfunctional_2_1_user_nn_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpOfunctional_2_1_user_nn_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpOfunctional_2_1_user_nn_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpOfunctional_2_1_user_nn_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
>functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/addAddV2Nfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0Ifunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
@functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/RsqrtRsqrtBfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes	
:��
>functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mulMulDfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Nfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
@functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mul_1Mul5functional_2_1/user_nn_1/dense_1_2/Relu:activations:0Bfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
@functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mul_2MulLfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast/ReadVariableOp:value:0Bfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
>functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/subSubNfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:0Dfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
@functional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/add_1AddV2Dfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/mul_1:z:0Bfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
6functional_2_1/user_nn_1/dense_2_1/Cast/ReadVariableOpReadVariableOp?functional_2_1_user_nn_1_dense_2_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
)functional_2_1/user_nn_1/dense_2_1/MatMulMatMulDfunctional_2_1/user_nn_1/batch_normalization_1_2/batchnorm/add_1:z:0>functional_2_1/user_nn_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
9functional_2_1/user_nn_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_user_nn_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
*functional_2_1/user_nn_1/dense_2_1/BiasAddBiasAdd3functional_2_1/user_nn_1/dense_2_1/MatMul:product:0Afunctional_2_1/user_nn_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'functional_2_1/user_nn_1/dense_2_1/ReluRelu3functional_2_1/user_nn_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
Dfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpMfunctional_2_1_user_nn_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpOfunctional_2_1_user_nn_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpOfunctional_2_1_user_nn_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpOfunctional_2_1_user_nn_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
>functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/addAddV2Nfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0Ifunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
@functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/RsqrtRsqrtBfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
>functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mulMulDfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Nfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
@functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mul_1Mul5functional_2_1/user_nn_1/dense_2_1/Relu:activations:0Bfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
@functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mul_2MulLfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast/ReadVariableOp:value:0Bfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
>functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/subSubNfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:0Dfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
@functional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/add_1AddV2Dfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/mul_1:z:0Bfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
6functional_2_1/user_nn_1/dense_3_1/Cast/ReadVariableOpReadVariableOp?functional_2_1_user_nn_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

:@ *
dtype0�
)functional_2_1/user_nn_1/dense_3_1/MatMulMatMulDfunctional_2_1/user_nn_1/batch_normalization_2_1/batchnorm/add_1:z:0>functional_2_1/user_nn_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
9functional_2_1/user_nn_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_user_nn_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
*functional_2_1/user_nn_1/dense_3_1/BiasAddBiasAdd3functional_2_1/user_nn_1/dense_3_1/MatMul:product:0Afunctional_2_1/user_nn_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
6functional_2_1/item_nn_1/dense_4_1/Cast/ReadVariableOpReadVariableOp?functional_2_1_item_nn_1_dense_4_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)functional_2_1/item_nn_1/dense_4_1/MatMulMatMul
item_input>functional_2_1/item_nn_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9functional_2_1/item_nn_1/dense_4_1/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_item_nn_1_dense_4_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*functional_2_1/item_nn_1/dense_4_1/BiasAddBiasAdd3functional_2_1/item_nn_1/dense_4_1/MatMul:product:0Afunctional_2_1/item_nn_1/dense_4_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'functional_2_1/item_nn_1/dense_4_1/ReluRelu3functional_2_1/item_nn_1/dense_4_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Dfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast/ReadVariableOpReadVariableOpMfunctional_2_1_item_nn_1_batch_normalization_3_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_1/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_3_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_2/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_3_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_3/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_3_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
>functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/addAddV2Nfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_1/ReadVariableOp:value:0Ifunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
@functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/RsqrtRsqrtBfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
>functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mulMulDfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/Rsqrt:y:0Nfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
@functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mul_1Mul5functional_2_1/item_nn_1/dense_4_1/Relu:activations:0Bfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
@functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mul_2MulLfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast/ReadVariableOp:value:0Bfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
>functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/subSubNfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_3/ReadVariableOp:value:0Dfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
@functional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/add_1AddV2Dfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/mul_1:z:0Bfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
6functional_2_1/item_nn_1/dense_5_1/Cast/ReadVariableOpReadVariableOp?functional_2_1_item_nn_1_dense_5_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)functional_2_1/item_nn_1/dense_5_1/MatMulMatMulDfunctional_2_1/item_nn_1/batch_normalization_3_1/batchnorm/add_1:z:0>functional_2_1/item_nn_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9functional_2_1/item_nn_1/dense_5_1/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_item_nn_1_dense_5_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*functional_2_1/item_nn_1/dense_5_1/BiasAddBiasAdd3functional_2_1/item_nn_1/dense_5_1/MatMul:product:0Afunctional_2_1/item_nn_1/dense_5_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'functional_2_1/item_nn_1/dense_5_1/ReluRelu3functional_2_1/item_nn_1/dense_5_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Dfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast/ReadVariableOpReadVariableOpMfunctional_2_1_item_nn_1_batch_normalization_4_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_1/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_4_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_2/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_4_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_3/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_4_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
>functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/addAddV2Nfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_1/ReadVariableOp:value:0Ifunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
@functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/RsqrtRsqrtBfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
>functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mulMulDfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/Rsqrt:y:0Nfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
@functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mul_1Mul5functional_2_1/item_nn_1/dense_5_1/Relu:activations:0Bfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
@functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mul_2MulLfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast/ReadVariableOp:value:0Bfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
>functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/subSubNfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_3/ReadVariableOp:value:0Dfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
@functional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/add_1AddV2Dfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/mul_1:z:0Bfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
6functional_2_1/item_nn_1/dense_6_1/Cast/ReadVariableOpReadVariableOp?functional_2_1_item_nn_1_dense_6_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
)functional_2_1/item_nn_1/dense_6_1/MatMulMatMulDfunctional_2_1/item_nn_1/batch_normalization_4_1/batchnorm/add_1:z:0>functional_2_1/item_nn_1/dense_6_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
9functional_2_1/item_nn_1/dense_6_1/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_item_nn_1_dense_6_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
*functional_2_1/item_nn_1/dense_6_1/BiasAddBiasAdd3functional_2_1/item_nn_1/dense_6_1/MatMul:product:0Afunctional_2_1/item_nn_1/dense_6_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'functional_2_1/item_nn_1/dense_6_1/ReluRelu3functional_2_1/item_nn_1/dense_6_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
Dfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast/ReadVariableOpReadVariableOpMfunctional_2_1_item_nn_1_batch_normalization_5_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_1/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_5_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_2/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_5_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_3/ReadVariableOpReadVariableOpOfunctional_2_1_item_nn_1_batch_normalization_5_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
>functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/addAddV2Nfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_1/ReadVariableOp:value:0Ifunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
@functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/RsqrtRsqrtBfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
>functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mulMulDfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/Rsqrt:y:0Nfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
@functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mul_1Mul5functional_2_1/item_nn_1/dense_6_1/Relu:activations:0Bfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������@�
@functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mul_2MulLfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast/ReadVariableOp:value:0Bfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
>functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/subSubNfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_3/ReadVariableOp:value:0Dfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
@functional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/add_1AddV2Dfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/mul_1:z:0Bfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������@�
6functional_2_1/item_nn_1/dense_7_1/Cast/ReadVariableOpReadVariableOp?functional_2_1_item_nn_1_dense_7_1_cast_readvariableop_resource*
_output_shapes

:@ *
dtype0�
)functional_2_1/item_nn_1/dense_7_1/MatMulMatMulDfunctional_2_1/item_nn_1/batch_normalization_5_1/batchnorm/add_1:z:0>functional_2_1/item_nn_1/dense_7_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
9functional_2_1/item_nn_1/dense_7_1/BiasAdd/ReadVariableOpReadVariableOpBfunctional_2_1_item_nn_1_dense_7_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
*functional_2_1/item_nn_1/dense_7_1/BiasAddBiasAdd3functional_2_1/item_nn_1/dense_7_1/MatMul:product:0Afunctional_2_1/item_nn_1/dense_7_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� e
#functional_2_1/dot_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
functional_2_1/dot_1/ExpandDims
ExpandDims3functional_2_1/user_nn_1/dense_3_1/BiasAdd:output:0,functional_2_1/dot_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:��������� g
%functional_2_1/dot_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
!functional_2_1/dot_1/ExpandDims_1
ExpandDims3functional_2_1/item_nn_1/dense_7_1/BiasAdd:output:0.functional_2_1/dot_1/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:��������� �
functional_2_1/dot_1/MatMulBatchMatMulV2(functional_2_1/dot_1/ExpandDims:output:0*functional_2_1/dot_1/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������|
functional_2_1/dot_1/ShapeShape$functional_2_1/dot_1/MatMul:output:0*
T0*
_output_shapes
::��r
(functional_2_1/dot_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*functional_2_1/dot_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*functional_2_1/dot_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"functional_2_1/dot_1/strided_sliceStridedSlice#functional_2_1/dot_1/Shape:output:01functional_2_1/dot_1/strided_slice/stack:output:03functional_2_1/dot_1/strided_slice/stack_1:output:03functional_2_1/dot_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
functional_2_1/dot_1/SqueezeSqueeze$functional_2_1/dot_1/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
t
IdentityIdentity%functional_2_1/dot_1/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpE^functional_2_1/item_nn_1/batch_normalization_3_1/Cast/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_3_1/Cast_1/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_3_1/Cast_2/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_3_1/Cast_3/ReadVariableOpE^functional_2_1/item_nn_1/batch_normalization_4_1/Cast/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_4_1/Cast_1/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_4_1/Cast_2/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_4_1/Cast_3/ReadVariableOpE^functional_2_1/item_nn_1/batch_normalization_5_1/Cast/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_5_1/Cast_1/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_5_1/Cast_2/ReadVariableOpG^functional_2_1/item_nn_1/batch_normalization_5_1/Cast_3/ReadVariableOp:^functional_2_1/item_nn_1/dense_4_1/BiasAdd/ReadVariableOp7^functional_2_1/item_nn_1/dense_4_1/Cast/ReadVariableOp:^functional_2_1/item_nn_1/dense_5_1/BiasAdd/ReadVariableOp7^functional_2_1/item_nn_1/dense_5_1/Cast/ReadVariableOp:^functional_2_1/item_nn_1/dense_6_1/BiasAdd/ReadVariableOp7^functional_2_1/item_nn_1/dense_6_1/Cast/ReadVariableOp:^functional_2_1/item_nn_1/dense_7_1/BiasAdd/ReadVariableOp7^functional_2_1/item_nn_1/dense_7_1/Cast/ReadVariableOpC^functional_2_1/user_nn_1/batch_normalization_1/Cast/ReadVariableOpE^functional_2_1/user_nn_1/batch_normalization_1/Cast_1/ReadVariableOpE^functional_2_1/user_nn_1/batch_normalization_1/Cast_2/ReadVariableOpE^functional_2_1/user_nn_1/batch_normalization_1/Cast_3/ReadVariableOpE^functional_2_1/user_nn_1/batch_normalization_1_2/Cast/ReadVariableOpG^functional_2_1/user_nn_1/batch_normalization_1_2/Cast_1/ReadVariableOpG^functional_2_1/user_nn_1/batch_normalization_1_2/Cast_2/ReadVariableOpG^functional_2_1/user_nn_1/batch_normalization_1_2/Cast_3/ReadVariableOpE^functional_2_1/user_nn_1/batch_normalization_2_1/Cast/ReadVariableOpG^functional_2_1/user_nn_1/batch_normalization_2_1/Cast_1/ReadVariableOpG^functional_2_1/user_nn_1/batch_normalization_2_1/Cast_2/ReadVariableOpG^functional_2_1/user_nn_1/batch_normalization_2_1/Cast_3/ReadVariableOp8^functional_2_1/user_nn_1/dense_1/BiasAdd/ReadVariableOp5^functional_2_1/user_nn_1/dense_1/Cast/ReadVariableOp:^functional_2_1/user_nn_1/dense_1_2/BiasAdd/ReadVariableOp7^functional_2_1/user_nn_1/dense_1_2/Cast/ReadVariableOp:^functional_2_1/user_nn_1/dense_2_1/BiasAdd/ReadVariableOp7^functional_2_1/user_nn_1/dense_2_1/Cast/ReadVariableOp:^functional_2_1/user_nn_1/dense_3_1/BiasAdd/ReadVariableOp7^functional_2_1/user_nn_1/dense_3_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesy
w:��������� :����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Dfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast/ReadVariableOpDfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_1/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_1/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_2/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_2/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_3/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_3_1/Cast_3/ReadVariableOp2�
Dfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast/ReadVariableOpDfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_1/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_1/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_2/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_2/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_3/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_4_1/Cast_3/ReadVariableOp2�
Dfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast/ReadVariableOpDfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_1/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_1/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_2/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_2/ReadVariableOp2�
Ffunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_3/ReadVariableOpFfunctional_2_1/item_nn_1/batch_normalization_5_1/Cast_3/ReadVariableOp2v
9functional_2_1/item_nn_1/dense_4_1/BiasAdd/ReadVariableOp9functional_2_1/item_nn_1/dense_4_1/BiasAdd/ReadVariableOp2p
6functional_2_1/item_nn_1/dense_4_1/Cast/ReadVariableOp6functional_2_1/item_nn_1/dense_4_1/Cast/ReadVariableOp2v
9functional_2_1/item_nn_1/dense_5_1/BiasAdd/ReadVariableOp9functional_2_1/item_nn_1/dense_5_1/BiasAdd/ReadVariableOp2p
6functional_2_1/item_nn_1/dense_5_1/Cast/ReadVariableOp6functional_2_1/item_nn_1/dense_5_1/Cast/ReadVariableOp2v
9functional_2_1/item_nn_1/dense_6_1/BiasAdd/ReadVariableOp9functional_2_1/item_nn_1/dense_6_1/BiasAdd/ReadVariableOp2p
6functional_2_1/item_nn_1/dense_6_1/Cast/ReadVariableOp6functional_2_1/item_nn_1/dense_6_1/Cast/ReadVariableOp2v
9functional_2_1/item_nn_1/dense_7_1/BiasAdd/ReadVariableOp9functional_2_1/item_nn_1/dense_7_1/BiasAdd/ReadVariableOp2p
6functional_2_1/item_nn_1/dense_7_1/Cast/ReadVariableOp6functional_2_1/item_nn_1/dense_7_1/Cast/ReadVariableOp2�
Bfunctional_2_1/user_nn_1/batch_normalization_1/Cast/ReadVariableOpBfunctional_2_1/user_nn_1/batch_normalization_1/Cast/ReadVariableOp2�
Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_1/ReadVariableOpDfunctional_2_1/user_nn_1/batch_normalization_1/Cast_1/ReadVariableOp2�
Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_2/ReadVariableOpDfunctional_2_1/user_nn_1/batch_normalization_1/Cast_2/ReadVariableOp2�
Dfunctional_2_1/user_nn_1/batch_normalization_1/Cast_3/ReadVariableOpDfunctional_2_1/user_nn_1/batch_normalization_1/Cast_3/ReadVariableOp2�
Dfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast/ReadVariableOpDfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast/ReadVariableOp2�
Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_1/ReadVariableOpFfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_1/ReadVariableOp2�
Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_2/ReadVariableOpFfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_2/ReadVariableOp2�
Ffunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_3/ReadVariableOpFfunctional_2_1/user_nn_1/batch_normalization_1_2/Cast_3/ReadVariableOp2�
Dfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast/ReadVariableOpDfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast/ReadVariableOp2�
Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_1/ReadVariableOpFfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_1/ReadVariableOp2�
Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_2/ReadVariableOpFfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_2/ReadVariableOp2�
Ffunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_3/ReadVariableOpFfunctional_2_1/user_nn_1/batch_normalization_2_1/Cast_3/ReadVariableOp2r
7functional_2_1/user_nn_1/dense_1/BiasAdd/ReadVariableOp7functional_2_1/user_nn_1/dense_1/BiasAdd/ReadVariableOp2l
4functional_2_1/user_nn_1/dense_1/Cast/ReadVariableOp4functional_2_1/user_nn_1/dense_1/Cast/ReadVariableOp2v
9functional_2_1/user_nn_1/dense_1_2/BiasAdd/ReadVariableOp9functional_2_1/user_nn_1/dense_1_2/BiasAdd/ReadVariableOp2p
6functional_2_1/user_nn_1/dense_1_2/Cast/ReadVariableOp6functional_2_1/user_nn_1/dense_1_2/Cast/ReadVariableOp2v
9functional_2_1/user_nn_1/dense_2_1/BiasAdd/ReadVariableOp9functional_2_1/user_nn_1/dense_2_1/BiasAdd/ReadVariableOp2p
6functional_2_1/user_nn_1/dense_2_1/Cast/ReadVariableOp6functional_2_1/user_nn_1/dense_2_1/Cast/ReadVariableOp2v
9functional_2_1/user_nn_1/dense_3_1/BiasAdd/ReadVariableOp9functional_2_1/user_nn_1/dense_3_1/BiasAdd/ReadVariableOp2p
6functional_2_1/user_nn_1/dense_3_1/Cast/ReadVariableOp6functional_2_1/user_nn_1/dense_3_1/Cast/ReadVariableOp:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:TP
(
_output_shapes
:����������
$
_user_specified_name
item_input:S O
'
_output_shapes
:��������� 
$
_user_specified_name
user_input
�!
�	
-__inference_signature_wrapper___call___334602

item_input

user_input
unknown:	 �
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�

unknown_30:	�

unknown_31:	�@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@ 

unknown_38: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___334515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesy
w:����������:��������� : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&)"
 
_user_specified_name334598:&("
 
_user_specified_name334596:&'"
 
_user_specified_name334594:&&"
 
_user_specified_name334592:&%"
 
_user_specified_name334590:&$"
 
_user_specified_name334588:&#"
 
_user_specified_name334586:&""
 
_user_specified_name334584:&!"
 
_user_specified_name334582:& "
 
_user_specified_name334580:&"
 
_user_specified_name334578:&"
 
_user_specified_name334576:&"
 
_user_specified_name334574:&"
 
_user_specified_name334572:&"
 
_user_specified_name334570:&"
 
_user_specified_name334568:&"
 
_user_specified_name334566:&"
 
_user_specified_name334564:&"
 
_user_specified_name334562:&"
 
_user_specified_name334560:&"
 
_user_specified_name334558:&"
 
_user_specified_name334556:&"
 
_user_specified_name334554:&"
 
_user_specified_name334552:&"
 
_user_specified_name334550:&"
 
_user_specified_name334548:&"
 
_user_specified_name334546:&"
 
_user_specified_name334544:&"
 
_user_specified_name334542:&"
 
_user_specified_name334540:&"
 
_user_specified_name334538:&
"
 
_user_specified_name334536:&	"
 
_user_specified_name334534:&"
 
_user_specified_name334532:&"
 
_user_specified_name334530:&"
 
_user_specified_name334528:&"
 
_user_specified_name334526:&"
 
_user_specified_name334524:&"
 
_user_specified_name334522:&"
 
_user_specified_name334520:SO
'
_output_shapes
:��������� 
$
_user_specified_name
user_input:T P
(
_output_shapes
:����������
$
_user_specified_name
item_input
�!
�	
-__inference_signature_wrapper___call___334688

item_input

user_input
unknown:	 �
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:	�

unknown_30:	�

unknown_31:	�@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@ 

unknown_38: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___334515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesy
w:����������:��������� : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&)"
 
_user_specified_name334684:&("
 
_user_specified_name334682:&'"
 
_user_specified_name334680:&&"
 
_user_specified_name334678:&%"
 
_user_specified_name334676:&$"
 
_user_specified_name334674:&#"
 
_user_specified_name334672:&""
 
_user_specified_name334670:&!"
 
_user_specified_name334668:& "
 
_user_specified_name334666:&"
 
_user_specified_name334664:&"
 
_user_specified_name334662:&"
 
_user_specified_name334660:&"
 
_user_specified_name334658:&"
 
_user_specified_name334656:&"
 
_user_specified_name334654:&"
 
_user_specified_name334652:&"
 
_user_specified_name334650:&"
 
_user_specified_name334648:&"
 
_user_specified_name334646:&"
 
_user_specified_name334644:&"
 
_user_specified_name334642:&"
 
_user_specified_name334640:&"
 
_user_specified_name334638:&"
 
_user_specified_name334636:&"
 
_user_specified_name334634:&"
 
_user_specified_name334632:&"
 
_user_specified_name334630:&"
 
_user_specified_name334628:&"
 
_user_specified_name334626:&"
 
_user_specified_name334624:&
"
 
_user_specified_name334622:&	"
 
_user_specified_name334620:&"
 
_user_specified_name334618:&"
 
_user_specified_name334616:&"
 
_user_specified_name334614:&"
 
_user_specified_name334612:&"
 
_user_specified_name334610:&"
 
_user_specified_name334608:&"
 
_user_specified_name334606:SO
'
_output_shapes
:��������� 
$
_user_specified_name
user_input:T P
(
_output_shapes
:����������
$
_user_specified_name
item_input
��
�M
__inference__traced_save_335394
file_prefix5
"read_disablecopyonread_variable_43:	 �3
$read_1_disablecopyonread_variable_42:	�3
$read_2_disablecopyonread_variable_41:	�3
$read_3_disablecopyonread_variable_40:	�3
$read_4_disablecopyonread_variable_39:	�3
$read_5_disablecopyonread_variable_38:	�2
$read_6_disablecopyonread_variable_37:	8
$read_7_disablecopyonread_variable_36:
��3
$read_8_disablecopyonread_variable_35:	�3
$read_9_disablecopyonread_variable_34:	�4
%read_10_disablecopyonread_variable_33:	�4
%read_11_disablecopyonread_variable_32:	�4
%read_12_disablecopyonread_variable_31:	�3
%read_13_disablecopyonread_variable_30:	8
%read_14_disablecopyonread_variable_29:	�@3
%read_15_disablecopyonread_variable_28:@3
%read_16_disablecopyonread_variable_27:@3
%read_17_disablecopyonread_variable_26:@3
%read_18_disablecopyonread_variable_25:@3
%read_19_disablecopyonread_variable_24:@7
%read_20_disablecopyonread_variable_23:@ 3
%read_21_disablecopyonread_variable_22: 9
%read_22_disablecopyonread_variable_21:
��4
%read_23_disablecopyonread_variable_20:	�4
%read_24_disablecopyonread_variable_19:	�4
%read_25_disablecopyonread_variable_18:	�4
%read_26_disablecopyonread_variable_17:	�4
%read_27_disablecopyonread_variable_16:	�3
%read_28_disablecopyonread_variable_15:	9
%read_29_disablecopyonread_variable_14:
��4
%read_30_disablecopyonread_variable_13:	�4
%read_31_disablecopyonread_variable_12:	�4
%read_32_disablecopyonread_variable_11:	�4
%read_33_disablecopyonread_variable_10:	�3
$read_34_disablecopyonread_variable_9:	�2
$read_35_disablecopyonread_variable_8:	7
$read_36_disablecopyonread_variable_7:	�@2
$read_37_disablecopyonread_variable_6:@2
$read_38_disablecopyonread_variable_5:@2
$read_39_disablecopyonread_variable_4:@2
$read_40_disablecopyonread_variable_3:@2
$read_41_disablecopyonread_variable_2:@6
$read_42_disablecopyonread_variable_1:@ 0
"read_43_disablecopyonread_variable: M
>read_44_disablecopyonread_user_nn_batch_normalization_1_beta_1:	�=
.read_45_disablecopyonread_user_nn_dense_bias_1:	�N
?read_46_disablecopyonread_user_nn_batch_normalization_1_gamma_1:	�>
0read_47_disablecopyonread_user_nn_dense_2_bias_1:@M
>read_48_disablecopyonread_item_nn_batch_normalization_3_beta_1:	�M
>read_49_disablecopyonread_item_nn_batch_normalization_4_beta_1:	�>
0read_50_disablecopyonread_item_nn_dense_6_bias_1:@N
?read_51_disablecopyonread_item_nn_batch_normalization_4_gamma_1:	�L
=read_52_disablecopyonread_user_nn_batch_normalization_gamma_1:	�L
>read_53_disablecopyonread_user_nn_batch_normalization_2_beta_1:@E
2read_54_disablecopyonread_item_nn_dense_6_kernel_1:	�@L
>read_55_disablecopyonread_item_nn_batch_normalization_5_beta_1:@>
0read_56_disablecopyonread_item_nn_dense_7_bias_1: K
<read_57_disablecopyonread_user_nn_batch_normalization_beta_1:	�?
0read_58_disablecopyonread_user_nn_dense_1_bias_1:	�D
2read_59_disablecopyonread_user_nn_dense_3_kernel_1:@ ?
0read_60_disablecopyonread_item_nn_dense_4_bias_1:	�M
?read_61_disablecopyonread_item_nn_batch_normalization_5_gamma_1:@C
0read_62_disablecopyonread_user_nn_dense_kernel_1:	 �M
?read_63_disablecopyonread_user_nn_batch_normalization_2_gamma_1:@>
0read_64_disablecopyonread_user_nn_dense_3_bias_1: D
2read_65_disablecopyonread_item_nn_dense_7_kernel_1:@ F
2read_66_disablecopyonread_user_nn_dense_1_kernel_1:
��E
2read_67_disablecopyonread_user_nn_dense_2_kernel_1:	�@F
2read_68_disablecopyonread_item_nn_dense_4_kernel_1:
��F
2read_69_disablecopyonread_item_nn_dense_5_kernel_1:
��N
?read_70_disablecopyonread_item_nn_batch_normalization_3_gamma_1:	�?
0read_71_disablecopyonread_item_nn_dense_5_bias_1:	�S
Eread_72_disablecopyonread_user_nn_batch_normalization_2_moving_mean_1:@X
Iread_73_disablecopyonread_user_nn_batch_normalization_1_moving_variance_1:	�W
Iread_74_disablecopyonread_user_nn_batch_normalization_2_moving_variance_1:@T
Eread_75_disablecopyonread_item_nn_batch_normalization_3_moving_mean_1:	�T
Eread_76_disablecopyonread_item_nn_batch_normalization_4_moving_mean_1:	�X
Iread_77_disablecopyonread_item_nn_batch_normalization_3_moving_variance_1:	�X
Iread_78_disablecopyonread_item_nn_batch_normalization_4_moving_variance_1:	�S
Eread_79_disablecopyonread_item_nn_batch_normalization_5_moving_mean_1:@V
Gread_80_disablecopyonread_user_nn_batch_normalization_moving_variance_1:	�T
Eread_81_disablecopyonread_user_nn_batch_normalization_1_moving_mean_1:	�R
Cread_82_disablecopyonread_user_nn_batch_normalization_moving_mean_1:	�W
Iread_83_disablecopyonread_item_nn_batch_normalization_5_moving_variance_1:@
savev2_const
identity_169��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_43*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_43^Read/DisableCopyOnRead*
_output_shapes
:	 �*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 �b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	 �i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_42*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_42^Read_1/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_41*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_41^Read_2/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_40*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_40^Read_3/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_39*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_39^Read_4/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_38*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_38^Read_5/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_37*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_37^Read_6/DisableCopyOnRead*
_output_shapes
:*
dtype0	[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
:i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_36*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_36^Read_7/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0a
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_35*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_35^Read_8/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_34*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_34^Read_9/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_33*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_33^Read_10/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_32*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_32^Read_11/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_31*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_31^Read_12/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_30*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_30^Read_13/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_29*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_29^Read_14/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_28*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_28^Read_15/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_27*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_27^Read_16/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_26*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_26^Read_17/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_25*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_25^Read_18/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_24*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_24^Read_19/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_23*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_23^Read_20/DisableCopyOnRead*
_output_shapes

:@ *
dtype0`
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes

:@ e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@ k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_22*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_22^Read_21/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_21*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_21^Read_22/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_20*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_20^Read_23/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_19*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_19^Read_24/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_18*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_18^Read_25/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_26/DisableCopyOnReadDisableCopyOnRead%read_26_disablecopyonread_variable_17*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp%read_26_disablecopyonread_variable_17^Read_26/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_variable_16*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_variable_16^Read_27/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_28/DisableCopyOnReadDisableCopyOnRead%read_28_disablecopyonread_variable_15*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp%read_28_disablecopyonread_variable_15^Read_28/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_29/DisableCopyOnReadDisableCopyOnRead%read_29_disablecopyonread_variable_14*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp%read_29_disablecopyonread_variable_14^Read_29/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_30/DisableCopyOnReadDisableCopyOnRead%read_30_disablecopyonread_variable_13*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp%read_30_disablecopyonread_variable_13^Read_30/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_31/DisableCopyOnReadDisableCopyOnRead%read_31_disablecopyonread_variable_12*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp%read_31_disablecopyonread_variable_12^Read_31/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_32/DisableCopyOnReadDisableCopyOnRead%read_32_disablecopyonread_variable_11*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp%read_32_disablecopyonread_variable_11^Read_32/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_33/DisableCopyOnReadDisableCopyOnRead%read_33_disablecopyonread_variable_10*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp%read_33_disablecopyonread_variable_10^Read_33/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_34/DisableCopyOnReadDisableCopyOnRead$read_34_disablecopyonread_variable_9*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp$read_34_disablecopyonread_variable_9^Read_34/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_35/DisableCopyOnReadDisableCopyOnRead$read_35_disablecopyonread_variable_8*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp$read_35_disablecopyonread_variable_8^Read_35/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0	*
_output_shapes
:j
Read_36/DisableCopyOnReadDisableCopyOnRead$read_36_disablecopyonread_variable_7*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp$read_36_disablecopyonread_variable_7^Read_36/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@j
Read_37/DisableCopyOnReadDisableCopyOnRead$read_37_disablecopyonread_variable_6*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp$read_37_disablecopyonread_variable_6^Read_37/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_38/DisableCopyOnReadDisableCopyOnRead$read_38_disablecopyonread_variable_5*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp$read_38_disablecopyonread_variable_5^Read_38/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_76IdentityRead_38/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_39/DisableCopyOnReadDisableCopyOnRead$read_39_disablecopyonread_variable_4*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp$read_39_disablecopyonread_variable_4^Read_39/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_78IdentityRead_39/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_40/DisableCopyOnReadDisableCopyOnRead$read_40_disablecopyonread_variable_3*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp$read_40_disablecopyonread_variable_3^Read_40/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_80IdentityRead_40/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_41/DisableCopyOnReadDisableCopyOnRead$read_41_disablecopyonread_variable_2*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp$read_41_disablecopyonread_variable_2^Read_41/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_82IdentityRead_41/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_42/DisableCopyOnReadDisableCopyOnRead$read_42_disablecopyonread_variable_1*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp$read_42_disablecopyonread_variable_1^Read_42/DisableCopyOnRead*
_output_shapes

:@ *
dtype0`
Identity_84IdentityRead_42/ReadVariableOp:value:0*
T0*
_output_shapes

:@ e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:@ h
Read_43/DisableCopyOnReadDisableCopyOnRead"read_43_disablecopyonread_variable*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp"read_43_disablecopyonread_variable^Read_43/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_86IdentityRead_43/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_44/DisableCopyOnReadDisableCopyOnRead>read_44_disablecopyonread_user_nn_batch_normalization_1_beta_1*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp>read_44_disablecopyonread_user_nn_batch_normalization_1_beta_1^Read_44/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_88IdentityRead_44/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:�t
Read_45/DisableCopyOnReadDisableCopyOnRead.read_45_disablecopyonread_user_nn_dense_bias_1*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp.read_45_disablecopyonread_user_nn_dense_bias_1^Read_45/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_90IdentityRead_45/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_46/DisableCopyOnReadDisableCopyOnRead?read_46_disablecopyonread_user_nn_batch_normalization_1_gamma_1*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp?read_46_disablecopyonread_user_nn_batch_normalization_1_gamma_1^Read_46/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_92IdentityRead_46/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_47/DisableCopyOnReadDisableCopyOnRead0read_47_disablecopyonread_user_nn_dense_2_bias_1*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp0read_47_disablecopyonread_user_nn_dense_2_bias_1^Read_47/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_94IdentityRead_47/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_48/DisableCopyOnReadDisableCopyOnRead>read_48_disablecopyonread_item_nn_batch_normalization_3_beta_1*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp>read_48_disablecopyonread_item_nn_batch_normalization_3_beta_1^Read_48/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_96IdentityRead_48/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_49/DisableCopyOnReadDisableCopyOnRead>read_49_disablecopyonread_item_nn_batch_normalization_4_beta_1*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp>read_49_disablecopyonread_item_nn_batch_normalization_4_beta_1^Read_49/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_98IdentityRead_49/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_item_nn_dense_6_bias_1*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_item_nn_dense_6_bias_1^Read_50/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_100IdentityRead_50/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_51/DisableCopyOnReadDisableCopyOnRead?read_51_disablecopyonread_item_nn_batch_normalization_4_gamma_1*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp?read_51_disablecopyonread_item_nn_batch_normalization_4_gamma_1^Read_51/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_102IdentityRead_51/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_52/DisableCopyOnReadDisableCopyOnRead=read_52_disablecopyonread_user_nn_batch_normalization_gamma_1*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp=read_52_disablecopyonread_user_nn_batch_normalization_gamma_1^Read_52/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_104IdentityRead_52/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_53/DisableCopyOnReadDisableCopyOnRead>read_53_disablecopyonread_user_nn_batch_normalization_2_beta_1*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp>read_53_disablecopyonread_user_nn_batch_normalization_2_beta_1^Read_53/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_106IdentityRead_53/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@x
Read_54/DisableCopyOnReadDisableCopyOnRead2read_54_disablecopyonread_item_nn_dense_6_kernel_1*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp2read_54_disablecopyonread_item_nn_dense_6_kernel_1^Read_54/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0b
Identity_108IdentityRead_54/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@h
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_55/DisableCopyOnReadDisableCopyOnRead>read_55_disablecopyonread_item_nn_batch_normalization_5_beta_1*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp>read_55_disablecopyonread_item_nn_batch_normalization_5_beta_1^Read_55/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_110IdentityRead_55/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@v
Read_56/DisableCopyOnReadDisableCopyOnRead0read_56_disablecopyonread_item_nn_dense_7_bias_1*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp0read_56_disablecopyonread_item_nn_dense_7_bias_1^Read_56/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_112IdentityRead_56/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_57/DisableCopyOnReadDisableCopyOnRead<read_57_disablecopyonread_user_nn_batch_normalization_beta_1*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp<read_57_disablecopyonread_user_nn_batch_normalization_beta_1^Read_57/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_114IdentityRead_57/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_user_nn_dense_1_bias_1*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_user_nn_dense_1_bias_1^Read_58/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_116IdentityRead_58/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_59/DisableCopyOnReadDisableCopyOnRead2read_59_disablecopyonread_user_nn_dense_3_kernel_1*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp2read_59_disablecopyonread_user_nn_dense_3_kernel_1^Read_59/DisableCopyOnRead*
_output_shapes

:@ *
dtype0a
Identity_118IdentityRead_59/ReadVariableOp:value:0*
T0*
_output_shapes

:@ g
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes

:@ v
Read_60/DisableCopyOnReadDisableCopyOnRead0read_60_disablecopyonread_item_nn_dense_4_bias_1*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp0read_60_disablecopyonread_item_nn_dense_4_bias_1^Read_60/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_120IdentityRead_60/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_61/DisableCopyOnReadDisableCopyOnRead?read_61_disablecopyonread_item_nn_batch_normalization_5_gamma_1*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp?read_61_disablecopyonread_item_nn_batch_normalization_5_gamma_1^Read_61/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_122IdentityRead_61/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:@v
Read_62/DisableCopyOnReadDisableCopyOnRead0read_62_disablecopyonread_user_nn_dense_kernel_1*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp0read_62_disablecopyonread_user_nn_dense_kernel_1^Read_62/DisableCopyOnRead*
_output_shapes
:	 �*
dtype0b
Identity_124IdentityRead_62/ReadVariableOp:value:0*
T0*
_output_shapes
:	 �h
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:	 ��
Read_63/DisableCopyOnReadDisableCopyOnRead?read_63_disablecopyonread_user_nn_batch_normalization_2_gamma_1*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp?read_63_disablecopyonread_user_nn_batch_normalization_2_gamma_1^Read_63/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_126IdentityRead_63/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@v
Read_64/DisableCopyOnReadDisableCopyOnRead0read_64_disablecopyonread_user_nn_dense_3_bias_1*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp0read_64_disablecopyonread_user_nn_dense_3_bias_1^Read_64/DisableCopyOnRead*
_output_shapes
: *
dtype0]
Identity_128IdentityRead_64/ReadVariableOp:value:0*
T0*
_output_shapes
: c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_65/DisableCopyOnReadDisableCopyOnRead2read_65_disablecopyonread_item_nn_dense_7_kernel_1*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp2read_65_disablecopyonread_item_nn_dense_7_kernel_1^Read_65/DisableCopyOnRead*
_output_shapes

:@ *
dtype0a
Identity_130IdentityRead_65/ReadVariableOp:value:0*
T0*
_output_shapes

:@ g
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes

:@ x
Read_66/DisableCopyOnReadDisableCopyOnRead2read_66_disablecopyonread_user_nn_dense_1_kernel_1*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp2read_66_disablecopyonread_user_nn_dense_1_kernel_1^Read_66/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_132IdentityRead_66/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��x
Read_67/DisableCopyOnReadDisableCopyOnRead2read_67_disablecopyonread_user_nn_dense_2_kernel_1*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp2read_67_disablecopyonread_user_nn_dense_2_kernel_1^Read_67/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0b
Identity_134IdentityRead_67/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@h
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@x
Read_68/DisableCopyOnReadDisableCopyOnRead2read_68_disablecopyonread_item_nn_dense_4_kernel_1*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp2read_68_disablecopyonread_item_nn_dense_4_kernel_1^Read_68/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_136IdentityRead_68/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��x
Read_69/DisableCopyOnReadDisableCopyOnRead2read_69_disablecopyonread_item_nn_dense_5_kernel_1*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp2read_69_disablecopyonread_item_nn_dense_5_kernel_1^Read_69/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_138IdentityRead_69/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_70/DisableCopyOnReadDisableCopyOnRead?read_70_disablecopyonread_item_nn_batch_normalization_3_gamma_1*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp?read_70_disablecopyonread_item_nn_batch_normalization_3_gamma_1^Read_70/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_140IdentityRead_70/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_71/DisableCopyOnReadDisableCopyOnRead0read_71_disablecopyonread_item_nn_dense_5_bias_1*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp0read_71_disablecopyonread_item_nn_dense_5_bias_1^Read_71/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_142IdentityRead_71/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_72/DisableCopyOnReadDisableCopyOnReadEread_72_disablecopyonread_user_nn_batch_normalization_2_moving_mean_1*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOpEread_72_disablecopyonread_user_nn_batch_normalization_2_moving_mean_1^Read_72/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_144IdentityRead_72/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_73/DisableCopyOnReadDisableCopyOnReadIread_73_disablecopyonread_user_nn_batch_normalization_1_moving_variance_1*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOpIread_73_disablecopyonread_user_nn_batch_normalization_1_moving_variance_1^Read_73/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_146IdentityRead_73/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_74/DisableCopyOnReadDisableCopyOnReadIread_74_disablecopyonread_user_nn_batch_normalization_2_moving_variance_1*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOpIread_74_disablecopyonread_user_nn_batch_normalization_2_moving_variance_1^Read_74/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_148IdentityRead_74/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_75/DisableCopyOnReadDisableCopyOnReadEread_75_disablecopyonread_item_nn_batch_normalization_3_moving_mean_1*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOpEread_75_disablecopyonread_item_nn_batch_normalization_3_moving_mean_1^Read_75/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_150IdentityRead_75/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_76/DisableCopyOnReadDisableCopyOnReadEread_76_disablecopyonread_item_nn_batch_normalization_4_moving_mean_1*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOpEread_76_disablecopyonread_item_nn_batch_normalization_4_moving_mean_1^Read_76/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_152IdentityRead_76/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_77/DisableCopyOnReadDisableCopyOnReadIread_77_disablecopyonread_item_nn_batch_normalization_3_moving_variance_1*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOpIread_77_disablecopyonread_item_nn_batch_normalization_3_moving_variance_1^Read_77/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_154IdentityRead_77/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_78/DisableCopyOnReadDisableCopyOnReadIread_78_disablecopyonread_item_nn_batch_normalization_4_moving_variance_1*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOpIread_78_disablecopyonread_item_nn_batch_normalization_4_moving_variance_1^Read_78/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_156IdentityRead_78/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_79/DisableCopyOnReadDisableCopyOnReadEread_79_disablecopyonread_item_nn_batch_normalization_5_moving_mean_1*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOpEread_79_disablecopyonread_item_nn_batch_normalization_5_moving_mean_1^Read_79/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_158IdentityRead_79/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_80/DisableCopyOnReadDisableCopyOnReadGread_80_disablecopyonread_user_nn_batch_normalization_moving_variance_1*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOpGread_80_disablecopyonread_user_nn_batch_normalization_moving_variance_1^Read_80/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_160IdentityRead_80/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_81/DisableCopyOnReadDisableCopyOnReadEread_81_disablecopyonread_user_nn_batch_normalization_1_moving_mean_1*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOpEread_81_disablecopyonread_user_nn_batch_normalization_1_moving_mean_1^Read_81/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_162IdentityRead_81/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_82/DisableCopyOnReadDisableCopyOnReadCread_82_disablecopyonread_user_nn_batch_normalization_moving_mean_1*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOpCread_82_disablecopyonread_user_nn_batch_normalization_moving_mean_1^Read_82/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_164IdentityRead_82/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_83/DisableCopyOnReadDisableCopyOnReadIread_83_disablecopyonread_item_nn_batch_normalization_5_moving_variance_1*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOpIread_83_disablecopyonread_item_nn_batch_normalization_5_moving_variance_1^Read_83/DisableCopyOnRead*
_output_shapes
:@*
dtype0]
Identity_166IdentityRead_83/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
:@L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�
value�B�UB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/32/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/33/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/34/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/35/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/36/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/37/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/38/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/39/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�
value�B�UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *c
dtypesY
W2U				�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_168Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_169IdentityIdentity_168:output:0^NoOp*
T0*
_output_shapes
: �#
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_169Identity_169:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=U9

_output_shapes
: 

_user_specified_nameConst:OTK
I
_user_specified_name1/item_nn/batch_normalization_5/moving_variance_1:ISE
C
_user_specified_name+)user_nn/batch_normalization/moving_mean_1:KRG
E
_user_specified_name-+user_nn/batch_normalization_1/moving_mean_1:MQI
G
_user_specified_name/-user_nn/batch_normalization/moving_variance_1:KPG
E
_user_specified_name-+item_nn/batch_normalization_5/moving_mean_1:OOK
I
_user_specified_name1/item_nn/batch_normalization_4/moving_variance_1:ONK
I
_user_specified_name1/item_nn/batch_normalization_3/moving_variance_1:KMG
E
_user_specified_name-+item_nn/batch_normalization_4/moving_mean_1:KLG
E
_user_specified_name-+item_nn/batch_normalization_3/moving_mean_1:OKK
I
_user_specified_name1/user_nn/batch_normalization_2/moving_variance_1:OJK
I
_user_specified_name1/user_nn/batch_normalization_1/moving_variance_1:KIG
E
_user_specified_name-+user_nn/batch_normalization_2/moving_mean_1:6H2
0
_user_specified_nameitem_nn/dense_5/bias_1:EGA
?
_user_specified_name'%item_nn/batch_normalization_3/gamma_1:8F4
2
_user_specified_nameitem_nn/dense_5/kernel_1:8E4
2
_user_specified_nameitem_nn/dense_4/kernel_1:8D4
2
_user_specified_nameuser_nn/dense_2/kernel_1:8C4
2
_user_specified_nameuser_nn/dense_1/kernel_1:8B4
2
_user_specified_nameitem_nn/dense_7/kernel_1:6A2
0
_user_specified_nameuser_nn/dense_3/bias_1:E@A
?
_user_specified_name'%user_nn/batch_normalization_2/gamma_1:6?2
0
_user_specified_nameuser_nn/dense/kernel_1:E>A
?
_user_specified_name'%item_nn/batch_normalization_5/gamma_1:6=2
0
_user_specified_nameitem_nn/dense_4/bias_1:8<4
2
_user_specified_nameuser_nn/dense_3/kernel_1:6;2
0
_user_specified_nameuser_nn/dense_1/bias_1:B:>
<
_user_specified_name$"user_nn/batch_normalization/beta_1:692
0
_user_specified_nameitem_nn/dense_7/bias_1:D8@
>
_user_specified_name&$item_nn/batch_normalization_5/beta_1:874
2
_user_specified_nameitem_nn/dense_6/kernel_1:D6@
>
_user_specified_name&$user_nn/batch_normalization_2/beta_1:C5?
=
_user_specified_name%#user_nn/batch_normalization/gamma_1:E4A
?
_user_specified_name'%item_nn/batch_normalization_4/gamma_1:632
0
_user_specified_nameitem_nn/dense_6/bias_1:D2@
>
_user_specified_name&$item_nn/batch_normalization_4/beta_1:D1@
>
_user_specified_name&$item_nn/batch_normalization_3/beta_1:602
0
_user_specified_nameuser_nn/dense_2/bias_1:E/A
?
_user_specified_name'%user_nn/batch_normalization_1/gamma_1:4.0
.
_user_specified_nameuser_nn/dense/bias_1:D-@
>
_user_specified_name&$user_nn/batch_normalization_1/beta_1:(,$
"
_user_specified_name
Variable:*+&
$
_user_specified_name
Variable_1:**&
$
_user_specified_name
Variable_2:*)&
$
_user_specified_name
Variable_3:*(&
$
_user_specified_name
Variable_4:*'&
$
_user_specified_name
Variable_5:*&&
$
_user_specified_name
Variable_6:*%&
$
_user_specified_name
Variable_7:*$&
$
_user_specified_name
Variable_8:*#&
$
_user_specified_name
Variable_9:+"'
%
_user_specified_nameVariable_10:+!'
%
_user_specified_nameVariable_11:+ '
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+
'
%
_user_specified_nameVariable_34:+	'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_41:+'
%
_user_specified_nameVariable_42:+'
%
_user_specified_nameVariable_43:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�5
"__inference__traced_restore_335655
file_prefix/
assignvariableop_variable_43:	 �-
assignvariableop_1_variable_42:	�-
assignvariableop_2_variable_41:	�-
assignvariableop_3_variable_40:	�-
assignvariableop_4_variable_39:	�-
assignvariableop_5_variable_38:	�,
assignvariableop_6_variable_37:	2
assignvariableop_7_variable_36:
��-
assignvariableop_8_variable_35:	�-
assignvariableop_9_variable_34:	�.
assignvariableop_10_variable_33:	�.
assignvariableop_11_variable_32:	�.
assignvariableop_12_variable_31:	�-
assignvariableop_13_variable_30:	2
assignvariableop_14_variable_29:	�@-
assignvariableop_15_variable_28:@-
assignvariableop_16_variable_27:@-
assignvariableop_17_variable_26:@-
assignvariableop_18_variable_25:@-
assignvariableop_19_variable_24:@1
assignvariableop_20_variable_23:@ -
assignvariableop_21_variable_22: 3
assignvariableop_22_variable_21:
��.
assignvariableop_23_variable_20:	�.
assignvariableop_24_variable_19:	�.
assignvariableop_25_variable_18:	�.
assignvariableop_26_variable_17:	�.
assignvariableop_27_variable_16:	�-
assignvariableop_28_variable_15:	3
assignvariableop_29_variable_14:
��.
assignvariableop_30_variable_13:	�.
assignvariableop_31_variable_12:	�.
assignvariableop_32_variable_11:	�.
assignvariableop_33_variable_10:	�-
assignvariableop_34_variable_9:	�,
assignvariableop_35_variable_8:	1
assignvariableop_36_variable_7:	�@,
assignvariableop_37_variable_6:@,
assignvariableop_38_variable_5:@,
assignvariableop_39_variable_4:@,
assignvariableop_40_variable_3:@,
assignvariableop_41_variable_2:@0
assignvariableop_42_variable_1:@ *
assignvariableop_43_variable: G
8assignvariableop_44_user_nn_batch_normalization_1_beta_1:	�7
(assignvariableop_45_user_nn_dense_bias_1:	�H
9assignvariableop_46_user_nn_batch_normalization_1_gamma_1:	�8
*assignvariableop_47_user_nn_dense_2_bias_1:@G
8assignvariableop_48_item_nn_batch_normalization_3_beta_1:	�G
8assignvariableop_49_item_nn_batch_normalization_4_beta_1:	�8
*assignvariableop_50_item_nn_dense_6_bias_1:@H
9assignvariableop_51_item_nn_batch_normalization_4_gamma_1:	�F
7assignvariableop_52_user_nn_batch_normalization_gamma_1:	�F
8assignvariableop_53_user_nn_batch_normalization_2_beta_1:@?
,assignvariableop_54_item_nn_dense_6_kernel_1:	�@F
8assignvariableop_55_item_nn_batch_normalization_5_beta_1:@8
*assignvariableop_56_item_nn_dense_7_bias_1: E
6assignvariableop_57_user_nn_batch_normalization_beta_1:	�9
*assignvariableop_58_user_nn_dense_1_bias_1:	�>
,assignvariableop_59_user_nn_dense_3_kernel_1:@ 9
*assignvariableop_60_item_nn_dense_4_bias_1:	�G
9assignvariableop_61_item_nn_batch_normalization_5_gamma_1:@=
*assignvariableop_62_user_nn_dense_kernel_1:	 �G
9assignvariableop_63_user_nn_batch_normalization_2_gamma_1:@8
*assignvariableop_64_user_nn_dense_3_bias_1: >
,assignvariableop_65_item_nn_dense_7_kernel_1:@ @
,assignvariableop_66_user_nn_dense_1_kernel_1:
��?
,assignvariableop_67_user_nn_dense_2_kernel_1:	�@@
,assignvariableop_68_item_nn_dense_4_kernel_1:
��@
,assignvariableop_69_item_nn_dense_5_kernel_1:
��H
9assignvariableop_70_item_nn_batch_normalization_3_gamma_1:	�9
*assignvariableop_71_item_nn_dense_5_bias_1:	�M
?assignvariableop_72_user_nn_batch_normalization_2_moving_mean_1:@R
Cassignvariableop_73_user_nn_batch_normalization_1_moving_variance_1:	�Q
Cassignvariableop_74_user_nn_batch_normalization_2_moving_variance_1:@N
?assignvariableop_75_item_nn_batch_normalization_3_moving_mean_1:	�N
?assignvariableop_76_item_nn_batch_normalization_4_moving_mean_1:	�R
Cassignvariableop_77_item_nn_batch_normalization_3_moving_variance_1:	�R
Cassignvariableop_78_item_nn_batch_normalization_4_moving_variance_1:	�M
?assignvariableop_79_item_nn_batch_normalization_5_moving_mean_1:@P
Aassignvariableop_80_user_nn_batch_normalization_moving_variance_1:	�N
?assignvariableop_81_user_nn_batch_normalization_1_moving_mean_1:	�L
=assignvariableop_82_user_nn_batch_normalization_moving_mean_1:	�Q
Cassignvariableop_83_item_nn_batch_normalization_5_moving_variance_1:@
identity_85��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�
value�B�UB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/32/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/33/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/34/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/35/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/36/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/37/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/38/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/39/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*�
value�B�UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_43Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_42Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_41Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_40Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_39Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_38Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_37Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_36Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_35Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_34Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_33Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_32Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_31Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_30Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_29Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_28Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_27Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_26Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_25Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_24Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_23Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_22Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_21Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_20Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_19Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_18Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_17Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_16Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_15Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_14Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_13Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_12Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_11Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_10Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_9Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_8Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_variable_7Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_variable_6Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_variable_5Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_variable_4Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_variable_3Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_variable_2Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_variable_1Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_variableIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp8assignvariableop_44_user_nn_batch_normalization_1_beta_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_user_nn_dense_bias_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp9assignvariableop_46_user_nn_batch_normalization_1_gamma_1Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp*assignvariableop_47_user_nn_dense_2_bias_1Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp8assignvariableop_48_item_nn_batch_normalization_3_beta_1Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp8assignvariableop_49_item_nn_batch_normalization_4_beta_1Identity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_item_nn_dense_6_bias_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp9assignvariableop_51_item_nn_batch_normalization_4_gamma_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp7assignvariableop_52_user_nn_batch_normalization_gamma_1Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp8assignvariableop_53_user_nn_batch_normalization_2_beta_1Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp,assignvariableop_54_item_nn_dense_6_kernel_1Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp8assignvariableop_55_item_nn_batch_normalization_5_beta_1Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp*assignvariableop_56_item_nn_dense_7_bias_1Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp6assignvariableop_57_user_nn_batch_normalization_beta_1Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp*assignvariableop_58_user_nn_dense_1_bias_1Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp,assignvariableop_59_user_nn_dense_3_kernel_1Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp*assignvariableop_60_item_nn_dense_4_bias_1Identity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp9assignvariableop_61_item_nn_batch_normalization_5_gamma_1Identity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp*assignvariableop_62_user_nn_dense_kernel_1Identity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp9assignvariableop_63_user_nn_batch_normalization_2_gamma_1Identity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp*assignvariableop_64_user_nn_dense_3_bias_1Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp,assignvariableop_65_item_nn_dense_7_kernel_1Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp,assignvariableop_66_user_nn_dense_1_kernel_1Identity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp,assignvariableop_67_user_nn_dense_2_kernel_1Identity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp,assignvariableop_68_item_nn_dense_4_kernel_1Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp,assignvariableop_69_item_nn_dense_5_kernel_1Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp9assignvariableop_70_item_nn_batch_normalization_3_gamma_1Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp*assignvariableop_71_item_nn_dense_5_bias_1Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp?assignvariableop_72_user_nn_batch_normalization_2_moving_mean_1Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpCassignvariableop_73_user_nn_batch_normalization_1_moving_variance_1Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpCassignvariableop_74_user_nn_batch_normalization_2_moving_variance_1Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp?assignvariableop_75_item_nn_batch_normalization_3_moving_mean_1Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp?assignvariableop_76_item_nn_batch_normalization_4_moving_mean_1Identity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpCassignvariableop_77_item_nn_batch_normalization_3_moving_variance_1Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpCassignvariableop_78_item_nn_batch_normalization_4_moving_variance_1Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp?assignvariableop_79_item_nn_batch_normalization_5_moving_mean_1Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpAassignvariableop_80_user_nn_batch_normalization_moving_variance_1Identity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp?assignvariableop_81_user_nn_batch_normalization_1_moving_mean_1Identity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp=assignvariableop_82_user_nn_batch_normalization_moving_mean_1Identity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOpCassignvariableop_83_item_nn_batch_normalization_5_moving_variance_1Identity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*
_output_shapes
 "#
identity_85Identity_85:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:OTK
I
_user_specified_name1/item_nn/batch_normalization_5/moving_variance_1:ISE
C
_user_specified_name+)user_nn/batch_normalization/moving_mean_1:KRG
E
_user_specified_name-+user_nn/batch_normalization_1/moving_mean_1:MQI
G
_user_specified_name/-user_nn/batch_normalization/moving_variance_1:KPG
E
_user_specified_name-+item_nn/batch_normalization_5/moving_mean_1:OOK
I
_user_specified_name1/item_nn/batch_normalization_4/moving_variance_1:ONK
I
_user_specified_name1/item_nn/batch_normalization_3/moving_variance_1:KMG
E
_user_specified_name-+item_nn/batch_normalization_4/moving_mean_1:KLG
E
_user_specified_name-+item_nn/batch_normalization_3/moving_mean_1:OKK
I
_user_specified_name1/user_nn/batch_normalization_2/moving_variance_1:OJK
I
_user_specified_name1/user_nn/batch_normalization_1/moving_variance_1:KIG
E
_user_specified_name-+user_nn/batch_normalization_2/moving_mean_1:6H2
0
_user_specified_nameitem_nn/dense_5/bias_1:EGA
?
_user_specified_name'%item_nn/batch_normalization_3/gamma_1:8F4
2
_user_specified_nameitem_nn/dense_5/kernel_1:8E4
2
_user_specified_nameitem_nn/dense_4/kernel_1:8D4
2
_user_specified_nameuser_nn/dense_2/kernel_1:8C4
2
_user_specified_nameuser_nn/dense_1/kernel_1:8B4
2
_user_specified_nameitem_nn/dense_7/kernel_1:6A2
0
_user_specified_nameuser_nn/dense_3/bias_1:E@A
?
_user_specified_name'%user_nn/batch_normalization_2/gamma_1:6?2
0
_user_specified_nameuser_nn/dense/kernel_1:E>A
?
_user_specified_name'%item_nn/batch_normalization_5/gamma_1:6=2
0
_user_specified_nameitem_nn/dense_4/bias_1:8<4
2
_user_specified_nameuser_nn/dense_3/kernel_1:6;2
0
_user_specified_nameuser_nn/dense_1/bias_1:B:>
<
_user_specified_name$"user_nn/batch_normalization/beta_1:692
0
_user_specified_nameitem_nn/dense_7/bias_1:D8@
>
_user_specified_name&$item_nn/batch_normalization_5/beta_1:874
2
_user_specified_nameitem_nn/dense_6/kernel_1:D6@
>
_user_specified_name&$user_nn/batch_normalization_2/beta_1:C5?
=
_user_specified_name%#user_nn/batch_normalization/gamma_1:E4A
?
_user_specified_name'%item_nn/batch_normalization_4/gamma_1:632
0
_user_specified_nameitem_nn/dense_6/bias_1:D2@
>
_user_specified_name&$item_nn/batch_normalization_4/beta_1:D1@
>
_user_specified_name&$item_nn/batch_normalization_3/beta_1:602
0
_user_specified_nameuser_nn/dense_2/bias_1:E/A
?
_user_specified_name'%user_nn/batch_normalization_1/gamma_1:4.0
.
_user_specified_nameuser_nn/dense/bias_1:D-@
>
_user_specified_name&$user_nn/batch_normalization_1/beta_1:(,$
"
_user_specified_name
Variable:*+&
$
_user_specified_name
Variable_1:**&
$
_user_specified_name
Variable_2:*)&
$
_user_specified_name
Variable_3:*(&
$
_user_specified_name
Variable_4:*'&
$
_user_specified_name
Variable_5:*&&
$
_user_specified_name
Variable_6:*%&
$
_user_specified_name
Variable_7:*$&
$
_user_specified_name
Variable_8:*#&
$
_user_specified_name
Variable_9:+"'
%
_user_specified_nameVariable_10:+!'
%
_user_specified_nameVariable_11:+ '
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+
'
%
_user_specified_nameVariable_34:+	'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_41:+'
%
_user_specified_nameVariable_42:+'
%
_user_specified_nameVariable_43:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
8

item_input*
serve_item_input:0����������
7

user_input)
serve_user_input:0��������� <
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
B

item_input4
serving_default_item_input:0����������
A

user_input3
serving_default_user_input:0��������� >
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�8
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29
&30
'31
(32
)33
*34
+35
,36
-37
.38
/39
040
141
242
343"
trackable_list_wrapper
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
%18
&19
'20
(21
,22
-23
.24
/25
226
327"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
"8
#9
$10
)11
*12
+13
014
115"
trackable_list_wrapper
�
40
51
62
73
84
95
:6
;7
<8
=9
>10
?11
@12
A13
B14
C15
D16
E17
F18
G19
H20
I21
J22
K23
L24
M25
N26
O27
P28
Q29
R30
S31
T32
U33
V34
W35
X36
Y37
Z38
[39"
trackable_list_wrapper
 "
trackable_list_wrapper
�
\trace_02�
__inference___call___334515�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *U�R
P�M
$�!

user_input��������� 
%�"

item_input����������z\trace_0
7
	]serve
^serving_default"
signature_map
':%	 �2user_nn/dense/kernel
!:�2user_nn/dense/bias
0:.�2!user_nn/batch_normalization/gamma
/:-�2 user_nn/batch_normalization/beta
4:2�2'user_nn/batch_normalization/moving_mean
8:6�2+user_nn/batch_normalization/moving_variance
/:-	2#seed_generator/seed_generator_state
*:(
��2user_nn/dense_1/kernel
#:!�2user_nn/dense_1/bias
2:0�2#user_nn/batch_normalization_1/gamma
1:/�2"user_nn/batch_normalization_1/beta
6:4�2)user_nn/batch_normalization_1/moving_mean
::8�2-user_nn/batch_normalization_1/moving_variance
1:/	2%seed_generator_1/seed_generator_state
):'	�@2user_nn/dense_2/kernel
": @2user_nn/dense_2/bias
1:/@2#user_nn/batch_normalization_2/gamma
0:.@2"user_nn/batch_normalization_2/beta
5:3@2)user_nn/batch_normalization_2/moving_mean
9:7@2-user_nn/batch_normalization_2/moving_variance
(:&@ 2user_nn/dense_3/kernel
":  2user_nn/dense_3/bias
*:(
��2item_nn/dense_4/kernel
#:!�2item_nn/dense_4/bias
2:0�2#item_nn/batch_normalization_3/gamma
1:/�2"item_nn/batch_normalization_3/beta
6:4�2)item_nn/batch_normalization_3/moving_mean
::8�2-item_nn/batch_normalization_3/moving_variance
1:/	2%seed_generator_2/seed_generator_state
*:(
��2item_nn/dense_5/kernel
#:!�2item_nn/dense_5/bias
2:0�2#item_nn/batch_normalization_4/gamma
1:/�2"item_nn/batch_normalization_4/beta
6:4�2)item_nn/batch_normalization_4/moving_mean
::8�2-item_nn/batch_normalization_4/moving_variance
1:/	2%seed_generator_3/seed_generator_state
):'	�@2item_nn/dense_6/kernel
": @2item_nn/dense_6/bias
1:/@2#item_nn/batch_normalization_5/gamma
0:.@2"item_nn/batch_normalization_5/beta
5:3@2)item_nn/batch_normalization_5/moving_mean
9:7@2-item_nn/batch_normalization_5/moving_variance
(:&@ 2item_nn/dense_7/kernel
":  2item_nn/dense_7/bias
1:/�2"user_nn/batch_normalization_1/beta
!:�2user_nn/dense/bias
2:0�2#user_nn/batch_normalization_1/gamma
": @2user_nn/dense_2/bias
1:/�2"item_nn/batch_normalization_3/beta
1:/�2"item_nn/batch_normalization_4/beta
": @2item_nn/dense_6/bias
2:0�2#item_nn/batch_normalization_4/gamma
0:.�2!user_nn/batch_normalization/gamma
0:.@2"user_nn/batch_normalization_2/beta
):'	�@2item_nn/dense_6/kernel
0:.@2"item_nn/batch_normalization_5/beta
":  2item_nn/dense_7/bias
/:-�2 user_nn/batch_normalization/beta
#:!�2user_nn/dense_1/bias
(:&@ 2user_nn/dense_3/kernel
#:!�2item_nn/dense_4/bias
1:/@2#item_nn/batch_normalization_5/gamma
':%	 �2user_nn/dense/kernel
1:/@2#user_nn/batch_normalization_2/gamma
":  2user_nn/dense_3/bias
(:&@ 2item_nn/dense_7/kernel
*:(
��2user_nn/dense_1/kernel
):'	�@2user_nn/dense_2/kernel
*:(
��2item_nn/dense_4/kernel
*:(
��2item_nn/dense_5/kernel
2:0�2#item_nn/batch_normalization_3/gamma
#:!�2item_nn/dense_5/bias
5:3@2)user_nn/batch_normalization_2/moving_mean
::8�2-user_nn/batch_normalization_1/moving_variance
9:7@2-user_nn/batch_normalization_2/moving_variance
6:4�2)item_nn/batch_normalization_3/moving_mean
6:4�2)item_nn/batch_normalization_4/moving_mean
::8�2-item_nn/batch_normalization_3/moving_variance
::8�2-item_nn/batch_normalization_4/moving_variance
5:3@2)item_nn/batch_normalization_5/moving_mean
8:6�2+user_nn/batch_normalization/moving_variance
6:4�2)user_nn/batch_normalization_1/moving_mean
4:2�2'user_nn/batch_normalization/moving_mean
9:7@2-item_nn/batch_normalization_5/moving_variance
�B�
__inference___call___334515
user_input
item_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___334602
item_input
user_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 -

kwonlyargs�
j
item_input
j
user_input
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___334688
item_input
user_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 -

kwonlyargs�
j
item_input
j
user_input
kwonlydefaults
 
annotations� *
 �
__inference___call___334515�(	
"# !%&)*'(,-01./23_�\
U�R
P�M
$�!

user_input��������� 
%�"

item_input����������
� "!�
unknown����������
-__inference_signature_wrapper___call___334602�(	
"# !%&)*'(,-01./23v�s
� 
l�i
3

item_input%�"

item_input����������
2

user_input$�!

user_input��������� "3�0
.
output_0"�
output_0����������
-__inference_signature_wrapper___call___334688�(	
"# !%&)*'(,-01./23v�s
� 
l�i
3

item_input%�"

item_input����������
2

user_input$�!

user_input��������� "3�0
.
output_0"�
output_0���������