úþ
·
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ú
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ñ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758æ 

conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
: *
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
: *
dtype0

batch_normalization_57/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_57/gamma

0batch_normalization_57/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_57/gamma*
_output_shapes
: *
dtype0

batch_normalization_57/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_57/beta

/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
: *
dtype0

"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_57/moving_mean

6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
: *
dtype0
¤
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_57/moving_variance

:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
: *
dtype0

conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
:@*
dtype0

batch_normalization_58/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_58/gamma

0batch_normalization_58/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_58/gamma*
_output_shapes
:@*
dtype0

batch_normalization_58/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_58/beta

/batch_normalization_58/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_58/beta*
_output_shapes
:@*
dtype0

"batch_normalization_58/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_58/moving_mean

6batch_normalization_58/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_58/moving_mean*
_output_shapes
:@*
dtype0
¤
&batch_normalization_58/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_58/moving_variance

:batch_normalization_58/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_58/moving_variance*
_output_shapes
:@*
dtype0

conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_59/kernel
~
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*'
_output_shapes
:@*
dtype0
u
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_59/bias
n
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes	
:*
dtype0

batch_normalization_59/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_59/gamma

0batch_normalization_59/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_59/gamma*
_output_shapes	
:*
dtype0

batch_normalization_59/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_59/beta

/batch_normalization_59/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_59/beta*
_output_shapes	
:*
dtype0

"batch_normalization_59/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_59/moving_mean

6batch_normalization_59/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_59/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_59/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_59/moving_variance

:batch_normalization_59/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_59/moving_variance*
_output_shapes	
:*
dtype0
{
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_76/kernel
t
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel*
_output_shapes
:	@*
dtype0
r
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_76/bias
k
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
_output_shapes
:@*
dtype0
{
dense_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_77/kernel
t
#dense_77/kernel/Read/ReadVariableOpReadVariableOpdense_77/kernel*
_output_shapes
:	@*
dtype0
s
dense_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_77/bias
l
!dense_77/bias/Read/ReadVariableOpReadVariableOpdense_77/bias*
_output_shapes	
:*
dtype0
|
dense_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_78/kernel
u
#dense_78/kernel/Read/ReadVariableOpReadVariableOpdense_78/kernel* 
_output_shapes
:
*
dtype0
s
dense_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_78/bias
l
!dense_78/bias/Read/ReadVariableOpReadVariableOpdense_78/bias*
_output_shapes	
:*
dtype0
{
dense_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	e* 
shared_namedense_79/kernel
t
#dense_79/kernel/Read/ReadVariableOpReadVariableOpdense_79/kernel*
_output_shapes
:	e*
dtype0
r
dense_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:e*
shared_namedense_79/bias
k
!dense_79/bias/Read/ReadVariableOpReadVariableOpdense_79/bias*
_output_shapes
:e*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_57/kernel/m

+Adam/conv2d_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_57/bias/m
{
)Adam/conv2d_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/m*
_output_shapes
: *
dtype0

#Adam/batch_normalization_57/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_57/gamma/m

7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/m*
_output_shapes
: *
dtype0

"Adam/batch_normalization_57/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_57/beta/m

6Adam/batch_normalization_57/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/m*
_output_shapes
: *
dtype0

Adam/conv2d_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_58/kernel/m

+Adam/conv2d_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_58/bias/m
{
)Adam/conv2d_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/m*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_58/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_58/gamma/m

7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/m*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_58/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_58/beta/m

6Adam/batch_normalization_58/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/m*
_output_shapes
:@*
dtype0

Adam/conv2d_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_59/kernel/m

+Adam/conv2d_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_59/bias/m
|
)Adam/conv2d_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_59/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_59/gamma/m

7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_59/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_59/beta/m

6Adam/batch_normalization_59/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_76/kernel/m

*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_76/bias/m
y
(Adam/dense_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_77/kernel/m

*Adam/dense_77/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/m
z
(Adam/dense_77/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_78/kernel/m

*Adam/dense_78/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_78/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_78/bias/m
z
(Adam/dense_78/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_78/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	e*'
shared_nameAdam/dense_79/kernel/m

*Adam/dense_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/m*
_output_shapes
:	e*
dtype0

Adam/dense_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:e*%
shared_nameAdam/dense_79/bias/m
y
(Adam/dense_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/m*
_output_shapes
:e*
dtype0

Adam/conv2d_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_57/kernel/v

+Adam/conv2d_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_57/bias/v
{
)Adam/conv2d_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/v*
_output_shapes
: *
dtype0

#Adam/batch_normalization_57/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_57/gamma/v

7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/v*
_output_shapes
: *
dtype0

"Adam/batch_normalization_57/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_57/beta/v

6Adam/batch_normalization_57/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/v*
_output_shapes
: *
dtype0

Adam/conv2d_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_58/kernel/v

+Adam/conv2d_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_58/bias/v
{
)Adam/conv2d_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/v*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_58/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_58/gamma/v

7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/v*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_58/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_58/beta/v

6Adam/batch_normalization_58/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/v*
_output_shapes
:@*
dtype0

Adam/conv2d_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_59/kernel/v

+Adam/conv2d_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_59/bias/v
|
)Adam/conv2d_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_59/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_59/gamma/v

7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_59/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_59/beta/v

6Adam/batch_normalization_59/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_76/kernel/v

*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_76/bias/v
y
(Adam/dense_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_77/kernel/v

*Adam/dense_77/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_77/bias/v
z
(Adam/dense_77/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_78/kernel/v

*Adam/dense_78/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_78/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_78/bias/v
z
(Adam/dense_78/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_78/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	e*'
shared_nameAdam/dense_79/kernel/v

*Adam/dense_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/v*
_output_shapes
:	e*
dtype0

Adam/dense_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:e*%
shared_nameAdam/dense_79/bias/v
y
(Adam/dense_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/v*
_output_shapes
:e*
dtype0

NoOpNoOp
á¤
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¤
value¤B¤ B¤
ç
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature*
'
#_self_saveable_object_factories* 
Ë

kernel
bias
# _self_saveable_object_factories
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
ú
'axis
	(gamma
)beta
*moving_mean
+moving_variance
#,_self_saveable_object_factories
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
³
#3_self_saveable_object_factories
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
Ë

:kernel
;bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
ú
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
³
#O_self_saveable_object_factories
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
Ë

Vkernel
Wbias
#X_self_saveable_object_factories
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
ú
_axis
	`gamma
abeta
bmoving_mean
cmoving_variance
#d_self_saveable_object_factories
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses*
³
#k_self_saveable_object_factories
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses* 
³
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses* 
Í

ykernel
zbias
#{_self_saveable_object_factories
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ò
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
Ô
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Ò
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
Ô
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses*
Ò
$¤_self_saveable_object_factories
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©_random_generator
ª__call__
+«&call_and_return_all_conditional_losses* 
Ô
¬kernel
	­bias
$®_self_saveable_object_factories
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+´&call_and_return_all_conditional_losses*
å
	µiter
¶beta_1
·beta_2

¸decay
¹learning_ratem m¡(m¢)m£:m¤;m¥Dm¦Em§Vm¨Wm©`mªam«ym¬zm­	m®	m¯	m°	m±	¬m²	­m³v´vµ(v¶)v·:v¸;v¹DvºEv»Vv¼Wv½`v¾av¿yvÀzvÁ	vÂ	vÃ	vÄ	vÅ	¬vÆ	­vÇ*

ºserving_default* 
* 
Ð
0
1
(2
)3
*4
+5
:6
;7
D8
E9
F10
G11
V12
W13
`14
a15
b16
c17
y18
z19
20
21
22
23
¬24
­25*
 
0
1
(2
)3
:4
;5
D6
E7
V8
W9
`10
a11
y12
z13
14
15
16
17
¬18
­19*
* 
µ
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_57/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_57/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_57/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_57/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_57/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_57/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
(0
)1
*2
+3*

(0
)1*
* 

Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_58/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_58/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

:0
;1*

:0
;1*
* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_58/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_58/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_58/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_58/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
D0
E1
F2
G3*

D0
E1*
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_59/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_59/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

V0
W1*

V0
W1*
* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_59/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_59/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_59/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_59/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
`0
a1
b2
c3*

`0
a1*
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_76/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_76/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

y0
z1*

y0
z1*
* 

ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_77/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_77/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_78/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_78/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¥	variables
¦trainable_variables
§regularization_losses
ª__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_79/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_79/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

¬0
­1*

¬0
­1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¯	variables
°trainable_variables
±regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
*0
+1
F2
G3
b4
c5*

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*

0
1*
* 
* 
* 
* 
* 
* 
* 

*0
+1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

F0
G1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

b0
c1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
}
VARIABLE_VALUEAdam/conv2d_57/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_57/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_57/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_57/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_58/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_58/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_58/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_58/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_59/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_59/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_59/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_59/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_76/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_76/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_77/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_77/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_78/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_78/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_79/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_79/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_57/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_57/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_57/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_57/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_58/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_58/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_58/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_58/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_59/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_59/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_59/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_59/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_76/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_76/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_77/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_77/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_78/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_78/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_79/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_79/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_20Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿàà
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_20conv2d_57/kernelconv2d_57/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_58/kernelconv2d_58/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_varianceconv2d_59/kernelconv2d_59/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_variancedense_76/kerneldense_76/biasdense_77/kerneldense_77/biasdense_78/kerneldense_78/biasdense_79/kerneldense_79/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_150175
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ë
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp0batch_normalization_57/gamma/Read/ReadVariableOp/batch_normalization_57/beta/Read/ReadVariableOp6batch_normalization_57/moving_mean/Read/ReadVariableOp:batch_normalization_57/moving_variance/Read/ReadVariableOp$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp0batch_normalization_58/gamma/Read/ReadVariableOp/batch_normalization_58/beta/Read/ReadVariableOp6batch_normalization_58/moving_mean/Read/ReadVariableOp:batch_normalization_58/moving_variance/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOp0batch_normalization_59/gamma/Read/ReadVariableOp/batch_normalization_59/beta/Read/ReadVariableOp6batch_normalization_59/moving_mean/Read/ReadVariableOp:batch_normalization_59/moving_variance/Read/ReadVariableOp#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOp#dense_77/kernel/Read/ReadVariableOp!dense_77/bias/Read/ReadVariableOp#dense_78/kernel/Read/ReadVariableOp!dense_78/bias/Read/ReadVariableOp#dense_79/kernel/Read/ReadVariableOp!dense_79/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_57/kernel/m/Read/ReadVariableOp)Adam/conv2d_57/bias/m/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_57/beta/m/Read/ReadVariableOp+Adam/conv2d_58/kernel/m/Read/ReadVariableOp)Adam/conv2d_58/bias/m/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_58/beta/m/Read/ReadVariableOp+Adam/conv2d_59/kernel/m/Read/ReadVariableOp)Adam/conv2d_59/bias/m/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_59/beta/m/Read/ReadVariableOp*Adam/dense_76/kernel/m/Read/ReadVariableOp(Adam/dense_76/bias/m/Read/ReadVariableOp*Adam/dense_77/kernel/m/Read/ReadVariableOp(Adam/dense_77/bias/m/Read/ReadVariableOp*Adam/dense_78/kernel/m/Read/ReadVariableOp(Adam/dense_78/bias/m/Read/ReadVariableOp*Adam/dense_79/kernel/m/Read/ReadVariableOp(Adam/dense_79/bias/m/Read/ReadVariableOp+Adam/conv2d_57/kernel/v/Read/ReadVariableOp)Adam/conv2d_57/bias/v/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_57/beta/v/Read/ReadVariableOp+Adam/conv2d_58/kernel/v/Read/ReadVariableOp)Adam/conv2d_58/bias/v/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_58/beta/v/Read/ReadVariableOp+Adam/conv2d_59/kernel/v/Read/ReadVariableOp)Adam/conv2d_59/bias/v/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_59/beta/v/Read/ReadVariableOp*Adam/dense_76/kernel/v/Read/ReadVariableOp(Adam/dense_76/bias/v/Read/ReadVariableOp*Adam/dense_77/kernel/v/Read/ReadVariableOp(Adam/dense_77/bias/v/Read/ReadVariableOp*Adam/dense_78/kernel/v/Read/ReadVariableOp(Adam/dense_78/bias/v/Read/ReadVariableOp*Adam/dense_79/kernel/v/Read/ReadVariableOp(Adam/dense_79/bias/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_150871

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_57/kernelconv2d_57/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_58/kernelconv2d_58/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_varianceconv2d_59/kernelconv2d_59/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_variancedense_76/kerneldense_76/biasdense_77/kerneldense_77/biasdense_78/kerneldense_78/biasdense_79/kerneldense_79/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_57/kernel/mAdam/conv2d_57/bias/m#Adam/batch_normalization_57/gamma/m"Adam/batch_normalization_57/beta/mAdam/conv2d_58/kernel/mAdam/conv2d_58/bias/m#Adam/batch_normalization_58/gamma/m"Adam/batch_normalization_58/beta/mAdam/conv2d_59/kernel/mAdam/conv2d_59/bias/m#Adam/batch_normalization_59/gamma/m"Adam/batch_normalization_59/beta/mAdam/dense_76/kernel/mAdam/dense_76/bias/mAdam/dense_77/kernel/mAdam/dense_77/bias/mAdam/dense_78/kernel/mAdam/dense_78/bias/mAdam/dense_79/kernel/mAdam/dense_79/bias/mAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/v#Adam/batch_normalization_57/gamma/v"Adam/batch_normalization_57/beta/vAdam/conv2d_58/kernel/vAdam/conv2d_58/bias/v#Adam/batch_normalization_58/gamma/v"Adam/batch_normalization_58/beta/vAdam/conv2d_59/kernel/vAdam/conv2d_59/bias/v#Adam/batch_normalization_59/gamma/v"Adam/batch_normalization_59/beta/vAdam/dense_76/kernel/vAdam/dense_76/bias/vAdam/dense_77/kernel/vAdam/dense_77/bias/vAdam/dense_78/kernel/vAdam/dense_78/bias/vAdam/dense_79/kernel/vAdam/dense_79/bias/v*W
TinP
N2L*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_151106 §

X
<__inference_global_average_pooling2d_19_layer_call_fn_150456

inputs
identityÎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_149003i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
¡
*__inference_conv2d_59_layer_call_fn_150368

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_149078x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ77@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@
 
_user_specified_nameinputs
È

)__inference_dense_76_layer_call_fn_150471

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_149106o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_58_layer_call_and_return_conditional_losses_149141

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
·
$__inference_signature_wrapper_150175
input_20!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	@

unknown_18:@

unknown_19:	@

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	e

unknown_24:e
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_148765o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_20
Ý
¡
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_150423

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_58_layer_call_and_return_conditional_losses_150544

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_78_layer_call_and_return_conditional_losses_150576

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ö
D__inference_dense_76_layer_call_and_return_conditional_losses_149106

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ò
7__inference_batch_normalization_57_layer_call_fn_150221

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148818
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÈP

D__inference_model_19_layer_call_and_return_conditional_losses_149185

inputs*
conv2d_57_149025: 
conv2d_57_149027: +
batch_normalization_57_149030: +
batch_normalization_57_149032: +
batch_normalization_57_149034: +
batch_normalization_57_149036: *
conv2d_58_149052: @
conv2d_58_149054:@+
batch_normalization_58_149057:@+
batch_normalization_58_149059:@+
batch_normalization_58_149061:@+
batch_normalization_58_149063:@+
conv2d_59_149079:@
conv2d_59_149081:	,
batch_normalization_59_149084:	,
batch_normalization_59_149086:	,
batch_normalization_59_149088:	,
batch_normalization_59_149090:	"
dense_76_149107:	@
dense_76_149109:@"
dense_77_149131:	@
dense_77_149133:	#
dense_78_149155:

dense_78_149157:	"
dense_79_149179:	e
dense_79_149181:e
identity¢.batch_normalization_57/StatefulPartitionedCall¢.batch_normalization_58/StatefulPartitionedCall¢.batch_normalization_59/StatefulPartitionedCall¢!conv2d_57/StatefulPartitionedCall¢!conv2d_58/StatefulPartitionedCall¢!conv2d_59/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢ dense_78/StatefulPartitionedCall¢ dense_79/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_57_149025conv2d_57_149027*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_149024
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_57_149030batch_normalization_57_149032batch_normalization_57_149034batch_normalization_57_149036*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148787
 max_pooling2d_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_148838¢
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_58_149052conv2d_58_149054*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_149051
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0batch_normalization_58_149057batch_normalization_58_149059batch_normalization_58_149061batch_normalization_58_149063*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148863
 max_pooling2d_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_148914£
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_149079conv2d_59_149081*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_149078
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0batch_normalization_59_149084batch_normalization_59_149086batch_normalization_59_149088batch_normalization_59_149090*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148939
 max_pooling2d_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_148990
+global_average_pooling2d_19/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_149003¡
 dense_76/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_19/PartitionedCall:output:0dense_76_149107dense_76_149109*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_149106â
dropout_57/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_149117
 dense_77/StatefulPartitionedCallStatefulPartitionedCall#dropout_57/PartitionedCall:output:0dense_77_149131dense_77_149133*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_149130ã
dropout_58/PartitionedCallPartitionedCall)dense_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_149141
 dense_78/StatefulPartitionedCallStatefulPartitionedCall#dropout_58/PartitionedCall:output:0dense_78_149155dense_78_149157*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_149154ã
dropout_59/PartitionedCallPartitionedCall)dense_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_149165
 dense_79/StatefulPartitionedCallStatefulPartitionedCall#dropout_59/PartitionedCall:output:0dense_79_149179dense_79_149181*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_149178x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeÑ
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall!^dense_78/StatefulPartitionedCall!^dense_79/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ý
¡
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148939

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

)__inference_dense_78_layer_call_fn_150565

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_149154p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

÷
D__inference_dense_77_layer_call_and_return_conditional_losses_149130

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Û
Á
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148818

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_57_layer_call_and_return_conditional_losses_149117

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
î
º
)__inference_model_19_layer_call_fn_149889

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	@

unknown_18:@

unknown_19:	@

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	e

unknown_24:e
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_19_layer_call_and_return_conditional_losses_149511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ï

*__inference_conv2d_58_layer_call_fn_150276

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_149051w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿoo : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo 
 
_user_specified_nameinputs
Û
Á
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148894

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_59_layer_call_and_return_conditional_losses_150591

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü	
e
F__inference_dropout_59_layer_call_and_return_conditional_losses_150603

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¢¼?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL=§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ò
7__inference_batch_normalization_58_layer_call_fn_150300

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148863
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤

ö
D__inference_dense_79_layer_call_and_return_conditional_losses_149178

inputs1
matmul_readvariableop_resource:	e-
biasadd_readvariableop_resource:e
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	e*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿer
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:e*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿew
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
§!
__inference__traced_save_150871
file_prefix/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop;
7savev2_batch_normalization_57_gamma_read_readvariableop:
6savev2_batch_normalization_57_beta_read_readvariableopA
=savev2_batch_normalization_57_moving_mean_read_readvariableopE
Asavev2_batch_normalization_57_moving_variance_read_readvariableop/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop;
7savev2_batch_normalization_58_gamma_read_readvariableop:
6savev2_batch_normalization_58_beta_read_readvariableopA
=savev2_batch_normalization_58_moving_mean_read_readvariableopE
Asavev2_batch_normalization_58_moving_variance_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop;
7savev2_batch_normalization_59_gamma_read_readvariableop:
6savev2_batch_normalization_59_beta_read_readvariableopA
=savev2_batch_normalization_59_moving_mean_read_readvariableopE
Asavev2_batch_normalization_59_moving_variance_read_readvariableop.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop.
*savev2_dense_77_kernel_read_readvariableop,
(savev2_dense_77_bias_read_readvariableop.
*savev2_dense_78_kernel_read_readvariableop,
(savev2_dense_78_bias_read_readvariableop.
*savev2_dense_79_kernel_read_readvariableop,
(savev2_dense_79_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_57_kernel_m_read_readvariableop4
0savev2_adam_conv2d_57_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_m_read_readvariableop6
2savev2_adam_conv2d_58_kernel_m_read_readvariableop4
0savev2_adam_conv2d_58_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_m_read_readvariableop6
2savev2_adam_conv2d_59_kernel_m_read_readvariableop4
0savev2_adam_conv2d_59_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_m_read_readvariableop5
1savev2_adam_dense_76_kernel_m_read_readvariableop3
/savev2_adam_dense_76_bias_m_read_readvariableop5
1savev2_adam_dense_77_kernel_m_read_readvariableop3
/savev2_adam_dense_77_bias_m_read_readvariableop5
1savev2_adam_dense_78_kernel_m_read_readvariableop3
/savev2_adam_dense_78_bias_m_read_readvariableop5
1savev2_adam_dense_79_kernel_m_read_readvariableop3
/savev2_adam_dense_79_bias_m_read_readvariableop6
2savev2_adam_conv2d_57_kernel_v_read_readvariableop4
0savev2_adam_conv2d_57_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_v_read_readvariableop6
2savev2_adam_conv2d_58_kernel_v_read_readvariableop4
0savev2_adam_conv2d_58_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_v_read_readvariableop6
2savev2_adam_conv2d_59_kernel_v_read_readvariableop4
0savev2_adam_conv2d_59_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_v_read_readvariableop5
1savev2_adam_dense_76_kernel_v_read_readvariableop3
/savev2_adam_dense_76_bias_v_read_readvariableop5
1savev2_adam_dense_77_kernel_v_read_readvariableop3
/savev2_adam_dense_77_bias_v_read_readvariableop5
1savev2_adam_dense_78_kernel_v_read_readvariableop3
/savev2_adam_dense_78_bias_v_read_readvariableop5
1savev2_adam_dense_79_kernel_v_read_readvariableop3
/savev2_adam_dense_79_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ü)
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*¥)
value)B)LB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*­
value£B LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop7savev2_batch_normalization_57_gamma_read_readvariableop6savev2_batch_normalization_57_beta_read_readvariableop=savev2_batch_normalization_57_moving_mean_read_readvariableopAsavev2_batch_normalization_57_moving_variance_read_readvariableop+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop7savev2_batch_normalization_58_gamma_read_readvariableop6savev2_batch_normalization_58_beta_read_readvariableop=savev2_batch_normalization_58_moving_mean_read_readvariableopAsavev2_batch_normalization_58_moving_variance_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop7savev2_batch_normalization_59_gamma_read_readvariableop6savev2_batch_normalization_59_beta_read_readvariableop=savev2_batch_normalization_59_moving_mean_read_readvariableopAsavev2_batch_normalization_59_moving_variance_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop*savev2_dense_77_kernel_read_readvariableop(savev2_dense_77_bias_read_readvariableop*savev2_dense_78_kernel_read_readvariableop(savev2_dense_78_bias_read_readvariableop*savev2_dense_79_kernel_read_readvariableop(savev2_dense_79_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_57_kernel_m_read_readvariableop0savev2_adam_conv2d_57_bias_m_read_readvariableop>savev2_adam_batch_normalization_57_gamma_m_read_readvariableop=savev2_adam_batch_normalization_57_beta_m_read_readvariableop2savev2_adam_conv2d_58_kernel_m_read_readvariableop0savev2_adam_conv2d_58_bias_m_read_readvariableop>savev2_adam_batch_normalization_58_gamma_m_read_readvariableop=savev2_adam_batch_normalization_58_beta_m_read_readvariableop2savev2_adam_conv2d_59_kernel_m_read_readvariableop0savev2_adam_conv2d_59_bias_m_read_readvariableop>savev2_adam_batch_normalization_59_gamma_m_read_readvariableop=savev2_adam_batch_normalization_59_beta_m_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop1savev2_adam_dense_77_kernel_m_read_readvariableop/savev2_adam_dense_77_bias_m_read_readvariableop1savev2_adam_dense_78_kernel_m_read_readvariableop/savev2_adam_dense_78_bias_m_read_readvariableop1savev2_adam_dense_79_kernel_m_read_readvariableop/savev2_adam_dense_79_bias_m_read_readvariableop2savev2_adam_conv2d_57_kernel_v_read_readvariableop0savev2_adam_conv2d_57_bias_v_read_readvariableop>savev2_adam_batch_normalization_57_gamma_v_read_readvariableop=savev2_adam_batch_normalization_57_beta_v_read_readvariableop2savev2_adam_conv2d_58_kernel_v_read_readvariableop0savev2_adam_conv2d_58_bias_v_read_readvariableop>savev2_adam_batch_normalization_58_gamma_v_read_readvariableop=savev2_adam_batch_normalization_58_beta_v_read_readvariableop2savev2_adam_conv2d_59_kernel_v_read_readvariableop0savev2_adam_conv2d_59_bias_v_read_readvariableop>savev2_adam_batch_normalization_59_gamma_v_read_readvariableop=savev2_adam_batch_normalization_59_beta_v_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableop1savev2_adam_dense_77_kernel_v_read_readvariableop/savev2_adam_dense_77_bias_v_read_readvariableop1savev2_adam_dense_78_kernel_v_read_readvariableop/savev2_adam_dense_78_bias_v_read_readvariableop1savev2_adam_dense_79_kernel_v_read_readvariableop/savev2_adam_dense_79_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ö
_input_shapesä
á: : : : : : : : @:@:@:@:@:@:@::::::	@:@:	@::
::	e:e: : : : : : : : : : : : : : @:@:@:@:@::::	@:@:	@::
::	e:e: : : : : @:@:@:@:@::::	@:@:	@::
::	e:e: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	e: 

_output_shapes
:e:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :,$(
&
_output_shapes
: : %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
: @: )

_output_shapes
:@: *

_output_shapes
:@: +

_output_shapes
:@:-,)
'
_output_shapes
:@:!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::%0!

_output_shapes
:	@: 1

_output_shapes
:@:%2!

_output_shapes
:	@:!3

_output_shapes	
::&4"
 
_output_shapes
:
:!5

_output_shapes	
::%6!

_output_shapes
:	e: 7

_output_shapes
:e:,8(
&
_output_shapes
: : 9

_output_shapes
: : :

_output_shapes
: : ;

_output_shapes
: :,<(
&
_output_shapes
: @: =

_output_shapes
:@: >

_output_shapes
:@: ?

_output_shapes
:@:-@)
'
_output_shapes
:@:!A

_output_shapes	
::!B

_output_shapes	
::!C

_output_shapes	
::%D!

_output_shapes
:	@: E

_output_shapes
:@:%F!

_output_shapes
:	@:!G

_output_shapes	
::&H"
 
_output_shapes
:
:!I

_output_shapes	
::%J!

_output_shapes
:	e: K

_output_shapes
:e:L

_output_shapes
: 
®
Ú0
"__inference__traced_restore_151106
file_prefix;
!assignvariableop_conv2d_57_kernel: /
!assignvariableop_1_conv2d_57_bias: =
/assignvariableop_2_batch_normalization_57_gamma: <
.assignvariableop_3_batch_normalization_57_beta: C
5assignvariableop_4_batch_normalization_57_moving_mean: G
9assignvariableop_5_batch_normalization_57_moving_variance: =
#assignvariableop_6_conv2d_58_kernel: @/
!assignvariableop_7_conv2d_58_bias:@=
/assignvariableop_8_batch_normalization_58_gamma:@<
.assignvariableop_9_batch_normalization_58_beta:@D
6assignvariableop_10_batch_normalization_58_moving_mean:@H
:assignvariableop_11_batch_normalization_58_moving_variance:@?
$assignvariableop_12_conv2d_59_kernel:@1
"assignvariableop_13_conv2d_59_bias:	?
0assignvariableop_14_batch_normalization_59_gamma:	>
/assignvariableop_15_batch_normalization_59_beta:	E
6assignvariableop_16_batch_normalization_59_moving_mean:	I
:assignvariableop_17_batch_normalization_59_moving_variance:	6
#assignvariableop_18_dense_76_kernel:	@/
!assignvariableop_19_dense_76_bias:@6
#assignvariableop_20_dense_77_kernel:	@0
!assignvariableop_21_dense_77_bias:	7
#assignvariableop_22_dense_78_kernel:
0
!assignvariableop_23_dense_78_bias:	6
#assignvariableop_24_dense_79_kernel:	e/
!assignvariableop_25_dense_79_bias:e'
assignvariableop_26_adam_iter:	 )
assignvariableop_27_adam_beta_1: )
assignvariableop_28_adam_beta_2: (
assignvariableop_29_adam_decay: 0
&assignvariableop_30_adam_learning_rate: #
assignvariableop_31_total: #
assignvariableop_32_count: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: E
+assignvariableop_35_adam_conv2d_57_kernel_m: 7
)assignvariableop_36_adam_conv2d_57_bias_m: E
7assignvariableop_37_adam_batch_normalization_57_gamma_m: D
6assignvariableop_38_adam_batch_normalization_57_beta_m: E
+assignvariableop_39_adam_conv2d_58_kernel_m: @7
)assignvariableop_40_adam_conv2d_58_bias_m:@E
7assignvariableop_41_adam_batch_normalization_58_gamma_m:@D
6assignvariableop_42_adam_batch_normalization_58_beta_m:@F
+assignvariableop_43_adam_conv2d_59_kernel_m:@8
)assignvariableop_44_adam_conv2d_59_bias_m:	F
7assignvariableop_45_adam_batch_normalization_59_gamma_m:	E
6assignvariableop_46_adam_batch_normalization_59_beta_m:	=
*assignvariableop_47_adam_dense_76_kernel_m:	@6
(assignvariableop_48_adam_dense_76_bias_m:@=
*assignvariableop_49_adam_dense_77_kernel_m:	@7
(assignvariableop_50_adam_dense_77_bias_m:	>
*assignvariableop_51_adam_dense_78_kernel_m:
7
(assignvariableop_52_adam_dense_78_bias_m:	=
*assignvariableop_53_adam_dense_79_kernel_m:	e6
(assignvariableop_54_adam_dense_79_bias_m:eE
+assignvariableop_55_adam_conv2d_57_kernel_v: 7
)assignvariableop_56_adam_conv2d_57_bias_v: E
7assignvariableop_57_adam_batch_normalization_57_gamma_v: D
6assignvariableop_58_adam_batch_normalization_57_beta_v: E
+assignvariableop_59_adam_conv2d_58_kernel_v: @7
)assignvariableop_60_adam_conv2d_58_bias_v:@E
7assignvariableop_61_adam_batch_normalization_58_gamma_v:@D
6assignvariableop_62_adam_batch_normalization_58_beta_v:@F
+assignvariableop_63_adam_conv2d_59_kernel_v:@8
)assignvariableop_64_adam_conv2d_59_bias_v:	F
7assignvariableop_65_adam_batch_normalization_59_gamma_v:	E
6assignvariableop_66_adam_batch_normalization_59_beta_v:	=
*assignvariableop_67_adam_dense_76_kernel_v:	@6
(assignvariableop_68_adam_dense_76_bias_v:@=
*assignvariableop_69_adam_dense_77_kernel_v:	@7
(assignvariableop_70_adam_dense_77_bias_v:	>
*assignvariableop_71_adam_dense_78_kernel_v:
7
(assignvariableop_72_adam_dense_78_bias_v:	=
*assignvariableop_73_adam_dense_79_kernel_v:	e6
(assignvariableop_74_adam_dense_79_bias_v:e
identity_76¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_8¢AssignVariableOp_9ÿ)
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*¥)
value)B)LB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*­
value£B LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Æ
_output_shapes³
°::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_57_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_57_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_57_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_57_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_57_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_57_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_58_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_58_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_58_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_58_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_58_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_58_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_59_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_59_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_59_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_59_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_59_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_59_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_76_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_76_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_77_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_77_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_78_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_78_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_79_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_79_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_decayIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_learning_rateIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_57_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_57_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adam_batch_normalization_57_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_batch_normalization_57_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_58_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_58_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adam_batch_normalization_58_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_58_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_59_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_59_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_59_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_59_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_76_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_76_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_77_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_77_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_78_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_78_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_79_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_79_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_57_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_57_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_batch_normalization_57_gamma_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_batch_normalization_57_beta_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_58_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_58_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_batch_normalization_58_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_58_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_59_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_59_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_batch_normalization_59_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_59_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_76_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_76_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_77_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_77_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_dense_78_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_dense_78_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_79_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_79_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Á
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: ®
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_76Identity_76:output:0*­
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
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
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ú
d
+__inference_dropout_59_layer_call_fn_150586

inputs
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_149270p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
d
+__inference_dropout_57_layer_call_fn_150492

inputs
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_149336o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

þ
E__inference_conv2d_58_layer_call_and_return_conditional_losses_150287

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿoo : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo 
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_148838

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
í
!__inference__wrapped_model_148765
input_20K
1model_19_conv2d_57_conv2d_readvariableop_resource: @
2model_19_conv2d_57_biasadd_readvariableop_resource: E
7model_19_batch_normalization_57_readvariableop_resource: G
9model_19_batch_normalization_57_readvariableop_1_resource: V
Hmodel_19_batch_normalization_57_fusedbatchnormv3_readvariableop_resource: X
Jmodel_19_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource: K
1model_19_conv2d_58_conv2d_readvariableop_resource: @@
2model_19_conv2d_58_biasadd_readvariableop_resource:@E
7model_19_batch_normalization_58_readvariableop_resource:@G
9model_19_batch_normalization_58_readvariableop_1_resource:@V
Hmodel_19_batch_normalization_58_fusedbatchnormv3_readvariableop_resource:@X
Jmodel_19_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:@L
1model_19_conv2d_59_conv2d_readvariableop_resource:@A
2model_19_conv2d_59_biasadd_readvariableop_resource:	F
7model_19_batch_normalization_59_readvariableop_resource:	H
9model_19_batch_normalization_59_readvariableop_1_resource:	W
Hmodel_19_batch_normalization_59_fusedbatchnormv3_readvariableop_resource:	Y
Jmodel_19_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:	C
0model_19_dense_76_matmul_readvariableop_resource:	@?
1model_19_dense_76_biasadd_readvariableop_resource:@C
0model_19_dense_77_matmul_readvariableop_resource:	@@
1model_19_dense_77_biasadd_readvariableop_resource:	D
0model_19_dense_78_matmul_readvariableop_resource:
@
1model_19_dense_78_biasadd_readvariableop_resource:	C
0model_19_dense_79_matmul_readvariableop_resource:	e?
1model_19_dense_79_biasadd_readvariableop_resource:e
identity¢?model_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp¢Amodel_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1¢.model_19/batch_normalization_57/ReadVariableOp¢0model_19/batch_normalization_57/ReadVariableOp_1¢?model_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp¢Amodel_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1¢.model_19/batch_normalization_58/ReadVariableOp¢0model_19/batch_normalization_58/ReadVariableOp_1¢?model_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp¢Amodel_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1¢.model_19/batch_normalization_59/ReadVariableOp¢0model_19/batch_normalization_59/ReadVariableOp_1¢)model_19/conv2d_57/BiasAdd/ReadVariableOp¢(model_19/conv2d_57/Conv2D/ReadVariableOp¢)model_19/conv2d_58/BiasAdd/ReadVariableOp¢(model_19/conv2d_58/Conv2D/ReadVariableOp¢)model_19/conv2d_59/BiasAdd/ReadVariableOp¢(model_19/conv2d_59/Conv2D/ReadVariableOp¢(model_19/dense_76/BiasAdd/ReadVariableOp¢'model_19/dense_76/MatMul/ReadVariableOp¢(model_19/dense_77/BiasAdd/ReadVariableOp¢'model_19/dense_77/MatMul/ReadVariableOp¢(model_19/dense_78/BiasAdd/ReadVariableOp¢'model_19/dense_78/MatMul/ReadVariableOp¢(model_19/dense_79/BiasAdd/ReadVariableOp¢'model_19/dense_79/MatMul/ReadVariableOp¢
(model_19/conv2d_57/Conv2D/ReadVariableOpReadVariableOp1model_19_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ä
model_19/conv2d_57/Conv2DConv2Dinput_200model_19/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *
paddingVALID*
strides

)model_19/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp2model_19_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¸
model_19/conv2d_57/BiasAddBiasAdd"model_19/conv2d_57/Conv2D:output:01model_19/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß 
model_19/conv2d_57/ReluRelu#model_19/conv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß ¢
.model_19/batch_normalization_57/ReadVariableOpReadVariableOp7model_19_batch_normalization_57_readvariableop_resource*
_output_shapes
: *
dtype0¦
0model_19/batch_normalization_57/ReadVariableOp_1ReadVariableOp9model_19_batch_normalization_57_readvariableop_1_resource*
_output_shapes
: *
dtype0Ä
?model_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOpHmodel_19_batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0È
Amodel_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJmodel_19_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0÷
0model_19/batch_normalization_57/FusedBatchNormV3FusedBatchNormV3%model_19/conv2d_57/Relu:activations:06model_19/batch_normalization_57/ReadVariableOp:value:08model_19/batch_normalization_57/ReadVariableOp_1:value:0Gmodel_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0Imodel_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿßß : : : : :*
epsilon%o:*
is_training( Ï
!model_19/max_pooling2d_57/MaxPoolMaxPool4model_19/batch_normalization_57/FusedBatchNormV3:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo *
ksize
*
paddingVALID*
strides
¢
(model_19/conv2d_58/Conv2D/ReadVariableOpReadVariableOp1model_19_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ä
model_19/conv2d_58/Conv2DConv2D*model_19/max_pooling2d_57/MaxPool:output:00model_19/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*
paddingVALID*
strides

)model_19/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp2model_19_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¶
model_19/conv2d_58/BiasAddBiasAdd"model_19/conv2d_58/Conv2D:output:01model_19/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@~
model_19/conv2d_58/ReluRelu#model_19/conv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@¢
.model_19/batch_normalization_58/ReadVariableOpReadVariableOp7model_19_batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype0¦
0model_19/batch_normalization_58/ReadVariableOp_1ReadVariableOp9model_19_batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ä
?model_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOpHmodel_19_batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0È
Amodel_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJmodel_19_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0õ
0model_19/batch_normalization_58/FusedBatchNormV3FusedBatchNormV3%model_19/conv2d_58/Relu:activations:06model_19/batch_normalization_58/ReadVariableOp:value:08model_19/batch_normalization_58/ReadVariableOp_1:value:0Gmodel_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0Imodel_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿnn@:@:@:@:@:*
epsilon%o:*
is_training( Ï
!model_19/max_pooling2d_58/MaxPoolMaxPool4model_19/batch_normalization_58/FusedBatchNormV3:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@*
ksize
*
paddingVALID*
strides
£
(model_19/conv2d_59/Conv2D/ReadVariableOpReadVariableOp1model_19_conv2d_59_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0å
model_19/conv2d_59/Conv2DConv2D*model_19/max_pooling2d_58/MaxPool:output:00model_19/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*
paddingVALID*
strides

)model_19/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp2model_19_conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0·
model_19/conv2d_59/BiasAddBiasAdd"model_19/conv2d_59/Conv2D:output:01model_19/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66
model_19/conv2d_59/ReluRelu#model_19/conv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66£
.model_19/batch_normalization_59/ReadVariableOpReadVariableOp7model_19_batch_normalization_59_readvariableop_resource*
_output_shapes	
:*
dtype0§
0model_19/batch_normalization_59/ReadVariableOp_1ReadVariableOp9model_19_batch_normalization_59_readvariableop_1_resource*
_output_shapes	
:*
dtype0Å
?model_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOpHmodel_19_batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0É
Amodel_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJmodel_19_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0ú
0model_19/batch_normalization_59/FusedBatchNormV3FusedBatchNormV3%model_19/conv2d_59/Relu:activations:06model_19/batch_normalization_59/ReadVariableOp:value:08model_19/batch_normalization_59/ReadVariableOp_1:value:0Gmodel_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0Imodel_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ66:::::*
epsilon%o:*
is_training( Ð
!model_19/max_pooling2d_59/MaxPoolMaxPool4model_19/batch_normalization_59/FusedBatchNormV3:y:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

;model_19/global_average_pooling2d_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ö
)model_19/global_average_pooling2d_19/MeanMean*model_19/max_pooling2d_59/MaxPool:output:0Dmodel_19/global_average_pooling2d_19/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_19/dense_76/MatMul/ReadVariableOpReadVariableOp0model_19_dense_76_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0¹
model_19/dense_76/MatMulMatMul2model_19/global_average_pooling2d_19/Mean:output:0/model_19/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(model_19/dense_76/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_76_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
model_19/dense_76/BiasAddBiasAdd"model_19/dense_76/MatMul:product:00model_19/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
model_19/dense_76/ReluRelu"model_19/dense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_19/dropout_57/IdentityIdentity$model_19/dense_76/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'model_19/dense_77/MatMul/ReadVariableOpReadVariableOp0model_19_dense_77_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0­
model_19/dense_77/MatMulMatMul%model_19/dropout_57/Identity:output:0/model_19/dense_77/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_19/dense_77/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_77_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
model_19/dense_77/BiasAddBiasAdd"model_19/dense_77/MatMul:product:00model_19/dense_77/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
model_19/dense_77/ReluRelu"model_19/dense_77/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_19/dropout_58/IdentityIdentity$model_19/dense_77/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_19/dense_78/MatMul/ReadVariableOpReadVariableOp0model_19_dense_78_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0­
model_19/dense_78/MatMulMatMul%model_19/dropout_58/Identity:output:0/model_19/dense_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_19/dense_78/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
model_19/dense_78/BiasAddBiasAdd"model_19/dense_78/MatMul:product:00model_19/dense_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
model_19/dense_78/ReluRelu"model_19/dense_78/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_19/dropout_59/IdentityIdentity$model_19/dense_78/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_19/dense_79/MatMul/ReadVariableOpReadVariableOp0model_19_dense_79_matmul_readvariableop_resource*
_output_shapes
:	e*
dtype0¬
model_19/dense_79/MatMulMatMul%model_19/dropout_59/Identity:output:0/model_19/dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
(model_19/dense_79/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_79_biasadd_readvariableop_resource*
_output_shapes
:e*
dtype0¬
model_19/dense_79/BiasAddBiasAdd"model_19/dense_79/MatMul:product:00model_19/dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿez
model_19/dense_79/SoftmaxSoftmax"model_19/dense_79/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿer
IdentityIdentity#model_19/dense_79/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeÝ

NoOpNoOp@^model_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOpB^model_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1/^model_19/batch_normalization_57/ReadVariableOp1^model_19/batch_normalization_57/ReadVariableOp_1@^model_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOpB^model_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1/^model_19/batch_normalization_58/ReadVariableOp1^model_19/batch_normalization_58/ReadVariableOp_1@^model_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOpB^model_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1/^model_19/batch_normalization_59/ReadVariableOp1^model_19/batch_normalization_59/ReadVariableOp_1*^model_19/conv2d_57/BiasAdd/ReadVariableOp)^model_19/conv2d_57/Conv2D/ReadVariableOp*^model_19/conv2d_58/BiasAdd/ReadVariableOp)^model_19/conv2d_58/Conv2D/ReadVariableOp*^model_19/conv2d_59/BiasAdd/ReadVariableOp)^model_19/conv2d_59/Conv2D/ReadVariableOp)^model_19/dense_76/BiasAdd/ReadVariableOp(^model_19/dense_76/MatMul/ReadVariableOp)^model_19/dense_77/BiasAdd/ReadVariableOp(^model_19/dense_77/MatMul/ReadVariableOp)^model_19/dense_78/BiasAdd/ReadVariableOp(^model_19/dense_78/MatMul/ReadVariableOp)^model_19/dense_79/BiasAdd/ReadVariableOp(^model_19/dense_79/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2
?model_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp?model_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp2
Amodel_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1Amodel_19/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12`
.model_19/batch_normalization_57/ReadVariableOp.model_19/batch_normalization_57/ReadVariableOp2d
0model_19/batch_normalization_57/ReadVariableOp_10model_19/batch_normalization_57/ReadVariableOp_12
?model_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp?model_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp2
Amodel_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1Amodel_19/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12`
.model_19/batch_normalization_58/ReadVariableOp.model_19/batch_normalization_58/ReadVariableOp2d
0model_19/batch_normalization_58/ReadVariableOp_10model_19/batch_normalization_58/ReadVariableOp_12
?model_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp?model_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp2
Amodel_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1Amodel_19/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12`
.model_19/batch_normalization_59/ReadVariableOp.model_19/batch_normalization_59/ReadVariableOp2d
0model_19/batch_normalization_59/ReadVariableOp_10model_19/batch_normalization_59/ReadVariableOp_12V
)model_19/conv2d_57/BiasAdd/ReadVariableOp)model_19/conv2d_57/BiasAdd/ReadVariableOp2T
(model_19/conv2d_57/Conv2D/ReadVariableOp(model_19/conv2d_57/Conv2D/ReadVariableOp2V
)model_19/conv2d_58/BiasAdd/ReadVariableOp)model_19/conv2d_58/BiasAdd/ReadVariableOp2T
(model_19/conv2d_58/Conv2D/ReadVariableOp(model_19/conv2d_58/Conv2D/ReadVariableOp2V
)model_19/conv2d_59/BiasAdd/ReadVariableOp)model_19/conv2d_59/BiasAdd/ReadVariableOp2T
(model_19/conv2d_59/Conv2D/ReadVariableOp(model_19/conv2d_59/Conv2D/ReadVariableOp2T
(model_19/dense_76/BiasAdd/ReadVariableOp(model_19/dense_76/BiasAdd/ReadVariableOp2R
'model_19/dense_76/MatMul/ReadVariableOp'model_19/dense_76/MatMul/ReadVariableOp2T
(model_19/dense_77/BiasAdd/ReadVariableOp(model_19/dense_77/BiasAdd/ReadVariableOp2R
'model_19/dense_77/MatMul/ReadVariableOp'model_19/dense_77/MatMul/ReadVariableOp2T
(model_19/dense_78/BiasAdd/ReadVariableOp(model_19/dense_78/BiasAdd/ReadVariableOp2R
'model_19/dense_78/MatMul/ReadVariableOp'model_19/dense_78/MatMul/ReadVariableOp2T
(model_19/dense_79/BiasAdd/ReadVariableOp(model_19/dense_79/BiasAdd/ReadVariableOp2R
'model_19/dense_79/MatMul/ReadVariableOp'model_19/dense_79/MatMul/ReadVariableOp:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_20
ú
¼
)__inference_model_19_layer_call_fn_149240
input_20!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	@

unknown_18:@

unknown_19:	@

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	e

unknown_24:e
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_19_layer_call_and_return_conditional_losses_149185o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_20
	
Ö
7__inference_batch_normalization_59_layer_call_fn_150392

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148939
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_150331

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_57_layer_call_and_return_conditional_losses_149336

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¨
G
+__inference_dropout_59_layer_call_fn_150581

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_149165a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148787

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ý
d
F__inference_dropout_59_layer_call_and_return_conditional_losses_149165

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü	
e
F__inference_dropout_58_layer_call_and_return_conditional_losses_150556

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

)__inference_dense_79_layer_call_fn_150612

inputs
unknown:	e
	unknown_0:e
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_149178o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
¼
)__inference_model_19_layer_call_fn_149623
input_20!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	@

unknown_18:@

unknown_19:	@

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	e

unknown_24:e
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_19_layer_call_and_return_conditional_losses_149511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_20
¤

ö
D__inference_dense_79_layer_call_and_return_conditional_losses_150623

inputs1
matmul_readvariableop_resource:	e-
biasadd_readvariableop_resource:e
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	e*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿer
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:e*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿew
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü	
e
F__inference_dropout_58_layer_call_and_return_conditional_losses_149303

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_150267

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
Å
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148970

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_148990

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
E__inference_conv2d_58_layer_call_and_return_conditional_losses_149051

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿoo : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo 
 
_user_specified_nameinputs
÷

*__inference_conv2d_57_layer_call_fn_150184

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_149024y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_59_layer_call_fn_150446

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_148990
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


E__inference_conv2d_59_layer_call_and_return_conditional_losses_150379

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ77@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_148914

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_150359

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
d
+__inference_dropout_58_layer_call_fn_150539

inputs
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_149303p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
G
+__inference_dropout_57_layer_call_fn_150487

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_149117`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¸
s
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_149003

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ò
7__inference_batch_normalization_57_layer_call_fn_150208

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148787
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ô
º
)__inference_model_19_layer_call_fn_149832

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	@

unknown_18:@

unknown_19:	@

unknown_20:	

unknown_21:


unknown_22:	

unknown_23:	e

unknown_24:e
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_19_layer_call_and_return_conditional_losses_149185o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Æ©
°
D__inference_model_19_layer_call_and_return_conditional_losses_150116

inputsB
(conv2d_57_conv2d_readvariableop_resource: 7
)conv2d_57_biasadd_readvariableop_resource: <
.batch_normalization_57_readvariableop_resource: >
0batch_normalization_57_readvariableop_1_resource: M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_58_conv2d_readvariableop_resource: @7
)conv2d_58_biasadd_readvariableop_resource:@<
.batch_normalization_58_readvariableop_resource:@>
0batch_normalization_58_readvariableop_1_resource:@M
?batch_normalization_58_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_59_conv2d_readvariableop_resource:@8
)conv2d_59_biasadd_readvariableop_resource:	=
.batch_normalization_59_readvariableop_resource:	?
0batch_normalization_59_readvariableop_1_resource:	N
?batch_normalization_59_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:	:
'dense_76_matmul_readvariableop_resource:	@6
(dense_76_biasadd_readvariableop_resource:@:
'dense_77_matmul_readvariableop_resource:	@7
(dense_77_biasadd_readvariableop_resource:	;
'dense_78_matmul_readvariableop_resource:
7
(dense_78_biasadd_readvariableop_resource:	:
'dense_79_matmul_readvariableop_resource:	e6
(dense_79_biasadd_readvariableop_resource:e
identity¢%batch_normalization_57/AssignNewValue¢'batch_normalization_57/AssignNewValue_1¢6batch_normalization_57/FusedBatchNormV3/ReadVariableOp¢8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1¢%batch_normalization_57/ReadVariableOp¢'batch_normalization_57/ReadVariableOp_1¢%batch_normalization_58/AssignNewValue¢'batch_normalization_58/AssignNewValue_1¢6batch_normalization_58/FusedBatchNormV3/ReadVariableOp¢8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1¢%batch_normalization_58/ReadVariableOp¢'batch_normalization_58/ReadVariableOp_1¢%batch_normalization_59/AssignNewValue¢'batch_normalization_59/AssignNewValue_1¢6batch_normalization_59/FusedBatchNormV3/ReadVariableOp¢8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1¢%batch_normalization_59/ReadVariableOp¢'batch_normalization_59/ReadVariableOp_1¢ conv2d_57/BiasAdd/ReadVariableOp¢conv2d_57/Conv2D/ReadVariableOp¢ conv2d_58/BiasAdd/ReadVariableOp¢conv2d_58/Conv2D/ReadVariableOp¢ conv2d_59/BiasAdd/ReadVariableOp¢conv2d_59/Conv2D/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢dense_77/BiasAdd/ReadVariableOp¢dense_77/MatMul/ReadVariableOp¢dense_78/BiasAdd/ReadVariableOp¢dense_78/MatMul/ReadVariableOp¢dense_79/BiasAdd/ReadVariableOp¢dense_79/MatMul/ReadVariableOp
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0°
conv2d_57/Conv2DConv2Dinputs'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *
paddingVALID*
strides

 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß n
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß 
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
: *
dtype0²
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¶
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ï
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_57/Relu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿßß : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<
%batch_normalization_57/AssignNewValueAssignVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource4batch_normalization_57/FusedBatchNormV3:batch_mean:07^batch_normalization_57/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0
'batch_normalization_57/AssignNewValue_1AssignVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_57/FusedBatchNormV3:batch_variance:09^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0½
max_pooling2d_57/MaxPoolMaxPool+batch_normalization_57/FusedBatchNormV3:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo *
ksize
*
paddingVALID*
strides

conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0É
conv2d_58/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*
paddingVALID*
strides

 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@l
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype0²
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¶
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Í
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3conv2d_58/Relu:activations:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿnn@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<
%batch_normalization_58/AssignNewValueAssignVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource4batch_normalization_58/FusedBatchNormV3:batch_mean:07^batch_normalization_58/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0
'batch_normalization_58/AssignNewValue_1AssignVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_58/FusedBatchNormV3:batch_variance:09^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0½
max_pooling2d_58/MaxPoolMaxPool+batch_normalization_58/FusedBatchNormV3:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@*
ksize
*
paddingVALID*
strides

conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ê
conv2d_59/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*
paddingVALID*
strides

 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66m
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes	
:*
dtype0³
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0·
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ò
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3conv2d_59/Relu:activations:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ66:::::*
epsilon%o:*
exponential_avg_factor%
×#<
%batch_normalization_59/AssignNewValueAssignVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource4batch_normalization_59/FusedBatchNormV3:batch_mean:07^batch_normalization_59/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0
'batch_normalization_59/AssignNewValue_1AssignVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_59/FusedBatchNormV3:batch_variance:09^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0¾
max_pooling2d_59/MaxPoolMaxPool+batch_normalization_59/FusedBatchNormV3:y:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

2global_average_pooling2d_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      »
 global_average_pooling2d_19/MeanMean!max_pooling2d_59/MaxPool:output:0;global_average_pooling2d_19/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_76/MatMulMatMul)global_average_pooling2d_19/Mean:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
dropout_57/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_57/dropout/MulMuldense_76/Relu:activations:0!dropout_57/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
dropout_57/dropout/ShapeShapedense_76/Relu:activations:0*
T0*
_output_shapes
:¢
/dropout_57/dropout/random_uniform/RandomUniformRandomUniform!dropout_57/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0f
!dropout_57/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_57/dropout/GreaterEqualGreaterEqual8dropout_57/dropout/random_uniform/RandomUniform:output:0*dropout_57/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_57/dropout/CastCast#dropout_57/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_57/dropout/Mul_1Muldropout_57/dropout/Mul:z:0dropout_57/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_77/MatMulMatMuldropout_57/dropout/Mul_1:z:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_77/ReluReludense_77/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout_58/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_58/dropout/MulMuldense_77/Relu:activations:0!dropout_58/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dropout_58/dropout/ShapeShapedense_77/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_58/dropout/random_uniform/RandomUniformRandomUniform!dropout_58/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_58/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>È
dropout_58/dropout/GreaterEqualGreaterEqual8dropout_58/dropout/random_uniform/RandomUniform:output:0*dropout_58/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_58/dropout/CastCast#dropout_58/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_58/dropout/Mul_1Muldropout_58/dropout/Mul:z:0dropout_58/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_78/MatMul/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_78/MatMulMatMuldropout_58/dropout/Mul_1:z:0&dense_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_78/BiasAdd/ReadVariableOpReadVariableOp(dense_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_78/BiasAddBiasAdddense_78/MatMul:product:0'dense_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_78/ReluReludense_78/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout_59/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¢¼?
dropout_59/dropout/MulMuldense_78/Relu:activations:0!dropout_59/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dropout_59/dropout/ShapeShapedense_78/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_59/dropout/random_uniform/RandomUniformRandomUniform!dropout_59/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_59/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL=È
dropout_59/dropout/GreaterEqualGreaterEqual8dropout_59/dropout/random_uniform/RandomUniform:output:0*dropout_59/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_59/dropout/CastCast#dropout_59/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_59/dropout/Mul_1Muldropout_59/dropout/Mul:z:0dropout_59/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes
:	e*
dtype0
dense_79/MatMulMatMuldropout_59/dropout/Mul_1:z:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:e*
dtype0
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeh
dense_79/SoftmaxSoftmaxdense_79/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿei
IdentityIdentitydense_79/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeé

NoOpNoOp&^batch_normalization_57/AssignNewValue(^batch_normalization_57/AssignNewValue_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_1&^batch_normalization_58/AssignNewValue(^batch_normalization_58/AssignNewValue_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_1&^batch_normalization_59/AssignNewValue(^batch_normalization_59/AssignNewValue_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_1!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp ^dense_78/BiasAdd/ReadVariableOp^dense_78/MatMul/ReadVariableOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_57/AssignNewValue%batch_normalization_57/AssignNewValue2R
'batch_normalization_57/AssignNewValue_1'batch_normalization_57/AssignNewValue_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12N
%batch_normalization_58/AssignNewValue%batch_normalization_58/AssignNewValue2R
'batch_normalization_58/AssignNewValue_1'batch_normalization_58/AssignNewValue_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12N
%batch_normalization_59/AssignNewValue%batch_normalization_59/AssignNewValue2R
'batch_normalization_59/AssignNewValue_1'batch_normalization_59/AssignNewValue_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2B
dense_78/BiasAdd/ReadVariableOpdense_78/BiasAdd/ReadVariableOp2@
dense_78/MatMul/ReadVariableOpdense_78/MatMul/ReadVariableOp2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
	
Ò
7__inference_batch_normalization_58_layer_call_fn_150313

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148894
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_57_layer_call_and_return_conditional_losses_150497

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¨
G
+__inference_dropout_58_layer_call_fn_150534

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_149141a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_dense_78_layer_call_and_return_conditional_losses_149154

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


E__inference_conv2d_59_layer_call_and_return_conditional_losses_149078

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ77@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@
 
_user_specified_nameinputs
ÎP

D__inference_model_19_layer_call_and_return_conditional_losses_149696
input_20*
conv2d_57_149626: 
conv2d_57_149628: +
batch_normalization_57_149631: +
batch_normalization_57_149633: +
batch_normalization_57_149635: +
batch_normalization_57_149637: *
conv2d_58_149641: @
conv2d_58_149643:@+
batch_normalization_58_149646:@+
batch_normalization_58_149648:@+
batch_normalization_58_149650:@+
batch_normalization_58_149652:@+
conv2d_59_149656:@
conv2d_59_149658:	,
batch_normalization_59_149661:	,
batch_normalization_59_149663:	,
batch_normalization_59_149665:	,
batch_normalization_59_149667:	"
dense_76_149672:	@
dense_76_149674:@"
dense_77_149678:	@
dense_77_149680:	#
dense_78_149684:

dense_78_149686:	"
dense_79_149690:	e
dense_79_149692:e
identity¢.batch_normalization_57/StatefulPartitionedCall¢.batch_normalization_58/StatefulPartitionedCall¢.batch_normalization_59/StatefulPartitionedCall¢!conv2d_57/StatefulPartitionedCall¢!conv2d_58/StatefulPartitionedCall¢!conv2d_59/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢ dense_78/StatefulPartitionedCall¢ dense_79/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinput_20conv2d_57_149626conv2d_57_149628*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_149024
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_57_149631batch_normalization_57_149633batch_normalization_57_149635batch_normalization_57_149637*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148787
 max_pooling2d_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_148838¢
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_58_149641conv2d_58_149643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_149051
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0batch_normalization_58_149646batch_normalization_58_149648batch_normalization_58_149650batch_normalization_58_149652*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148863
 max_pooling2d_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_148914£
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_149656conv2d_59_149658*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_149078
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0batch_normalization_59_149661batch_normalization_59_149663batch_normalization_59_149665batch_normalization_59_149667*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148939
 max_pooling2d_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_148990
+global_average_pooling2d_19/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_149003¡
 dense_76/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_19/PartitionedCall:output:0dense_76_149672dense_76_149674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_149106â
dropout_57/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_149117
 dense_77/StatefulPartitionedCallStatefulPartitionedCall#dropout_57/PartitionedCall:output:0dense_77_149678dense_77_149680*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_149130ã
dropout_58/PartitionedCallPartitionedCall)dense_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_149141
 dense_78/StatefulPartitionedCallStatefulPartitionedCall#dropout_58/PartitionedCall:output:0dense_78_149684dense_78_149686*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_149154ã
dropout_59/PartitionedCallPartitionedCall)dense_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_149165
 dense_79/StatefulPartitionedCallStatefulPartitionedCall#dropout_59/PartitionedCall:output:0dense_79_149690dense_79_149692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_149178x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeÑ
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall!^dense_78/StatefulPartitionedCall!^dense_79/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_20
U
ò
D__inference_model_19_layer_call_and_return_conditional_losses_149511

inputs*
conv2d_57_149441: 
conv2d_57_149443: +
batch_normalization_57_149446: +
batch_normalization_57_149448: +
batch_normalization_57_149450: +
batch_normalization_57_149452: *
conv2d_58_149456: @
conv2d_58_149458:@+
batch_normalization_58_149461:@+
batch_normalization_58_149463:@+
batch_normalization_58_149465:@+
batch_normalization_58_149467:@+
conv2d_59_149471:@
conv2d_59_149473:	,
batch_normalization_59_149476:	,
batch_normalization_59_149478:	,
batch_normalization_59_149480:	,
batch_normalization_59_149482:	"
dense_76_149487:	@
dense_76_149489:@"
dense_77_149493:	@
dense_77_149495:	#
dense_78_149499:

dense_78_149501:	"
dense_79_149505:	e
dense_79_149507:e
identity¢.batch_normalization_57/StatefulPartitionedCall¢.batch_normalization_58/StatefulPartitionedCall¢.batch_normalization_59/StatefulPartitionedCall¢!conv2d_57/StatefulPartitionedCall¢!conv2d_58/StatefulPartitionedCall¢!conv2d_59/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢ dense_78/StatefulPartitionedCall¢ dense_79/StatefulPartitionedCall¢"dropout_57/StatefulPartitionedCall¢"dropout_58/StatefulPartitionedCall¢"dropout_59/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_57_149441conv2d_57_149443*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_149024
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_57_149446batch_normalization_57_149448batch_normalization_57_149450batch_normalization_57_149452*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148818
 max_pooling2d_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_148838¢
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_58_149456conv2d_58_149458*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_149051
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0batch_normalization_58_149461batch_normalization_58_149463batch_normalization_58_149465batch_normalization_58_149467*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148894
 max_pooling2d_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_148914£
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_149471conv2d_59_149473*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_149078
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0batch_normalization_59_149476batch_normalization_59_149478batch_normalization_59_149480batch_normalization_59_149482*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148970
 max_pooling2d_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_148990
+global_average_pooling2d_19/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_149003¡
 dense_76/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_19/PartitionedCall:output:0dense_76_149487dense_76_149489*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_149106ò
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_149336
 dense_77/StatefulPartitionedCallStatefulPartitionedCall+dropout_57/StatefulPartitionedCall:output:0dense_77_149493dense_77_149495*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_149130
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall)dense_77/StatefulPartitionedCall:output:0#^dropout_57/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_149303
 dense_78/StatefulPartitionedCallStatefulPartitionedCall+dropout_58/StatefulPartitionedCall:output:0dense_78_149499dense_78_149501*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_149154
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall)dense_78/StatefulPartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_149270
 dense_79/StatefulPartitionedCallStatefulPartitionedCall+dropout_59/StatefulPartitionedCall:output:0dense_79_149505dense_79_149507*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_149178x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeÀ
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall!^dense_78/StatefulPartitionedCall!^dense_79/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
U
ô
D__inference_model_19_layer_call_and_return_conditional_losses_149769
input_20*
conv2d_57_149699: 
conv2d_57_149701: +
batch_normalization_57_149704: +
batch_normalization_57_149706: +
batch_normalization_57_149708: +
batch_normalization_57_149710: *
conv2d_58_149714: @
conv2d_58_149716:@+
batch_normalization_58_149719:@+
batch_normalization_58_149721:@+
batch_normalization_58_149723:@+
batch_normalization_58_149725:@+
conv2d_59_149729:@
conv2d_59_149731:	,
batch_normalization_59_149734:	,
batch_normalization_59_149736:	,
batch_normalization_59_149738:	,
batch_normalization_59_149740:	"
dense_76_149745:	@
dense_76_149747:@"
dense_77_149751:	@
dense_77_149753:	#
dense_78_149757:

dense_78_149759:	"
dense_79_149763:	e
dense_79_149765:e
identity¢.batch_normalization_57/StatefulPartitionedCall¢.batch_normalization_58/StatefulPartitionedCall¢.batch_normalization_59/StatefulPartitionedCall¢!conv2d_57/StatefulPartitionedCall¢!conv2d_58/StatefulPartitionedCall¢!conv2d_59/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCall¢ dense_78/StatefulPartitionedCall¢ dense_79/StatefulPartitionedCall¢"dropout_57/StatefulPartitionedCall¢"dropout_58/StatefulPartitionedCall¢"dropout_59/StatefulPartitionedCall
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCallinput_20conv2d_57_149699conv2d_57_149701*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_57_layer_call_and_return_conditional_losses_149024
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_57_149704batch_normalization_57_149706batch_normalization_57_149708batch_normalization_57_149710*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_148818
 max_pooling2d_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_148838¢
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_58_149714conv2d_58_149716*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_58_layer_call_and_return_conditional_losses_149051
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0batch_normalization_58_149719batch_normalization_58_149721batch_normalization_58_149723batch_normalization_58_149725*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148894
 max_pooling2d_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_148914£
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_59_149729conv2d_59_149731*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_59_layer_call_and_return_conditional_losses_149078
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0batch_normalization_59_149734batch_normalization_59_149736batch_normalization_59_149738batch_normalization_59_149740*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148970
 max_pooling2d_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_148990
+global_average_pooling2d_19/PartitionedCallPartitionedCall)max_pooling2d_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *`
f[RY
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_149003¡
 dense_76/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling2d_19/PartitionedCall:output:0dense_76_149745dense_76_149747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_149106ò
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_149336
 dense_77/StatefulPartitionedCallStatefulPartitionedCall+dropout_57/StatefulPartitionedCall:output:0dense_77_149751dense_77_149753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_149130
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall)dense_77/StatefulPartitionedCall:output:0#^dropout_57/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_149303
 dense_78/StatefulPartitionedCallStatefulPartitionedCall+dropout_58/StatefulPartitionedCall:output:0dense_78_149757dense_78_149759*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_149154
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall)dense_78/StatefulPartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_149270
 dense_79/StatefulPartitionedCallStatefulPartitionedCall+dropout_59/StatefulPartitionedCall:output:0dense_79_149763dense_79_149765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_149178x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeÀ
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall!^dense_78/StatefulPartitionedCall!^dense_79/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
"
_user_specified_name
input_20
Î}
º
D__inference_model_19_layer_call_and_return_conditional_losses_149992

inputsB
(conv2d_57_conv2d_readvariableop_resource: 7
)conv2d_57_biasadd_readvariableop_resource: <
.batch_normalization_57_readvariableop_resource: >
0batch_normalization_57_readvariableop_1_resource: M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_58_conv2d_readvariableop_resource: @7
)conv2d_58_biasadd_readvariableop_resource:@<
.batch_normalization_58_readvariableop_resource:@>
0batch_normalization_58_readvariableop_1_resource:@M
?batch_normalization_58_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_59_conv2d_readvariableop_resource:@8
)conv2d_59_biasadd_readvariableop_resource:	=
.batch_normalization_59_readvariableop_resource:	?
0batch_normalization_59_readvariableop_1_resource:	N
?batch_normalization_59_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:	:
'dense_76_matmul_readvariableop_resource:	@6
(dense_76_biasadd_readvariableop_resource:@:
'dense_77_matmul_readvariableop_resource:	@7
(dense_77_biasadd_readvariableop_resource:	;
'dense_78_matmul_readvariableop_resource:
7
(dense_78_biasadd_readvariableop_resource:	:
'dense_79_matmul_readvariableop_resource:	e6
(dense_79_biasadd_readvariableop_resource:e
identity¢6batch_normalization_57/FusedBatchNormV3/ReadVariableOp¢8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1¢%batch_normalization_57/ReadVariableOp¢'batch_normalization_57/ReadVariableOp_1¢6batch_normalization_58/FusedBatchNormV3/ReadVariableOp¢8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1¢%batch_normalization_58/ReadVariableOp¢'batch_normalization_58/ReadVariableOp_1¢6batch_normalization_59/FusedBatchNormV3/ReadVariableOp¢8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1¢%batch_normalization_59/ReadVariableOp¢'batch_normalization_59/ReadVariableOp_1¢ conv2d_57/BiasAdd/ReadVariableOp¢conv2d_57/Conv2D/ReadVariableOp¢ conv2d_58/BiasAdd/ReadVariableOp¢conv2d_58/Conv2D/ReadVariableOp¢ conv2d_59/BiasAdd/ReadVariableOp¢conv2d_59/Conv2D/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢dense_77/BiasAdd/ReadVariableOp¢dense_77/MatMul/ReadVariableOp¢dense_78/BiasAdd/ReadVariableOp¢dense_78/MatMul/ReadVariableOp¢dense_79/BiasAdd/ReadVariableOp¢dense_79/MatMul/ReadVariableOp
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0°
conv2d_57/Conv2DConv2Dinputs'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *
paddingVALID*
strides

 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß n
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß 
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
: *
dtype0²
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¶
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Á
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_57/Relu:activations:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿßß : : : : :*
epsilon%o:*
is_training( ½
max_pooling2d_57/MaxPoolMaxPool+batch_normalization_57/FusedBatchNormV3:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo *
ksize
*
paddingVALID*
strides

conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0É
conv2d_58/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@*
paddingVALID*
strides

 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@l
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿnn@
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
:@*
dtype0²
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¶
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0¿
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3conv2d_58/Relu:activations:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿnn@:@:@:@:@:*
epsilon%o:*
is_training( ½
max_pooling2d_58/MaxPoolMaxPool+batch_normalization_58/FusedBatchNormV3:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ77@*
ksize
*
paddingVALID*
strides

conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ê
conv2d_59/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66*
paddingVALID*
strides

 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66m
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes	
:*
dtype0³
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0·
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ä
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3conv2d_59/Relu:activations:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ66:::::*
epsilon%o:*
is_training( ¾
max_pooling2d_59/MaxPoolMaxPool+batch_normalization_59/FusedBatchNormV3:y:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides

2global_average_pooling2d_19/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      »
 global_average_pooling2d_19/MeanMean!max_pooling2d_59/MaxPool:output:0;global_average_pooling2d_19/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_76/MatMulMatMul)global_average_pooling2d_19/Mean:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
dropout_57/IdentityIdentitydense_76/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_77/MatMulMatMuldropout_57/Identity:output:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_77/ReluReludense_77/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout_58/IdentityIdentitydense_77/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_78/MatMul/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_78/MatMulMatMuldropout_58/Identity:output:0&dense_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_78/BiasAdd/ReadVariableOpReadVariableOp(dense_78_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_78/BiasAddBiasAdddense_78/MatMul:product:0'dense_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_78/ReluReludense_78/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout_59/IdentityIdentitydense_78/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes
:	e*
dtype0
dense_79/MatMulMatMuldropout_59/Identity:output:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:e*
dtype0
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeh
dense_79/SoftmaxSoftmaxdense_79/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿei
IdentityIdentitydense_79/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿeó
NoOpNoOp7^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_1!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp ^dense_78/BiasAdd/ReadVariableOp^dense_78/MatMul/ReadVariableOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2B
dense_78/BiasAdd/ReadVariableOpdense_78/BiasAdd/ReadVariableOp2@
dense_78/MatMul/ReadVariableOpdense_78/MatMul/ReadVariableOp2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Í

R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_148863

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£

÷
D__inference_dense_77_layer_call_and_return_conditional_losses_150529

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
É

)__inference_dense_77_layer_call_fn_150518

inputs
unknown:	@
	unknown_0:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_149130p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ö
D__inference_dense_76_layer_call_and_return_conditional_losses_150482

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
E__inference_conv2d_57_layer_call_and_return_conditional_losses_149024

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_150451

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü	
e
F__inference_dropout_59_layer_call_and_return_conditional_losses_149270

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¢¼?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL=§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ö
7__inference_batch_normalization_59_layer_call_fn_150405

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_148970
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_150239

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Û
Á
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_150257

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

þ
E__inference_conv2d_57_layer_call_and_return_conditional_losses_150195

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿßß w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
¸
s
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_150462

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_58_layer_call_fn_150354

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_148914
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
Á
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_150349

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_57_layer_call_fn_150262

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_148838
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
Å
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_150441

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_57_layer_call_and_return_conditional_losses_150509

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
G
input_20;
serving_default_input_20:0ÿÿÿÿÿÿÿÿÿàà<
dense_790
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿetensorflow/serving/predict:éÄ
þ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
à

kernel
bias
# _self_saveable_object_factories
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer

'axis
	(gamma
)beta
*moving_mean
+moving_variance
#,_self_saveable_object_factories
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#3_self_saveable_object_factories
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
à

:kernel
;bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer

Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#O_self_saveable_object_factories
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
à

Vkernel
Wbias
#X_self_saveable_object_factories
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer

_axis
	`gamma
abeta
bmoving_mean
cmoving_variance
#d_self_saveable_object_factories
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#k_self_saveable_object_factories
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
â

ykernel
zbias
#{_self_saveable_object_factories
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses"
_tf_keras_layer
é
$¤_self_saveable_object_factories
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©_random_generator
ª__call__
+«&call_and_return_all_conditional_losses"
_tf_keras_layer
é
¬kernel
	­bias
$®_self_saveable_object_factories
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layer
ô
	µiter
¶beta_1
·beta_2

¸decay
¹learning_ratem m¡(m¢)m£:m¤;m¥Dm¦Em§Vm¨Wm©`mªam«ym¬zm­	m®	m¯	m°	m±	¬m²	­m³v´vµ(v¶)v·:v¸;v¹DvºEv»Vv¼Wv½`v¾av¿yvÀzvÁ	vÂ	vÃ	vÄ	vÅ	¬vÆ	­vÇ"
	optimizer
-
ºserving_default"
signature_map
 "
trackable_dict_wrapper
ì
0
1
(2
)3
*4
+5
:6
;7
D8
E9
F10
G11
V12
W13
`14
a15
b16
c17
y18
z19
20
21
22
23
¬24
­25"
trackable_list_wrapper
¼
0
1
(2
)3
:4
;5
D6
E7
V8
W9
`10
a11
y12
z13
14
15
16
17
¬18
­19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_model_19_layer_call_fn_149240
)__inference_model_19_layer_call_fn_149832
)__inference_model_19_layer_call_fn_149889
)__inference_model_19_layer_call_fn_149623À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_model_19_layer_call_and_return_conditional_losses_149992
D__inference_model_19_layer_call_and_return_conditional_losses_150116
D__inference_model_19_layer_call_and_return_conditional_losses_149696
D__inference_model_19_layer_call_and_return_conditional_losses_149769À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÍBÊ
!__inference__wrapped_model_148765input_20"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
*:( 2conv2d_57/kernel
: 2conv2d_57/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_57_layer_call_fn_150184¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv2d_57_layer_call_and_return_conditional_losses_150195¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
*:( 2batch_normalization_57/gamma
):' 2batch_normalization_57/beta
2:0  (2"batch_normalization_57/moving_mean
6:4  (2&batch_normalization_57/moving_variance
 "
trackable_dict_wrapper
<
(0
)1
*2
+3"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_57_layer_call_fn_150208
7__inference_batch_normalization_57_layer_call_fn_150221´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_150239
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_150257´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_max_pooling2d_57_layer_call_fn_150262¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_150267¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
*:( @2conv2d_58/kernel
:@2conv2d_58/bias
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_58_layer_call_fn_150276¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv2d_58_layer_call_and_return_conditional_losses_150287¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
*:(@2batch_normalization_58/gamma
):'@2batch_normalization_58/beta
2:0@ (2"batch_normalization_58/moving_mean
6:4@ (2&batch_normalization_58/moving_variance
 "
trackable_dict_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_58_layer_call_fn_150300
7__inference_batch_normalization_58_layer_call_fn_150313´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_150331
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_150349´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_max_pooling2d_58_layer_call_fn_150354¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_150359¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
+:)@2conv2d_59/kernel
:2conv2d_59/bias
 "
trackable_dict_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_59_layer_call_fn_150368¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv2d_59_layer_call_and_return_conditional_losses_150379¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
+:)2batch_normalization_59/gamma
*:(2batch_normalization_59/beta
3:1 (2"batch_normalization_59/moving_mean
7:5 (2&batch_normalization_59/moving_variance
 "
trackable_dict_wrapper
<
`0
a1
b2
c3"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_59_layer_call_fn_150392
7__inference_batch_normalization_59_layer_call_fn_150405´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_150423
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_150441´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_max_pooling2d_59_layer_call_fn_150446¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_150451¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
æ2ã
<__inference_global_average_pooling2d_19_layer_call_fn_150456¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2þ
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_150462¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": 	@2dense_76/kernel
:@2dense_76/bias
 "
trackable_dict_wrapper
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_76_layer_call_fn_150471¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_76_layer_call_and_return_conditional_losses_150482¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_57_layer_call_fn_150487
+__inference_dropout_57_layer_call_fn_150492´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_57_layer_call_and_return_conditional_losses_150497
F__inference_dropout_57_layer_call_and_return_conditional_losses_150509´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": 	@2dense_77/kernel
:2dense_77/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_77_layer_call_fn_150518¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_77_layer_call_and_return_conditional_losses_150529¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_58_layer_call_fn_150534
+__inference_dropout_58_layer_call_fn_150539´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_58_layer_call_and_return_conditional_losses_150544
F__inference_dropout_58_layer_call_and_return_conditional_losses_150556´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!
2dense_78/kernel
:2dense_78/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_78_layer_call_fn_150565¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_78_layer_call_and_return_conditional_losses_150576¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¥	variables
¦trainable_variables
§regularization_losses
ª__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_59_layer_call_fn_150581
+__inference_dropout_59_layer_call_fn_150586´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_59_layer_call_and_return_conditional_losses_150591
F__inference_dropout_59_layer_call_and_return_conditional_losses_150603´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": 	e2dense_79/kernel
:e2dense_79/bias
 "
trackable_dict_wrapper
0
¬0
­1"
trackable_list_wrapper
0
¬0
­1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¯	variables
°trainable_variables
±regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_79_layer_call_fn_150612¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_79_layer_call_and_return_conditional_losses_150623¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÌBÉ
$__inference_signature_wrapper_150175input_20"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
J
*0
+1
F2
G3
b4
c5"
trackable_list_wrapper
¦
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
/:- 2Adam/conv2d_57/kernel/m
!: 2Adam/conv2d_57/bias/m
/:- 2#Adam/batch_normalization_57/gamma/m
.:, 2"Adam/batch_normalization_57/beta/m
/:- @2Adam/conv2d_58/kernel/m
!:@2Adam/conv2d_58/bias/m
/:-@2#Adam/batch_normalization_58/gamma/m
.:,@2"Adam/batch_normalization_58/beta/m
0:.@2Adam/conv2d_59/kernel/m
": 2Adam/conv2d_59/bias/m
0:.2#Adam/batch_normalization_59/gamma/m
/:-2"Adam/batch_normalization_59/beta/m
':%	@2Adam/dense_76/kernel/m
 :@2Adam/dense_76/bias/m
':%	@2Adam/dense_77/kernel/m
!:2Adam/dense_77/bias/m
(:&
2Adam/dense_78/kernel/m
!:2Adam/dense_78/bias/m
':%	e2Adam/dense_79/kernel/m
 :e2Adam/dense_79/bias/m
/:- 2Adam/conv2d_57/kernel/v
!: 2Adam/conv2d_57/bias/v
/:- 2#Adam/batch_normalization_57/gamma/v
.:, 2"Adam/batch_normalization_57/beta/v
/:- @2Adam/conv2d_58/kernel/v
!:@2Adam/conv2d_58/bias/v
/:-@2#Adam/batch_normalization_58/gamma/v
.:,@2"Adam/batch_normalization_58/beta/v
0:.@2Adam/conv2d_59/kernel/v
": 2Adam/conv2d_59/bias/v
0:.2#Adam/batch_normalization_59/gamma/v
/:-2"Adam/batch_normalization_59/beta/v
':%	@2Adam/dense_76/kernel/v
 :@2Adam/dense_76/bias/v
':%	@2Adam/dense_77/kernel/v
!:2Adam/dense_77/bias/v
(:&
2Adam/dense_78/kernel/v
!:2Adam/dense_78/bias/v
':%	e2Adam/dense_79/kernel/v
 :e2Adam/dense_79/bias/vº
!__inference__wrapped_model_148765 ()*+:;DEFGVW`abcyz¬­;¢8
1¢.
,)
input_20ÿÿÿÿÿÿÿÿÿàà
ª "3ª0
.
dense_79"
dense_79ÿÿÿÿÿÿÿÿÿeí
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_150239()*+M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 í
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_150257()*+M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Å
7__inference_batch_normalization_57_layer_call_fn_150208()*+M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Å
7__inference_batch_normalization_57_layer_call_fn_150221()*+M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ í
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_150331DEFGM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 í
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_150349DEFGM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Å
7__inference_batch_normalization_58_layer_call_fn_150300DEFGM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Å
7__inference_batch_normalization_58_layer_call_fn_150313DEFGM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ï
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_150423`abcN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ï
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_150441`abcN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
7__inference_batch_normalization_59_layer_call_fn_150392`abcN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÇ
7__inference_batch_normalization_59_layer_call_fn_150405`abcN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹
E__inference_conv2d_57_layer_call_and_return_conditional_losses_150195p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿßß 
 
*__inference_conv2d_57_layer_call_fn_150184c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà
ª ""ÿÿÿÿÿÿÿÿÿßß µ
E__inference_conv2d_58_layer_call_and_return_conditional_losses_150287l:;7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿoo 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿnn@
 
*__inference_conv2d_58_layer_call_fn_150276_:;7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿoo 
ª " ÿÿÿÿÿÿÿÿÿnn@¶
E__inference_conv2d_59_layer_call_and_return_conditional_losses_150379mVW7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ77@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ66
 
*__inference_conv2d_59_layer_call_fn_150368`VW7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ77@
ª "!ÿÿÿÿÿÿÿÿÿ66¥
D__inference_dense_76_layer_call_and_return_conditional_losses_150482]yz0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
)__inference_dense_76_layer_call_fn_150471Pyz0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@§
D__inference_dense_77_layer_call_and_return_conditional_losses_150529_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dense_77_layer_call_fn_150518R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¨
D__inference_dense_78_layer_call_and_return_conditional_losses_150576`0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dense_78_layer_call_fn_150565S0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
D__inference_dense_79_layer_call_and_return_conditional_losses_150623_¬­0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿe
 
)__inference_dense_79_layer_call_fn_150612R¬­0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿe¦
F__inference_dropout_57_layer_call_and_return_conditional_losses_150497\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¦
F__inference_dropout_57_layer_call_and_return_conditional_losses_150509\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ~
+__inference_dropout_57_layer_call_fn_150487O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@~
+__inference_dropout_57_layer_call_fn_150492O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¨
F__inference_dropout_58_layer_call_and_return_conditional_losses_150544^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
F__inference_dropout_58_layer_call_and_return_conditional_losses_150556^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_58_layer_call_fn_150534Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_58_layer_call_fn_150539Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dropout_59_layer_call_and_return_conditional_losses_150591^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
F__inference_dropout_59_layer_call_and_return_conditional_losses_150603^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_59_layer_call_fn_150581Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_59_layer_call_fn_150586Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿà
W__inference_global_average_pooling2d_19_layer_call_and_return_conditional_losses_150462R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ·
<__inference_global_average_pooling2d_19_layer_call_fn_150456wR¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_150267R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_57_layer_call_fn_150262R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_150359R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_58_layer_call_fn_150354R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_150451R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_59_layer_call_fn_150446R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ×
D__inference_model_19_layer_call_and_return_conditional_losses_149696 ()*+:;DEFGVW`abcyz¬­C¢@
9¢6
,)
input_20ÿÿÿÿÿÿÿÿÿàà
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿe
 ×
D__inference_model_19_layer_call_and_return_conditional_losses_149769 ()*+:;DEFGVW`abcyz¬­C¢@
9¢6
,)
input_20ÿÿÿÿÿÿÿÿÿàà
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿe
 Õ
D__inference_model_19_layer_call_and_return_conditional_losses_149992 ()*+:;DEFGVW`abcyz¬­A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿe
 Õ
D__inference_model_19_layer_call_and_return_conditional_losses_150116 ()*+:;DEFGVW`abcyz¬­A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿe
 ¯
)__inference_model_19_layer_call_fn_149240 ()*+:;DEFGVW`abcyz¬­C¢@
9¢6
,)
input_20ÿÿÿÿÿÿÿÿÿàà
p 

 
ª "ÿÿÿÿÿÿÿÿÿe¯
)__inference_model_19_layer_call_fn_149623 ()*+:;DEFGVW`abcyz¬­C¢@
9¢6
,)
input_20ÿÿÿÿÿÿÿÿÿàà
p

 
ª "ÿÿÿÿÿÿÿÿÿe¬
)__inference_model_19_layer_call_fn_149832 ()*+:;DEFGVW`abcyz¬­A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "ÿÿÿÿÿÿÿÿÿe¬
)__inference_model_19_layer_call_fn_149889 ()*+:;DEFGVW`abcyz¬­A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "ÿÿÿÿÿÿÿÿÿeÉ
$__inference_signature_wrapper_150175  ()*+:;DEFGVW`abcyz¬­G¢D
¢ 
=ª:
8
input_20,)
input_20ÿÿÿÿÿÿÿÿÿàà"3ª0
.
dense_79"
dense_79ÿÿÿÿÿÿÿÿÿe